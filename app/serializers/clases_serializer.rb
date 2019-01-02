class ClasesSerializer
  include FastJsonapi::ObjectSerializer
  attributes :number, :name
end
