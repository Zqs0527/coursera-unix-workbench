the_number_of_files=$(ls -1 | wc -l)

function right_answer_output {
 echo "--------------------------------------"
 echo "Congratulations! You have the right answer"
 echo "End program"
 echo "--------------------------------------"
}

echo "Please guess how many files are in the current directory, enter a number: "
read response
echo "You entered: $response"

while [[ $response -ne $the_number_of_files ]]
do
 echo "--------------------------------"
 substraction=$(expr $response - $the_number_of_files)
 if [[ $substraction -lt 0 ]]
 then
  echo "$response is less than the number of files, please enter another number.."
  echo "--------------------------------"
 elif [[ $substraction -gt 0 ]]
 then
  echo "$response is greater than the number of files, please enter another number.."
  echo "--------------------------------"
 fi
 read response
 echo "You entered: $response"
done

right_answer_output
