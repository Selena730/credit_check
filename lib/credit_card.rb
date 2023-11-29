require 'pry'


class CreditCard 

    attr_reader :card_number, :limit 

    def initialize(card_number, limit)
        @card_number = card_number
        @limit = limit
    end

    def is_valid?


            card_number = card_number.to_s.split("")
        
            doubled_array = []
             
            card_number.each_with_index do |digit, index|
                updated_value = digit.to_i
                if index.even?
                    updated_value *= 2
                end
        
                if updated_value > 9 
                    summed_digits = updated_value.to_s.split("")
                    summed_digits = (summed_digits[0].to_i + summed_digits[1].to_i)
                    doubled_array.push(summed_digits)
                else
                    doubled_array.push(updated_value)
        
                end
            end

            doubled_sum = 0
            doubled_array.each do |number|
                doubled_sum = number.to_i + doubled_sum.to_i
            end

            return doubled_sum % 10 == 0
    end
    

    def last_four
        @card_number[-4..-1]
    end
end

credit_card = CreditCard.new("5541808923795240", 15000)

binding.pry
