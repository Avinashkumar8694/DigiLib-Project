class AddSubjectToVideo < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :subject, :string
  end
end
