require_relative "test.rb"

t = Towers.new
t.start_game
t.print
until t.game_over?
    t.get_move
    t.print
end