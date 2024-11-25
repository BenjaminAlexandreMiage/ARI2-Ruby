namespace :creators do
    desc "Ajouter des créateurs de test à la base de données"
    task add_test_creators: :environment do
      # Créez des créateurs
      Creator.create!(name: "Alice", email: "alice@example.com")
      Creator.create!(name: "Bob", email: "bob@example.com")
      Creator.create!(name: "Charlie", email: "charlie@example.com")
     
      puts "3 créateurs ont été ajoutés avec succès !"
    end
  end