class CreateSynthesizers < ActiveRecord::Migration[5.2]
  def change
    create_table :synthesizers do |t|
      t.string :name
      t.integer :user_id
      t.string :waveform
      t.float :gain
      t.float :attackTime
      t.float :decayTime
      t.float :sustainLevel
      t.float :releaseTime
      t.timestamps
    end
  end
end
