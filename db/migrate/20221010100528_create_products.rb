class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name,         default:  ''
      t.text :description,    default:  ''
      t.decimal :price,       default:  0.0
      t.boolean :vegeterian,  default:  false
      t.boolean :available,   default:  true
      t.boolean :catering,    default:  false
      t.boolean :featured,    default:  false

      t.timestamps
    end
  end
end
