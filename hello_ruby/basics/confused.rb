ironman_diary = 22

p ((ironman_diary = 22)) && (ironman_diary & 2 == 0)

# and 的優先權比 = 低，因此會被直接忽略
p ((ironman_diary = 22)) and (ironman_diary & 2 == 0)