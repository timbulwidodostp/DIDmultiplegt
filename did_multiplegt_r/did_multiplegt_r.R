# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Difference-in-Difference (DID) designs multiple groups and periods Use DIDmultiplegt (did_multiplegt) With R Software
install.packages("readxl")
install.packages("httr")
install.packages("DIDmultiplegt")
install.packages("wooldridge")
install.packages("numDeriv")
library("DIDmultiplegt")
library("wooldridge")
library("numDeriv")
# Import Data Excel Into R From Github Olah Data Semarang (timbulwidodostp)
github_link <- "https://github.com/timbulwidodostp/did_multiplegt_r/raw/main/did_multiplegt_r/did_multiplegt_r.xlsx"
temp_file <- tempfile(fileext = ".xlsx")
req <- GET(github_link, 
# authenticate using GITHUB_PAT
authenticate(Sys.getenv("GITHUB_PAT"), ""),
# write result to disk
write_disk(path = temp_file))
did_multiplegt_r <- readxl::read_excel(temp_file)
# Estimate Difference-in-Difference (DID) designs multiple groups and periods Use DIDmultiplegt (did_multiplegt) With R Software
Dependen = "Dependen"
Id = "Id"
Year = "Year"
Dummy = "Dummy"
Controls = "Hours"
did_multiplegt_r<-did_multiplegt(did_multiplegt_r,Dependen,Id,Year,Dummy,Controls)
did_multiplegt_r
# Difference-in-Difference (DID) designs multiple groups and periods Use DIDmultiplegt (did_multiplegt) With R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished