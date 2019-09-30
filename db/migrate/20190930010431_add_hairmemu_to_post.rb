# frozen_string_literal: true

class AddHairmemuToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :hairmemu, :string, null: false, default: ''
  end
end
