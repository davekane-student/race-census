library(tidyverse)
library(tidycensus)

# Download 2020 Decennial Census race data for Sarasota County, FL tracts
sarasota_race <- get_decennial(
  geography = "tract",
  variables = c(
    "Total" = "P1_001N",
    "White" = "P1_003N",
    "Black" = "P1_004N",
    "American Indian" = "P1_005N",
    "Asian" = "P1_006N",
    "Pacific Islander" = "P1_007N",
    "Other" = "P1_008N",
    "Two or more" = "P1_009N"
  ),
  state = "FL",
  county = "Sarasota",
  year = 2020
)

# Save downloaded data to data/
write_rds(sarasota_race, "data/sarasota_race.rds")
