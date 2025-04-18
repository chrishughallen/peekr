require 'ostruct'
require_relative 'peekr'

# Assuming you want to test it with a model, like a simple User model example
class User
  attr_accessor :first_name, :last_name, :email

  def initialize(first_name, last_name, email)
    @first_name = first_name
    @last_name = last_name
    @email = email
  end

  def self.columns
    [
      OpenStruct.new(name: 'first_name', type: 'string'),
      OpenStruct.new(name: 'last_name', type: 'string'),
      OpenStruct.new(name: 'email', type: 'string')
    ]
  end

  def self.reflect_on_all_associations
    []
  end

  def self.instance_methods(_false)
    [:name, :email]
  end
end

# Now you can use your Peek class to explore the User model
Peekr::Peek.explore(User)