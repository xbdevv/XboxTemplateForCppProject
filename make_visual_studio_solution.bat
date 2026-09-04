@echo off

echo Example:
echo    -G "Visual Studio 17 2022"
echo.

echo Visual Studio 18 2026     = Generates Visual Studio 2026 project files.
echo                                 Use -A option to specify architecture.
echo * Visual Studio 17 2022   = Generates Visual Studio 2022 project files.
echo                                 Use -A option to specify architecture.
echo Visual Studio 16 2019     = Generates Visual Studio 2019 project files.
echo                                 Use -A option to specify architecture.
echo Visual Studio 15 2017     = Generates Visual Studio 2017 project files.
echo                                 Use -A option to specify architecture.
echo Visual Studio 14 2015     = Deprecated. Generates Visual Studio 2015 project files.
echo                                 Use -A option to specify architecture.

if "%~1"=="" (
    echo.
    echo Erreur : vous devez specifier le nom du projet.
    echo.
    echo Usage:
    echo    make_visual_studio_solution.bat projetc_name "Visual sutdio version"
    echo Example : 
    echo    make_visual_studio_solution.bat HelloWorld "Visual Studio 15 2017"		
    echo.
    exit /b 1
)


set "TARGET_PROJECT_NAME=%~1"
set "TARGET_VISUAL_STUDIO=%~2"

echo Project name : %TARGET_PROJECT_NAME% with "%TARGET_VISUAL_STUDIO%"

mkdir build
cd build
cmake -DTARGET_NAME=%TARGET_PROJECT_NAME% -G "%TARGET_VISUAL_STUDIO%" ..\