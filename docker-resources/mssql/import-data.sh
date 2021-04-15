# Wait to be sure that SQL Server has deployed
for i in {1..60}; # for every second in the next 60 seconds try to import the data to MS SQL Server 
do
    /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P admin_Password# -d master -i create-database.sql
    /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P admin_Password# -d master -i fill-database.sql
    if [ $? -eq 0 ]
    then # data is imported to MS SQL Server 
        echo "ms sql setup completed"
        break
    else # MS SQL Server is still in the Initializing phase ("not up yet so will sleep 1s and try again")
        sleep 1s
    fi
done
