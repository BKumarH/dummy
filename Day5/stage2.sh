echo "Enter your calculation"
echo "1. Add 2. Sub 3. Mul 4. Div"
read num

read -p "Enter X" x
read -p "Enter Y" y

z=0

case $num in 
	1) 
		z=$((x+y))
		;;
	2)
		z=$((x-y))
		;;
	3)
		z=$((x*y))
		;;
	4)
		z=$((x/y))
		;;
	*)
		echo "Unable to solve"
		;;
esac

echo "Output =  $z"
