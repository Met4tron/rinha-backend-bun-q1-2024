CREATE TABLE IF NOT EXISTS public.clients
(
    id INTEGER NOT NULL,
    balance_limit INTEGER NOT NULL,
    balance INTEGER NOT NULL DEFAULT 0,
    CONSTRAINT clients_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.transactions
(
    id INTEGER NOT NULL,
    amount INTEGER NOT NULL,
    trans_type CHAR(1) NOT NULL,
    description VARCHAR(10) NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    created_by INTEGER NOT NULL,
    CONSTRAINT transactions_pkey PRIMARY KEY (id)
);

CREATE INDEX CONCURRENTLY idx_client_id ON public.clients (id);

INSERT INTO public.clients
VALUES  (1, 100000, 0),
    (2, 80000, 0),
    (3, 1000000, 0),
    (4, 10000000, 0),
    (5, 500000, 0);
