read -p "Enter a" a
read -p "Enter b" b

function multiply(){

	echo $(($1*$2))
}


result="$(multiply $a $b)"

echo "Answer=$result"


