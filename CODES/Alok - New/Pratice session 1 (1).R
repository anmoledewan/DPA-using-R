myFile <- file.choose()                    	# Select the file 
myData  <- read.csv (myFile,header=TRUE)
View(myData)
str(myData)
myData%>%select(state,county,population,unemployment) #selecting data using pipe operator
View(Counties_selected)
glimpse(myData)
myData%>%select(state,county,population,poverty)
counties_selected1<-myData%>%select(state,county,population,poverty) #assigning the selected data to a variable inorder to save it
View(counties_selected1)

counties_selected1%>%arrange(desc(population))

myData%>%select(state,county,population,unemployment)%>%filter(region=="west")

counties_selected1%>%filter(state=='New York') #applying different filters
counties_selected1%>%filter(county=='Butler')

counties_selected1%>%arrange(desc(population))%>%filter(county=='Calhoun') #Arranging and filtering at the same time

counties_work<-myData%>%select(private_work,public_work,self_employed)
View(counties_work)

counties_unpop<- myData%>%select(state,county,population,unemployment)
View(counties_unpop)

counties_unpop%>%mutate(unemployed_population=population*unemployment/100)%>%mutate(transormed_population=population/100)
                                              
county_dynamics<-myData%>%select(state,county,population,men,women)%>%mutate(proportion_men=men/population)%>%filter(population>=10000)%>%arrange(desc(proportion_men))
View(county_dynamics)

View(county_dynamics)

myData%>%count()
myData%>%count(state)
myData%>%count(state,sort=TRUE)
myData%>%count(state,wt=population,sort=TRUE)

myData%>%summarise(total_population=sum(population))
myData%>%summarise(total_population=sum(population),average_unemployment=mean(unemployment))

# summary functions are: sum,mean,median,min,mnax,n

myData%>%group_by(state)%>%summarise(total_population=sum(population),average_unemployment=mean(unemployment))

myData%>%group_by(state,metro)%>%summarise(total_population=sum(population),average_unemployment=mean(unemployment))

myData%>%group_by(state,metro)%>%summarise(total_population=sum(population),average_unemployment=mean(unemployment))%>%arrange(desc(average_unemployment))

myData_top <- myData%>%select(state,county,population,unemployment,income)

myData_top %>%group_by(state)%>%top_n(2,population) #shows the top value

counties_walk<-myData%>%select(region,state,county,metro,population,walk)
View(counties_walk)
counties_walk %>%group_by(region)%>%mutate(walk_number=walk*population)%>%top_n(5,walk_number) #need to work

counties_income <- myData%>%select(state,region,income)
View(counties_income)
counties_income %>%group_by(region,state)%>%summarise(highes_income=max(income))%>%top_n(1,highes_income)

#Range
myData%>%select(state,county,drive:work_at_home)

myData%>%select(state,county,drive:work_at_home)%>%arrange(drive)

#Contains
myData%>%select(state,county,drive:work_at_home)%>%arrange(drive)%>%contains

#rename
#can be used within select function as well

#Transmute #combination of select and mutate

myData%>%transmute(state,county,fraction_men=men/population)
