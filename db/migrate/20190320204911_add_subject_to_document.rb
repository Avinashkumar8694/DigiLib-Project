class AddSubjectToDocument < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :subject, :string
  end
end
