# Function to find the maximum number in a list
find_max <- function(numbers) {
    max_num <- max(numbers)
    return(max_num)
}

# Example usage
numbers <- c(1, 5, 3, 9, 2)
max_number <- find_max(numbers)
print(max_number)