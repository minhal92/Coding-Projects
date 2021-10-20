% Code adapted from motivatoin from: "Depth Estimation From Stereo Video"
% https://www.mathworks.com/help/vision/examples/depth-estimation-from-stereo-video.html - MATLAB

close all
clear
load stereo_params_errors.mat % Load stereo parameters
video_name='gout_diag'; % Choose video to do detection on, video names should start with
% left_ and right_ for each stereo camera
% Visualize camera extrinsics.
% figure
% showExtrinsics(stereoParams);

%% Calibration Session
%Open the application
%stereoCameraCalibrator
%From the app go to 'open' and select: calibrationSession.mat

%% Right and left iamges from video
videoFileLeft = strcat('left_',video_name,'.avi');
videoFileRight = strcat('right_',video_name,'.avi');
readerLeft = vision.VideoFileReader(videoFileLeft,'VideoOutputDataType','uint8');
readerRight = vision.VideoFileReader(videoFileRight,'VideoOutputDataType','uint8');
player = vision.VideoPlayer('Position', [20,200,740 560]);

writer_rect = VideoWriter(strcat(video_name,'_rectified.avi'));
open(writer_rect);
cont = ~isDone(readerLeft);
while ~isDone(readerLeft) && ~isDone(readerRight) %For all of the frames in the video
    img_left = step(readerLeft); %Crop the left image (located on top)
    img_right = step(readerRight); %Crop the left image (located on top)
    [frameLeftRect, frameRightRect] = rectifyStereoImages(img_left, img_right, stereoParams);
    rectified_img= stereoAnaglyph(frameLeftRect, frameRightRect);
    writeVideo(writer_rect, rectified_img) %Write the rectified video to file
    frameLeftGray=rgb2gray(frameLeftRect); frameRightGray=rgb2gray(frameRightRect); %Convert frames to gray scale
    % Generate disparity map
    disparityMap = disparitySGM(frameLeftGray, frameRightGray); %Find gray images
    figure (1)
    imshow(disparityMap, [0, 64]) %Show the disparity map
    title('Disparity Map');
    colormap jet %Show the disparity map in color
    colorbar
end
close(writer_rect); %Close the writer
%% 3D scence reconstruction from stereo camera
points3D = reconstructScene(disparityMap, stereoParams);
% Create a pointCloud object and convert dimensions to meters
points3D = points3D./ 1000;
ptCloud = pointCloud( points3D,'Color', frameLeftRect); %Create a point cloud using left images
% Creation of a streaming point and a cloud viewer
player3D = pcplayer([-14, 8], [-8, 8], [-10, 0], 'VerticalAxis', 'y', 'VerticalAxisDir', 'down');
% point cloud visualization
view(player3D, ptCloud); 

%% Detect people in video
readerLeft = vision.VideoFileReader(videoFileLeft,'VideoOutputDataType','uint8'); %, 'VideoOutputDataType', 'uint8'
readerRight = vision.VideoFileReader(videoFileRight,'VideoOutputDataType','uint8');
writer = VideoWriter(strcat('detect_',video_name));
open(writer);
while ~isDone(readerLeft) && ~isDone(readerRight) %When both are then then
    % Read both frames and step them forward once
    frameLeft = readerLeft.step();
    frameRight = readerRight.step();

    % Rectify both frames
    [frameLeftRect, frameRightRect] = rectifyStereoImages(frameLeft, frameRight, stereoParams);
    
    % Convert both frames to grayscale
    frameLeftGray  = rgb2gray(frameLeftRect);
    frameRightGray = rgb2gray(frameRightRect);
    
    % Compute the disparity map using frames
    disparityMap = disparitySGM(frameLeftGray, frameRightGray);
    
    % Reconstruct the 3-D scene.
    points3D = reconstructScene(disparityMap, stereoParams);
    points3D = points3D ./ 1000;
    ptCloud = pointCloud(points3D, 'Color', frameLeftRect);
    view(player3D, ptCloud);
    peopleDetector = vision.PeopleDetector('MinSize', [140 76]);
    % Detect people in the left frame
    bboxes = peopleDetector.step(frameLeftGray);
    
    if ~isempty(bboxes) %If any people are detected then
        % Finding centroids of detected people
        centroids = [round(bboxes(:, 1) + bboxes(:, 3) / 2), round(bboxes(:, 2) + bboxes(:, 4) / 2)];
        
        % Finding 3-D world coordinates of the centroids
        centroidsIdx = sub2ind(size(disparityMap), centroids(:, 2), centroids(:, 1));
        X = points3D(:, :, 1);        Y = points3D(:, :, 2);        Z = points3D(:, :, 3);
        centroids3D = [X(centroidsIdx), Y(centroidsIdx), Z(centroidsIdx)];
        
        % Find the distances from the camera in meters by squaring the sum
        % of thier centroids
        dists = sqrt(sum(centroids3D .^ 2, 2));
        
        % Display the detect people and their distances.
        labels = cell(1, numel(dists));
        for i = 1:numel(dists) 
            labels{i} = sprintf('%0.2f meters', dists(i));
        end
        dispFrame = insertObjectAnnotation(frameLeftRect, 'rectangle', bboxes,labels,'LineWidth',6,'FontSize',14,'Color','green');
    else %If no people are detected (no bounding box) then display the rectified image
        dispFrame = frameLeftRect;
    end
    writeVideo(writer,dispFrame)
end
close(writer);
