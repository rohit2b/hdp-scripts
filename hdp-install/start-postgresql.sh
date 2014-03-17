# This is needed by Ambari server
# Sometimes Ambari does not start the Postgres DB, and this command will help you check whether postgres is starting or not

service postgresql start

serviec postgresql status

# Troubleshooting

# Ambari sets up postgres to use /var/lib/pgsql/ as data directory

# If you see the following:
# psql: could not connect to server: No such file or directory
# Is the server running locally and accepting
# connections on Unix domain socket "/tmp/.s.PGSQL.5432"?
# http://www.revsys.com/writings/postgresql/errors.html#cannot-connect-local
ps auxw | grep post
