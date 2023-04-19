class CreateConsultationRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :consultation_requests do |t|
      t.text :design_preferences
      t.text :specific_requirements
      t.datetime :consultation_time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
