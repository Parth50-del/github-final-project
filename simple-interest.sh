#!/usr/bin/env bash

set -euo pipefail

read -r -p "Enter the principal amount: " principal
read -r -p "Enter the annual rate of interest (%): " rate
read -r -p "Enter the time period (years): " time

validate_amount() {
    local name=$1
    local value=$2

    if [[ ! $value =~ ^([0-9]+([.][0-9]*)?|[.][0-9]+)$ ]] ||
        ! awk -v value="$value" 'BEGIN { exit !(value + 0 >= 0) }'; then
        printf 'Error: %s must be a non-negative number.\n' "$name" >&2
        exit 1
    fi
}

validate_amount "Principal" "$principal"
validate_amount "Rate of interest" "$rate"
validate_amount "Time period" "$time"

LC_ALL=C awk -v principal="$principal" -v rate="$rate" -v time="$time" '
    BEGIN {
        interest = principal * rate * time / 100
        printf "Simple interest: %.2f\n", interest
        printf "Total amount: %.2f\n", principal + interest
    }
'
