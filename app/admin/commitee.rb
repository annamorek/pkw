ActiveAdmin.register Commitee do

  permit_params :name, :avatar, :party,
                voivodeship_ids: []
  form do |f|
    f.actions
    f.inputs 'coś' do
      #f.input :voivodeships, :as => :select, :input_html => {:multiple => true}
      f.input :name
      f.input :party
    end
    f.actions
  end
end