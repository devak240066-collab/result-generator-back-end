@echo off
echo Building the project...
call mvn clean package -DskipTests

if %ERRORLEVEL% NEQ 0 (
    echo Build failed!
    pause
    exit /b %ERRORLEVEL%
)

echo Starting the application on port 8080...
set PORT=8080
java -jar target\result-generator-1.0.0-jar-with-dependencies.jar

pause
