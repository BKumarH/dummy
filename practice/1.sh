MATCH_PLAYED=14
positionOrder=0
win=0
lose=0
points=0
nrr=""
rcbPlayers=("Virat" "Abd" "Chahal")
miPlayers=("Rohit" "Pollard" "Bumrah")
dcPlayers=("Player1DC" "Player2DC" "Player3DC")
cskPlayers=("Player1CSK" "Player2CSK" "Player3CSK")
kkrPlayers=("Player1KKR" "Player2KKR" "Player3KKR")
pbksPlayers=("Player1PBKS" "Player2PBKS" "Player3PBKS")
rrPlayers=("Player1RR" "Player2RR" "Player3RR")
srhPlayers=("Player1SRH" "Player2SRH" "Player3SRH")


echo "Enter Your Fav IPL Team"
echo "Eg :- RCB"
read teamName




toLowerCase=`echo "$teamName" | awk '{print tolower($0)}'`




function invalidInput() {
         echo "Given Input Is Invalid ! Please Check Your Input :("
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




function batsman() {
         echo "$1 Is a Batsman Of $2"
}




function captain() {
         echo "$1 Is a Captain Of $2"
}




function bowler() {
         echo "$1 Is a Bowler Of $2"
}


function businessLogic() {
 
arr=($1)
  for (( i=0;i<$2;i++ ))
do
  if [ $i -eq 0 ]
then

batsman "${arr[i]}" "$3"
elif [ $i -eq 1 ]
then 
captain "${arr[i]}" "$3"
else
bowler "${arr[i]}" "$3"
fi 
done
   
}




function rolesAndResponsibility() {




         
         if [ $1 == "RCB" ]
         then
             businessLogic "${rcbPlayers[*]}" "${#rcbPlayers[*]}" "$1"
         elif [ $1 == "MI" ]
         then
              businessLogic "${miPlayers[*]}" "${#miPlayers[*]}" "$1"
         elif [ $1 == "DC" ]
         then
              businessLogic "${dcPlayers[*]}" "${#dcPlayers[*]}" "$1"
elif [ $1 == "PBKS" ]
         then
              businessLogic "${pbksPlayers[*]}" "${#pbksPlayers[*]}" "$1"
elif [ $1 == "RR" ]
         then
              businessLogic "${rrPlayers[*]}" "${#rrPlayers[*]}" "$1"
elif [ $1 == "CSK" ]
         then
              businessLogic "${cskPlayers[*]}" "${#cskPlayers[*]}" "$1"
elif [ $1 == "SRH" ]
         then
              businessLogic "${srhPlayers[*]}" "${#srhPlayers[*]}" "$1"
         else
             echo "No such team"
         fi 
         




}




function playOff() {




         if (( $2 > 0 && $2 <= 4 ))
         then
             echo $1 "Eligible For Play-Offs"
         else
             echo $1 "Not Eligible For Play-Offs"
         fi




         rolesAndResponsibility $1




}




function message() {




         toUpperCase=`echo "$teamName" | awk '{print toupper($0)}'`
         echo "IPL Points Table 2021"
         echo "Place Secured : " $1
         echo "Team : " $toUpperCase
         echo "Matches Faced : " $MATCH_PLAYED
         echo "Won : " $2 
         echo "Lost : " $4 
         echo "NRR : " $3
         echo "Points : " $5
         playOff $toUpperCase $1




}




function pointsCalculator() {




         lose=$((MATCH_PLAYED-$2))
         points=$(($2*2))
         message $1 $2 $3 $lose $points




}




function notFound() {
         echo "Team Not Found"
}








case $positionOrder in
   1)
      win=10
      nrr="+0.481"
      pointsCalculator $positionOrder $win $nrr 
      ;;
   2)
      win=9
      nrr="+0.455"
      pointsCalculator $positionOrder $win $nrr 
      ;;
   3)
      win=9
      nrr="-0.140"
      pointsCalculator $positionOrder $win $nrr 
      ;;
   4)
      win=7
      nrr="+0.587"
      pointsCalculator $positionOrder $win $nrr 
      ;;
   5)
      win=7
      nrr="+0.116"
      pointsCalculator $positionOrder $win $nrr 
      ;;
   6)
      win=6
      nrr="-0.001"
      pointsCalculator $positionOrder $win $nrr 
      ;;
   7)
      win=5
      nrr="-0.993"
      pointsCalculator $positionOrder $win $nrr 
      ;;
   8)
      win=3
      nrr="-0.545"
      pointsCalculator $positionOrder $win $nrr 
      ;;
   *)
     notFound
     ;;
esac