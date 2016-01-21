class CreateKpiNotifications < ActiveRecord::Migration
  def change
    create_table :kpi_notifications do |t|
      t.string :title
      t.float :value
      t.text :description

      t.timestamps null: false
    end
  end
end
