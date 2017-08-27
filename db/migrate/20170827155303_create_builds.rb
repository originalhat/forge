class CreateBuilds < ActiveRecord::Migration[5.1]
  def change
    create_table :builds do |t|
      t.string :uuid
      t.string :message
      t.string :branch
      t.string :state
      t.datetime :created_at
      t.datetime :scheduled_at
      t.datetime :started_at
      t.datetime :finished_at

      t.timestamps
    end
  end
end
