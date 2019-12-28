dice_game <- function () {
  player_A <- 5000
  player_B <- 5000
  dice_last <- 0

  while (player_A > 0 && player_B > 0) {
    dice <- sample(1:6, 1)
    win <- ''
    # 제일 첫 번째 경기
    if (dice_last == 0) {
      if (6 %% dice == 0) win <- 'rule_A'
    }
    
    else { # dice_last != 0
      if ((dice_last %% 2) == (dice %% 2)) win <- 'rule_B'
      else {
        if (6 %% dice == 0) win <- 'rule_A'
      }
    }
    dice_last <- dice
    
    if (win == 'rule_A') {
      player_A = player_A + 500
      player_B = player_B - 500
    } 
    else if (win == 'rule_B') {
      player_A = player_A - 1000
      player_B = player_B + 1000
    }
    
  }
  
  if (player_A <= 0) {
    winner <- 'player_B'
  }
  else {
    winner <- 'player_A'
  }
  
  return (winner)
}

repgame <- function(n) {
  A_win_count <- 0
  B_win_count <- 0
  game_count <- 1
  while(game_count <= n) {
    winner <- dice_game()
    if (winner == 'player_A') {
      A_win_count = A_win_count + 1
    } else {
      B_win_count = B_win_count + 1
    }
    game_count = game_count + 1
  }
  
  A_win_rate <- A_win_count / n
  B_win_rate <- B_win_count / n
  
  print (game_count - 1)
  print (A_win_rate)
  print (B_win_rate)
}

repgame(100000)