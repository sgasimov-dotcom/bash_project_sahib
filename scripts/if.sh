# first checks IF then checks ELIF , if first fails then ELIF does it
if [ 2 -eq 2 ]; then
        echo test passed
elif [ 1 -eq 1 ]; then
        echo second test passed 
else
        echo test failed
fi