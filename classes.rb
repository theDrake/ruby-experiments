#!/usr/bin/env ruby

class Message
  @@num_messages_sent = 0

  def initialize from, to
    @from = from
    @to   = to
    @@num_messages_sent += 1
  end

  def to_s
    "From: #{@from}; To: #{@to}"
  end

  def self.get_num_messages_sent
    @@num_messages_sent
  end
end

class Email < Message
  def initialize from, to, subject
    super from, to
    @subject = subject
  end

  def to_s
    super + "; Subject: #{@subject.to_s}"
  end
end

my_message = Message.new "Sauron", "Saruman"
puts my_message

my_email = Email.new "Gandalf", "Galadriel", "Saruman"
puts my_email

puts "Messages sent: #{Message.get_num_messages_sent}"
