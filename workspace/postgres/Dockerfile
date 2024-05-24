FROM postgres:14-alpine

# Environment variables for improved security 
ENV POSTGRES_PASSWORD=my_very_strong_password
ENV POSTGRES_USER=rails_db_user

# Create the database user and database securely
RUN su postgres -c "psql -U postgres -c \"CREATE USER ${POSTGRES_USER} WITH PASSWORD '${POSTGRES_PASSWORD}';\""
RUN su postgres -c "psql -U postgres -c \"CREATE DATABASE rails;\""

# Expose PostgreSQL port 
EXPOSE 5432

# Command to run PostgreSQL
CMD ["postgres", "-p", "5432"]
