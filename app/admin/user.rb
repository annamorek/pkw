ActiveAdmin.register User do
  menu :label => I18n.t(:Users)
  permit_params :login, :password, :password_confirmation, :email, :admin, :role, :address
  actions :all, :change_role
  index do
    selectable_column
    id_column
    column :login
    column :email
    column :name
    column :surname
    column :role
    column :created_at
    actions defaults: true do |user|
      link_to 'Zmień role', change_role_admin_user_path(user)
    end
  end
  member_action :change_role, method: :get do
    @user = User.find(params[:id])
  end
end