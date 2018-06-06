class Clase < ApplicationRecord
  has_many :grupos, :dependent => :delete_all
  validates :number, uniqueness: true

  def self.import(file)
    book = Spreadsheet.open  file.path()
    sheet1 = book.worksheet 0

    sheet1.each do |row|
      # do something interesting with a row
      product_hash = row.to_hash()
      logger.debug "product hash: #{product_hash}"
      logger.debug "product hash: #{row.inspect}"
    end


  end
end
