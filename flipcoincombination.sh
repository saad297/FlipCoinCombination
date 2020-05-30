echo "Welcome to the flip coin combination program."

read -p "Enter the number of times you want to flip : " a
read -p "Enter the choice of combination :
1) Singlet
2) Doublet
3) Triplet  " b

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
else
	if [ ${dictionary[HHH]} -gt  ${dictionary[TTT]} ] && [ ${dictionary[HHH]} -gt ${dictionary[TTH]} ] && [ ${dictionary[HHH]} -gt ${dictionary[HTT]} ] && [  ${dictionary[HHH]} -gt ${dictionary[THT]} ] && [  ${dictionary[HHH]} -gt ${dictionary[HHT]} ] && [ ${dictionary[HHH]} -gt ${dictionary[THH]} ] && [ ${dictionary[HHH]} -gt ${dictionary[HTH]} ]
        then
                ans=$((${dictionary[HHH]}*100/$a))
                echo "HHH =  ${dictionary[HHH]} %"
	elif  [ ${dictionary[TTH]} -gt  ${dictionary[TTT]} ] && [ ${dictionary[TTH]} -gt ${dictionary[HHH]} ] && [ ${dictionary[TTH]} -gt ${dictionary[HTT]} ] && [  ${dictionary[TTH]} -gt ${dictionary[THT]} ] && [ ${dictionary[TTH]} -gt ${dictionary[HHT]} ] && [ ${dictionary[TTH]} -gt ${dictionary[THH]} ] && [ ${dictionary[TTH]} -gt ${dictionary[HTH]} ]
        then
                ans=$((${dictionary[TTH]}*100/$a))
                echo "TTH =  ${dictionary[TTH]} %"
	elif [ ${dictionary[HTT]} -gt  ${dictionary[TTT]} ] && [ ${dictionary[HTT]} -gt ${dictionary[TTH]} ] && [ ${dictionary[HTT]} -gt ${dictionary[HHH]} ] && [  ${dictionary[HTT]} -gt ${dictionary[THT]} ] && [  ${dictionary[HTT]} -gt ${dictionary[HHT]} ] && [ ${dictionary[HTT]} -gt ${dictionary[THH]} ] && [ ${dictionary[HTT]} -gt ${dictionary[HTH]} ]
        then
                ans=$((${dictionary[HTT]}*100/$a))
                echo "HTT =  ${dictionary[HTT]} %"
        elif [ ${dictionary[THH]} -gt  ${dictionary[TTT]} ] && [ ${dictionary[THH]} -gt ${dictionary[TTH]} ] && [ ${dictionary[THH]} -gt ${dictionary[HTT]} ] && [  ${dictionary[THH]} -gt ${dictionary[THT]} ] && [  ${dictionary[THH]} -gt ${dictionary[HHT]} ] && [ ${dictionary[THH]} -gt ${dictionary[HHH]} ] && [ ${dictionary[THH]} -gt ${dictionary[HTH]} ]
	then
                ans=$((${dictionary[THH]}*100/$a))
                echo "THH =  ${dictionary[THH]} %"
	elif [ ${dictionary[HHT]} -gt  ${dictionary[TTT]} ] && [ ${dictionary[HHT]} -gt ${dictionary[TTH]} ] && [ ${dictionary[HHT]} -gt ${dictionary[HTT]} ] && [  ${dictionary[HHT]} -gt ${dictionary[THT]} ] && [  ${dictionary[HHT]} -gt ${dictionary[HHH]} ] && [ ${dictionary[HHT]} -gt ${dictionary[THH]} ] && [ ${dictionary[HHT]} -gt ${dictionary[HTH]} ]
	then
		ans=$((${dictionary[HHT]}*100/$a))
                echo "HHT =  ${dictionary[HHT]} %"
	elif [ ${dictionary[HTH]} -gt  ${dictionary[TTT]} ] && [ ${dictionary[HTH]} -gt ${dictionary[TTH]} ] && [ ${dictionary[HTH]} -gt ${dictionary[HTT]} ] && [  ${dictionary[HTH]} -gt ${dictionary[THT]} ] && [  ${dictionary[HTH]} -gt ${dictionary[HHT]} ] && [ ${dictionary[HTH]} -gt ${dictionary[THH]} ] &&[ ${dictionary[HTH]} -gt ${dictionary[HHH]} ]
	then
		ans=$((${dictionary[HTH]}*100/$a))
                echo "HTH =  ${dictionary[HTH]} %"
	elif [ ${dictionary[THT]} -gt  ${dictionary[TTT]} ] && [ ${dictionary[THT]} -gt ${dictionary[TTH]} ] && [ ${dictionary[THT]} -gt ${dictionary[HTT]} ] && [  ${dictionary[THT]} -gt ${dictionary[HHH]} ] && [  ${dictionary[THT]} -gt ${dictionary[HHT]} ] && [ ${dictionary[THT]} -gt ${dictionary[THH]} ] &&[ ${dictionary[THT]} -gt ${dictionary[HTH]} ]
	then
		ans=$((${dictionary[THT]}*100/$a))
                echo "THT =  ${dictionary[THT]} %"
	else
		ans=$((${dictionary[TTT]}*100/$a))
                echo "TTT =  ${dictionary[TTT]} %"
        fi

fi
