module Peekr
  class Peek
    def self.explore(model)
      puts "Exploring: #{model.name}"
      puts "\n"
  
      puts "Columns:"
      puts model.columns.map { |col| "- #{col.name} (#{col.type})" }
      puts "\n"
  
      puts "Associations:"
      puts model.reflect_on_all_associations.map { |assoc| "- #{assoc.macro} :#{assoc.name}" }
      puts "\n"
  
      puts "Instance Methods (defined on model only):"
      (model.instance_methods(false) - Object.instance_methods).each do |method|
        puts "- #{method}"
      end
  
      nil
    end
  end
end