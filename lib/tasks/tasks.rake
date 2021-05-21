require 'roo'

namespace :tasks do
  desc "Import shopping list from spreadsheet"
  task data: :environment do
    puts "Importing shopping list"

    data = Roo::Spreadsheet.open('lib/shopping_list.xlsx')
    headers = data.row(1) #get header row

    data.each_with_index do |row, index|
      next if index == 0 #skip header

      #create hash from headers and cells
      shopping_list = Hash[[headers, row].transpose]

      if Task.exists?(title: shopping_list['title'])
        puts "Item '#{shopping_list['title']} already exists"
        next
      end

      item = Task.new(shopping_list)

      puts "Saving more items"
      item.save!
    end
  end
end
