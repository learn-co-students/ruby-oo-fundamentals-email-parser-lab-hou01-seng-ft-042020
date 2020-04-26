# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailAddressParser
  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    # delimiters = [' ', ',']
    # emails.split(Regexp.union(delimiters)).uniq
    emails.split(',').map do |email|
      email.strip
    end.join(' ').split(' ').uniq
  end
end
