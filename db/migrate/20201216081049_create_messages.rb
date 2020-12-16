class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :message, null: false, default: ""
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
