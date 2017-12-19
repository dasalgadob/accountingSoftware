class Country < ApplicationRecord
  has_many :states

  def full_result
    self.code.to_s + ' ' +self.name +  ' ' + self.states.first.name
  end
end
