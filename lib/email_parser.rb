# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser 
  def initialize(emails)
    @emails = emails
  end 
  def parse
    emails.split(/[,\s]+/).uniq
  end  
  attr_accessor :emails
end 

email_addresses = "john@doe.com, person@somewhere.org"
parser = EmailAddressParser.new(email_addresses)
 
puts parser.emails
# => ["john@doe.com", "person@somewhere.org"]