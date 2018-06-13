require 'test_helper'

class ClaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test  "Funcion import de clase que reciba datos de excel" do
    f = File.open('test/xlsx/PUCTest.xlsx', "r")
    Clase.import(f)
    f.close
  end

end
