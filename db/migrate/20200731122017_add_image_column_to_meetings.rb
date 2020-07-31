class AddImageColumnToMeetings < ActiveRecord::Migration[6.0]
  def change
    add_column :meetings, :image, :string
  end
end
