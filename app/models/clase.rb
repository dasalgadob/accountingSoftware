class Clase < ApplicationRecord
  has_many :grupos, :dependent => :delete_all
  validates :number, uniqueness: true

  def self.import(file)
    xlsx = Roo::Excelx.new(file.path())
    #puts xlsx.info
    hoja = xlsx.sheet('REGISTROS')
    hoja.each(id: 'LLAVE', doc: 'DOC', cuenta: 'CUENTA') do |hash|
      #puts hash.inspect
      # => { id: 1, name: 'John Smith' }
    end
  end
    #xlsx.each_row_streaming do |row|
       # Array of Excelx::Cell objects
=begin
    book = Spreadsheet.open  file.path()
    sheet1 = book.worksheet 0

    sheet1.each do |row|
      # do something interesting with a row
      product_hash = row.to_hash()
      logger.debug "product hash: #{product_hash}"
      logger.debug "product hash: #{row.inspect}"
    end
=end

end