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
		category:'upcoming'
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


kudzanayi = User.create(name:"kudzanayi", password:'password')
max = User.create(name:"Max", password:'test')
