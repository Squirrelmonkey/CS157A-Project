# CS157A-Project 
Hospital Database
Technology: Java for frontend and backend. Oracle for database. Docker container. Sql for creating tables, inserting data, and running queries

# Developers
Matthew Legler 
Aarohi Chopra
Mark Saweres

# Reason for development
We had an interest in learning how to improve the infastructures in the medical field. Given what has happened over the last couple of years, we think that
improvement to efficiceny would be our next step forward out of school. 

# Description
When running Application and after the initial start, it will allow you to pick either an entire table to query via a drop down box or submit a statement 
that will be a custom query. The statements and associated queries are found in Queries/StatementList.txt. The program will find the statement in Queries/
UserInputList.txt and copy the corresponding query int Queries/QueryList.txt into query.txt. It will then send query.txt and a blank results.txt to 
MedicalConnection.connect. Once MedicalConnection runs the query, it will return the results.txt back to Application where it will create a table to display
it.

# Known Issues
One of the major issues we ran into was when we finsihed development, we had trouble connecting it to our application. This was caused by the software that 
developed the backend was made using a linux system and the application being developed on window systems. We were unable to use the frontend and backend 
together to send queries or receive the results using puTTY and Xming. Independantly they worked fine. We were able to run the database through command line 
and input queries and output the results. 

# Setting up the docker container
docker run -d -p 1521:1521 epiclabs/docker-oracle-xe-11g
apt-get update
apt search vim
apt install vim
java -version
apt install default-jre
apt-get install wget
apt install git-all
apt-get install xorg-x11-xauth //for windows users to set up 