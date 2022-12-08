guide <- read.csv('input.txt', header = FALSE, sep = '')
names(guide) <- c('opp', 'resp')

guide <- guide %>%
  mutate(points = case_when(
    opp == 'A' & resp =='X' ~ 4,
    opp == 'A' & resp == 'Y' ~ 8,
    opp == 'A' & resp == 'Z' ~ 3,
    opp == 'B' & resp == 'X' ~ 1,
    opp == 'B' & resp == 'Y' ~ 5,
    opp == 'B' & resp == 'Z' ~ 9,
    opp == 'C' & resp == 'X' ~ 7,
    opp == 'C' & resp == 'Y' ~ 2,
    TRUE ~ 6
  ))

sum(guide['points'])