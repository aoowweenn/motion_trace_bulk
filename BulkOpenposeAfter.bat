@echo off
rem --- 
rem ---  �f���f�[�^����Openpose�Ŏp�����肷��
rem --- 


echo ------------------------------------------
echo Openpose ���
echo ------------------------------------------

rem ---  ���͑Ώۉf���t�@�C���p�X
echo ��͑ΏۂƂȂ�f���̃t�@�C���̃t���p�X����͂��ĉ������B
echo 1�t���[���ڂɕK���l�����f���Ă��鎖���m�F���Ă��������B�i�f���ĂȂ��Ǝ��ŃR�P�܂��j
echo ���̐ݒ�͔��p�p�����̂ݐݒ�\�ŁA�K�{���ڂł��B
set INPUT_VIDEO=
set /P INPUT_VIDEO=����͑Ώۉf���t�@�C���p�X: 
rem echo INPUT_VIDEO�F%INPUT_VIDEO%

IF /I "%INPUT_VIDEO%" EQU "" (
    ECHO ��͑Ώۉf���t�@�C���p�X���ݒ肳��Ă��Ȃ����߁A�����𒆒f���܂��B
    EXIT /B
)

rem ---  �f���ɉf���Ă���ő�l��

echo --------------
echo �f���ɉf���Ă���ő�l������͂��ĉ������B
echo �������͂����AENTER�����������ꍇ�A1�l���̉�͂ɂȂ�܂��B
echo �����l���������x�̑傫���ŉf���Ă���f����1�l�����w�肵���ꍇ�A��͑Ώۂ���ԏꍇ������܂��B
set NUMBER_PEOPLE_MAX=1
set /P NUMBER_PEOPLE_MAX="�f���ɉf���Ă���ő�l��: "

rem ---  ��͌���JSON�f�B���N�g���p�X
echo --------------
echo Openpose�̉�͌��ʂ�JSON�f�B���N�g���̃t���p�X����͂��ĉ������B({���於}_json)
echo ���̐ݒ�͔��p�p�����̂ݐݒ�\�ŁA�K�{���ڂł��B
set OUTPUT_JSON_DIR=
set /P OUTPUT_JSON_DIR=����͌���JSON�f�B���N�g���p�X: 
rem echo OUTPUT_JSON_DIR�F%OUTPUT_JSON_DIR%

IF /I "%OUTPUT_JSON_DIR%" EQU "" (
    ECHO ��͌���JSON�f�B���N�g���p�X���ݒ肳��Ă��Ȃ����߁A�����𒆒f���܂��B
    EXIT /B
)

rem ---  ���]�t���[�����X�g
echo --------------
set REVERSE_FRAME_LIST=
echo Openpose����F�����Ĕ��]���Ă���t���[���ԍ�(0�n�܂�)���w�肵�Ă��������B
echo �����Ŏw�肳�ꂽ�ԍ��̃t���[���ɑ΂��āA���]������s���A���]�F�肳�ꂽ�ꍇ�A�֐߈ʒu�����]����܂��B
echo �J���}�ŕ������w��\�ł��B�܂��A�n�C�t���Ŕ͈͂��w��\�ł��B
echo ��j4,10-12�@�c�@4,10,11,12 �����]����Ώۃt���[���ƂȂ�܂��B
set /P REVERSE_FRAME_LIST="�����]�t���[�����X�g: "

rem ---  ���Ԏw�胊�X�g
echo --------------
set ORDER_SPECIFIC_LIST=
echo �����l���g���[�X�ŁA������̐l��INDEX���Ԃ��w�肵�Ă��������B
echo 0F�ڂ̗����ʒu�����珇�Ԃ�0�ԖځA1�ԖځA�Ɛ����܂��B
echo �t�H�[�}�b�g�F�m���t���[���ԍ���:������0�Ԗڂɂ���l���̃C���f�b�N�X,������1�Ԗځc�n
echo ��j[10:1,0]�@�c�@10F�ڂ́A������1�Ԗڂ̐l���A0�Ԗڂ̐l���̏��Ԃɕ��בւ��܂��B
echo [10:1,0][30:0,1]�̂悤�ɁA�J�b�R�P�ʂŕ������w��\�ł��B
set /P ORDER_SPECIFIC_LIST="�����Ԏw�胊�X�g: "

rem ---  �ڍ׃��O�L��

echo --------------
echo �ڍׂȃ��O���o�����Ayes �� no ����͂��ĉ������B
echo �������͂����AENTER�����������ꍇ�A�ʏ탍�O�Ɗe��A�j���[�V����GIF���o�͂��܂��B
echo �ڍ׃��O�̏ꍇ�A�e�t���[�����Ƃ̃f�o�b�O�摜���ǉ��o�͂���܂��B�i���̕����Ԃ�������܂��j
echo warn �Ǝw�肷��ƁA�A�j���[�V����GIF���o�͂��܂���B�i���̕������ł��j
set VERBOSE=2
set IS_DEBUG=no
set /P IS_DEBUG="�ڍ׃��O[yes/no/warn]: "

IF /I "%IS_DEBUG%" EQU "yes" (
    set VERBOSE=3
)

IF /I "%IS_DEBUG%" EQU "warn" (
    set VERBOSE=1
)

rem --echo NUMBER_PEOPLE_MAX: %NUMBER_PEOPLE_MAX%

rem -----------------------------------

rem -- ���s���t
set DT=%date%
rem -- ���s����
set TM=%time%
rem -- ���Ԃ̋󔒂�0�ɒu��
set TM2=%TM: =0%
rem -- ���s�������t�@�C�����p�ɒu��
set DTTM=%dt:~0,4%%dt:~5,2%%dt:~8,2%_%TM2:~0,2%%TM2:~3,2%%TM2:~6,2%

echo --------------

exit /b
