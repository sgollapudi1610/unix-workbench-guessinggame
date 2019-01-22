filecount=$(ls | wc -l)          #obtains count of files in directory
user_correct=0                   #value that controls function operation

echo "How many files are in this directory?"
echo "Enter a value: "
read guess                        #value input command

function evaluate {

while [[ $user_correct -eq 0 ]]           #states that loop will run as long as fxn operation value is set at 0
do
	if [[ $guess -gt $filecount ]]     #if input value is higher than correct count...
	then
		echo "That number is too high, try again?"    #...prompts user to try again
		read guess
	elif [[ $guess -lt $filecount ]]    #if input value is lower than correct count...
	then
		echo "That number is too low, try again?"     #prompts user to try again
		read guess
	else                                 #if input value matches correct count...
		let user_correct=1           #set fxn operation to a different number, print confirmation and exit loop
		echo "That's correct, good job!"
	fi 
done
}

evaluate                           #run function
