class Clase < ApplicationRecord
  has_many :grupos, :dependent => :delete_all
end
