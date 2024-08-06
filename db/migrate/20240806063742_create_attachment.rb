# frozen_string_literal: true

class CreateAttachment < ActiveRecord::Migration[5.2]
  def change
    create_table :attachments do |t|
      t.string :file
      t.timestamps
      t.references :statement, foreign_key: true
    end
  end
end
