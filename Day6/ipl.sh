MATCH_PLAYED=14
positionOrder=0
win=0
lose=0
points=0
nrr=""

echo "Enter Your Fav IPL Team "
echo "Eg. CSK"
read teamName
toLowerCase=`echo "$teamName" | awk '{print tolower($0)}'`

function invalidInput()
{ 
echo "Input is invalid."
}

if [ $toLowerCase == "dc" ]
then
	positionOrder=1
elif [ $toLowerCase == "csk" ]
then
	positionOrder=2
elif [ $toLowerCase == "mi" ]
then
	positionOrder=3
elif [ $toLowerCase == "lc" ]
then
	positionOrder=4
elif [ $toLowerCase == "pb" ]
then
	positionOrder=5
elif [ $toLowerCase == "pbks" ]
then
	positionOrder=6
elif [ $toLowerCase == "rr" ]
then
	positionOrder=7
elif [ $toLowerCase == "srh" ]
then
	positionOrder=8
else
	invalidInput
fi

echo "Place Secured : $positionOrder"