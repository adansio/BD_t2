class InfoUsers < ActiveRecord::Migration
	def change
		add_column :users, :bio, :string
		add_column :users, :country, :string
		add_column :users, :birthdate, :date
	end
end
