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
elif [ $toLowerCase == "rcb" ]
then
	positionOrder=3
elif [ $toLowerCase == "kkr" ]
then
	positionOrder=4
elif [ $toLowerCase == "mi" ]
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



function playOff(){
	if(($2>0 && $2<=4))
	then
		echo $1 "Eligible for play offs"
	else
		echo $1 "Not eligible for playoffs"
	fi
}



function message(){
toUpperCase = `echo "$teamName" | awk '{print toupper($0)}'`
echo "IPL Points Table 2021"

echo "Place Secured : $positionOrder"
echo "Team :"$toUpperCase
echo "Matches Faced : " $MATCH_PLAYED
echo "Won : " $2 
echo "Lost : " $4
echo "NRR : " $3
echo "Points : " $5
playOff $toUpperCase $1


}



function pointCalculator(){

lose=$((MATCH_PLAYED-$2))
points=$(($2*2))
message $1 $2 $3 $lose $points

}

function notFound(){

 echo "Team not found."
}




case $positionOrder in
    1)   
	win=10
	nrr="+0.481"
	pointCalculator $positionOrder $win $nrr
      ;;
    2)
      	win=9
	nrr="+0.455"
	pointCalculator $positionOrder $win $nrr
      ;;
    3)
      	win=9
	nrr="-0.140"
	pointCalculator $positionOrder $win $nrr
      ;;
    4)
      	win=7
	nrr="+0.587"
	pointCalculator $positionOrder $win $nrr
      ;;
    5)
      	win=7
	nrr="+0.116"
	pointCalculator $positionOrder $win $nrr
      ;;
    6)
      	win=6
	nrr="-0.001"
	pointCalculator $positionOrder $win $nrr
      ;;
    7)
      	win=5
	nrr="-0.993"
	pointCalculator $positionOrder $win $nrr
      ;;
    8)
      	win=3
	nrr="-0.545"
	pointCalculator $positionOrder $win $nrr
      ;;
    *)
        notFound
     ;;
esac