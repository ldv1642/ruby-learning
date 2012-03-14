game = [["Daniel", "o"], ["Jess", "r"]]

class WrongNumberOfPlayersError < StandardError;end
class NosuchStrategyError < StandardError;end

def rps_game_winner(game)
pattern = /[^p|s|r]/ #find none psr characters
  begin
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
      print "#{player1} throws #{player1Move} against #{player2}'s #{player2Move} \n"
      #account for throws of same type
      if player1Move == "p" and player2Move == "p"
          return "The list #{game[0]} wins  since the first player is the winnner."
        end
      if player1Move == "s" and player2Move == "s"
          return "The list #{game[0]} wins  since the first player is the winnner."
        end
         if player1Move == "r" and player2Move == "r"
          return "The list #{game[0]} wins  since the first player is the winnner."
        end
        
      #strat == p > r
      if (player1Move == "p"  or player1Move == "r") and (player2Move == "p" or player2Move == "r")
        if player1Move == "p"#winner
          return "The list #{game[0]} wins  since P>R"
        else
          return "The list #{game[1]} wins  since P>R"
        end
      end
      #strat == s > p
      if (player1Move == "p"  or player1Move == "s") and (player2Move == "p" or player2Move == "s")
        if player1Move == "s"#winner
          return "The list #{game[0]} wins  since S>P"
        else
          return "The list #{game[1]} wins  since S>P"
        end
      end
      #strat == r > s
      if (player1Move == "s"  or player1Move == "r") and (player2Move == "s" or player2Move == "r")
        if player1Move == "r"#winner
          return "The list #{game[0]} wins  since R>S"
        else
          return "The list #{game[1]} wins  since R>S"
        end
      end
    else
      raise WrongNumberOfPlayersError
    end
  rescue WrongNumberOfPlayersError
    puts "Please supply 2 players. In the format [[\"player1\",\"P\"],[\"player2\",\"S\"]]"
  rescue NosuchStrategyError
    puts "No such strategy, valid strategies include R, P and S"
  end
end

puts rps_game_winner(game)