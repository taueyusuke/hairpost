# frozen_string_literal: true

class AddSexToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :sex, :string, null: false, default: ''
  end
end
