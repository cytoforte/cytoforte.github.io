#changing directory to root
cd\

#making a dir named temp
mkdir temp

#changing to that dir
cd temp

#Install windows command line package manager
Add-AppxPackage "https://github.com/microsoft/winget-cli/releases/download/v0.1.42101-preview/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.appxbundle"

#allow running remote scripts in this pc
Set-ExecutionPolicy RemoteSigned -scope CurrentUser

#install scoop
iwr -useb get.scoop.sh | iex

#install needed apps using scoop
scoop install git aria2

#download Microsoft dotnet core sdk
aria2c https://download.visualstudio.microsoft.com/download/pr/56b00a71-686f-4f27-9ad1-9b30308688ed/1fa023326e475813783a240532c9f2c8/dotnet-sdk-3.1.302-win-x64.exe

#install dotnet core sdk
./dotnet-sdk-3.1.302-win-x64.exe

#install visual studio code
winget install Microsoft.VisualStudioCodeInsiders

