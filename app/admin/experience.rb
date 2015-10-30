ActiveAdmin.register Experience do
  permit_params :title, :category, :user_id, :description, :picture, :captured

  # Create sections on the index screen
  scope :all, :default => true

  # categories = [
  #   'Creative',
  #   'Duo',
  #   'Family',
  #   'Foodies',
  #   'Novels',
  #   'Sports',
  #   'Sweetlife',
  #   'Travels',
  #   'Trendy'
  # ]
  # categories.each do |category|
  #   scope category do |experiences|
  #     experiences.where(category: category)
  #   end
  # end
  scope :captures_faites do |experiences|
    experiences.where(captured: true)
  end

  scope :captures_à_faire do |experiences|
    experiences.where(captured: false)
  end

  # Filterable attributes on the index screen
  filter :title
  filter :category, as: :select, collection: Experience::CATEGORIES
  filter :user
  filter :created_at

  # Display index as a grid
  # index as: :grid, columns: 2 do |experience|
  #   render "shared/card_admin", experience: experience
  # end

  index as: :grid, columns: 2 do |experience|
    render "shared/test"
  end

  # Display index as a table
  index do
    selectable_column
    column :id
    column :category
    column :title
    column :user
    column :created_at
    actions
  end


  form do |f|
    f.inputs do
      f.input :title, placeholder: "Faire un roadtrip en combi"
      f.input :category, as: :select, collection: Experience::CATEGORIES, prompt: "Choisissez une categorie"
      f.input :picture
      f.input :user, prompt: "inspiré par"
      f.input :description
      f.input :captured
    end
    f.actions
  end
end
