# lib/peekr/peekr.rb
module Peekr
  def self.peek(model)
    puts "Exploring: #{model.name}"

    puts "\n Columns:"
    puts model.columns.map { |col| "- #{col.name} (#{col.type})" }

    puts "\nAssociations:"
    puts model.reflect_on_all_associations.map { |assoc| "- #{assoc.macro} :#{assoc.name}" }

    puts "\nInstance Methods (defined on model only):"
    (model.instance_methods(false) - Object.instance_methods).each do |method|
      puts "- #{method}"
    end

    nil
  end
end