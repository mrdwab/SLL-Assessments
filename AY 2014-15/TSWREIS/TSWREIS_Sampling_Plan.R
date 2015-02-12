set.seed(20150212)
## Desired sample = 6
## Buffer = 2
## 2 Classes x 2 Sections x 15 Schools = 60
## Enrollment per class = 40
Sample <- t(replicate(60, sample(40, 8, FALSE)))
Sample <- cbind(
  School = rep(1:15, each = 4),
  Class = c("5A", "5B", "6A", "6B"),
  setNames(data.frame(Sample), paste("Student", 1:8)))

## Desired sample = 4
## Buffer = 1
## 1 Class x 2 Sections x 5 Schools = 10
Control <- t(replicate(10, sample(40, 5, FALSE)))
Control <- cbind(
  School = rep(1:5, each = 2),
  Class = c("7A", "7B"),
  setNames(data.frame(Control), paste("Student", 1:5)))

write.csv(Sample, "TSWREIS_Sample.csv")
write.csv(Control, "TSWREIS_Control.csv")
