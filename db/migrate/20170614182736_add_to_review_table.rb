class AddToReviewTable < ActiveRecord::Migration[5.1]
  def change

    change_table :reviews do |t|

      t.integer :product_id
      t.text  :comment
      t.integer :rating

    end
  end
end
