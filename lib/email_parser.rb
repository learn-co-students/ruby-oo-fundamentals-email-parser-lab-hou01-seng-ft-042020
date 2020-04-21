# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :addresses
    def initialize(addresses)
        @addresses = addresses
    end

    def parse
        @addresses.split(/[,\s]+/).uniq
        #I really wanted to make a one liner, so I found a sites talking about
        #regex. Just felt wrong to loop through and use 4 methods for removing a
        #comma or space...
    end
end