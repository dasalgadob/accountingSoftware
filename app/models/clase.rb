class Clase < ApplicationRecord
  has_many :grupos, :dependent => :delete_all
  validates :number, uniqueness: true

  def self.import(file)
    xlsx = Roo::Excelx.new(file.path())
    #puts xlsx.info
    hoja = xlsx.sheet('PUC')
    hoja.each(clase: 'CLASE', grupo: 'GRUPO',  cuenta: 'CUENTA', denominacion: "NOMBRE O DENOMINACION") do |hash|
      puts hash.inspect
      numero =Integer(clase) rescue nil
      if hash.clase!= nil &&  numero != nil
        puts hash.inspect
        #Clase.create(number: hash.clase, name: hash.denominacion)
      #elsif grupo != nil   
      end
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