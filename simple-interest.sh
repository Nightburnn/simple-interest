#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    interest=$((principal * rate * time / 100))
    echo $interest
}

# Main script

# Get user input
read -p "Enter the principal amount: " principal
read -p "Enter the annual interest rate (%): " rate
read -p "Enter the time the money is invested or borrowed for (in years): " time

# Call the function and store the result in a variable
result=$(calculate_simple_interest $principal $rate $time)

# Display the result
echo -e "\nSimple Interest Calculation Result:"
echo "Principal Amount: $principal"
echo "Annual Interest Rate: $rate%"
echo "Time (in years): $time"
echo "Simple Interest: $result"
