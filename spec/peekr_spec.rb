require 'ostruct'

RSpec.describe Peekr do
  describe ".peek" do
    it "responds to the peek method" do
      expect(Peekr).to respond_to(:peek)
    end

    it "performs the exploration and outputs the expected result" do
      # Set up a dummy class, like a mock or a simple user class
      user_class = Class.new do
        def self.name
          "User"
        end

        def self.columns
          [OpenStruct.new(name: "first_name", type: "string"),
           OpenStruct.new(name: "last_name", type: "string")]
        end

        def self.reflect_on_all_associations
          []
        end

        def self.instance_methods(include_super = false)
          [:name, :first_name, :last_name]
        end
      end

      # Redirect $stdout to capture the output
      output = StringIO.new
      $stdout = output

      # Call the method
      Peekr.peek(user_class)

      # Reset $stdout to its original value
      $stdout = STDOUT

      # Test if the output includes the expected information
      expect(output.string).to include("Model: User")
      expect(output.string).to include("Columns:")
      expect(output.string).to include("- first_name (string)")
      expect(output.string).to include("- last_name (string)")
      expect(output.string).to include("Instance Methods:")
      expect(output.string).to include("- name")
    end
  end
end