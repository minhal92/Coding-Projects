% Auto-generated by stereoCalibrator app on 30-Apr-2019
%-------------------------------------------------------


% Define images to process
imageFileNames1 = {'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_1.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_10.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_11.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_12.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_13.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_14.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_15.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_16.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_17.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_18.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_19.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_2.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_20.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_21.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_22.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_23.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_24.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_25.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_26.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_27.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_28.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_29.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_3.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_30.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_31.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_32.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_33.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_34.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_35.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_36.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_37.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_38.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_39.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_4.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_40.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_41.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_42.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_5.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_6.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_7.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_8.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_left\left_9.jpg',...
    };
imageFileNames2 = {'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_1.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_10.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_11.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_12.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_13.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_14.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_15.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_16.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_17.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_18.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_19.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_2.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_20.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_21.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_22.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_23.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_24.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_25.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_26.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_27.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_28.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_29.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_3.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_30.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_31.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_32.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_33.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_34.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_35.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_36.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_37.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_38.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_39.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_4.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_40.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_41.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_42.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_5.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_6.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_7.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_8.jpg',...
    'C:\Users\mhussai\OneDrive - Clemson University\Clemson\Spring 2019\Perception\Perception Project\MATLAB Code\stereo_cam_right\right_9.jpg',...
    };

% Detect checkerboards in images
[imagePoints, boardSize, imagesUsed] = detectCheckerboardPoints(imageFileNames1, imageFileNames2);

% Generate world coordinates of the checkerboard keypoints
squareSize = 108;  % in units of 'millimeters'
worldPoints = generateCheckerboardPoints(boardSize, squareSize);

% Read one of the images from the first stereo pair
I1 = imread(imageFileNames1{1});
[mrows, ncols, ~] = size(I1);

% Calibrate the camera
[stereoParams, pairsUsed, estimationErrors] = estimateCameraParameters(imagePoints, worldPoints, ...
    'EstimateSkew', false, 'EstimateTangentialDistortion', false, ...
    'NumRadialDistortionCoefficients', 2, 'WorldUnits', 'millimeters', ...
    'InitialIntrinsicMatrix', [], 'InitialRadialDistortion', [], ...
    'ImageSize', [mrows, ncols]);

% View reprojection errors
h1=figure; showReprojectionErrors(stereoParams);

% Visualize pattern locations
h2=figure; showExtrinsics(stereoParams, 'CameraCentric');

% Display parameter estimation errors
displayErrors(estimationErrors, stereoParams);

% You can use the calibration data to rectify stereo images.
I2 = imread(imageFileNames2{1});
[J1, J2] = rectifyStereoImages(I1, I2, stereoParams);

% See additional examples of how to use the calibration data.  At the prompt type:
% showdemo('StereoCalibrationAndSceneReconstructionExample')
% showdemo('DepthEstimationFromStereoVideoExample')