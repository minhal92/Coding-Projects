%% Stereo camera calibration MATLAB
stereoCameraCalibrator  %MATLAB app to calibrate stereo camera

showReprojectionErrors(params);
showExtrinsics(params);
squareSize = 108; % Size of square is 108mm


%Camera1IntrinsicsErrors Standard errors of camera 1 estimated intrinsics and distortion coefficients, specified as an intrinsicsEstimationErrors object.

%Camera1ExtrinsicsErrors Standard errors of camera 1 estimated extrinsics parameters, specified as an extrinsicsEstimationErrors object.

%Camera2IntrinsicsErrors Standard errors of camera 2 estimated intrinsics and distortion coefficients, specified as an intrinsicsEstimationErrors object.

%RotationOfCamera2Error Standard errors of rotated vector of camera 2 relative to camera 1, specified as a 3-element vector.

%TranslationOfCamera2Error Standard errors of translation of camera 2 relative to camera 1, specified as a 3-element vector.



%% Run and pewview webcam
webcamlist
%cam1=webcam('Intel(R) RealSense(TM) Depth Camera 435i Depth'); 
%cam2=webcam('Intel(R) RealSense(TM) Depth Camera 435i RGB');

cam=webcam('MYNT-EYE-S1030');


%% Capturing one frame to get its size - seperation of video data
videoframe = snapshot(cam);
framesize =  size(videoframe);
videoplayer= vision.VideoPlayer('Position', [100 100 [framesize(2), framesize(1)]+30]);
runLoop = true;
FrameCount = 0;
while runLoop && FrameCount < 100
   FrameCount = FrameCount + 1;
   videoframe = snapshot(cam);
   videoframe = rgb2gray(videoframe);
   step(videoplayer, videoframe);
   runLoop = isOpen(videoplayer);
end