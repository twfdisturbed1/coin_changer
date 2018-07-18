def get_num_coins(coins, value)
  ncoins = 0
  coins.sort.reverse.each do |coin|
    ncoins +=  value / coin
    value = value % coin
  end
  ncoins
end
change = []
def get_num_coins(coins, value)
  coins.sort.reverse.reduce(value: value, ncoins: 0) do |state, coin|
    q, r = state[:value].divmod(coin)
    {value: r, ncoins: state[:ncoins] + q}
  end.fetch(:ncoins)
end
puts gets.chomp 
