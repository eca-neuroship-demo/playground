# Function to find the minimum number in a list
find_min <- function(numbers) {
    min_num <- min(numbers)
    return(min_num)
}

# Example usage
numbers <- c(1, 5, 3, 9, 2)
min_num <- find_min(numbers)
print(min_num)