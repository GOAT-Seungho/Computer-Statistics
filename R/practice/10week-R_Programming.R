# 미적분
D(expression(x^2), "x")
integrate(function(x) x^2, 0, 1)

# 확률 계산
# 예제 1
prob_event_one <- function(p) { # p = prob vector (size=n)
  not_p <- 1 - p
  result <- 0.0
  for (i in 1:length(p)) {
    result <- result + p[i] * prod(not_p[-i])
  }
  return (result)
}
prob_event_one(0.2)

# 예제 2
one_product <- function() {
  fault <- 2
  random <- sample(1:1000, 1)
  if (random <= fault) {
    return ("Fail")
  } else {
    return ("Success")
  }
}
results <- c()
for (i in 1:1000) results[i] <- one_product()
results

product_line <- function() {
  success <- 0
  for (i in 1:100) {
    product <- one_product()
    if (product == "Success") {
      success <- success + 1
    } else {
      break
    }
  }
  return (success)
}
product_line()

oneday_factory <- function(n) {
  total_success <- 0
  for (i in 1:n) {
    total_success <- total_success + product_line()
  }
  return (total_success)
}
tenday_result <- c()
for (i in 1:10) tenday_result[i] <- oneday_factory(1000)
final <- mean(tenday_result)
final
