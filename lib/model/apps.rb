class Apps < Sequel::Model
  plugin :schema
  unless table_exists?
    set_schema do
      primary_key :id
      string :name
      string :app_id
      timestamp :created_at
      index [:name, :app_id]
    end
    create_table
  end
end