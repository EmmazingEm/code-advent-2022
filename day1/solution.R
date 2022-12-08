inv <- read.table('input', blank.lines.skip = FALSE)[[1]]
elf = c()
cal = c(0, 0, 0)
i = 1
three = 0


for (i in 1:length(inv)) {
  if (is.na(inv[i]) == FALSE) {
    elf = c(elf, inv[i])
  } else if (sum(elf) >= min(cal)) {
    cal[which.min(cal)] = sum(elf)
    elf = c()
  } else {
    elf = c()
  }
}

three = sum(cal)