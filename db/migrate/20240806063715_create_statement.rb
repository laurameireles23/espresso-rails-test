# frozen_string_literal: true

class CreateStatement < ActiveRecord::Migration[5.2]
  def change
    create_table :statements do |t|
      t.string :status
      t.string :category
      t.string :merchant
      t.string :cost
      t.string :last4
      t.datetime :performed_at
      t.timestamps
      t.references :card, foreign_key: true
    end
  end
end
