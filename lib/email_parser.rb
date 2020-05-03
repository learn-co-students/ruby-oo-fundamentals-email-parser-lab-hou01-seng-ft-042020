require 'pry'

# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :name
 
  def initialize(name)
    @name = name
  end
 
  def parse
    @name.split(',').map do |email|
      email.strip
    end.flatten.join(" ").split(" ").uniq
  end 
    

    
end 

email_addresses = "john@doe.com, person@somewhere.org"
parser = EmailAddressParser.new(email_addresses)
 
parser.parse

# binding.pry

puts "done"