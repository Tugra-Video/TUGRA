@echo off
:: ------------------------------------------------------------
::  Run TUĞRA‑TI2V‑5B on a GTX 1060 6 GB / i5‑12400 / 32 GB PC
:: ------------------------------------------------------------
:: Add the Python launcher to PATH if it isn’t already there.
:: (Adjust the path if you installed Python elsewhere.)
set "PYTHON_PATH=C:\Users\LenovoPC\AppData\Local\Python\pythoncore-3.14-64"
set "PATH=%PYTHON_PATH%;%PYTHON_PATH%\Scripts;%PATH%"

set "PYTHONIOENCODING=utf-8"
:: call .\venv\Scripts\activate

:: ----  Execution  -------------------------------------------
echo Please enter the path to your input image (e.g., input.png):
set /p IMAGE_PATH=Image Path: 
echo Please enter your textual prompt (or press Enter for default):
set /p PROMPT_TEXT=Prompt: 
if "%PROMPT_TEXT%"=="" set PROMPT_TEXT=A majestic purple dragon soaring high above neon-lit futuristic skyscrapers, cyberpunk aesthetic, cinematic shot, 8k resolution.
py generate.py --task i2v-A14B --size 704*1280 --ckpt_dir ./TUGRA-TI2V-5B --offload_model True --convert_model_dtype --t5_cpu --sample_steps 30 --image "%IMAGE_PATH%" --prompt "%PROMPT_TEXT%"

:: Keep the console window open to see any messages
pause
