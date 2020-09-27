# use the following formula m = p * (j / (1 - (1 + j)**(-n)))
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months

# You'll need three pieces of information:
#
# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration (in months)
#
# From the above, you'll need to calculate the following things:
#
# monthly interest rate
# loan duration in months
# monthly payment

class LoanCalculator
  attr_reader :loan_amount, :apr, :duration

  def initialize(loan_amount:, apr:, duration:)
    @loan_amount = loan_amount
    @apr         = apr
    @duration    = duration
  end

  def to_s
    "Monthly interest rate: #{monthly_interest_rate}, Monthly payment: #{monthly_payment}"
  end

  private

  def monthly_interest_rate
    apr / 12
  end

  def monthly_payment
    loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-(duration))))
  end
end

calculation = LoanCalculator.new(loan_amount: 1000, apr: 0.10, duration: 12)
puts calculation.to_s
