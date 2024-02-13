#!/bin/bash

while true; do
  #prompts user for an operation to perform
  echo "Simple Calculator"
  echo "1. Addition"
  echo "2. Subtraction"
  echo "3. Multiplication"
  echo "4. Division"
  echo "5. Exit"
  read -p "Select an option (1-5): " choice

  #switch case statement determines user input and runs correct operation
  case "$choice" in
    1)
      #asks user for 2 numbers to add and displays result
      read -p "Enter first number: " num1
      read -p "Enter second number: " num2
      result=$((num1 + num2))
      echo "Result: $result"
      ;;
    2)
      #asks user for 2 numbers to subtract and displays result
      read -p "Enter minuend: " num1
      read -p "Enter subtracthend: " num2
      result=$((num1-num2))
      echo "Result: $result"
      ;;
    3)
      #asks user for 2 numbers to multiply and displays the result
      read -p "Enter first number: " num1
      read -p "Enter second number: " num2
      result=$((num1*num2))
      echo "Result: $result"
      ;;
    4)
      #asks user for 2 numbers to divide
      read -p "Enter dividend: " num1
      read -p "Enter divisor: " num2
      #checks if user is trying to divide by 0
      if [ $num2 == 0 ]; then
          echo "Cannot divide by 0"
      #if user is not trying to divide by 0 display division result
      else
          result=$((num1/num2))
          echo "Result: $result"
      fi
      ;;
    5)
      #if user wants to exit program display "Goodbye!" and exit program
      echo "Goodbye!"
      exit 0
      ;;
    *)
      #if user trys to enter an operation that is not programmed
      echo "Invalid option. Please choose a valid option (1-5)."
      ;;
  #end of while loop
  esac
#end of bash file
done
