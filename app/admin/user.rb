ActiveAdmin.register User do

  permit_params :first_name, :last_name, :email, :admin

  # Filterable attributes on the index screen
  filter :email
  filter :admin
  filter :created_at

  # Display index as a grid
  index :as => :grid do |user|
    image_tag user.picture
    div "#{user.first_name} #{user.last_name}"
    div do
      a user.email, :href => admin_user_path(user)
    end
  end

  # Display index as a table
  index do
    selectable_column
    column :id
    column :email
    column :first_name
    column :last_name
    column :created_at
    column :admin
    actions
  end

  # Customize form
  form do |f|
    f.inputs "Identity" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :picture
    end
    f.inputs "Admin" do
      f.input :admin
    end
    f.actions
  end

end
