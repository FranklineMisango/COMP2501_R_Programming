state <- "CA"
result <- switch(
    state,
    "CA" = "California",
    "NY" = "New York",
    "FL"="Florida",
    "OH"="Ohio"
)
print(result)