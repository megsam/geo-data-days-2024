-- Vérifie si le schéma "espace" existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_catalog.pg_namespace WHERE nspname = 'espace') THEN
        RAISE EXCEPTION 'Le schéma "espace" n\'existe pas.';
    END IF;
END
$$;

-- Vérifie si la table "Communes" existe dans le schéma "espace"
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'espace' AND table_name = 'Communes') THEN
        RAISE EXCEPTION 'La table "Communes" n\'existe pas dans le schéma "espace".';
    END IF;
END
$$;

-- Vérifie si la table "Bretelles" existe dans le schéma "espace"
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'espace' AND table_name = 'Bretelles') THEN
        RAISE EXCEPTION 'La table "Bretelles" n\'existe pas dans le schéma "espace".';
    END IF;
END
$$;
