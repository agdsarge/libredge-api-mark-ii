# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.destroy_all
Game.destroy_all
Deal.destroy_all
PlayerGame.destroy_all

mtm = Player.create(username: "mary_tyler_moore", password: "password", email: "mtm@comedy.com")
bean = Player.create(username: "mr_bean", password: "password", email: "mr_b_and_teddy@bbc.co.uk")
lk = Player.create(username: "leslie_knope", password: "password", email: "leslie@pawnee.gov")
rmn = Player.create(username: "richard_nixon", password: "password", email: "rmn37@whitehouse.gov")

test_game1 = Game.create(memorable_string_name: "FirstSimpleTestGame", completed: true, final_score: 90)
test_game2 = Game.create(memorable_string_name: "SecondSimpleTestGame", completed:false)
test_game3 = Game.create(memorable_string_name: "ThirdSimpleTestGame", completed: false)

Deal.create(game_id: test_game2.id)


PlayerGame.create(player_id: mtm.id, game: test_game1, position: :north)
PlayerGame.create(player_id: bean.id, game: test_game1, position: :south)
PlayerGame.create(player_id: lk.id, game: test_game1, position: :east)
PlayerGame.create(player_id: rmn.id, game: test_game1, position: :west)

PlayerGame.create(player_id: mtm.id, game: test_game2, position: :north)
PlayerGame.create(player_id: bean.id, game: test_game2, position: :south)
PlayerGame.create(player_id: lk.id, game: test_game2, position: :east)
PlayerGame.create(player_id: rmn.id, game: test_game2, position: :west)

PlayerGame.create(player_id: mtm.id, game: test_game3, position: :north)
#
PlayerGame.create(player_id: lk.id, game: test_game3, position: :east)
PlayerGame.create(player_id: rmn.id, game: test_game3, position: :west)
