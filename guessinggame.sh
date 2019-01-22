filecount=$(ls | wc -l)
user_correct=0

echo "How many files are in this directory?"
echo "Enter a value: "
read guess

function evaluate {

while [[ $user_correct -eq 0 ]]
do
	if [[ $guess -gt $filecount ]]
	then
		echo "That number is too high, try again?"
		read guess
	elif [[ $guess -lt $filecount ]]
	then
		echo "That number is too low, try again?"
		read guess
	else
		let user_correct=1
		echo "That's correct, good job!"
	fi 
done
}

evaluate
