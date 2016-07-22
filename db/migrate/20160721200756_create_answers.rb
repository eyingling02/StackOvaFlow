class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :post
    end
  end
end
