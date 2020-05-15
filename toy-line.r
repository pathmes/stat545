a <- 2
b <- -3
n <- 500

sig_sq <- 4
x <- runif(n)
y <- a + b * x + rnorm(n, sd = sqrt(sig_sq))
(avg_x <- mean(x))

write(avg_x, "avg_x.txt")
plot(x, y)
abline(a, b, col = "red")

dev.print(pdf, "toy_line_plot.pdf")
