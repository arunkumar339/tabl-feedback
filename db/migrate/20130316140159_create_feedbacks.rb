class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text   :comment
      t.integer:score
      t.string :reference_number
      t.timestamps
    end
  end
end
