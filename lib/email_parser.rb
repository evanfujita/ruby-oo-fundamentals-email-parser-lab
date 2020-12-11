require 'pry'

class EmailAddressParser
    attr_accessor :email_list

    def initialize(email_list)
        @email_list = email_list
    end

    def parse
        arrayed_list = email_list.split
          arrayed_list = arrayed_list.map do |email|
                email.delete (",")
          end
         arrayed_list.uniq
    end    
end


# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').