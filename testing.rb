def coin_coin(change)
hsh = {}
quart_count = 1; dime_count = 0
nickel_count = 0; penny_count = 0
coins = {:quarter => 25, :dime => 10, :nickel => 5, :penny => 1}
  until change == 0
    if change >= coins [:quarter]
        change -= coins [:quarter]
        quart_count += 1 
        hsh.store(:quarter, quart_count)
    elsif change >= coins [:dime]
          change -= coins [:dime]
          dime_count += 1
          hsh.store(:dime, dime_count)
    elsif change >= coins [:nickel]
          change -= coins [:nickel]
          nickel_count += 1
          hsh.store(:nickel, nickel_count)
    elsif change >= coins [:penny]
          change -= coins [:penny]
          penny_count += 1
          hsh.store(:penny, penny_count)
        end
    end
    hsh
end

