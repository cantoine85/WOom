ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

    columns do
      column do
        panel "Dernières expériences créées" do
          table_for Experience.order('id desc').limit(5) do
            column("Expérience") {|experience| link_to(experience.title, admin_experience_path(experience))}
            column("Catégorie") { |experience| experience.category }
            column("Inspiré par") { |experience| link_to(experience.user.email, admin_user_path(experience.user))}
          end
        end
      end

      column do
        panel "Derniers utilisateurs inscrits" do
          table_for User.order('id desc').limit(5).each do
            column(:email) {|user| link_to(user.email, admin_user_path(user)) }
          end
        end
      end
    end
  end # content
end
