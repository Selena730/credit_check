card_number = "5541808923795240"

# Your Luhn Algorithm Here
def credit_card_validation(card_number)

    card_number = card_number.split("")

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


    doubled_sum % 10 == 0






    

   
            
       

    


    # iterate over nums_array and save result in variable
    # for each iteration check if index is even or odd, we want even 

        # if index is even -> n * 2
            # if result >= 9
                # split the result and sum their parts together
            # else
                # keep result as is
        

    # iterate over each new entry
        # for each entry, sum their parts
        # if divisible by 10
            # num is good
        # else 
            # num is bad 


        

end


puts credit_card_validation(card_number)
# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
