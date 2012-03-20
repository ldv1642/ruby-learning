class WrongNumberOfPlayersError < StandardError;end
class NosuchStrategyError < StandardError;end

#single game
game = [["Daniel", "r"], ["Jess", "r"]]
#tournament
tourn8 = 
[#2
  [#2
    [["Armando", "P"], ["Dave", "S"]], #0,0
    [["Richard", "R"], ["Michael", "S"]]#0,1
  ],
  [
    [["Allen", "S"], ["Omer", "P"]],#1,0
    [["David E.", "R"], ["Richard X.", "P"]]#1,1
  ]
]

tourn16 = 
[#2
  [#2
    [["Armando", "P"], ["Dave", "S"]], #0,0
    [["Richard", "R"], ["Michael", "S"]]#0,1
  ],
  [
    [["Allen", "S"], ["Omer", "P"]],#1,0
    [["David E.", "R"], ["Richard X.", "P"]]#1,1
  ],
  
  [#2
    [["Armando", "P"], ["Dave", "S"]], #0,0
    [["Richard", "R"], ["Michael", "S"]]#0,1
  ],
  [
    [["Allen", "S"], ["Omer", "P"]],#1,0
    [["David E.", "R"], ["Richard X.", "P"]]#1,1
  ]
]

tourn32 = 
[#2
  [#2
    [["Armando", "P"], ["Dave", "S"]], #0,0
    [["Richard", "R"], ["Michael", "S"]]#0,1
  ],
  [
    [["Allen", "S"], ["Omer", "P"]],#1,0
    [["David E.", "R"], ["Richard X.", "P"]]#1,1
  ],
  
  [#2
    [["Armando", "P"], ["Dave", "S"]], #0,0
    [["Richard", "R"], ["Michael", "S"]]#0,1
  ],
  [
    [["Allen", "S"], ["Omer", "P"]],#1,0
    [["David E.", "R"], ["Richard X.", "P"]]#1,1
  ],
  [#2
    [["Armando", "P"], ["Dave", "S"]], #0,0
    [["Richard", "R"], ["Michael", "S"]]#0,1
  ],
  [
    [["Allen", "S"], ["Omer", "P"]],#1,0
    [["David E.", "R"], ["Richard X.", "P"]]#1,1
  ],
  
  [#2
    [["Armando", "P"], ["Dave", "S"]], #0,0
    [["Richard", "R"], ["Michael", "S"]]#0,1
  ],
  [
    [["Allen", "S"], ["Omer", "P"]],#1,0
    [["David E.", "R"], ["Richard X.", "P"]]#1,1
  ]
]


#play a single game
def rps_game_winner(game)
pattern = /[^p|s|r]/ #find none psr characters
  if game.length == 2
    player1 = game[0][0]
    player2 = game[1][0]
    
    player1Move = game[0][1].downcase
    player2Move = game[1][1].downcase
    
    #validate moves for non R,P,S
    if player1Move =~ pattern or player2Move =~ pattern
      raise NosuchStrategyError  
    end
    
    #debug
    #print "#{player1} throws #{player1Move} against #{player2}'s #{player2Move} \n"
    #account for throws of same type
    if player1Move == "p" and player2Move == "p"
        #return "The list #{game[0]} wins  since the first player is the winnner."
        return game[0]
      end
    if player1Move == "s" and player2Move == "s"
        #return "The list #{game[0]} wins  since the first player is the winnner."
        return game[0]
      end
       if player1Move == "r" and player2Move == "r"
        #return "The list #{game[0]} wins  since the first player is the winnner."
        return game[0]
      end
      
    #strat == p > r
    if (player1Move == "p"  or player1Move == "r") and (player2Move == "p" or player2Move == "r")
      if player1Move == "p"#winner
        #return "The list #{game[0]} wins  since P>R"
        return game[0]
      else
        #return "The list #{game[1]} wins  since P>R"
        return game[1]
      end
    end
    #strat == s > p
    if (player1Move == "p"  or player1Move == "s") and (player2Move == "p" or player2Move == "s")
      if player1Move == "s"#winner
        #return "The list #{game[0]} wins  since S>P"
        return game[0]
      else
        #return "The list #{game[1]} wins  since S>P"
        return game[1]
      end
    end
    #strat == r > s
    if (player1Move == "s"  or player1Move == "r") and (player2Move == "s" or player2Move == "r")
      if player1Move == "r"#winner
        #return "The list #{game[0]} wins  since R>S"
        return game[0]
      else
        #return "The list #{game[1]} wins  since R>S"
        return game[1]
      end
    end
  else
    raise WrongNumberOfPlayersError
  end
raise WrongNumberOfPlayersError
  puts "Please supply 2 players. In the format [[\"player1\",\"P\"],[\"player2\",\"S\"]]"
raise NosuchStrategyError
  puts "No such strategy, valid strategies include R, P and S"
end

#play a tournament
def rps_tournament_winner(tourn)
  game_count = tourn.length
  
  w1 = rps_game_winner tourn[0][0]
  w2 = rps_game_winner tourn[0][1]
  g1w = rps_game_winner [w1,w2]
  
  w1 = rps_game_winner tourn[1][0]
  w2 = rps_game_winner tourn[1][1]
  g2w = rps_game_winner [w1,w2]
  
  final = rps_game_winner [g1w,g2w]
  
  print final
end

print rps_game_winner([ ["Allen", "P"], ["Richard", "P"] ])[0]
