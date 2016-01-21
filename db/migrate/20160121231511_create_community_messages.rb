class CreateCommunityMessages < ActiveRecord::Migration
  def change
    create_table :community_messages do |t|
      t.string :subject
      t.text :body
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
