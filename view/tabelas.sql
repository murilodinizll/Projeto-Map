create table especificacoes
(
    codigo     serial not null
        constraint produtos_pk
            primary key,
            
    fabricante varchar(50),
    cor        varchar(50),
    sistema    varchar(50),
    detalhes   varchar(50)
);

create table produtos
(
    codigo        serial not null,
    nome          varchar(50),
    preco         numeric,
    especificacao integer
    
        constraint produtos_especificacao_fkey
            references especificacoes
            on delete cascade
);
