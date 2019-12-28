game <- function(gamecount) {
  count <- 1
  alice_score <- 0
  bob_score <- 0
  turn <- 1
  while (gamecount >= count) {
    cards <- sample(1:50, 50, replace=F)
    
    while (50 >= turn) {
      if (turn %% 2 == 0) { # Alice
        if (cards[turn] %% 2 == 0) { # 짝수
          alice_score = alice_score + 2
        } else {
          alice_score = alice_score - 1
        }
      } else { # Bob
        if (cards[turn] %% 2 == 1) {
          bob_score = bob_score + 1
        }
      }
      turn = turn + 1
    }
    
    count = count + 1
  }
  
  sprintf("Alice's average score is %f", (alice_score / gamecount))
}
