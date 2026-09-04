## Work based on https://github.com/xboxoneresearch/XboxUnattend C/C++ project but configurable to build any projects or dlls
 Template to create C/C++ project with visual studio in order to work in xbox dev mod (Retail with dev mod or devkit with dev mode activated) 
 See: https://wiki.xosft.dev/setup-dev-mode

## Prerequisites
- CMake (3.8 or greater)
- Visual Studio 2015/2017
- Windows 10 SDK (Preferably latest)
- Xbox One Devkit

## Compiling
It's important to note that debug builds will fail most of the time so it is best to always build with the release configuration as well as x64.

Generate a solution with command line:
cmake -DTARGET_NAME=<YourNewProjectName> -S . -B build -G <visual studio version>

Exemple : 
	cmake -DTARGET_NAME=HelloWorld -S . -B build -G "Visual Studio 15 2017"
	
Build the project:
	cmake --build . --config Release


Generate a solution with script:
	make_visual_studio_solution.bat HelloWorld "Visual Studio 15 2017"
	
Build with script:
	build_solution.bat


	
## command line cmake -DTARGET_NAME=HelloWorld -S . -B build -G
* DTARGET_NAME=<PROJECT_NAME> : create a variable CMake named TARGET_NAME with the value HelloWorld
* S : indicates that the source files (and the CMakeLists.txt) are located in the current directory (.).
* B build : Indicates that all generated files (Visual Studio solution, CMake cache, etc.) will be placed in the build directory.
* G visual studio version ("Visual Studio 15 2017", ....)

## References
* https://conference.hitb.org/files/hitbsecconf2018pek/materials/D1T2%20-%20The%20Inner%20Workings%20of%20the%20Windows%20Runtime%20-%20James%20Forshaw.pdf
* https://docs.microsoft.com/en-us/windows/uwp/cpp-and-winrt-apis/intro-to-using-cpp-with-winrt
* https://docs.microsoft.com/en-us/windows/win32/learnwin32/what-is-a-com-interface-
