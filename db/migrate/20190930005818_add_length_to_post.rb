# frozen_string_literal: true

class AddLengthToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :length, :string, null: false, default: ''
  end
end
