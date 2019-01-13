@echo off
rem --- 
rem ---  �f���f�[�^����[�x������s��
rem --- 

echo ------------------------------------------
echo FCRN-DepthPrediction-vmd [%IDX%]
echo ------------------------------------------

rem -- 3dpose_gan �f�B���N�g���Ɉړ�
cd /d %~dp0
cd /d %DEPTH_DIR%

rem ---  python ���s
python tensorflow/predict_video.py --model_path tensorflow/data/NYU_FCRN.ckpt --video_path %INPUT_VIDEO% --baseline_path %OUTPUT_SUB_DIR% --interval 10 --verbose %VERBOSE%

cd /d %~dp0

exit /b
