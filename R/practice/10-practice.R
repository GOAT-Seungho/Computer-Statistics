# 어떤 반에 30명의 학생들이 있다. 
# 해당 반에는 3개의 동아리가 운영되고 있다.
# 각 동아리의 정원은 각각 10, 7, 5 명이다.
# 어떤 두 학생 A,B가 동일한 동아리에 속할 확률은?
  # 30개의 숫자를 만들어 학생들로 간주하고 A, B 학생에게 숫자를 지정한다.
  # 위 30명 중 무작위로 10, 7, 5명의 학생들을 비복원 추출하여 동아리에 속하게 한다.
  # 동일 동아리에 속하게 되는 경우 횟수를 증가하여 취합한다.
  # 구현 이후 해당 시행 반복 횟수를 100,000번으로 하여 확률을 출력한다.

simulation <- function(n) { # 반복 횟수 선언
  dongdata <- list() # 동아리에 대한 정보 저장을 위한 list
  dongdata$countsame <- 0 # 같은 동아리에 속한 횟수
  for (rep in 1:n) {
    # Fill
    dongdata$students <- c(1:30) # 1 : A, 2 : B
    dongdata <- choosestudent(dongdata, 10)
    if (dongdata$countab == 2) {
      dongdata$countsame <- dongdata$countsame + 1
    }
    
    else if (dongdata$countab == 0) {
      dongdata <- choosestudent(dongdata, 7)
      
      if (dongdata$countab == 2) {
        dongdata$countsame <- dongdata$countsame + 1
      }
      else if (dongdata$countab == 0) {
        dongdata <- choosestudent(dongdata, 5)
        
        if (dongdata$countab == 2) {
          dongdata$countsame <- dongdata$countsame + 1
        }
      }
    }
  }
  print(dongdata$countsame / n)
}

choosestudent <- function(dongdata, num) {
  dong <- sample(dongdata$students, num) # 입력된 수 만큼 학생 무작위 선택
  dongdata$countab <- length(intersect(1:2, dong))
  dongdata$students <- setdiff(dongdata$students, dong)
  # -----
  # 만약 같은 동아리에 있었다면, 개수를 증가시킨다.
  # 기존 학생들 중 동아리에 가입된 학생들을 제거한다.
  # -----
  return (dongdata)
}



simulation(100000)
simulation(100000)


