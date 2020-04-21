# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser 
  def initialize(emails)
    @emails = emails
  end 
  def parse
    # regex solution
    # emails.split(/[,\s]+/).uniq
    # how to do without regex???
    parsed_emails = @emails.split(',').map do |email| 
      email.strip 
    end.flatten.join(" ").split(" ")
    parsed_emails.uniq
  end  
  attr_accessor :emails
end 

email_addresses = "john@doe.com, person@somewhere.org colebuildanddevelop@gmail.com"
parser = EmailAddressParser.new(email_addresses)
 
puts parser.parse
# => ["john@doe.com", "person@somewhere.org"]