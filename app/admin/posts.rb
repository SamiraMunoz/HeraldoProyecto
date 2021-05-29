ActiveAdmin.register Post do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :description, :journalist_name, :active, :time_mew, :summary
  #
  # or
  #
  permit_params :name, :description, :journalist_name, :active, :time_mew, :summary, :image

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :journalist_name
      f.input :active, as: :select, include_blank: false
      f.input :time_mew, as: :datepicker
      f.input :summary
      f.input :image, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :description
      row :journalist_name
      row :active
      row :summary
      row :image do |ad|
        image_tag url_for(ad.image)
      end
      row :time_mew
      row :created_at_desc
    end
  end
end
