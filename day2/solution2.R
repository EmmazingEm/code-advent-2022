guide <- read.csv('input.txt', header = FALSE, sep = '')
names(guide) <- c('opp', 'resp')

guide <- guide %>%
  mutate(shape = case_when(
    opp == 'A' & resp =='X' ~ 'S',
    opp == 'A' & resp == 'Y' ~ 'R',
    opp == 'A' & resp == 'Z' ~ 'P',
    opp == 'B' & resp == 'X' ~ 'R',
    opp == 'B' & resp == 'Y' ~ 'P',
    opp == 'B' & resp == 'Z' ~ 'S',
    opp == 'C' & resp == 'X' ~ 'P',
    opp == 'C' & resp == 'Y' ~ 'S',
    TRUE ~ 'R'
  ))

guide <- guide %>%
  mutate(points = case_when(
    opp == 'A' & shape =='R' ~ 4,
    opp == 'A' & shape == 'P' ~ 8,
    opp == 'A' & shape == 'S' ~ 3,
    opp == 'B' & shape == 'R' ~ 1,
    opp == 'B' & shape == 'P' ~ 5,
    opp == 'B' & shape == 'S' ~ 9,
    opp == 'C' & shape == 'R' ~ 7,
    opp == 'C' & shape == 'P' ~ 2,
    TRUE ~ 6
  ))

sum(guide['points'])