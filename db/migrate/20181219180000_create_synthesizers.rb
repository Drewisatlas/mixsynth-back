class CreateSynthesizers < ActiveRecord::Migration[5.2]
  def change
    create_table :synthesizers do |t|
      t.string :name
      t.integer :user_id
      t.string :waveform
      t.float :gain
      t.float :duration
      t.float :attackTime
      t.float :decayTime
      t.float :sustainTime
      t.float :sustainLevel
      t.float :releaseTime
      t.float :gateTime
      t.float :peakLevel
      t.float :epsilon
      t.string :attackCurve
      t.string :decayCurve
      t.string :releaseCurve
      t.timestamps
    end
  end
end
