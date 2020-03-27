@echo off

set baseDir=%~dp0..

set /P projectName=<%baseDir%\.project

docker-compose ^
    --file "%baseDir%\app.compose\docker-compose.yml" ^
    --env-file "%baseDir%\.env" ^
    --project-name "%projectName%" ^
    --project-directory "%baseDir%" ^
    %*