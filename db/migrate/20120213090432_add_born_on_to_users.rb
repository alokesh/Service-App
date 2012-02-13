class AddBornOnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :born_on, :date
  end
end
