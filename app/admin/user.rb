ActiveAdmin.register User do

  permit_params :login, :password, :password_confirmation, :role
  actions :all, :change_role
  index do
    selectable_column
    id_column
    column :login
    column :role, :as => :select, :input_html => {:multiple => true}
    column :created_at
    actions defaults: true do |user|
      link_to 'Zmień rolę', change_role_admin_user_path(user)
    end
  end
  member_action :change_role, method: :get do
    @user = User.find(params[:id])
  end
end