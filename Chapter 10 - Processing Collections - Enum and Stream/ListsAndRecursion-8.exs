defmodule TaxCalculator do
  def orders do
    	[[ id: 123, ship_to: :NC, net_amount: 100.00 ],
	[ id: 124, ship_to: :OK, net_amount: 35.50 ],
	[ id: 125, ship_to: :TX, net_amount: 24.00 ],
	[ id: 126, ship_to: :TX, net_amount: 44.80 ],
	[ id: 127, ship_to: :NC, net_amount: 25.00 ],
	[ id: 128, ship_to: :MA, net_amount: 10.00 ],
	[ id: 129, ship_to: :CA, net_amount: 102.00 ],
	[ id: 120, ship_to: :NC, net_amount: 50.00 ] ]
  end
  def tax_rates do
    [ NC: 0.075, TX: 0.08 ]
  end
  def calculate_tax(total_amount,tax_rate) do
    (total_amount * tax_rate) + total_amount   
  end
  def apply_tax(orders,tax_rates) do
    for order <- orders, state = order[:ship_to], tax_rate = tax_rates[state] do
      order ++ [total_amout: calculate_tax(order[:net_amount],tax_rate)]
    end
  end


end
