@echo off
echo DOCS PUSH BAT
echo\
echo 1. Start submitting code to the local repository
git add *
 echo\
echo 2. Commit the changes to the local repository
set now=%date:~0,10% %time%
echo "Time:" %now%
git commit -m "%now%"
 echo\
echo 3. Push the changes to the remote git server
git push
 echo\
echo Batch execution complete!
pause