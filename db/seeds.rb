# Supprimer tous les enregistrements de la table Movie avant d'ajouter de nouveaux enregistrements
Movie.destroy_all

# Liste des films à ajouter
movies_data = [
  { title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9 },
  { title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7 },
  { title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9 },
  { title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0 }
]

# Ajouter les films à la base de données
movies_data.each do |movie_data|
  Movie.create!(movie_data)
end


List.destroy_all

# Liste des films à ajouter
lists_data = [
  { name: 'Fiftys' },
  { name: 'Seventys' },

]

# Ajouter les films à la base de données
lists_data.each do |list_data|
  List.create!(list_data)
end
puts "Seed completed successfully!"
