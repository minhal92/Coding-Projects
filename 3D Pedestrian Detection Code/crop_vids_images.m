%% Crop Videos into images
video = VideoReader('stereo.avi');
p=0;
for k=1:2:floor(video.Duration) %hasFrame(v)
    p=p+1; %Interate the image number
    video.CurrentTime = k; %Find the current time
    vidFrame = readFrame(video);
    leftFileName = strcat('left_', num2str(p), '.jpg');
    rightFileName = strcat('right_', num2str(p), '.jpg');
    img_crop_left = imcrop(vidFrame,[724.5 56.5 733 468]); % Crop with same dimensions
    img_crop_right = imcrop(vidFrame,[724.5 545.5 733 468]); 
    imwrite(img_crop_left,'cam_right'+leftFileName) %Write the file name
    imwrite(img_crop_right,'cam_right'+rightFileName)
end

%% Crop Videos into smaller videos
clear
clc
video_name='gou_stairs.avi';
video = VideoReader(video_name);
writer_left = VideoWriter(strcat('left_',video_name));
writer_left.FrameRate = video.FrameRate;
writer_right = VideoWriter(strcat('right_',video_name));
writer_right.FrameRate = video.FrameRate;
open(writer_left);
open(writer_right);
while hasFrame(video) %For all of the frames in the video
    vidFrame = readFrame(video); %Read each frame
    img_crop_left = imcrop(vidFrame,[724.5 56.5 733 468]); %Crop the left image (located on top)
    img_crop_right = imcrop(vidFrame,[724.5 545.5 733 468]); %Exact sane size
    writeVideo(writer_left,img_crop_left)
    writeVideo(writer_right,img_crop_right)
end
close(writer_left);
close(writer_right);


%% Crop images
% Read files image1.jpg through image20.jpg.  Files are in the current directory.
% Use fullfile() if you need to prepend some other folder 
clear
for k = 1:45
    % Create an image filename, and read it in to a variable called imageData.
	file_n = strcat('a (', num2str(k),')','.png');
    leftFileName = strcat('left_', num2str(k), '.png');
    rightFileName = strcat('right_', num2str(k), '.png');
        if exist(file_n, 'file')
            imageData = imread(file_n);
            img_crop_left = imcrop(imageData,[76.5 91.5 912 586]); %
            img_crop_right = imcrop(imageData,[987.5 91.5 912 586]);
            imwrite(img_crop_left,leftFileName)
            imwrite(img_crop_right,rightFileName)
        else
            fprintf('File %s does not exist.\n', file_n);
        end
    display(k,'image')
end