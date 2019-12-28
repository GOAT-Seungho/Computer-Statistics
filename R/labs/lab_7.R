

card_set <- function(n) {
  cards <- c()
  for (i in 1:n) {
    cards <- c(cards, sample(1:50, 1))
  }
  return (cards)
}

game <- function(gamecount) {
  card_set <- card_set(50)
  turn <- 0
  count <- 1
  alice_score <- 0
  bob_score <- 0
  
  while (gamecount >= count) {
    while (length(card_set) > 0) {
      if (turn % 2 == 0) { # alice
        if (card_set[turn] %% 2 == 0) {
          alice_score <- alice_score + 2
        } else {
          alice_score <- alice_score - 1
        }
      } else { # bob
        if (card_set[turn] %% 2 == 1) {
          bob_score <- bob_score + 1
        }
      }
      turn = turn + 1
    }
    count = count + 1
  }
  
  avg_alice <<- mean(alice_score)
  sprintf("Alice의 평균 점수는 %f 점 입니다.", avg_alice)
}
