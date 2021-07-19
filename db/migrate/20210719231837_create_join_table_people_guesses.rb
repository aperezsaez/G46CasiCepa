class CreateJoinTablePeopleGuesses < ActiveRecord::Migration[5.2]
  def change
    create_join_table :people, :guesses do |t|
      t.references :person, foreign_key: true
      t.references :guess, foreign_key: true
    end
  end
end
