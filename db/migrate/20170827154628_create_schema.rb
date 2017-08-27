class CreateSchema < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.string :name

      t.timestamps
    end

    create_table :pipelines do |t|
      t.belongs_to :organization, index: true

      t.string :name
      t.string :slug

      t.timestamps
    end

    create_table :builds do |t|
      t.belongs_to :pipeline, index: true

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
