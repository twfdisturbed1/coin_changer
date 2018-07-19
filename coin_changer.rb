def coin_changer(amount)
	coins = {:quarter => 0, :dime => 0, :nickel => 0, :penny => 0}
	while amount >= 25 do
		coins[:quarter] += 1
		amount -= 25
	end
	while amount >= 10 do
		coins[:dime] += 1
		amount -= 10
	end
  while amount >= 5 do
		coins[:nickel] += 1
		amount -= 5
	end
  while amount >= 1 do
		coins[:penny] += 1
		amount -= 1
	end

coins
end

