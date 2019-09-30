# frozen_string_literal: true

class AddHaircolorToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :haircolor, :string, null: false, default: ''
  end
end
