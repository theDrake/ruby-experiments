#!/usr/bin/env ruby

# require

require 'date'
puts Date.today

# include

class Circle
  include Math
  attr_accessor :radius

  def initialize radius
    @radius = radius
  end

  def area
    PI * @radius**2
  end

  def circumference
    2 * PI * @radius
  end
end

circle = Circle.new(5)
puts circle.area
puts circle.circumference

module Movement
  MIN_WALKING_DISTANCE = 1
  MAX_WALKING_DISTANCE = 1
  MIN_RUNNING_DISTANCE = 2
  MAX_RUNNING_DISTANCE = 5
  MIN_JUMPING_DISTANCE = 2
  MAX_JUMPING_DISTANCE = 3

  def walk
    distance = rand(MIN_WALKING_DISTANCE..MAX_WALKING_DISTANCE)
    puts "You walk forward #{distance} meter."
  end

  def run
    distance = rand(MIN_RUNNING_DISTANCE..MAX_RUNNING_DISTANCE)
    puts "You run forward #{distance} meters."
  end

  def jump
    distance = rand(MIN_JUMPING_DISTANCE..MAX_JUMPING_DISTANCE)
    puts "You jump forward #{distance} meters."
  end
end

module Combat
  MIN_ATTACK_DAMAGE = 5
  MAX_ATTACK_DAMAGE = 50

  def attack
    damage = rand(MIN_ATTACK_DAMAGE..MAX_ATTACK_DAMAGE)
    puts "You attack for #{damage} points of damage!"
  end
end

class Hero
  include Combat, Movement
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

hero = Hero.new("Erdrak")
puts "You are #{hero.name}."
hero.walk
hero.run
hero.jump
hero.attack

# extend

class ModuleExtender
  extend Movement, Combat
end

ModuleExtender.run
ModuleExtender.jump
ModuleExtender.walk
ModuleExtender.attack
