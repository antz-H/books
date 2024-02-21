@echo off
echo DOCS PUSH BAT
echo\
echo 1. Start submitting code to the local repository
git add *
echo\
echo 2. Commit the changes to the local repository

set commit_msg_default=Commit something
set /p commit_msg=Enter your custom commit message (press Enter for default): 
if "%commit_msg%"=="" (
    echo "commit_msg : %commit_msg_default%"
    git commit -m "%commit_msg_default%"
) else (
    git commit -m "%commit_msg%"
)

echo\
echo 3. Push the changes to the remote git server
git push

echo\
echo Batch execution complete!
pause