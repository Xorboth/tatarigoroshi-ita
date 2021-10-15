::
:: Set variables
::

SET /P version= Enter the version number: 

set tempFolder=temp
set outputFolder=output

set higurashiData=HigurashiEp03_Data

set changelog=cambiamenti.txt

set readme=leggimi.txt
set readmeInstaller=leggimi_07th_mod_installer.txt
set readmeManual=leggimi_manuale.txt

set assets=sharedassets0.assets
set assetsWindowsSteamGog=sharedassets0.assets
set assetsWindowsMangaGamer=Windows-MG-5.3.5f1.languagespecificassets
set assetsWindowsMangaGamerQuestionArc=Windows-MG-QA-5.3.4p1.languagespecificassets
set assetsLinuxMacOsSteamGog=LinuxMac-Steam-GOG-5.4.0f1.languagespecificassets
set assetsLinuxMacOsMangaGamer=LinuxMac-MG-5.3.4p1.languagespecificassets

set output07th=tatarigoroshi_ita_07th_mod_installer.7z
set outputWindowsSteamGog=tatarigoroshi_ita_windows_steam_gog_%version%.7z
set outputWindowsMangaGamer=tatarigoroshi_ita_windows_mangagamer_%version%.7z
set outputWindowsMangaGamerQuestionArc=tatarigoroshi_ita_windows_mangagamer_questionarc_%version%.7z
set outputLinuxMacOsSteamGog=tatarigoroshi_ita_linux_macos_steam_gog_%version%.7z
set outputLinuxMacOsMangaGamer=tatarigoroshi_ita_linux_macos_mangagamer_%version%.7z


::
:: Create folders
::

rmdir /Q /S .\%tempFolder%
md .\%tempFolder%

md .\%outputFolder%


::
:: Delete old archives
::

del .\%outputFolder%\%output07th%
del .\%outputFolder%\%outputWindowsSteamGog%
del .\%outputFolder%\%outputWindowsMangaGamer%
del .\%outputFolder%\%outputWindowsMangaGamerQuestionArc%
del .\%outputFolder%\%outputLinuxMacOsSteamGog%
del .\%outputFolder%\%outputLinuxMacOsMangaGamer%


::
:: Create 07th archive
::

robocopy ..\%higurashiData% .\%tempFolder%\%higurashiData% /E /MIR
copy ..\%changelog% .\%tempFolder%\%changelog%
copy ..\%readmeInstaller% .\%tempFolder%\%readme%

7za a .\%outputFolder%\%output07th% .\%tempFolder%\* -ssw -mx9


::
:: Initialize common manual archive
::

del .\%tempFolder%\%readme%

copy ..\%readmeManual% .\%tempFolder%\%readme%


::
:: Create Windows Steam GOG manual archive
::

del .\%tempFolder%\%higurashiData%\%assets%
del .\%tempFolder%\%higurashiData%\%assetsWindowsSteamGog%
del .\%tempFolder%\%higurashiData%\%assetsWindowsMangaGamer%
del .\%tempFolder%\%higurashiData%\%assetsWindowsMangaGamerQuestionArc%
del .\%tempFolder%\%higurashiData%\%assetsLinuxMacOsSteamGog%
del .\%tempFolder%\%higurashiData%\%assetsLinuxMacOsMangaGamer%

copy ..\%higurashiData%\%assetsWindowsSteamGog% .\%tempFolder%\%higurashiData%\%assets%

7za a .\%outputFolder%\%outputWindowsSteamGog% .\%tempFolder%\* -ssw -mx9


::
:: Create Windows MangaGamer manual archive
::

del .\%tempFolder%\%higurashiData%\%assets%
del .\%tempFolder%\%higurashiData%\%assetsWindowsSteamGog%
del .\%tempFolder%\%higurashiData%\%assetsWindowsMangaGamer%
del .\%tempFolder%\%higurashiData%\%assetsWindowsMangaGamerQuestionArc%
del .\%tempFolder%\%higurashiData%\%assetsLinuxMacOsSteamGog%
del .\%tempFolder%\%higurashiData%\%assetsLinuxMacOsMangaGamer%

copy ..\%higurashiData%\%assetsWindowsMangaGamer% .\%tempFolder%\%higurashiData%\%assets%

7za a .\%outputFolder%\%outputWindowsMangaGamer% .\%tempFolder%\* -ssw -mx9


::
:: Create Windows MangaGamer Question Arc manual archive
::

del .\%tempFolder%\%higurashiData%\%assets%
del .\%tempFolder%\%higurashiData%\%assetsWindowsSteamGog%
del .\%tempFolder%\%higurashiData%\%assetsWindowsMangaGamer%
del .\%tempFolder%\%higurashiData%\%assetsWindowsMangaGamerQuestionArc%
del .\%tempFolder%\%higurashiData%\%assetsLinuxMacOsSteamGog%
del .\%tempFolder%\%higurashiData%\%assetsLinuxMacOsMangaGamer%

copy ..\%higurashiData%\%assetsWindowsMangaGamerQuestionArc% .\%tempFolder%\%higurashiData%\%assets%

7za a .\%outputFolder%\%outputWindowsMangaGamerQuestionArc% .\%tempFolder%\* -ssw -mx9


::
:: Create Linux/MacOS Steam GOG manual archive
::

del .\%tempFolder%\%higurashiData%\%assets%
del .\%tempFolder%\%higurashiData%\%assetsWindowsSteamGog%
del .\%tempFolder%\%higurashiData%\%assetsWindowsMangaGamer%
del .\%tempFolder%\%higurashiData%\%assetsWindowsMangaGamerQuestionArc%
del .\%tempFolder%\%higurashiData%\%assetsLinuxMacOsSteamGog%
del .\%tempFolder%\%higurashiData%\%assetsLinuxMacOsMangaGamer%

copy ..\%higurashiData%\%assetsLinuxMacOsSteamGog% .\%tempFolder%\%higurashiData%\%assets%

7za a .\%outputFolder%\%outputLinuxMacOsSteamGog% .\%tempFolder%\* -ssw -mx9


::
:: Create Linux/MacOS MangaGamer manual archive
::

del .\%tempFolder%\%higurashiData%\%assets%
del .\%tempFolder%\%higurashiData%\%assetsWindowsSteamGog%
del .\%tempFolder%\%higurashiData%\%assetsWindowsMangaGamer%
del .\%tempFolder%\%higurashiData%\%assetsWindowsMangaGamerQuestionArc%
del .\%tempFolder%\%higurashiData%\%assetsLinuxMacOsSteamGog%
del .\%tempFolder%\%higurashiData%\%assetsLinuxMacOsMangaGamer%

copy ..\%higurashiData%\%assetsLinuxMacOsMangaGamer% .\%tempFolder%\%higurashiData%\%assets%

7za a .\%outputFolder%\%outputLinuxMacOsMangaGamer% .\%tempFolder%\* -ssw -mx9


::
:: Remove temp files
::

rmdir /Q /S .\%tempFolder%