class CreateMessages < ActiveRecord::Migration[6.0]
  belong_to :room
  belong_to :user
end