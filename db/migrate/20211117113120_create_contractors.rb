class CreateContractors < ActiveRecord::Migration[5.2]
  def change
    create_table :contractors do |t|

      t.timestamps
    end
  end
end
