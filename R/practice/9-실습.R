game <- function(gamecount) {
  print("가위바위보 게임")
  user <- c(0, 0, 0)  #승/무/패
  count <- 1
  
  while (gamecount >= count) {
    print(paste(count, "번째 게임입니다."))
    userhand <- readline("가위, 바위, 보 중 하나를 내세요 : ")
    com <- c("가위", "바위", "보")
    com_hand <- sample(com, 1)
    
    if (userhand == com_hand) {
      user[2] <- user[2] + 1
      print("비겼습니다.")
    } else {
      if (userhand == "가위") {
        if (com_hand == "바위") {
          print("졌습니다.")
          user[3] <- user[3] + 1
        } else {
          print("이겼습니다.")
          user[1] <- user[1] + 1
        }
      } else if (userhand == "바위") {
        if (com_hand == "보") {
          print("졌습니다.")
          user[3] <- user[3] + 1
        } else {
          print("이겼습니다.")
          user[1] <- user[1] + 1
        }
      } else { # 유저 : 보
        if (com_hand == "가위") {
          print("졌습니다.")
          user[3] <- user[3] + 1
        } else {
          print("이겼습니다.")
          user[1] <- user[1] + 1
        }
      }
    }
    count = count + 1
  }
  sprintf("전적: %d 승 %d 무 %d 패", user[1], user[2], user[3])
}
