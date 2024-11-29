#!/bin/bash
set -e

echo "Iniciando configuración de base de datos..."

# Crear esquemas base
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    -- Crear esquemas
    CREATE SCHEMA IF NOT EXISTS public;
    CREATE SCHEMA IF NOT EXISTS app;
    CREATE SCHEMA IF NOT EXISTS audit;

    -- Habilitar extensiones
    CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
    CREATE EXTENSION IF NOT EXISTS "pgcrypto";
EOSQL

# Ejecutar migraciones
for migration in /migrations/*.sql; do
    if [ -f "$migration" ]; then
        echo "Aplicando migración: $migration"
        psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" -f "$migration"
    fi
done

# Ejecutar seeders
for seeder in /seeders/*.sql; do
    if [ -f "$seeder" ]; then
        echo "Aplicando seeder: $seeder"
        psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" -f "$seeder"
    fi
done

echo "Configuración de base de datos completada."