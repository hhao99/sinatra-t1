class User < Sequel::Model
    unless table_exists?
        set_schema do
            primary_key :id 
            string :username
            string :firstname
            string :lastname
            string :email
        end
        create_table
    end
end