#!/bin/bash
set -e

# Remplacer pg_hba.conf
cp /docker-entrypoint-initdb.d/pg_hba.conf /etc/postgresql/13/main/pg_hba.conf

# Redémarrer PostgreSQL pour appliquer les nouvelles configurations
service postgresql restart

# Attendre que PostgreSQL soit prêt
until pg_isready -h localhost; do
  echo "Waiting for PostgreSQL to be ready..."
  sleep 2
done

# Importer le dump SQL
psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -f /docker-entrypoint-initdb.d/dump.sql

# supprimer le script d'initialisation  après utilisation
rm docker-entrypoint-initdb.d\init.sh
