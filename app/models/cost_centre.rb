class CostCentre < ApplicationRecord
  has_many :services

  def self.to_csv(fields= column_names, options={})
    CSV.generate(options) do |csv|
      csv << fields
      all.each do |cost_centres|
        csv << cost_centres.attributes.values_at(*fields)
      end
    end
  end

  def self.import(file)
    CSV.foreach(file.path, {headers: true, col_sep: ';'} ) do |row|
      product_hash = row.to_hash()
      logger.debug "product hash: #{product_hash}"
      logger.debug "product hash: #{row.inspect}"
      if(CostCentre.find_by(name: product_hash["name"]) == nil)
        logger.debug "Se va a crear object con valores: #{product_hash}"
        CostCentre.create!(name: product_hash["name"])
      else
        logger.debug "Se deberia actualizar objeto no implementado"
      end
      ##product = find_or_create_by!( name: product_hash[:name])
      ##product.update_attributes(product_hash)
    end
  end
end
