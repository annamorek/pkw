ActiveAdmin.register Voivodeship do

  permit_params :name

  form do |f|
    f.actions
    f.inputs 'coś' do
      f.input :name
      f.input :commitees, :as => :check_boxes
    end
    f.actions
  end

end
