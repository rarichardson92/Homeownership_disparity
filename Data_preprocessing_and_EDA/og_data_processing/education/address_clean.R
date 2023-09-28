# load in data
address <- read.csv("address.csv")

# data cleaning address file
address[1:4,]

# remove excess lines and columns
address <- address[-c(1:3),-1]
colnames(address) <- address[1,]
address <- address[-1,]

# separate address
address2 <- address %>%
  separate(Address,c("Street","City","State","Zip","Zip2","Zip3"),', ') %>%
  mutate(State = ifelse(is.na(State),City,State),
         City = ifelse(City == State, Street, City),
         City = ifelse(!is.na(Zip),State,City),
         State = ifelse(!is.na(Zip),Zip,State),
         City = ifelse(!is.na(Zip2),Zip,City),
         State = ifelse(!is.na(Zip2),Zip2,State),
         City = ifelse(!is.na(Zip3),Zip2,City),
         State = ifelse(!is.na(Zip3),Zip3,State)) %>%
  select(-c(Street,Zip,Zip2,Zip3,
            `Name of chief administrator`,
            `Title of chief administrator`,
            `General information telephone`,
            `Office of Postsecondary Education (OPE) ID`,
            `Website address`)) %>%
  separate(State, c("State","Zip"),' ')

write.csv(address2,"address_clean.csv")
