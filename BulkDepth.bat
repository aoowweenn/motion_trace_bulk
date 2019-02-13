@echo off
rem --- 
rem ---  �f���f�[�^����[�x������s��
rem --- 

echo ------------------------------------------
echo FCRN-DepthPrediction-vmd
echo ------------------------------------------

rem -- FCRN-DepthPrediction-vmd �f�B���N�g���Ɉړ�
cd /d %~dp0
cd /d %DEPTH_DIR%

rem ---  python ���s
python tensorflow/predict_video.py --model_path tensorflow/data/NYU_FCRN.ckpt --video_path %INPUT_VIDEO% --json_path %OUTPUT_JSON_DIR% --interval 10 --reverse_frames "%REVERSE_FRAME_LIST%" --order_specific "%ORDER_SPECIFIC_LIST%" --verbose %VERBOSE% --now %DTTM%

cd /d %~dp0

exit /b
