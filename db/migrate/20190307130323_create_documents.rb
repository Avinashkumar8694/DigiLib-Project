class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.references :user
      t.has_attached_file  :document_attached

      t.timestamps
    end
  end
end
