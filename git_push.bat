@echo off
echo DOCS PUSH BAT
echo\
echo 1. Start submitting code to the local repository
git add *
echo\
echo 2. Commit the changes to the local repository

set now=%date:~0,10% %time%
set /p commit_msg="Enter your custom commit message (press Enter for default): "
echo 2.1
if "%commit_msg%"=="" (
    echo 2.2
    echo "commit_msg:" %now%
    git commit -m "%now%"
) else (
    git commit -m "%commit_msg%"
)

echo\
echo 3. Push the changes to the remote git server
git push

echo\
echo Batch execution complete!
pause