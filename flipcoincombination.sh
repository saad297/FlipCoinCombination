echo "Welcome to the flip coin combination program."

read -p "Enter the number of times you want to flip : " a

declare -A singlet


for (( i=1;i<=$a;i++ ))
do

	combination=""
	for (( j=1;j<=1;j++ ))
	do

		x=$(($RANDOM%2))

	if [ $x -eq 0 ]
	then
		combination=$combination"H"
	else
		combination=$combination"T"
	fi
	done
	singlet[$combination]=$((${singlet[$combination]}+1))
done

if [ ${singlet[H]} -gt  ${singlet[T]} ]
then
	ans=$((${singlet[H]}*100/$a))
	echo "Heads =  ${singlet[H]} %"
else
	ans=$((${singlet[T]}*100/$a))
        echo "Tails =  ${singlet[T]} %"
fi
