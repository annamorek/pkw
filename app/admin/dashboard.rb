ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do

      end
    end

    section "Ostatnio zmieniane okręgi" do
      table_for District.order("updated_at desc").limit(5) do
        column :name
        column :updated_at
      end
    end
         panel "Info" do
           para "Jesteś adminem. Możesz edytować wszystkie funkcje."
         end
  end # content
end
