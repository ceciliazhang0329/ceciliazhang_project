namespace :slurp do
  desc "Import materials from a CSV file"
  task materials: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "art_materials.csv"))
    csv = CSV.parse(csv_text, headers: true, encoding: "ISO-8859-1")
    
    csv.each do |row|
      t = Material.new
      t.material_name = row["name"]
      t.material_type = row["type"]
      t.description = row["description"]

      if t.save
        puts "#{t.material_name}, #{t.material_type} saved"
      else
        puts "Failed to save: #{t.errors.full_messages.join(", ")}"
      end
    end

    puts "There are now #{Material.count} rows in the materials table"
  end
end
