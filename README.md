# Simple Interest Calculator

A simple interest calculator estimates the interest earned or owed on a principal amount over a period of time. It does not add previously earned interest to the principal when calculating future interest.

## Formula

```text
Simple Interest = (Principal × Annual Interest Rate × Time) / 100
Total Amount = Principal + Simple Interest
```

The interest rate is entered as a percentage per year, and time is measured in years.

## Inputs

- **Principal**: The starting amount of money.
- **Annual interest rate**: The yearly rate, expressed as a percentage.
- **Time**: The duration of the investment or loan in years. For a duration in months, divide the number of months by 12 before calculating.

## Example

For a principal of `$1,000`, an annual interest rate of `5%`, and a time period of `3 years`:

```text
Simple Interest = (1,000 × 5 × 3) / 100
                = $150

Total Amount = $1,000 + $150
             = $1,150
```

## Run the calculator

Run the Bash script from a terminal:

```bash
bash simple-interest.sh
```

Enter the principal amount, annual interest rate as a percentage, and time period in years when prompted. The calculator prints the simple interest and total amount to two decimal places. It accepts non-negative numbers, including decimal values, and uses `awk` for the calculation.

The rate is assumed to remain constant for the entire period. The result is simple interest, not compound interest. For a duration in months, divide the number of months by 12 before entering it.
