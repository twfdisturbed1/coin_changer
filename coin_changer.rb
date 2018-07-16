
class Coin_changer
    def final(amount)
     coins = {:quarter => 25, :dime => 10, :nickle => 05, :penny => 01}
     change = []         
      remaining_amount = amount
      coins.each do |coin|
        if ((remaining_amount/coin).to_int > 0)
        then (remaining_amount/coin).to_int.times { change << coin }
          puts "Remaining Amount: #{remaining_amount} | Coin: #{coin}"
          remaining_amount = amount - change.inject(:+)
        end 
    end                         
     puts "Amount #{amount} >> Coin_changer: #{change}\n\n"
      return change
    end
end

