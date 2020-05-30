echo "Welcome to the flip coin combination program."

read -p "Enter the number of times you want to flip : " a
read -p "Enter the choice of combination :
1) Singlet
2) Doublet  " b

declare -A dictionary


for (( i=1;i<=$a;i++ ))
do

	combination=""
	for (( j=1;j<=$b;j++ ))
	do

		x=$(($RANDOM%2))

	if [ $x -eq 0 ]
	then
		combination=$combination"H"
	else
		combination=$combination"T"
	fi
	done
	dictionary[$combination]=$((${dictionary[$combination]}+1))
done

if [ $b -eq 1 ]
then
		if [ ${dictionary[H]} -gt  ${dictionary[T]} ]
		then
			ans=$((${dictionary[H]}*100/$a))
			echo "Heads =  ${dictionary[H]} %"
		else
			ans=$((${dictionary[T]}*100/$a))
			echo "Tails =  ${dictionary[T]} %"
		fi
		
elif [ $b -eq 2 ]
then

		if [ ${dictionary[HH]} -gt  ${dictionary[TT]} ] && [ ${dictionary[HH]} -gt ${dictionary[TH]} ] && [ ${dictionary[HH]} -gt ${dictionary[HT]} ]
		then
			ans=$((${dictionary[HH]}*100/$a))
			echo "HH =  ${dictionary[HH]} %"

		elif  [ ${dictionary[TT]} -gt  ${dictionary[HH]} ] && [ ${dictionary[TT]} -gt ${dictionary[TH]} ] && [ ${dictionary[TT]} -gt ${dictionary[HT]} ]
		then

			ans=$((${dictionary[TT]}*100/$a))
			echo "TT =  ${dictionary[TT]} %"

		elif  [ ${dictionary[TH]} -gt  ${dictionary[TT]} ] && [ ${dictionary[TH]} -gt ${dictionary[HH]} ] && [ ${dictionary[TH]} -gt ${dictionary[HT]} ]
		then

			ans=$((${dictionary[TH]}*100/$a))
         echo "TH =  ${dictionary[TH]} %"

		else

			ans=$((${dictionary[HT]}*100/$a))
         echo "HT =  ${dictionary[HT]} %"

		fi
		
fi
