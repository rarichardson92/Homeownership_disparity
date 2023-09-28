state1 <- read.csv("EducationReport1.csv")
state2 <- read.csv("EducationReport2.csv")
state3 <- read.csv("EducationReport3.csv")
state4 <- read.csv("EducationReport4.csv")
state5 <- read.csv("EducationReport5.csv")
state6 <- read.csv("EducationReport6.csv")
state7 <- read.csv("EducationReport7.csv")
state8 <- read.csv("EducationReport8.csv")
state9 <- read.csv("EducationReport9.csv")
state10 <- read.csv("EducationReport10.csv")
state11 <- read.csv("EducationReport11.csv")
state12 <- read.csv("EducationReport12.csv")
state13 <- read.csv("EducationReport13.csv")
state14 <- read.csv("EducationReport14.csv")
state15 <- read.csv("EducationReport15.csv")
state16 <- read.csv("EducationReport16.csv")
state17 <- read.csv("EducationReport17.csv")
state18 <- read.csv("EducationReport18.csv")
state19 <- read.csv("EducationReport19.csv")
state20 <- read.csv("EducationReport20.csv")
state21 <- read.csv("EducationReport21.csv")
state22 <- read.csv("EducationReport22.csv")
state23 <- read.csv("EducationReport23.csv")
state24 <- read.csv("EducationReport24.csv")
state25 <- read.csv("EducationReport25.csv")
state26 <- read.csv("EducationReport26.csv")
state27 <- read.csv("EducationReport27.csv")
state28 <- read.csv("EducationReport28.csv")
state29 <- read.csv("EducationReport29.csv")
state30 <- read.csv("EducationReport30.csv")
state31 <- read.csv("EducationReport31.csv")
state32 <- read.csv("EducationReport32.csv")
state33 <- read.csv("EducationReport33.csv")
state34 <- read.csv("EducationReport34.csv")
state35 <- read.csv("EducationReport35.csv")
state36 <- read.csv("EducationReport36.csv")
state37 <- read.csv("EducationReport37.csv")
state38 <- read.csv("EducationReport38.csv")
state39 <- read.csv("EducationReport39.csv")
state40 <- read.csv("EducationReport40.csv")
state41 <- read.csv("EducationReport41.csv")
state42 <- read.csv("EducationReport42.csv")
state43 <- read.csv("EducationReport43.csv")
state44 <- read.csv("EducationReport44.csv")
state45 <- read.csv("EducationReport45.csv")
state46 <- read.csv("EducationReport46.csv")
state47 <- read.csv("EducationReport47.csv")
state48 <- read.csv("EducationReport48.csv")
state49 <- read.csv("EducationReport49.csv")
state50 <- read.csv("EducationReport50.csv")
state51 <- read.csv("EducationReport51.csv")

hsgrad <- rbind(state1,state2,state3,state4,state5,
      state6,state7,state8,state9,state10,
      state11,state12,state13,state14,state15,
      state16,state17,state18,state19,state20,
      state21,state22,state23,state24,state25,
      state26,state27,state28,state29,state30,
      state31,state32,state33,state34,state35,
      state36,state37,state38,state39,state40,
      state41,state42,state43,state44,state45,
      state46,state47,state48,state49,state50,
      state51)

hsgrad <- hsgrad %>%
  mutate(rate_2010 = str_remove(rate_2010,"%"),
         rate_2010 = 1-as.numeric(rate_2010)/100,
         rate_2000 = str_remove(rate_2000, "%"),
         rate_2000 = 1-as.numeric(rate_2000)/100,
         rate_1990 = str_remove(rate_1990, "%"),
         rate_1990 = 1-as.numeric(rate_1990)/100,
         rate_1980 = str_remove(rate_1980, "%"),
         rate_1980 = 1-as.numeric(rate_1980)/100,
         rate_1970 = str_remove(rate_1970, "%"),
         rate_1970 = 1-as.numeric(rate_1970)/100)

write.csv(hsgrad,"hsgrad.csv")
