#!/usr/bin/env ruby

class Computer
  @@users = {}

  def initialize username, password
    @username         = username
    @password         = password
    @files            = {}
    @@users[username] = password
  end

  def create_file filename
    @files[filename] = Time.now
    puts "New file \"#{filename}\" created by #{@username} at #{Time.now}."
  end

  def delete_file filename
    @files.delete filename
    puts "File \"#{filename}\" deleted by #{@username} at #{Time.now}."
  end

  def to_s
    "#{@username}'s files: #{@files}"
  end

  def Computer.get_users
    @@users
  end
end

my_computer = Computer.new "Steve", "omgbestpasswordever"
my_computer.create_file "notes.txt"
my_computer.create_file "game.c"
my_computer.create_file "index.html"
my_computer.delete_file "index.html"
puts Computer.get_users
puts my_computer
