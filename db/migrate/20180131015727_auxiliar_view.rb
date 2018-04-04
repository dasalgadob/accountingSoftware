class AuxiliarView < ActiveRecord::Migration[5.0]
  def up
    self.connection.execute %Q( CREATE OR REPLACE VIEW vauxiliars AS
           select a.id, to_char(a.number, 'FM9999999999') as number, a.name as name from auxiliars a;

          )

  end

  def down
    self.connection.execute "DROP VIEW IF EXISTS vauxiliars;"
  end
end
