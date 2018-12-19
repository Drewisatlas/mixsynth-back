class CreateUserSynthesizers < ActiveRecord::Migration[5.2]
  def change
    create_table :user_synthesizers do |t|
      t.integer :user_id
      t.integer :synthesizer_id

    end
  end
end
