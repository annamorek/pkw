ActiveAdmin.register Commitee do

  permit_params :name, :logo, :party,
                voivodeship_ids: []
  form do |f|
    f.actions
    f.inputs 'coś' do
      f.input :voivodeships, :as => :select, :input_html => {:multiple => true}
      f.input :name
      f.input :logo
      f.input :party
    end
    f.actions
  end
end