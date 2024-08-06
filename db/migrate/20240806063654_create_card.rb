# frozen_string_literal: true

class CreateCard < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :last4
      t.timestamps
      t.references :company, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
