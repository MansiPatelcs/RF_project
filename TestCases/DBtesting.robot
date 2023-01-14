*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup     Connect To Database    pymysql  ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect From Database

*** Variables ***
${DBName}   mydb
${DBUser}   root
${DBPass}   Password
${DBHost}   localhost
${DBPort}   3306

*** Test Cases ***
#Create person table
#    ${output}=  Execute Sql String    Create table person(id integer,first_name varchar(20),last_name varchar(20));
#    Log To Console    ${output}
#    Should Be Equal As Strings  ${output}   None

Inserting Data in person Table
#    single record
#    ${output}=  Execute Sql String    Insert into person Values(101,"John","canady");

#    multiple records
    ${output}=  Execute Sql Script    ./testdata/mydb_person_insertdata.sql
    Log To Console    ${output}
    Should Be Equal As Strings  ${output}   None