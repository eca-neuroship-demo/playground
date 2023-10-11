# Function to calculate Maximum Draw Down (MDD)
calculate_mdd <- function(timeseries) {
    returns <- diff(timeseries) / timeseries[-length(timeseries)]
    cumulative_returns <- cumprod(1 + returns)
    drawdowns <- 1 - cumulative_returns / cummax(cumulative_returns)
    max_drawdown <- max(drawdowns)
    return(max_drawdown)
}

# Example usage
timeseries <- c(100, 120, 90, 110, 80, 100, 120)
mdd <- calculate_mdd(timeseries)
print(paste("Maximum Draw Down:", mdd))

# Plotting the timeseries and drawdowns
plot(timeseries, type = "l", main = "Timeseries with Drawdowns")
lines(drawdowns, col = "red")