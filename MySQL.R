library(RMySQL)
db_user <- 'root'
db_password <- ''
db_name <- 'test'
db_host <- 'localhost'
db_port <- 3306
mydb <- dbConnect(MySQL(), 
                  user = db_user, 
                  password = db_password, 
                  dbname = db_name, 
                  host = db_host, 
                  port = db_port)
query <- "SELECT * FROM registration"
result <- dbSendQuery(mydb, query)
student_data <- fetch(result, n = -1)
dbClearResult(result)
on.exit(dbDisconnect(mydb))
View(student_data)
