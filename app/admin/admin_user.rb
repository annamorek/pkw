ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
    end
    f.actions
  end

  controller do
    # This code is evaluated within the controller class

    def define_a_method
      # Instance method
    end
  end
end
