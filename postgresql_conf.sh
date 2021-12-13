sudo apt install postgresql postgresql-contrib
read -p "Enter the username for the postgresql database: " username
read -sp "Enter the password for the postgresql database: " password
set PGUSER=$username
set PGPASSWORD=$password

sudo -u postgres createuser -s -i -d -r -l -w $username
sudo -u postgres psql -c "ALTER USER $username WITH PASSWORD '$password';"

sudo -u createdb -p 5432 -W