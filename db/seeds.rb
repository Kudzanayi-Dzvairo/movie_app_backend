# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Tmdb::Api.key("83a86e6cebd651357db4273964ce2199")


latest = Tmdb::Movie.latest
upcoming = Tmdb::Movie.upcoming
now_playing = Tmdb::Movie.now_playing
top_rated = Tmdb::Movie.top_rated
popular = Tmdb::Movie.popular


upcoming.results.each do |mov|
	Movie.create(
		title: mov.title,
    description: mov.overview,
    poster: mov.poster_path,
		category: 'upcoming'
	)
end

now_playing.results.each do |mov|
	Movie.create(
		title: mov.title,
    description: mov.overview,
    poster: mov.poster_path,
		category: 'now_playing'
	)
end


top_rated.results.each do |mov|
	Movie.create(
		title: mov.title,
		description: mov.overview,
		poster: mov.poster_path,
		category: 'top_rated'
	)
end

popular.results.each do |mov|
	Movie.create(
		title: mov.title,
		description: mov.overview,
		poster: mov.poster_path,
		category: 'popular'
	)
end








star_wars = Movie.create(title: "Star Wars", poster: "https://lumiere-a.akamaihd.net/v1/images/sb_dolby_worldwide_handout_13x19_v3_lg_use_this_one_cc3cc869.jpeg?region=0%2C0%2C821%2C1200", description: "Awesome movie about some kick ass space guys")

kudzanayi = User.create(name:"kudzanayi", password:'password')

favorites =  UserMovie.create(rating: 5, review: "great movie", user_id:kudzanayi.id, movie_id: star_wars.id)
