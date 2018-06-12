# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
include FactoryBot::Syntax::Methods

require 'csv'

#create(:country, code: 890, name: 'ZAMBIA')
=begin
CSV.foreach(
    "db/csv/Libro1.csv",
    { encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all}) do |row|
  puts row
  Country.create(row.to_hash)
end

=end

CSV.foreach('db/csv/Libro1.csv', col_sep: ';', converters: :numeric) {
    |row|
    puts row[0].to_s + ' '+ row[1]
  Country.create(code: row[0], name: row[1])
  }

colombia = Country.find_by_name('COLOMBIA')
puts colombia.name


CSV.foreach('db/csv/Departamentos.csv', col_sep: ';', converters: :numeric) {
   |row|
   puts row[0].to_s + ' '+ row[1]
State.create(code: row[0], name: row[1], country_id: colombia.id)
}#
#counter =0
CSV.foreach('db/csv/Cities.csv', col_sep: ';') {
    |row|
  #puts counter
  #counter+=1
  #print row[0].to_s.to_i/1000
  #print "\t"
  #puts Integer(row[0])
  state = State.find_by_code(row[0].to_s.to_i/1000)
  puts row[0].to_s + ' '+ row[1]
  next if state == nil
  City.create(code: row[0].to_s.to_i, name: row[1], state_id: state.id)
}


xlsx = Roo::Excelx.new('test/xlsx/Contabilidad JED ok.xlsx')
    #puts xlsx.info
    hoja = xlsx.sheet('PUC')
    hoja.header_line= 2
    hoja.each(clase: 'CLASE', grupo: 'GRUPO', 
    cuenta: 'CUENTA', subcuenta: "SUB CUENTA", auxiliar: "AUXILIAR") do |hash|
      puts hash.inspect
      # => { id: 1, name: 'John Smith' }
    end