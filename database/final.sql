--
-- File generated with SQLiteStudio v3.2.1 on jeu. juin 3 16:41:52 2021
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: checkers
DROP TABLE IF EXISTS checkers;

CREATE TABLE checkers (
    id         INTEGER  NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    created_at DATETIME,
    updated_at DATETIME
);


-- Table: commentaires
DROP TABLE IF EXISTS commentaires;

CREATE TABLE commentaires (
    id           INTEGER  NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    user_id      INTEGER  NOT NULL,
    active_state INTEGER,
    content      TEXT,
    active_time  INTEGER  NOT NULL,
    emiiter_id   INTEGER  NOT NULL,
    created_at   DATETIME,
    updated_at   DATETIME
);

INSERT INTO commentaires (
                             id,
                             user_id,
                             active_state,
                             content,
                             active_time,
                             emiiter_id,
                             created_at,
                             updated_at
                         )
                         VALUES (
                             1,
                             4,
                             1,
                             'delog taux',
                             30,
                             1,
                             NULL,
                             NULL
                         );


-- Table: conges
DROP TABLE IF EXISTS conges;

CREATE TABLE conges (
    id           INTEGER  NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    user_id      INTEGER  NOT NULL,
    nb_jour_pris INTEGER,
    solde_conge  INTEGER,
    validator_id INTEGER,
    created_at   DATETIME,
    updated_at   DATETIME
);

INSERT INTO conges (
                       id,
                       user_id,
                       nb_jour_pris,
                       solde_conge,
                       validator_id,
                       created_at,
                       updated_at
                   )
                   VALUES (
                       1,
                       4,
                       6,
                       33,
                       3,
                       NULL,
                       NULL
                   );


-- Table: contrats
DROP TABLE IF EXISTS contrats;

CREATE TABLE contrats (
    id           INTEGER  NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    user_id      INTEGER  NOT NULL,
    type_contrat VARCHAR,
    validator_id INTEGER  NOT NULL,
    created_at   DATETIME,
    updated_at   DATETIME
);

INSERT INTO contrats (
                         id,
                         user_id,
                         type_contrat,
                         validator_id,
                         created_at,
                         updated_at
                     )
                     VALUES (
                         1,
                         4,
                         'CDD',
                         3,
                         NULL,
                         NULL
                     );


-- Table: demandeconges
DROP TABLE IF EXISTS demandeconges;

CREATE TABLE demandeconges (
    id               INTEGER  NOT NULL
                              PRIMARY KEY AUTOINCREMENT,
    user_id          INTEGER  NOT NULL,
    active_state     INTEGER,
    content          TEXT,
    resolved_date    DATE,
    resolved_comment TEXT,
    validator_id     INTEGER,
    created_at       DATETIME,
    updated_at       DATETIME,
    start_date       DATE,
    end_date         DATE
);

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              1,
                              4,
                              1,
                              'demande cp mariage',
                              NULL,
                              NULL,
                              1,
                              NULL,
                              NULL,
                              NULL,
                              NULL
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              2,
                              5,
                              1,
                              NULL,
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 07:48:15',
                              '2021-06-01 07:48:15',
                              '2021-06-16',
                              '2021-06-16'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              3,
                              5,
                              1,
                              'troisième demande de cp',
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 07:50:09',
                              '2021-06-01 07:50:09',
                              '2021-06-23',
                              '2021-06-23'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              4,
                              5,
                              1,
                              'quatrieme demande de cp',
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 07:52:15',
                              '2021-06-01 07:52:15',
                              '2021-06-22',
                              '2021-06-22'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              5,
                              5,
                              1,
                              '5ieme  demande de cp',
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 07:53:15',
                              '2021-06-01 07:53:15',
                              '2021-07-25',
                              '2021-07-31'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              6,
                              5,
                              1,
                              '6ieme demande de cp',
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 08:03:13',
                              '2021-06-01 08:03:13',
                              '2021-07-25',
                              '2021-07-31'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              7,
                              5,
                              NULL,
                              'gggg',
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 09:09:17',
                              '2021-06-01 09:09:17',
                              '2021-06-08',
                              '2021-06-17'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              8,
                              5,
                              NULL,
                              'jhfhgfhkgs',
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 09:13:07',
                              '2021-06-01 09:13:07',
                              '2021-06-09',
                              '2021-06-16'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              9,
                              5,
                              NULL,
                              '3ieme demande',
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 09:27:21',
                              '2021-06-01 09:27:21',
                              '2021-06-15',
                              '2021-06-16'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              10,
                              5,
                              NULL,
                              'Demande de congé fiançailles',
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 10:17:41',
                              '2021-06-01 10:17:41',
                              '2021-06-09',
                              '2021-06-16'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              11,
                              5,
                              NULL,
                              '12547455555',
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 10:19:58',
                              '2021-06-01 10:19:58',
                              'undefined',
                              'undefined'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              12,
                              5,
                              NULL,
                              'Demande de conge pour fiancaille',
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 10:22:25',
                              '2021-06-01 10:22:25',
                              '2021-06-15',
                              '2021-06-17'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              13,
                              5,
                              NULL,
                              'conge mariage',
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 11:29:28',
                              '2021-06-01 11:29:28',
                              '2021-06-09',
                              '2021-06-15'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              14,
                              5,
                              NULL,
                              'demande de cp pour l''ete',
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 12:21:56',
                              '2021-06-01 12:21:56',
                              '2021-06-17',
                              '2021-06-17'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              15,
                              5,
                              NULL,
                              'cp mariage ppppppppppppppppppppppppppppppppppppppp',
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 12:24:50',
                              '2021-06-01 12:24:50',
                              '2021-06-16',
                              '2021-06-16'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              36,
                              5,
                              NULL,
                              'undefined',
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 19:57:24',
                              '2021-06-01 19:57:24',
                              '2021-06-10',
                              '2021-06-17'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              37,
                              5,
                              NULL,
                              'demande de conge pour l''ete',
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 21:21:22',
                              '2021-06-01 21:21:22',
                              '2021-06-02',
                              '2021-06-03'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              38,
                              5,
                              NULL,
                              'cp ete',
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 21:25:48',
                              '2021-06-01 21:25:48',
                              '2021-06-02',
                              '2021-06-16'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              39,
                              5,
                              NULL,
                              'Demande de congé de fiançailles',
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 21:47:08',
                              '2021-06-01 21:47:08',
                              '2021-06-09',
                              '2021-06-09'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              40,
                              5,
                              NULL,
                              'ggg',
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 22:00:00',
                              '2021-06-01 22:00:00',
                              '2021-06-08',
                              '2021-06-17'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              41,
                              5,
                              NULL,
                              'dcp',
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 22:18:03',
                              '2021-06-01 22:18:03',
                              '2021-06-17',
                              '2021-06-24'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              42,
                              5,
                              NULL,
                              'ddd',
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 22:18:20',
                              '2021-06-01 22:18:20',
                              '2021-06-25',
                              '2021-06-22'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              43,
                              5,
                              NULL,
                              'ggggg',
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 22:44:02',
                              '2021-06-01 22:44:02',
                              '2021-06-30',
                              '2021-06-23'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              44,
                              5,
                              NULL,
                              'dch demande de cp',
                              NULL,
                              NULL,
                              0,
                              '2021-06-01 23:00:32',
                              '2021-06-01 23:00:32',
                              '2021-06-09',
                              '2021-06-10'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              45,
                              5,
                              NULL,
                              'Congé de mariage Nassima',
                              NULL,
                              NULL,
                              0,
                              '2021-06-02 15:39:28',
                              '2021-06-02 15:39:28',
                              '2021-06-09',
                              '2021-06-17'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              46,
                              5,
                              NULL,
                              'ddd',
                              NULL,
                              NULL,
                              0,
                              '2021-06-03 14:33:03',
                              '2021-06-03 14:33:03',
                              '2021-06-09',
                              '2021-06-08'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              47,
                              5,
                              NULL,
                              'ddd',
                              NULL,
                              NULL,
                              0,
                              '2021-06-03 14:33:17',
                              '2021-06-03 14:33:17',
                              '2021-06-10',
                              '2021-06-16'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              48,
                              5,
                              NULL,
                              'dddd',
                              NULL,
                              NULL,
                              0,
                              '2021-06-03 14:33:47',
                              '2021-06-03 14:33:47',
                              '2021-06-10',
                              '2021-06-16'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              49,
                              5,
                              NULL,
                              'ssss',
                              NULL,
                              NULL,
                              0,
                              '2021-06-03 14:34:02',
                              '2021-06-03 14:34:02',
                              '2021-06-10',
                              '2021-06-15'
                          );

INSERT INTO demandeconges (
                              id,
                              user_id,
                              active_state,
                              content,
                              resolved_date,
                              resolved_comment,
                              validator_id,
                              created_at,
                              updated_at,
                              start_date,
                              end_date
                          )
                          VALUES (
                              50,
                              5,
                              NULL,
                              'sss',
                              NULL,
                              NULL,
                              0,
                              '2021-06-03 14:34:16',
                              '2021-06-03 14:34:16',
                              '2021-06-10',
                              '2021-06-16'
                          );


-- Table: depotreclamations
DROP TABLE IF EXISTS depotreclamations;

CREATE TABLE depotreclamations (
    id               INTEGER  NOT NULL
                              PRIMARY KEY AUTOINCREMENT,
    user_id          INTEGER  NOT NULL,
    active_state     INTEGER,
    content          TEXT,
    resolved_date    DATE,
    resolved_comment TEXT,
    validator_id     INTEGER,
    created_at       DATETIME,
    updated_at       DATETIME,
    type_reclamation VARCHAR
);

INSERT INTO depotreclamations (
                                  id,
                                  user_id,
                                  active_state,
                                  content,
                                  resolved_date,
                                  resolved_comment,
                                  validator_id,
                                  created_at,
                                  updated_at,
                                  type_reclamation
                              )
                              VALUES (
                                  1,
                                  4,
                                  1,
                                  'retard de paiement',
                                  NULL,
                                  NULL,
                                  1,
                                  NULL,
                                  NULL,
                                  NULL
                              );

INSERT INTO depotreclamations (
                                  id,
                                  user_id,
                                  active_state,
                                  content,
                                  resolved_date,
                                  resolved_comment,
                                  validator_id,
                                  created_at,
                                  updated_at,
                                  type_reclamation
                              )
                              VALUES (
                                  2,
                                  5,
                                  1,
                                  'retard',
                                  NULL,
                                  NULL,
                                  NULL,
                                  '2021-06-02 00:53:10',
                                  '2021-06-02 00:53:10',
                                  '2'
                              );

INSERT INTO depotreclamations (
                                  id,
                                  user_id,
                                  active_state,
                                  content,
                                  resolved_date,
                                  resolved_comment,
                                  validator_id,
                                  created_at,
                                  updated_at,
                                  type_reclamation
                              )
                              VALUES (
                                  3,
                                  5,
                                  1,
                                  'rrr',
                                  NULL,
                                  NULL,
                                  NULL,
                                  '2021-06-02 00:54:51',
                                  '2021-06-02 00:54:51',
                                  '3'
                              );

INSERT INTO depotreclamations (
                                  id,
                                  user_id,
                                  active_state,
                                  content,
                                  resolved_date,
                                  resolved_comment,
                                  validator_id,
                                  created_at,
                                  updated_at,
                                  type_reclamation
                              )
                              VALUES (
                                  4,
                                  5,
                                  1,
                                  'ggg',
                                  NULL,
                                  NULL,
                                  NULL,
                                  '2021-06-02 00:56:37',
                                  '2021-06-02 00:56:37',
                                  '2'
                              );

INSERT INTO depotreclamations (
                                  id,
                                  user_id,
                                  active_state,
                                  content,
                                  resolved_date,
                                  resolved_comment,
                                  validator_id,
                                  created_at,
                                  updated_at,
                                  type_reclamation
                              )
                              VALUES (
                                  5,
                                  5,
                                  1,
                                  'w',
                                  NULL,
                                  NULL,
                                  NULL,
                                  '2021-06-02 00:57:32',
                                  '2021-06-02 00:57:32',
                                  '3'
                              );

INSERT INTO depotreclamations (
                                  id,
                                  user_id,
                                  active_state,
                                  content,
                                  resolved_date,
                                  resolved_comment,
                                  validator_id,
                                  created_at,
                                  updated_at,
                                  type_reclamation
                              )
                              VALUES (
                                  6,
                                  5,
                                  1,
                                  'fff',
                                  NULL,
                                  NULL,
                                  NULL,
                                  '2021-06-02 00:59:16',
                                  '2021-06-02 00:59:16',
                                  '3'
                              );

INSERT INTO depotreclamations (
                                  id,
                                  user_id,
                                  active_state,
                                  content,
                                  resolved_date,
                                  resolved_comment,
                                  validator_id,
                                  created_at,
                                  updated_at,
                                  type_reclamation
                              )
                              VALUES (
                                  7,
                                  5,
                                  1,
                                  'Réclamation salaire',
                                  NULL,
                                  NULL,
                                  NULL,
                                  '2021-06-02 01:00:34',
                                  '2021-06-02 01:00:34',
                                  '3'
                              );


-- Table: failed_jobs
DROP TABLE IF EXISTS failed_jobs;

CREATE TABLE failed_jobs (
    id         INTEGER  NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    uuid       VARCHAR  NOT NULL,
    connection TEXT     NOT NULL,
    queue      TEXT     NOT NULL,
    payload    TEXT     NOT NULL,
    exception  TEXT     NOT NULL,
    failed_at  DATETIME DEFAULT CURRENT_TIMESTAMP
                        NOT NULL
);


-- Table: fichepaies
DROP TABLE IF EXISTS fichepaies;

CREATE TABLE fichepaies (
    id                  INTEGER  NOT NULL
                                 PRIMARY KEY AUTOINCREMENT,
    user_id             INTEGER  NOT NULL,
    mois                INTEGER  NOT NULL,
    work_time           FLOAT,
    prime_anciennete    FLOAT,
    indemnite_transport FLOAT,
    prime_rendement     FLOAT,
    gratification       FLOAT,
    conge               FLOAT,
    ticket_resto        FLOAT,
    cnss                FLOAT,
    irpp                FLOAT,
    salaire_net         FLOAT,
    created_at          DATETIME,
    updated_at          DATETIME,
    link                VARCHAR
);

INSERT INTO fichepaies (
                           id,
                           user_id,
                           mois,
                           work_time,
                           prime_anciennete,
                           indemnite_transport,
                           prime_rendement,
                           gratification,
                           conge,
                           ticket_resto,
                           cnss,
                           irpp,
                           salaire_net,
                           created_at,
                           updated_at,
                           link
                       )
                       VALUES (
                           1,
                           4,
                           'mars-2021',
                           160.0,
                           150.0,
                           33.0,
                           150.65,
                           0.0,
                           0.0,
                           80.0,
                           4443221.0,
                           345.0,
                           1359.9,
                           NULL,
                           NULL,
                           NULL
                       );


-- Table: gratifications
DROP TABLE IF EXISTS gratifications;

CREATE TABLE gratifications (
    id            INTEGER  NOT NULL
                           PRIMARY KEY AUTOINCREMENT,
    user_id       INTEGER  NOT NULL,
    gratification FLOAT,
    validator_id  INTEGER,
    created_at    DATETIME,
    updated_at    DATETIME
);


-- Table: heuresups
DROP TABLE IF EXISTS heuresups;

CREATE TABLE heuresups (
    id           INTEGER  NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    user_id      INTEGER  NOT NULL,
    nb_heure_sup INTEGER,
    validator_id INTEGER,
    created_at   DATETIME,
    updated_at   DATETIME
);


-- Table: hierarchies
DROP TABLE IF EXISTS hierarchies;

CREATE TABLE hierarchies (
    id           INTEGER  NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    user_id      INTEGER  NOT NULL,
    manager_id   INTEGER,
    validator_id INTEGER,
    created_at   DATETIME,
    updated_at   DATETIME,
    manager_name VARCHAR
);

INSERT INTO hierarchies (
                            id,
                            user_id,
                            manager_id,
                            validator_id,
                            created_at,
                            updated_at,
                            manager_name
                        )
                        VALUES (
                            1,
                            1,
                            3,
                            3,
                            NULL,
                            NULL,
                            'maala abdelhamid'
                        );

INSERT INTO hierarchies (
                            id,
                            user_id,
                            manager_id,
                            validator_id,
                            created_at,
                            updated_at,
                            manager_name
                        )
                        VALUES (
                            2,
                            2,
                            3,
                            3,
                            NULL,
                            NULL,
                            'maala abdelhamid'
                        );

INSERT INTO hierarchies (
                            id,
                            user_id,
                            manager_id,
                            validator_id,
                            created_at,
                            updated_at,
                            manager_name
                        )
                        VALUES (
                            3,
                            3,
                            3,
                            3,
                            NULL,
                            NULL,
                            'maala abdelhamid'
                        );

INSERT INTO hierarchies (
                            id,
                            user_id,
                            manager_id,
                            validator_id,
                            created_at,
                            updated_at,
                            manager_name
                        )
                        VALUES (
                            4,
                            4,
                            1,
                            1,
                            NULL,
                            NULL,
                            'belkahla iheb'
                        );

INSERT INTO hierarchies (
                            id,
                            user_id,
                            manager_id,
                            validator_id,
                            created_at,
                            updated_at,
                            manager_name
                        )
                        VALUES (
                            5,
                            5,
                            1,
                            1,
                            NULL,
                            NULL,
                            'belkahla iheb'
                        );

INSERT INTO hierarchies (
                            id,
                            user_id,
                            manager_id,
                            validator_id,
                            created_at,
                            updated_at,
                            manager_name
                        )
                        VALUES (
                            6,
                            6,
                            1,
                            1,
                            NULL,
                            NULL,
                            'belkahla iheb'
                        );

INSERT INTO hierarchies (
                            id,
                            user_id,
                            manager_id,
                            validator_id,
                            created_at,
                            updated_at,
                            manager_name
                        )
                        VALUES (
                            7,
                            7,
                            1,
                            1,
                            NULL,
                            NULL,
                            'belkahla iheb'
                        );

INSERT INTO hierarchies (
                            id,
                            user_id,
                            manager_id,
                            validator_id,
                            created_at,
                            updated_at,
                            manager_name
                        )
                        VALUES (
                            8,
                            8,
                            1,
                            1,
                            NULL,
                            NULL,
                            'belkahla iheb'
                        );

INSERT INTO hierarchies (
                            id,
                            user_id,
                            manager_id,
                            validator_id,
                            created_at,
                            updated_at,
                            manager_name
                        )
                        VALUES (
                            9,
                            9,
                            1,
                            1,
                            NULL,
                            NULL,
                            'belkahla iheb'
                        );

INSERT INTO hierarchies (
                            id,
                            user_id,
                            manager_id,
                            validator_id,
                            created_at,
                            updated_at,
                            manager_name
                        )
                        VALUES (
                            10,
                            10,
                            2,
                            2,
                            NULL,
                            NULL,
                            'belkadi bassem'
                        );

INSERT INTO hierarchies (
                            id,
                            user_id,
                            manager_id,
                            validator_id,
                            created_at,
                            updated_at,
                            manager_name
                        )
                        VALUES (
                            11,
                            11,
                            2,
                            2,
                            NULL,
                            NULL,
                            'belkadi bassem'
                        );

INSERT INTO hierarchies (
                            id,
                            user_id,
                            manager_id,
                            validator_id,
                            created_at,
                            updated_at,
                            manager_name
                        )
                        VALUES (
                            12,
                            12,
                            2,
                            2,
                            NULL,
                            NULL,
                            'belkadi bassem'
                        );

INSERT INTO hierarchies (
                            id,
                            user_id,
                            manager_id,
                            validator_id,
                            created_at,
                            updated_at,
                            manager_name
                        )
                        VALUES (
                            13,
                            13,
                            2,
                            2,
                            NULL,
                            NULL,
                            'belkadi bassem'
                        );

INSERT INTO hierarchies (
                            id,
                            user_id,
                            manager_id,
                            validator_id,
                            created_at,
                            updated_at,
                            manager_name
                        )
                        VALUES (
                            14,
                            14,
                            2,
                            2,
                            NULL,
                            NULL,
                            'belkadi bassem'
                        );

INSERT INTO hierarchies (
                            id,
                            user_id,
                            manager_id,
                            validator_id,
                            created_at,
                            updated_at,
                            manager_name
                        )
                        VALUES (
                            15,
                            15,
                            2,
                            2,
                            NULL,
                            NULL,
                            'belkadi bassem'
                        );


-- Table: labs
DROP TABLE IF EXISTS labs;

CREATE TABLE labs (
    id         INTEGER  NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    created_at DATETIME,
    updated_at DATETIME
);


-- Table: logins
DROP TABLE IF EXISTS logins;

CREATE TABLE logins (
    id         INTEGER  NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    user_id    INTEGER  NOT NULL,
    created_at DATETIME,
    updated_at DATETIME
);


-- Table: logouts
DROP TABLE IF EXISTS logouts;

CREATE TABLE logouts (
    id         INTEGER  NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    user_id    INTEGER  NOT NULL,
    created_at DATETIME,
    updated_at DATETIME
);


-- Table: migrations
DROP TABLE IF EXISTS migrations;

CREATE TABLE migrations (
    id        INTEGER NOT NULL
                      PRIMARY KEY AUTOINCREMENT,
    migration VARCHAR NOT NULL,
    batch     INTEGER NOT NULL
);

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           1,
                           '2014_10_12_000000_create_users_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           2,
                           '2014_10_12_100000_create_password_resets_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           3,
                           '2016_06_01_000001_create_oauth_auth_codes_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           4,
                           '2016_06_01_000002_create_oauth_access_tokens_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           5,
                           '2016_06_01_000003_create_oauth_refresh_tokens_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           6,
                           '2016_06_01_000004_create_oauth_clients_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           7,
                           '2016_06_01_000005_create_oauth_personal_access_clients_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           8,
                           '2019_08_19_000000_create_failed_jobs_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           9,
                           '2021_04_28_065033_create_products_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           10,
                           '2021_05_11_231042_create_checkers_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           11,
                           '2021_05_18_171945_create_roles_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           12,
                           '2021_05_18_172104_create_role_user_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           13,
                           '2021_05_20_132051_create_fichepaies_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           14,
                           '2021_05_20_151331_create_ressources_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           15,
                           '2021_05_20_151359_create_logins_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           16,
                           '2021_05_20_151409_create_logouts_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           17,
                           '2021_05_20_151503_create_commentaires_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           18,
                           '2021_05_20_151521_create_notifications_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           19,
                           '2021_05_20_153902_create_timecounters_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           20,
                           '2021_05_20_153918_create_tauxhoraires_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           21,
                           '2021_05_20_153940_create_qualifications_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           22,
                           '2021_05_20_154027_create_contrats_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           23,
                           '2021_05_20_163322_create_demandeconges_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           24,
                           '2021_05_20_163347_create_depotreclamations_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           25,
                           '2021_05_20_170114_create_hierarchies_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           26,
                           '2021_05_20_171113_create_conges_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           27,
                           '2021_05_22_003240_create_planifications_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           28,
                           '2021_05_22_003344_create_gratifications_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           29,
                           '2021_05_22_003402_create_heuresups_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           30,
                           '2021_05_22_003434_create_primerendements_table',
                           1
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           31,
                           '2021_05_23_014512_alter_fichepaies_table',
                           2
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           32,
                           '2021_05_23_074537_create_schedulers_table',
                           3
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           33,
                           '2021_05_30_095248_add_manager_name_to_hierarchies_table',
                           4
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           34,
                           '2021_05_30_100231_add_rib_to_ressources_table',
                           5
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           35,
                           '2021_05_30_100617_drop_nb_enfant_to_ressources_table',
                           6
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           36,
                           '2021_05_30_100701_drop_nb_enfants_to_ressources_table',
                           7
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           37,
                           '2021_06_01_061025_create_labs_table',
                           8
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           38,
                           '2021_06_01_072551_add_date_field_to_demandeconges_table',
                           9
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           39,
                           '2021_06_01_090022_create_notificationapps_table',
                           10
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           40,
                           '2021_06_01_110510_add_validation_field_to_notificationapps_table',
                           11
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           41,
                           '2021_06_01_223534_add_manager_name_to_notificationapps_table',
                           12
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           42,
                           '2021_06_01_234117_add_nature_notification_to_notificationapps_table',
                           13
                       );

INSERT INTO migrations (
                           id,
                           migration,
                           batch
                       )
                       VALUES (
                           43,
                           '2021_06_02_004007_add_type_reclamation_to_depotreclamations_table',
                           14
                       );


-- Table: notificationapps
DROP TABLE IF EXISTS notificationapps;

CREATE TABLE notificationapps (
    id                    INTEGER  NOT NULL
                                   PRIMARY KEY AUTOINCREMENT,
    user_id               INTEGER  NOT NULL,
    active_state_manager  INTEGER,
    active_state_employee INTEGER,
    active_time           INTEGER,
    emitter_id            INTEGER,
    content               VARCHAR,
    created_at            DATETIME,
    updated_at            DATETIME,
    validation            VARCHAR,
    validator_name        VARCHAR,
    nature                VARCHAR
);

INSERT INTO notificationapps (
                                 id,
                                 user_id,
                                 active_state_manager,
                                 active_state_employee,
                                 active_time,
                                 emitter_id,
                                 content,
                                 created_at,
                                 updated_at,
                                 validation,
                                 validator_name,
                                 nature
                             )
                             VALUES (
                                 33,
                                 5,
                                 0,
                                 0,
                                 30,
                                 2,
                                 'Demande de congé de fiançailles',
                                 '2021-06-01 21:47:08',
                                 '2021-06-01 22:59:19',
                                 '1',
                                 'belkadi bassem',
                                 'conge'
                             );

INSERT INTO notificationapps (
                                 id,
                                 user_id,
                                 active_state_manager,
                                 active_state_employee,
                                 active_time,
                                 emitter_id,
                                 content,
                                 created_at,
                                 updated_at,
                                 validation,
                                 validator_name,
                                 nature
                             )
                             VALUES (
                                 34,
                                 5,
                                 0,
                                 0,
                                 30,
                                 2,
                                 'Demande de congé de fiançailles',
                                 '2021-06-01 22:00:00',
                                 '2021-06-01 23:50:34',
                                 '0',
                                 'belkadi bassem',
                                 'reclamation'
                             );

INSERT INTO notificationapps (
                                 id,
                                 user_id,
                                 active_state_manager,
                                 active_state_employee,
                                 active_time,
                                 emitter_id,
                                 content,
                                 created_at,
                                 updated_at,
                                 validation,
                                 validator_name,
                                 nature
                             )
                             VALUES (
                                 35,
                                 5,
                                 0,
                                 0,
                                 30,
                                 2,
                                 'Demande de congé de fiançailles',
                                 '2021-06-01 22:18:04',
                                 '2021-06-01 23:50:34',
                                 '1',
                                 'belkadi bassem',
                                 'reclamation'
                             );

INSERT INTO notificationapps (
                                 id,
                                 user_id,
                                 active_state_manager,
                                 active_state_employee,
                                 active_time,
                                 emitter_id,
                                 content,
                                 created_at,
                                 updated_at,
                                 validation,
                                 validator_name,
                                 nature
                             )
                             VALUES (
                                 36,
                                 5,
                                 0,
                                 0,
                                 30,
                                 2,
                                 'Demande de congé de fiançailles',
                                 '2021-06-01 22:18:20',
                                 '2021-06-01 23:50:34',
                                 '0',
                                 'belkadi bassem',
                                 'reclamation'
                             );

INSERT INTO notificationapps (
                                 id,
                                 user_id,
                                 active_state_manager,
                                 active_state_employee,
                                 active_time,
                                 emitter_id,
                                 content,
                                 created_at,
                                 updated_at,
                                 validation,
                                 validator_name,
                                 nature
                             )
                             VALUES (
                                 37,
                                 5,
                                 0,
                                 0,
                                 30,
                                 2,
                                 'Demande de congé de fiançailles',
                                 '2021-06-01 22:44:02',
                                 '2021-06-01 23:11:17',
                                 '1',
                                 'belkadi bassem',
                                 'conge'
                             );

INSERT INTO notificationapps (
                                 id,
                                 user_id,
                                 active_state_manager,
                                 active_state_employee,
                                 active_time,
                                 emitter_id,
                                 content,
                                 created_at,
                                 updated_at,
                                 validation,
                                 validator_name,
                                 nature
                             )
                             VALUES (
                                 38,
                                 5,
                                 0,
                                 0,
                                 30,
                                 2,
                                 'dch demande de cp',
                                 '2021-06-01 23:00:32',
                                 '2021-06-01 23:11:17',
                                 '0',
                                 'belkadi bassem',
                                 'conge'
                             );

INSERT INTO notificationapps (
                                 id,
                                 user_id,
                                 active_state_manager,
                                 active_state_employee,
                                 active_time,
                                 emitter_id,
                                 content,
                                 created_at,
                                 updated_at,
                                 validation,
                                 validator_name,
                                 nature
                             )
                             VALUES (
                                 44,
                                 5,
                                 0,
                                 0,
                                 30,
                                 2,
                                 'Réclamation salaire',
                                 '2021-06-02 01:00:34',
                                 '2021-06-02 01:04:46',
                                 '0',
                                 'belkadi bassem',
                                 'reclamation'
                             );

INSERT INTO notificationapps (
                                 id,
                                 user_id,
                                 active_state_manager,
                                 active_state_employee,
                                 active_time,
                                 emitter_id,
                                 content,
                                 created_at,
                                 updated_at,
                                 validation,
                                 validator_name,
                                 nature
                             )
                             VALUES (
                                 45,
                                 5,
                                 0,
                                 0,
                                 30,
                                 2,
                                 'Congé de mariage Nassima',
                                 '2021-06-02 15:39:28',
                                 '2021-06-02 15:42:13',
                                 '1',
                                 'belkadi bassem',
                                 'conge'
                             );

INSERT INTO notificationapps (
                                 id,
                                 user_id,
                                 active_state_manager,
                                 active_state_employee,
                                 active_time,
                                 emitter_id,
                                 content,
                                 created_at,
                                 updated_at,
                                 validation,
                                 validator_name,
                                 nature
                             )
                             VALUES (
                                 46,
                                 5,
                                 NULL,
                                 1,
                                 30,
                                 NULL,
                                 'ddd',
                                 '2021-06-03 14:33:03',
                                 '2021-06-03 14:33:03',
                                 NULL,
                                 NULL,
                                 'conge'
                             );

INSERT INTO notificationapps (
                                 id,
                                 user_id,
                                 active_state_manager,
                                 active_state_employee,
                                 active_time,
                                 emitter_id,
                                 content,
                                 created_at,
                                 updated_at,
                                 validation,
                                 validator_name,
                                 nature
                             )
                             VALUES (
                                 47,
                                 5,
                                 NULL,
                                 1,
                                 30,
                                 NULL,
                                 'ddd',
                                 '2021-06-03 14:33:17',
                                 '2021-06-03 14:33:17',
                                 NULL,
                                 NULL,
                                 'conge'
                             );

INSERT INTO notificationapps (
                                 id,
                                 user_id,
                                 active_state_manager,
                                 active_state_employee,
                                 active_time,
                                 emitter_id,
                                 content,
                                 created_at,
                                 updated_at,
                                 validation,
                                 validator_name,
                                 nature
                             )
                             VALUES (
                                 48,
                                 5,
                                 NULL,
                                 1,
                                 30,
                                 NULL,
                                 'dddd',
                                 '2021-06-03 14:33:47',
                                 '2021-06-03 14:33:47',
                                 NULL,
                                 NULL,
                                 'conge'
                             );

INSERT INTO notificationapps (
                                 id,
                                 user_id,
                                 active_state_manager,
                                 active_state_employee,
                                 active_time,
                                 emitter_id,
                                 content,
                                 created_at,
                                 updated_at,
                                 validation,
                                 validator_name,
                                 nature
                             )
                             VALUES (
                                 49,
                                 5,
                                 NULL,
                                 1,
                                 30,
                                 NULL,
                                 'ssss',
                                 '2021-06-03 14:34:02',
                                 '2021-06-03 14:34:02',
                                 NULL,
                                 NULL,
                                 'conge'
                             );

INSERT INTO notificationapps (
                                 id,
                                 user_id,
                                 active_state_manager,
                                 active_state_employee,
                                 active_time,
                                 emitter_id,
                                 content,
                                 created_at,
                                 updated_at,
                                 validation,
                                 validator_name,
                                 nature
                             )
                             VALUES (
                                 50,
                                 5,
                                 NULL,
                                 1,
                                 30,
                                 NULL,
                                 'sss',
                                 '2021-06-03 14:34:16',
                                 '2021-06-03 14:34:16',
                                 NULL,
                                 NULL,
                                 'conge'
                             );


-- Table: notifications
DROP TABLE IF EXISTS notifications;

CREATE TABLE notifications (
    id           INTEGER  NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    user_id      INTEGER  NOT NULL,
    active_state INTEGER,
    active_time  INTEGER,
    emitter_id   INTEGER,
    content      VARCHAR,
    created_at   DATETIME,
    updated_at   DATETIME
);

INSERT INTO notifications (
                              id,
                              user_id,
                              active_state,
                              active_time,
                              emitter_id,
                              content,
                              created_at,
                              updated_at
                          )
                          VALUES (
                              1,
                              4,
                              1,
                              24,
                              1,
                              'verif demande cp',
                              NULL,
                              NULL
                          );

INSERT INTO notifications (
                              id,
                              user_id,
                              active_state,
                              active_time,
                              emitter_id,
                              content,
                              created_at,
                              updated_at
                          )
                          VALUES (
                              2,
                              5,
                              1,
                              30,
                              5,
                              'demande de conge',
                              '2021-06-01 08:03:14',
                              '2021-06-01 08:03:14'
                          );


-- Table: oauth_access_tokens
DROP TABLE IF EXISTS oauth_access_tokens;

CREATE TABLE oauth_access_tokens (
    id         VARCHAR     NOT NULL,
    user_id    INTEGER,
    client_id  INTEGER     NOT NULL,
    name       VARCHAR,
    scopes     TEXT,
    revoked    TINYINT (1) NOT NULL,
    created_at DATETIME,
    updated_at DATETIME,
    expires_at DATETIME,
    PRIMARY KEY (
        id
    )
);

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '4abe8d9d274677332479f75bc0c4004039ac655968b0bbf8bc0e4e1cc3f8864e0a759d680fd0aaa9',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 04:29:31',
                                    '2021-05-22 04:29:31',
                                    '2022-05-22 04:29:31'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '845702f7c9aa0255079c4d5b2fc4bf49c64db1dc6f7de6fdd99b1fb2e2d9c092a79711f7c6340d03',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 04:31:34',
                                    '2021-05-22 04:31:34',
                                    '2022-05-22 04:31:34'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ededae73583edbcaa6cadbc9b7c9300aa9cfe6f99b2f4cf3399546ccf87a71e0935387822260b09e',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 04:32:42',
                                    '2021-05-22 04:32:42',
                                    '2022-05-22 04:32:42'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '46906c418fdd9f5f52335e3cb1a4303a78b9e42220a119c89a8617be75fccd445bb41dcc362145c3',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 04:34:47',
                                    '2021-05-22 04:34:47',
                                    '2022-05-22 04:34:47'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '374ab2ea38afc5ff5f88358ee2dade45c2db3bd0ca2df27157e1f4e45006dfe0f12302d9bd1c63fd',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 04:36:22',
                                    '2021-05-22 04:36:22',
                                    '2022-05-22 04:36:22'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'e070c1abfa966bc8dc9d3931d4f573b74403c74caef8ea4dd7b2672accd49ef542103623c9e38a69',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 04:38:02',
                                    '2021-05-22 04:38:02',
                                    '2022-05-22 04:38:02'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c21049f4590c368aa054f3181f1122cbbd323eac06b0f518fc95d6eb677dcb1a7d3a342e6d0cad66',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 04:38:59',
                                    '2021-05-22 04:38:59',
                                    '2022-05-22 04:38:59'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a66dcfc40c8f04e75413a0e248cbc0274d47665308062ce8a92d1473e7762237d131d36c0b1e97ac',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 04:39:22',
                                    '2021-05-22 04:39:22',
                                    '2022-05-22 04:39:22'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '8f34fcd1fef5540dae244db97440d714b98d66c6db460e9895bf7a0fc08b143fed7966b40ca929d2',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 04:43:32',
                                    '2021-05-22 04:43:32',
                                    '2022-05-22 04:43:32'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '41f046cb88826cb613d35342763675467a1d8b87421104f2025c5a8168f39bdd655dfe10d0b6d81e',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 04:44:46',
                                    '2021-05-22 04:44:46',
                                    '2022-05-22 04:44:46'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ceddde6cdce91363e90019eddeb600ffbcf19a5d299fde9fd0317ab86321258818943aeacfa23c00',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 04:45:48',
                                    '2021-05-22 04:45:48',
                                    '2022-05-22 04:45:48'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '14e74eda187d944a00b2a92bbea2db8a177d6c5ec42fd0e56484afc14b7381cbc8c94270e1d22e74',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 04:48:48',
                                    '2021-05-22 04:48:48',
                                    '2022-05-22 04:48:48'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ef4de3552439e50797dd8708fcd9f53e09e1cf24e2643388ec315a667667ffd4b8be5ae8814ac3c9',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 04:57:44',
                                    '2021-05-22 04:57:44',
                                    '2022-05-22 04:57:44'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b66ac7a3316848bc7928f89f1a4ec8b32c9cf369bb9014e2bdeb09889b23f428d3e6356206106d4c',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 05:02:16',
                                    '2021-05-22 05:02:16',
                                    '2022-05-22 05:02:16'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '3de632911011577008e44d2a1c33a51f67efa53cd143f4aa43b0b24cfb6183daaf62e5d65aa8659c',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 05:05:43',
                                    '2021-05-22 05:05:43',
                                    '2022-05-22 05:05:43'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'aca7caa3e42edb46136c083651667c7bc388ca123b0d6ef058f88712ced166283334cb4f12a33d48',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 05:14:52',
                                    '2021-05-22 05:14:52',
                                    '2022-05-22 05:14:52'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c1e9ae391fcfd6fd0a30f3324d9d741dee3868cd8034583108184627adf139181137b59e4a78f5e9',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 05:21:38',
                                    '2021-05-22 05:21:38',
                                    '2022-05-22 05:21:38'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2540404ac85cbb2209064d2e9e3eae276a8b7c21e76b37ece7cdc5b47c4f7b00273c2fdd7f17dd77',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 05:31:03',
                                    '2021-05-22 05:31:03',
                                    '2022-05-22 05:31:03'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'bbbfb379d891a32f93dc5c839c3308fb2b1dce8f6b9982d5dd1bdf15d4f733a0bcbc10745bfd8cc0',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 05:31:26',
                                    '2021-05-22 05:31:26',
                                    '2022-05-22 05:31:26'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'dab9976769711c321d04769573f981d6496cbdbb2df80f1e1cb69b3b186249bb72ef1179dc26dce4',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 05:59:08',
                                    '2021-05-22 05:59:08',
                                    '2022-05-22 05:59:08'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'bd84a9a478b0453ba18f3cf98bbd96a0883710b6639140e59250641644d35e63d49b68817cada619',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 05:59:43',
                                    '2021-05-22 05:59:43',
                                    '2022-05-22 05:59:43'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a11febfa36cda73c3def3c40bf54327a305190223ed94402f2e6e353910ced68221778212aaaa9ed',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 06:07:18',
                                    '2021-05-22 06:07:18',
                                    '2022-05-22 06:07:18'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '52d6d845fe5d306be81f186bcc9c861dab75e27c4c4ccf74fe7577a909947a0266a542521a85bc18',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 06:07:42',
                                    '2021-05-22 06:07:42',
                                    '2022-05-22 06:07:42'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a6d4203753d93dfb1f4b925b427e53fa9e49ca9d0217adcfdd8743b5368b796d11ce46fcab6e1f21',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 06:08:02',
                                    '2021-05-22 06:08:02',
                                    '2022-05-22 06:08:02'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '3a326e4168654baa8a0b5ca71c4133b1eebdcef4b5056ea20a714952fb2992c1a2a351490faba6f0',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 06:18:19',
                                    '2021-05-22 06:18:19',
                                    '2022-05-22 06:18:19'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6f6e9e3f389c16771b676f9da443f9d1c56f9a21d97631dcc85dcab2748d6eb0c439e1eff14f08d1',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 06:22:45',
                                    '2021-05-22 06:22:45',
                                    '2022-05-22 06:22:45'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '893214852ddbb9efcb2be5d078ea45747a451d1391ecbb4381a120f98a69f63c4c8ad9e54c2767df',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 06:27:14',
                                    '2021-05-22 06:27:14',
                                    '2022-05-22 06:27:14'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'cb68f61ea1c6499bf86116fdb8a8834469ead55f4a22d2e131102f873176ec3b57c72c4e4b51a82b',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 06:46:11',
                                    '2021-05-22 06:46:11',
                                    '2022-05-22 06:46:11'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b2ebf59dbbf12db5a5747c0d29301fb76947bde8642ec03e76cb541e74523bac579cb4dc13f2f3d2',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 06:48:33',
                                    '2021-05-22 06:48:33',
                                    '2022-05-22 06:48:33'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '7d9058e4ab4a33ce9d34f2bea369a3c424c2070e1691e5aa97e06c6c9b8462f4c64a9592f260a55c',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 06:49:26',
                                    '2021-05-22 06:49:26',
                                    '2022-05-22 06:49:26'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2fa657f17801ecb65866f0bcac61a11db91481ac6483795d3291d461943885a8d2e61abe5cab14bc',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:03:21',
                                    '2021-05-22 07:03:21',
                                    '2022-05-22 07:03:21'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '062b36417b23d23c9ef00ba2b535e22fd9a61075ccc6a845c6d8cfd31fcc38957e75b8c95cc25fc5',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:04:34',
                                    '2021-05-22 07:04:34',
                                    '2022-05-22 07:04:34'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '98697637ee682557519fd03c7edb2aa970dd77b87ce48e6acb4df2a0f003ec1da47f40dc7d378103',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:09:20',
                                    '2021-05-22 07:09:20',
                                    '2022-05-22 07:09:20'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1aa624df47f750528540e0cdcd5b4a0da52c4cbb4db4a8d37b226bbffe44ea51f8d3b68e5785bbe5',
                                    7,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:10:06',
                                    '2021-05-22 07:10:06',
                                    '2022-05-22 07:10:06'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '7a618352d46cf76a4e4dfaf64b03ea8ae96bea372b36c590badc5b7ec2904dff12eec026e8cc2024',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:11:56',
                                    '2021-05-22 07:11:56',
                                    '2022-05-22 07:11:56'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '76bd427c312b3ea23f7394fe1b60505e256cb3915af3f39e578d5c884f8a6c6af3ab52cd8070c9f0',
                                    7,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:12:12',
                                    '2021-05-22 07:12:12',
                                    '2022-05-22 07:12:12'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ef8070b795d101006bc5c13e5bd9f9873202520fffb211a0e885b8469977d15d03f2dc64aa895b5a',
                                    7,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:19:12',
                                    '2021-05-22 07:19:12',
                                    '2022-05-22 07:19:12'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a496a16a7f98736eff0fa0e59fa24f56238e3b6d3c6866c614156c9a923220e3eaf4078558697602',
                                    7,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:19:43',
                                    '2021-05-22 07:19:43',
                                    '2022-05-22 07:19:43'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'fc13fb8e7f8f1b4f143ac94f7614a43857e6f7ef80ab9171b0c860595abc400383693bcaeaade034',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:20:11',
                                    '2021-05-22 07:20:11',
                                    '2022-05-22 07:20:11'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2ee184845c0b809d61120dc72bc23c5e4e43fed69e1a30b154bc6e755884a576143cccf619113c2d',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:20:54',
                                    '2021-05-22 07:20:54',
                                    '2022-05-22 07:20:54'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ae42a558186be796e590165c3bd97ec1384ef45363c84fb418e461fd05a3163385969e8f5adb9135',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:22:19',
                                    '2021-05-22 07:22:19',
                                    '2022-05-22 07:22:19'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'e2bb4f542bd6fca3a425ab2f23263ad86e04c698d5dca99d53314f678247ab560180d900617b0882',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:27:38',
                                    '2021-05-22 07:27:38',
                                    '2022-05-22 07:27:38'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'd8d600fe0b6f263c38d5ea32d24393514e46a0b639a1f2b7452b03ceddb50338a33c66607535b18a',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:33:27',
                                    '2021-05-22 07:33:27',
                                    '2022-05-22 07:33:27'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '3a5bc674b25822fe08c8bf5ad5cd9c9216da864bc8e8ce281d5cdc2a64ef3dfd20b37963839b1bdf',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:33:51',
                                    '2021-05-22 07:33:51',
                                    '2022-05-22 07:33:51'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '8a0ad1d8752c031849498f9859713eb5193dc7eb2753de3e58f6f621ea3b85a86ea8b2ddd78eb1d9',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:34:45',
                                    '2021-05-22 07:34:45',
                                    '2022-05-22 07:34:45'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1e43b47dd1c02432f51f4dbaaa24c5acc948ca0c6a9082023fee56dcf375627482c868c950fd6bd3',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:38:35',
                                    '2021-05-22 07:38:35',
                                    '2022-05-22 07:38:35'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '9096b756ead193793c888de68d3744d8d08dccafceb059a939df9e904be6fd3380078d37fbed44e7',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:43:32',
                                    '2021-05-22 07:43:32',
                                    '2022-05-22 07:43:32'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2ee1648b07ca129c2acc55ed9b976d8c07d1f5d9f4371efc91cd21736565a4dab12de51c09b95f6a',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:44:32',
                                    '2021-05-22 07:44:32',
                                    '2022-05-22 07:44:32'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '61eea49c6e5a66ce915a57cf074ce9c84fa7248a4f6678666ea5426025edb1aeb13b9a5367fd7d57',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:44:47',
                                    '2021-05-22 07:44:47',
                                    '2022-05-22 07:44:47'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f058a68bbebc1c21034045463869e9dfb7479d0948e32dfc3cbe56b8a6ef31938030811352f140b5',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:45:17',
                                    '2021-05-22 07:45:17',
                                    '2022-05-22 07:45:17'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '172b867f86b52990340f451fd32484ddf927bac082f95d5a3bd9f004947716943edf1f82d583c3bc',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:48:49',
                                    '2021-05-22 07:48:49',
                                    '2022-05-22 07:48:49'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'd2d7e60366ec96f68b9c2bbc571720eac6f681c6a004b18cd1e444dc8ab51b4d6a5eb4bb941f4f97',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:51:56',
                                    '2021-05-22 07:51:56',
                                    '2022-05-22 07:51:56'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '7e369e08491843223be1734b8304d8f12829ddad456dacd038b98d4046ac2f1593762667d22f2d4c',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:52:30',
                                    '2021-05-22 07:52:30',
                                    '2022-05-22 07:52:30'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '0f52bd119cf0ff823fb45984c0383fcb3a8887047989fc7944270189a53492ce1dcd19395d3ecbde',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:52:39',
                                    '2021-05-22 07:52:39',
                                    '2022-05-22 07:52:39'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6e164803ed090162a856efcf8683c5187f45886ec11e19d6f394f932c09c0b54b7ca5fb59fcc369d',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:53:07',
                                    '2021-05-22 07:53:07',
                                    '2022-05-22 07:53:07'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '39eb1683879ce78cbb045b4f037fe80fe1f402542f97250d85227c2663dbaa42756b7e34da45e95c',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:53:26',
                                    '2021-05-22 07:53:26',
                                    '2022-05-22 07:53:26'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2285f11660d9bd516fa45edbd912b91efa26c7a9dcb296b9beab59cf252af32eea5ff0a232a09f91',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:55:00',
                                    '2021-05-22 07:55:00',
                                    '2022-05-22 07:55:00'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '02c01e62539f88c5aa4d39b5fea5d2094855b7b275d7a6e92eac23c9e760f43f8b2d2eb9120db8d7',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:55:11',
                                    '2021-05-22 07:55:11',
                                    '2022-05-22 07:55:11'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '86ccf71a00de9903bed07b904d7c5d448d52580bdf4eaa046dcdebf71e23a6854437ce7ebb29d738',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:55:25',
                                    '2021-05-22 07:55:25',
                                    '2022-05-22 07:55:25'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '02cdf7796cd8268589aa55beb5ae05236377abf6db902a6e1b1d087c2a5e2c3bb9f322b62a52e5b9',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 07:55:34',
                                    '2021-05-22 07:55:34',
                                    '2022-05-22 07:55:34'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a7b15b819f958e79cfb27c2eb96aa34485f52d3b4de139dd223a154a6a06eebcfd7bb7d59e096f84',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 08:37:45',
                                    '2021-05-22 08:37:45',
                                    '2022-05-22 08:37:45'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '88c931999e2d13ad17704818022a6f161ec8d5487736eff3331523dbef506ba91174e7ee1548a5f7',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 08:38:00',
                                    '2021-05-22 08:38:00',
                                    '2022-05-22 08:38:00'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c40dbf519a986d59c2d93565ec6cabf3b826982ca407c6e0c97f7bf8c7295a94142f9beac2c1f28b',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 08:38:08',
                                    '2021-05-22 08:38:08',
                                    '2022-05-22 08:38:08'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '27c65ecc7933ceed86782be90a76c80ab23d5dda1b3c2d6caca373b4d3d89a2b306d993fb810b7a8',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 08:38:16',
                                    '2021-05-22 08:38:16',
                                    '2022-05-22 08:38:16'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'baee40e085e6c71267f75fff3cce2bdd1b92847747700009a6cc0020756f860257884405b6b8bf14',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 08:49:37',
                                    '2021-05-22 08:49:37',
                                    '2022-05-22 08:49:37'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'aab7f8214d9774bb04819c05a13bf60509f5e32fb83002ef8e707fffaba5efe28f4e5e14507c8136',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 08:58:22',
                                    '2021-05-22 08:58:22',
                                    '2022-05-22 08:58:22'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b4be6bddea1015156dfce9fa1d1ebc99f4396f77665d0ea4887f0b2724fb6b96f0aaab0cc8b1ffe5',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 08:58:42',
                                    '2021-05-22 08:58:42',
                                    '2022-05-22 08:58:42'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '00715578770392546f47660bc9a8f82ffb7115c44ed3ac45ce9bfcc91bd30dd41a70ca9b8345d90e',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 08:59:46',
                                    '2021-05-22 08:59:46',
                                    '2022-05-22 08:59:46'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '98fbbb66e29fef9b4a0902930df183dc1f4229cfc8468fa0b77e9479a50eab872d30c6a0c055b2dc',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:05:37',
                                    '2021-05-22 09:05:37',
                                    '2022-05-22 09:05:37'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '0c5bb31728450a462d10b66296317f8dfb3fa316288ce24950d25fd49e6df2f3bf038079d5483bc1',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:08:09',
                                    '2021-05-22 09:08:09',
                                    '2022-05-22 09:08:09'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'd8c6d1771b1a2486448e0bb6211e31a2350bb549a2846a4456316b5c184194101e3912c23fc0bba9',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:08:51',
                                    '2021-05-22 09:08:51',
                                    '2022-05-22 09:08:51'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'cfb1f48c1a395ea1b140338ff900d3189b6491908d62d3a1b4ef4731bee771026b965132e319e2a7',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:11:39',
                                    '2021-05-22 09:11:39',
                                    '2022-05-22 09:11:39'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '4b87453d17b32b97af374dac72820e53a067f593f52c07c8990f567dfdc738b438786af7c57aeec3',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:16:21',
                                    '2021-05-22 09:16:21',
                                    '2022-05-22 09:16:21'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '693f48f000ab34f4127c0db096643b7259a60dc6b011eb464a0c01d5ea24ffde3f694131dec47903',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:17:51',
                                    '2021-05-22 09:17:51',
                                    '2022-05-22 09:17:51'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '661ddc7966ef1ae2a7f96046694f802378a851c82fa02ed24a4ddfaa963512e9d24bc1aa2ffba73b',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:17:56',
                                    '2021-05-22 09:17:56',
                                    '2022-05-22 09:17:56'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '00c96e2b2082ed2eb6006bbd31c46627f48cdc4b149aa427e56d666ee5779b3c98589263d4bcea26',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:18:02',
                                    '2021-05-22 09:18:02',
                                    '2022-05-22 09:18:02'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'e6d394ce1fdd85d351db00c1cdb69bd07c5d822eb4fe2cd6fb2784186851dc7dd0f01acd28d90bbc',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:18:10',
                                    '2021-05-22 09:18:10',
                                    '2022-05-22 09:18:10'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '569c93c0a3e5416100dff220615c08f7448052946fea18aab8049bfdf1d5fd274106794e2293ec13',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:18:22',
                                    '2021-05-22 09:18:22',
                                    '2022-05-22 09:18:22'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6a20ee1fe7eaa53df833189d8539d88e02f1760263648ffcd2c0a5e41e270e26146c3921b19f2dee',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:18:40',
                                    '2021-05-22 09:18:40',
                                    '2022-05-22 09:18:40'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '26c3ee525cba78017d86fdc9566838a5632eca34096f8f8d75fb95a3c86f838ab89079cbdbe25a05',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:18:51',
                                    '2021-05-22 09:18:51',
                                    '2022-05-22 09:18:51'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '0d1ecd2299cd8c93efeb0dfb8f578e99ac175f76129e7fb02af0f74cb77746d13a398147a0490c04',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:19:24',
                                    '2021-05-22 09:19:24',
                                    '2022-05-22 09:19:24'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ffe9cdfaa60e7f20c790bf004bbc287d8b0e9d7e7180a7cdaf32d07a0883a394cc8e29ec1da741bd',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:21:11',
                                    '2021-05-22 09:21:11',
                                    '2022-05-22 09:21:11'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '306746d86eff229f06f493f1e789bd0a7329066718534bf1dc0ff94d34f09e2fd40a009c0fbb65d0',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:25:28',
                                    '2021-05-22 09:25:28',
                                    '2022-05-22 09:25:28'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '07fcec3ca31bee8f4c22d70317f2b3131093291473b6e49dc8741229839fe9e1a53c7baedf4c1cf2',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:28:06',
                                    '2021-05-22 09:28:06',
                                    '2022-05-22 09:28:06'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '9db1d234b5b04ee549a44cc5f52aed18ad8ca4f5eb838b7240569e076d01d10649d884aa51fdaaff',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:28:23',
                                    '2021-05-22 09:28:23',
                                    '2022-05-22 09:28:23'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'd25b46a9efa3a8bd5d95978dd1668e40e1147cc515d75c38d2dd764cef0b23389994b450c69895cc',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:35:52',
                                    '2021-05-22 09:35:52',
                                    '2022-05-22 09:35:52'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '858d0187ec48a9ced53f56ba2b06a466f351fc8cc50cb5fd56a08b7e5fda3354f521d0ed3c3ec568',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:36:01',
                                    '2021-05-22 09:36:01',
                                    '2022-05-22 09:36:01'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '03a32e471b9ad8db72e1523fa5e1eaffc95b0510e8eebcff51549f283a0199524596c6dfcb385842',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:37:22',
                                    '2021-05-22 09:37:22',
                                    '2022-05-22 09:37:22'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '5542e680ed36ee39d9f6e891a2e071117279eae89bf002046203937899a7829565272341339e63c5',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:37:58',
                                    '2021-05-22 09:37:58',
                                    '2022-05-22 09:37:58'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c9da0f36af41f52c07a282bb02def1a061cae7d5dd8a0689265d2b8a006771852f5f741a3abf3c35',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:38:12',
                                    '2021-05-22 09:38:12',
                                    '2022-05-22 09:38:12'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c37d6bfaa67bd8e2b907bd4974858e5a0c6e52541d764bd4e8b9181fa02ce5150759b05913595897',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:38:26',
                                    '2021-05-22 09:38:26',
                                    '2022-05-22 09:38:26'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '80a741c3b574f458b54bf34401d2198974ec46f7a1e18934ac6d7b37c226507ec2172bec43629408',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:38:50',
                                    '2021-05-22 09:38:50',
                                    '2022-05-22 09:38:50'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '55c26902d12d268acfef9dc35a228c7ac918fb12aaae5759e7451720755cc747ba07a613549a4865',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:40:19',
                                    '2021-05-22 09:40:19',
                                    '2022-05-22 09:40:19'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a6d21f8c251fec1703c8c9b1cd8bde707950d6a67a14ac982d2dcebf10dddd1c709ff22cbaa5c78b',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:40:35',
                                    '2021-05-22 09:40:35',
                                    '2022-05-22 09:40:35'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ae49907fd229f8d47317da25064a018f34af27e5198b0d2f762df7713f13d33812d4b7cf45c9d882',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:42:29',
                                    '2021-05-22 09:42:29',
                                    '2022-05-22 09:42:29'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a445cba222312db6ca05e904b2c34d655b8bdc689c31cc9e5e9c251c9b95ab0c61d08b4e68ba3370',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:45:09',
                                    '2021-05-22 09:45:09',
                                    '2022-05-22 09:45:09'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1e188d1b0d85b92cc84a8a06767289234dc6ec4f2a18df2c452f56c9759f15da06fa5ca3d2b8f47b',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:45:52',
                                    '2021-05-22 09:45:52',
                                    '2022-05-22 09:45:52'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '52a84ac8517dd73ec35f71112a67472401dc052940ee4d1950f23e4b8374be2c98a0fd78c86cb361',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:47:34',
                                    '2021-05-22 09:47:34',
                                    '2022-05-22 09:47:34'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b6b862e0a36694448607e8194c9270eccde641401efd8d4b157a756b1a1a373e4ef5939d0e708339',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:54:35',
                                    '2021-05-22 09:54:35',
                                    '2022-05-22 09:54:35'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '111aba4ca2970cf0fb4e23ac0387675596cc8d1e987f49986d41e368ba7c1f817a573549cf63c31b',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:55:11',
                                    '2021-05-22 09:55:11',
                                    '2022-05-22 09:55:11'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'fe52a15d1618373340e1647fc50b93763ca258796d65c6077d95ee2fab63b8a2a20b8f3ed550616c',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:55:50',
                                    '2021-05-22 09:55:50',
                                    '2022-05-22 09:55:50'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '402bb50648ab29738d2237201778d823b8de6e11149a2939dcf72dfc0da00cc0aa3f2329f47d83fb',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 09:56:59',
                                    '2021-05-22 09:56:59',
                                    '2022-05-22 09:56:59'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ca8c9323d57bdab1354e5e2f6a98ab3cb6a48582f57e0215f1467d7aeca313e1f778a19b576cdd9a',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 10:02:28',
                                    '2021-05-22 10:02:28',
                                    '2022-05-22 10:02:28'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '22f543f80962c9deb8504e562eefabbf4c1ca2de90eed54290690f496bcf46b2180495989560f44f',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 10:02:47',
                                    '2021-05-22 10:02:47',
                                    '2022-05-22 10:02:47'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '0966febaa6ac6c026fcb2b331a843fb7ed6317d0e521114942d6e4dd30f0a7f33c5c64ef4ce74d92',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 10:02:58',
                                    '2021-05-22 10:02:58',
                                    '2022-05-22 10:02:58'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f32dbd1d8f85ea2be65c52db462e3b7a49550aca3d01ca0118c63945fedd82b939f9edbdf9dd0da6',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 10:06:38',
                                    '2021-05-22 10:06:38',
                                    '2022-05-22 10:06:38'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f12a81f990ac4360fb7ed46749c965858024113eddede1efb9c24c636e13454b561f8e56502ce4a3',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 11:37:53',
                                    '2021-05-22 11:37:53',
                                    '2022-05-22 11:37:53'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '8d1d1483b48a03895ffbd52505e78ef32246841f46bec75877e40dbe2ee104efa48d4e38b5a2e7d6',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 11:47:24',
                                    '2021-05-22 11:47:24',
                                    '2022-05-22 11:47:24'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '7097173412f7b9cedfa1963ea56ff0b657a4627c75c08d7cf849701294f51abd21bb098fe6963db9',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 11:56:06',
                                    '2021-05-22 11:56:06',
                                    '2022-05-22 11:56:06'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c6a2b8d246ff48408ddb41395736756dd82aea066dde8f9c0d86d839bd2c62d8277fa51650f8125f',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 11:57:29',
                                    '2021-05-22 11:57:29',
                                    '2022-05-22 11:57:29'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '72a652e90b61244914905d024a3b7a0ddd3cb99bd00108844b4193691d6c7303b4e78bad4606bd2a',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 11:57:48',
                                    '2021-05-22 11:57:48',
                                    '2022-05-22 11:57:48'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '507c07bec3bdb24bcb41b1e64004db7682415d0fe1b2187c23a59db7909e672c936e27f7fe1bf28f',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 11:59:16',
                                    '2021-05-22 11:59:16',
                                    '2022-05-22 11:59:16'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c1a433bfac33cdae4f02e0f46f67fefe24fb149e539b4671b9d5e45c95833e310fd04da379ad94c2',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 12:01:51',
                                    '2021-05-22 12:01:51',
                                    '2022-05-22 12:01:51'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '16be68a21680e4796b9a642d6486bf669b9d96b18af29126b7f83edd706e1c6adfa560d8bee55eff',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 12:02:04',
                                    '2021-05-22 12:02:04',
                                    '2022-05-22 12:02:04'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ccbfe801d3542df6c794c8eaa0a831a028394a8b8216ec76973f548212482d72774d213f8bf83678',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 12:03:36',
                                    '2021-05-22 12:03:36',
                                    '2022-05-22 12:03:36'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'aa4b2cffe76a6080fa6ba38f3320d52cea2035762d7c112b54940686b21d9d2ae060435ff4bdcb2b',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 12:13:13',
                                    '2021-05-22 12:13:13',
                                    '2022-05-22 12:13:13'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '7144d3a2453caa8677cefaa9c13e8bd592300c2f60d6008ac6f2f07e565125c22a30f62eb798ef55',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 12:13:53',
                                    '2021-05-22 12:13:53',
                                    '2022-05-22 12:13:53'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '29c6c3fd450026088dcb2679eba627c87d343b2c6a23dcde7849d774aa4719e3d6a71591ac221868',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 12:14:05',
                                    '2021-05-22 12:14:05',
                                    '2022-05-22 12:14:05'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'edc2f11e63534a93eccf7c9b34bb288da2148bebf1b7f93159720b057894c62a77a0447174067732',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 12:14:12',
                                    '2021-05-22 12:14:12',
                                    '2022-05-22 12:14:12'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2b0e139db838ce21c39ded7a37d92b0b123a82a8804bf043181e9a915b57f268efc00eb9084673af',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 12:14:39',
                                    '2021-05-22 12:14:39',
                                    '2022-05-22 12:14:39'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '19934f5c07691d2d704513b4625c62de27162d0e636e8b0085eb219e937c83dde075eb1df4c6ea0a',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 12:15:31',
                                    '2021-05-22 12:15:31',
                                    '2022-05-22 12:15:31'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '7c58644295d38acdd0b76e0f5ae5096a23258103a7d12b8de8248d7f15a946148ec1dcdddab696c9',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 12:15:55',
                                    '2021-05-22 12:15:55',
                                    '2022-05-22 12:15:55'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'bb18c733f39c110eff975cd00c39a9da465cf3cffcf60e89176ab810530ebae93eca224c84c97e47',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 12:17:04',
                                    '2021-05-22 12:17:04',
                                    '2022-05-22 12:17:04'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '212189b3c6f60062e8379f45119b30335390da377d10adf6d23333f21267b1c5fdd1c41ef4f83f37',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 12:17:45',
                                    '2021-05-22 12:17:45',
                                    '2022-05-22 12:17:45'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'e43e3ebdb61e5867f576c0657a10df3a20c42acb205805fa13be4dd279fa4dc31d3dd036e551193c',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 12:18:51',
                                    '2021-05-22 12:18:51',
                                    '2022-05-22 12:18:51'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ca2b075d1b8b9ab2d419de2ac217f3961db872d40a518f1246425bb503c36b259829bb4d1daaec48',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 19:09:48',
                                    '2021-05-22 19:09:48',
                                    '2022-05-22 19:09:48'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'be9a10ef7ebebb1160c21743bdb1fd2d52596e11aca7d51476b13611d90334d6610a7b558f9ffaa5',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 19:24:59',
                                    '2021-05-22 19:24:59',
                                    '2022-05-22 19:24:59'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ad2c4b8a5c98a784eade969746a1bc2abdbfa2de9548ff0c4dbe20226cdfcce3a1c5ea1a790bcf8d',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 19:40:09',
                                    '2021-05-22 19:40:09',
                                    '2022-05-22 19:40:09'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '03cd7dfa535009d854e13dfb45538d2bf2af81df920417c36f50f02a671a9cdc68fa36734332258d',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 19:41:31',
                                    '2021-05-22 19:41:31',
                                    '2022-05-22 19:41:31'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b78377a6e72a3e9abff1a6a307ac86dbdfef266e8a1cbcdd6b1785a734cae4d4fdf77b1dd718b136',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 19:42:57',
                                    '2021-05-22 19:42:57',
                                    '2022-05-22 19:42:57'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6d36663f6aa8c549f85bea64c01aac51f8d13293c948e71ea7e46bc1d604c212e8c4ceb22302de73',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 20:11:48',
                                    '2021-05-22 20:11:48',
                                    '2022-05-22 20:11:48'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f50bf643585b1769cc8e5ac80307d980c6790b22f0301a848ec3fdeb3182120b62e56b161f853c12',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 20:13:50',
                                    '2021-05-22 20:13:50',
                                    '2022-05-22 20:13:50'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'd5601d9c349b658e742737afe846c8886d7ef66139a48a99e099bdc66af4e1c42e632e3be1dc9170',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 20:19:45',
                                    '2021-05-22 20:19:45',
                                    '2022-05-22 20:19:45'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'e0d9c92624d356ff4350e43935ca3b2b86774a2928f4666ac10de4cc293d528ea15ebfe301051541',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 20:26:41',
                                    '2021-05-22 20:26:41',
                                    '2022-05-22 20:26:41'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '776bd5d5ae713345472d5910bd2cdd3be39e6391ec7ef7eb49bb6661a59f7c05855c8e06bb0aa868',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 20:27:01',
                                    '2021-05-22 20:27:01',
                                    '2022-05-22 20:27:01'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '44071cd6a13d87832e06cc505163f6dc5e6f3d2698c0540af178d1515027b80f21f3164652244047',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 20:28:16',
                                    '2021-05-22 20:28:16',
                                    '2022-05-22 20:28:16'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'e3e7cfafcb2be539614b850bca6df5a7128d8ab0304e22d3f6ac951aaa3e2660bac9aa9e9bfc4f32',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 20:32:30',
                                    '2021-05-22 20:32:30',
                                    '2022-05-22 20:32:30'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '93a5cdd60e524161236dd13f637508d00eee77087140c91ac369bbeebb91d15ade570653c26ee02a',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 20:42:31',
                                    '2021-05-22 20:42:31',
                                    '2022-05-22 20:42:31'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '8a42c0c2defa37592b23c5000ed1edb2c161325fa985fd5ccc188d6127306a68b7b5837f09a4cd19',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 20:52:10',
                                    '2021-05-22 20:52:10',
                                    '2022-05-22 20:52:10'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '439f04ea049b5d1cc521e6f1094d27d7c6cc35b59e4c9b80d75b1fe2bc4c94a1ab660250592c1f82',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 20:52:20',
                                    '2021-05-22 20:52:20',
                                    '2022-05-22 20:52:20'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'dd0090a2696afa8b4921810a776d518716336da5d9a980e186118b63187b2c2b7138d722fed1d86d',
                                    19,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 20:56:32',
                                    '2021-05-22 20:56:32',
                                    '2022-05-22 20:56:32'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '651a544bb454c5574099b2cb946de428508f4767cfa959bdfada103c4ad3f6f601ccbc1a93307525',
                                    20,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 20:57:33',
                                    '2021-05-22 20:57:33',
                                    '2022-05-22 20:57:33'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '60e4a527069239b0f8b37cfc8e4d2ed57ba9823bf6b0ef8e7140c92673dffdecd18c4cc8e900df76',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 21:29:01',
                                    '2021-05-22 21:29:01',
                                    '2022-05-22 21:29:01'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '74a91662a76df1e5149767def002aacf9e5d09f312af564005f080918457f8752732065f4635257a',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 21:30:16',
                                    '2021-05-22 21:30:16',
                                    '2022-05-22 21:30:16'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2d448100a7571de020993bef05b414396baca68dcba2dcd0d6e34b52c3d25c837d38369299797f0b',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 21:35:56',
                                    '2021-05-22 21:35:56',
                                    '2022-05-22 21:35:56'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ae17d62356b44f8209d64a51b337191c65e5c4a1c66e0768140ef734d19b7a4f86650ec233ac276d',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 21:36:16',
                                    '2021-05-22 21:36:16',
                                    '2022-05-22 21:36:16'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1fb2feac63f00db7577a6da3adbdffc1c23dfbb4368071eaf6151098a82498172a9bb0773516837d',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 21:37:16',
                                    '2021-05-22 21:37:16',
                                    '2022-05-22 21:37:16'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '12bc6387fc42bebc1688cccaa65642edcd25ed01b09aa027b66cafc8a427c16283047c7cd415996b',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 21:37:33',
                                    '2021-05-22 21:37:33',
                                    '2022-05-22 21:37:33'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '4cf2e0c08d0dbba424d011a18d7b749e98c01894b7af979acdb687b02f548617140b5db4c650bc2c',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 21:41:07',
                                    '2021-05-22 21:41:07',
                                    '2022-05-22 21:41:07'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '4cb978fa534083c272c4ea43d1f2fa069204d28c336803213ce98da1cdf361a70455fd4c16e2254c',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 21:41:31',
                                    '2021-05-22 21:41:31',
                                    '2022-05-22 21:41:31'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '7b25083e5792619bd606fd2b3bcf074f831054b9c0b32a02faf8c6ddbb9a81023c8f6f8908162b06',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 21:44:41',
                                    '2021-05-22 21:44:41',
                                    '2022-05-22 21:44:41'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '40ab74582a48767390c0a4af42b6d08b02874412e5472aa8987c95f5518104b5b64243f216b484a8',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 21:44:55',
                                    '2021-05-22 21:44:55',
                                    '2022-05-22 21:44:55'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6331767ea1622d8c97db1e6000e4a258e8a10b042c2a5c2143b86f8d52444201da416793579a6b19',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 21:45:16',
                                    '2021-05-22 21:45:16',
                                    '2022-05-22 21:45:16'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a4945360d6479867a4c0fb84abee36978a4a9f53c914177e050353ff484e59b6a309719951e51211',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 21:47:05',
                                    '2021-05-22 21:47:05',
                                    '2022-05-22 21:47:05'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '40251c72fe3fd9f82df825f895ee0d3102c66bc815d9233749689e120f645f9c11236587f61b05f4',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 22:02:24',
                                    '2021-05-22 22:02:24',
                                    '2022-05-22 22:02:24'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f1f6774b614a386c24854211454e18a35fa1890e902071eb717a3ee3d173684beaebd493ea372ccf',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 22:02:36',
                                    '2021-05-22 22:02:36',
                                    '2022-05-22 22:02:36'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c14ba9799f270d8b5191a4a5d05a141a9e7bb176c6df254e9195c5e62897bdd92e1a8645134161e0',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 22:11:53',
                                    '2021-05-22 22:11:53',
                                    '2022-05-22 22:11:53'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '008a3aa9a5b3260be877badc0ba9b4e0d2bce2717f97961f70d5cda7c02b363b51a82077005d4abd',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 22:14:44',
                                    '2021-05-22 22:14:44',
                                    '2022-05-22 22:14:44'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a42fb5cc901865f531f041d521033751890723cfcf53a850c7baf7e99ee2361c845a7d02c4634aa8',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 22:15:00',
                                    '2021-05-22 22:15:00',
                                    '2022-05-22 22:15:00'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '188862b99bf0cb8a90631458278679fc342972a27302a3c2f480840a933e8705c0da6f87f18224c6',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 22:16:38',
                                    '2021-05-22 22:16:38',
                                    '2022-05-22 22:16:38'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'bbf6fc00be27b000838f4dd8adf82ccc5892654fd9f2c6bc2b60b21eb80de54d818e0ef5291380ed',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 22:38:11',
                                    '2021-05-22 22:38:11',
                                    '2022-05-22 22:38:11'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ecf2c6f61d055c36674b6267e7dda38b4fd87dea92fe225b86b8bb03d71a3f29a9fcd79a146eecaf',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 23:01:12',
                                    '2021-05-22 23:01:12',
                                    '2022-05-22 23:01:12'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '90a835aa302a3e4ad5ff90acdd2917e894967d5c77fcfa0c4a45eef932011c4ae7b5137b4d01a8f5',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 23:14:02',
                                    '2021-05-22 23:14:02',
                                    '2022-05-22 23:14:02'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '22ba1940b6d4cf952020ef0cb627bfe8cd747f06f3b7028b82c4059bddc33c6b2b2b9085b4aacdf5',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 23:23:36',
                                    '2021-05-22 23:23:36',
                                    '2022-05-22 23:23:36'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2cd1ccb6024c035ae5acbe1bb485a3e6825553bdf93d6ccc9a232c7d64784f4fd9fd41d67adcd49d',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 23:27:10',
                                    '2021-05-22 23:27:10',
                                    '2022-05-22 23:27:10'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '0371b42b7fc56778a8eb25b5424b259853f41f5cd1cde580e48037cf0576a35a6a243219c2428d7d',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 23:30:26',
                                    '2021-05-22 23:30:26',
                                    '2022-05-22 23:30:26'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6de1a5a28808e3c2d10a86e83b32d0b13298f1efd47566d1658184fbd90337664c6e71e16d92de5e',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-22 23:36:14',
                                    '2021-05-22 23:36:14',
                                    '2022-05-22 23:36:14'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'bc92e490bd9f6a24fc7dbcee9af1cfb09d5943c022157beb431b1f7489aefce1bc138d407e632b84',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 00:16:13',
                                    '2021-05-23 00:16:13',
                                    '2022-05-23 00:16:13'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '8b027a0c4a1e828102bd07125b966d0cc3f7345c32c4fe6f315081d861821df118f8bc8067cdfcbf',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 00:18:55',
                                    '2021-05-23 00:18:55',
                                    '2022-05-23 00:18:55'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a93c12e19caffb6307b89a5690c14a1a9bdfbcfc74a41d376351309cf18893690964c0030a99997b',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 01:50:41',
                                    '2021-05-23 01:50:41',
                                    '2022-05-23 01:50:41'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '36f5eae0802eed7ee2b48f2ca81c5d470a1e8752b6a245e010a02a2fb1750a019dbe30837237088b',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 07:35:42',
                                    '2021-05-23 07:35:42',
                                    '2022-05-23 07:35:42'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a993eede9196c2b5d1e4229a28aea83d517d2c47d182c1c6282f207bbc6c736ab0dec5027787efdf',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 07:43:11',
                                    '2021-05-23 07:43:11',
                                    '2022-05-23 07:43:11'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '5e762e24faefa303d37ad89c1ad1e1fccea4c7770549d1040b1fc25e575424917d1d5a5de724f214',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 07:46:52',
                                    '2021-05-23 07:46:52',
                                    '2022-05-23 07:46:52'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '40b9cfbcfc4c275fa0c04b73112bad4541928f656730292a394d6326a19b848d1cdfa73f7a58980f',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 08:59:24',
                                    '2021-05-23 08:59:24',
                                    '2022-05-23 08:59:24'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'bd058ca12f810da3649d9a700978fdb8d43d5a8c0ff4900316c63885f05015da39cf3be0c647c732',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 09:17:02',
                                    '2021-05-23 09:17:02',
                                    '2022-05-23 09:17:02'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ac2f78552669309f4822a7d7b49f3bf7c9197f05b2dd6a93b9cec01c532d56cc2da9278a8b13850e',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 09:24:30',
                                    '2021-05-23 09:24:30',
                                    '2022-05-23 09:24:30'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '727574d5f980f813e41e62e462954086f61093bf5cc4fff77d3dd7037c2fa775005ec8318936899b',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 09:25:44',
                                    '2021-05-23 09:25:44',
                                    '2022-05-23 09:25:44'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '7a8186e00dd7bf85a5670811cbdddde12e80c7fd5732252d87b496d7a7c2e57240d4b9b3233d9a87',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 09:34:53',
                                    '2021-05-23 09:34:53',
                                    '2022-05-23 09:34:53'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b7930256d4734c8b938ccf580f2beedf93152c45c070a8b1bb0e6a04986c3af336b0c4ee693aa727',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 09:36:24',
                                    '2021-05-23 09:36:24',
                                    '2022-05-23 09:36:24'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'adf1af590c8338617ec18cba75ec27f4f499c47c72c3a3ff09981ff1c998990bd115b729320eb735',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 16:31:10',
                                    '2021-05-23 16:31:10',
                                    '2022-05-23 16:31:10'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2a3fc65ce0c002f6d19d1156a86a5bf88375eef45b188a27d77680f90857ec532b694a488ef0469f',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 16:35:22',
                                    '2021-05-23 16:35:22',
                                    '2022-05-23 16:35:22'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'e88f9639689c7cb8afa145a0247784842f9642767a8cf087ebce4014b3a659c32f331ca75f55c93e',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 16:36:24',
                                    '2021-05-23 16:36:24',
                                    '2022-05-23 16:36:24'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b3f7a2f5a946843b09f000fff6e90341d819d99a8faee1d7d76a137c1dd89ea629314cdae606d8f8',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 16:42:08',
                                    '2021-05-23 16:42:08',
                                    '2022-05-23 16:42:08'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '22fb77d31971864bc3eaf09f0f01e3c168a0899795d93aca54e71f88751c0daec13d6fa6c374c180',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 16:46:07',
                                    '2021-05-23 16:46:07',
                                    '2022-05-23 16:46:07'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'e0049f82b206ad4f6dc71322ea7d5277214153ddc33619b34796a8112e19bcbd575d2a7affce6fde',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 16:47:38',
                                    '2021-05-23 16:47:38',
                                    '2022-05-23 16:47:38'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '566034e95233612456a489421a3b8fe608e3e7d2919ab3a2e6854160770e641e89481fa407128226',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 16:50:02',
                                    '2021-05-23 16:50:02',
                                    '2022-05-23 16:50:02'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '8f480341992e56a79a140d1f617eeb20e7556c741e728d67952d6fd5b41b43e8e8a31b43eb167425',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 16:50:16',
                                    '2021-05-23 16:50:16',
                                    '2022-05-23 16:50:16'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'e7f152c6af228596bfab80573a2cbcb2b4f49a80f955a16a9e88ef7d0fc1135f71ef86185c093647',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 16:50:44',
                                    '2021-05-23 16:50:44',
                                    '2022-05-23 16:50:44'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6f45d0ae2454536033ee4f674a8c92ea4988e891b3197ecfcc0b445bcc9103905f5e57de1084ed96',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 16:52:45',
                                    '2021-05-23 16:52:45',
                                    '2022-05-23 16:52:45'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2d2a720faae98e52ccc96ef7aa1ec1a715f390197ee57400b0d4eb903147e4cfa1fbee0f5a41f763',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 16:53:02',
                                    '2021-05-23 16:53:02',
                                    '2022-05-23 16:53:02'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2c92e1cb506ded30812e3ecb8d145b3cf6bcd4b4505d622972727603bd3361755b64552813bcaa43',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 17:00:20',
                                    '2021-05-23 17:00:20',
                                    '2022-05-23 17:00:20'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c9e499c5f6d521fc8a0bed84e188b7482d677f9d1bda5e54830a920da76598b954ed0586759dea81',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 17:00:37',
                                    '2021-05-23 17:00:37',
                                    '2022-05-23 17:00:37'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '71644f943451ed03eccbdb51054dcfaebe0b2f7a8753629bb5776eacd1bea31d8134ec546132a814',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 17:00:47',
                                    '2021-05-23 17:00:47',
                                    '2022-05-23 17:00:47'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'fc3bd606c0fe508dd037529e6ac39a1d3ad2ef47e5aa7104e14f2b9e3e7cd2d676742ff987198442',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 17:04:07',
                                    '2021-05-23 17:04:07',
                                    '2022-05-23 17:04:07'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c4d685b446b1bda7d98a398050cff8af289eca20943b74b25302926147020ba4905ba394b5e4f39c',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 17:46:01',
                                    '2021-05-23 17:46:01',
                                    '2022-05-23 17:46:01'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1addb18b499923e6ef68c339ce66f2b7a4c0a5ad6077a325d30d1669fefb20ebebe5b170c6f8d19a',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 17:46:22',
                                    '2021-05-23 17:46:22',
                                    '2022-05-23 17:46:22'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '34b3a0f7fe921d9a05bafcb2606db50bd93ac5dd59d79170ff692f75895d53b2411879510fefa149',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 17:54:36',
                                    '2021-05-23 17:54:36',
                                    '2022-05-23 17:54:36'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '4157c1a0dc72bb80d58c965cd9371950adae50bc4e8e779e480661650c024c24e7e853abddf8d61c',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 17:56:19',
                                    '2021-05-23 17:56:19',
                                    '2022-05-23 17:56:19'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'e539d2af845ab4551ed9ed19cdfeede54c60f0eade967b74fa28581ed6ac14ee994365a5b6e76ec7',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:01:12',
                                    '2021-05-23 18:01:12',
                                    '2022-05-23 18:01:12'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '4accb7e31b48d9d6e01afb8629330be6f03840a5c7091aa311b612a35483a099425d6e9447c7ab20',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:02:21',
                                    '2021-05-23 18:02:21',
                                    '2022-05-23 18:02:21'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '51043f33e2c0fca0cdd1adb6d17a29a18ba0d021cbadee18f5713e8014aa68a6269d5fd4536e79e1',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:06:14',
                                    '2021-05-23 18:06:14',
                                    '2022-05-23 18:06:14'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '24b13ce143beff69d16e4a7ef83cb578b211a9c2c9b8b40e55c720f8e56f0e9d4cd942d75dea9c19',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:07:49',
                                    '2021-05-23 18:07:49',
                                    '2022-05-23 18:07:49'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1ed8996ddd5bb505150029bc66e329e240a7629bcfd0c7ad6953ca3908bd3cdbb7b159179fd85518',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:21:10',
                                    '2021-05-23 18:21:10',
                                    '2022-05-23 18:21:10'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '339c4faa77e8e5f44c6ce9db50aba13fd94a9c5fa829cbe6e29a703a1d00a501c1f4f8f85a2c34bb',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:26:21',
                                    '2021-05-23 18:26:21',
                                    '2022-05-23 18:26:21'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '61f83e4f85ce15b7a93c5c045d35c37809202eeb41dc0fc5a70a065a7e1e3d8bae72d82c7091802b',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:28:40',
                                    '2021-05-23 18:28:40',
                                    '2022-05-23 18:28:40'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '75999d20873d06fc1d694fc3b7c57df4fb61202ee7357e4700d0352e097cefcc646f9143722a9493',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:28:50',
                                    '2021-05-23 18:28:50',
                                    '2022-05-23 18:28:50'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '38fd0c866f6ed9633e1b93b1add1e4ee09f88a8809d665ac30703f3e0d73065339261942b92b6f46',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:29:07',
                                    '2021-05-23 18:29:07',
                                    '2022-05-23 18:29:07'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '3d22dd26721ab11c97e10d9194daf4dd42176f8942455a30c9a16b51698eb2ed7f316b9dfb5ca78b',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:29:48',
                                    '2021-05-23 18:29:48',
                                    '2022-05-23 18:29:48'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '232a2aa7569bbd387ad5c18e49776b9016ae1084c4de00664d16a96b8e70d5f8658bdbe9237d5b2b',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:30:24',
                                    '2021-05-23 18:30:24',
                                    '2022-05-23 18:30:24'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '14980815a92af2a0f370bbb14553a1882acf901a485eccbedebb51e2f75c2568aad4d0a480c296f5',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:30:37',
                                    '2021-05-23 18:30:37',
                                    '2022-05-23 18:30:37'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1e848f509922e8f9545af909e0bd19d5763a90d3447ef609a5b4bd8b2cb2557c0b2454d50e94fa93',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:34:28',
                                    '2021-05-23 18:34:28',
                                    '2022-05-23 18:34:28'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '474786b9b1f647f0aab9e8a3782ae2719d8802c2674c38b48f8b772f153164c632e1d3c61c92df1c',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:34:57',
                                    '2021-05-23 18:34:57',
                                    '2022-05-23 18:34:57'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '75caff8ed714f9a9415f1233ab3a8ddedab0e39e08751f11738a8b55b0b464bb527a7f8b362eccfa',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:35:16',
                                    '2021-05-23 18:35:16',
                                    '2022-05-23 18:35:16'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'da77140b377f942aa865eef0beaef3ef7ee93172e4748bc5c331a9ff77e1323bc5631949156f9eaa',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:36:42',
                                    '2021-05-23 18:36:42',
                                    '2022-05-23 18:36:42'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '4eb437c09978a8c11c50a530345f004ad99532daa12de330659eb3f83bd3dd9d64cec2d0dedc5681',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:37:01',
                                    '2021-05-23 18:37:01',
                                    '2022-05-23 18:37:01'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '53e04a3cb1f43f63e52f85c366ae65252d26417a32efef259f8c2aafa3b7c19733d5cd2872529d71',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:37:15',
                                    '2021-05-23 18:37:15',
                                    '2022-05-23 18:37:15'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '755a31a852e4835e6238af78f31d89ab64c64c8f12000737bbbfbf4188d025c9c76e7ffc7fb50dad',
                                    20,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:37:41',
                                    '2021-05-23 18:37:41',
                                    '2022-05-23 18:37:41'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2eae082fbe6a8533d766eae2e7028a071cdeaf3cc0f25d56111a552365ca8c83d35e6dc5b8d393c5',
                                    20,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:40:57',
                                    '2021-05-23 18:40:57',
                                    '2022-05-23 18:40:57'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ca3b6fe1137527db2f40c1c2d55b6808d6801bfbd0274614bb5e6832db948c0792b55361778b522b',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:41:07',
                                    '2021-05-23 18:41:07',
                                    '2022-05-23 18:41:07'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '5ca8b7c3e1b319698d9a0071158e56b90b2411aa9d702443677242d1abcf010b99122dc61828390d',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:41:22',
                                    '2021-05-23 18:41:22',
                                    '2022-05-23 18:41:22'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c6668d4ea885dd96b2f4c2a32a09af2119f623482c5d3e7d09b31bec0e6f929c80618e2b210a64dc',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:42:19',
                                    '2021-05-23 18:42:19',
                                    '2022-05-23 18:42:19'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '83255479bb101d92b4dd630ffccfef2beef06ee13ad97b2c519eb1d0bf8de6d7df9d442bce9d7087',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:46:26',
                                    '2021-05-23 18:46:26',
                                    '2022-05-23 18:46:26'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'cb061e10d4d625871ad9f31df468adf8dc3387a33e09f634a0e796d1711970193847b7226416e2f7',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:47:08',
                                    '2021-05-23 18:47:08',
                                    '2022-05-23 18:47:08'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a2b0b29aa3fde7311c2665adc479f2da044c9d1f571cdd461165c72d53be60649a99dd1ab30cc3c6',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:51:03',
                                    '2021-05-23 18:51:03',
                                    '2022-05-23 18:51:03'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '0078fce2798c1528f9096885ec9c9b55f28fd420f9656f64b468ae27b00121d2e9b4979473dcbdfc',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:51:20',
                                    '2021-05-23 18:51:20',
                                    '2022-05-23 18:51:20'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '008c5590635a444ed52fa0267461a5607d101ba686c00a4255b444d0122b59ed256e27f6f278466c',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:51:50',
                                    '2021-05-23 18:51:50',
                                    '2022-05-23 18:51:50'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'da8fa4458dbf71466cc756d1f5b41b4b3f06d0913f26a2ea5b85f2f0efa48d64e5da4b627d88aab1',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:52:07',
                                    '2021-05-23 18:52:07',
                                    '2022-05-23 18:52:07'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1bb5176ffee04fcba9052c80cb038e665935aecd5c424309b78de542103e2e4873c8f92cd734b7bc',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:52:45',
                                    '2021-05-23 18:52:45',
                                    '2022-05-23 18:52:45'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '76987a359f0503ea422cdd8511806b377772679a563e35bf33cf4a58c994ff3adb664d8968f353a8',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:53:17',
                                    '2021-05-23 18:53:17',
                                    '2022-05-23 18:53:17'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '3aa05005e3fa25a306e623b158a428996162ba556bcf131f8e420ccb67a38e7f145023c6305381c8',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:54:09',
                                    '2021-05-23 18:54:09',
                                    '2022-05-23 18:54:09'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '3a7e11c18c8d07bc97df4122769e1f26400e0cc2a7cfc6cf03d9d60cb40746d34a57f85418df6cda',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:55:19',
                                    '2021-05-23 18:55:19',
                                    '2022-05-23 18:55:19'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '4dfab34311a2436397c7354a5cb6da13fa5477acc5e3243d07751c2ee820bf8df236863fa2ddd17a',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:59:39',
                                    '2021-05-23 18:59:39',
                                    '2022-05-23 18:59:39'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c4c6f3a293a6bab17508c2f4fc241922d705c37b84cbc05d09ff8dcb13c3b846112e5bb3dd7dad0b',
                                    20,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 18:59:52',
                                    '2021-05-23 18:59:52',
                                    '2022-05-23 18:59:52'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'add052a1bb19af6df6d1fdd99066fc914ab845527c02848feb26e260479fb504cd06e5599c737f00',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 19:00:05',
                                    '2021-05-23 19:00:05',
                                    '2022-05-23 19:00:05'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '339e3662ed2c79782c203e41bf0c49ca170c038edb5235fb2c5321e8c2bff2f453c933bb2d03232f',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 19:00:14',
                                    '2021-05-23 19:00:14',
                                    '2022-05-23 19:00:14'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '3807d97f99a0165b06cc796705ee55951f69a23d7d2734b4616935c5b4b047e6d9b89a9f594d72f0',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 19:00:36',
                                    '2021-05-23 19:00:36',
                                    '2022-05-23 19:00:36'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ff30c44fcc00707a96a19dbeecf6f6dd8787e1f25a0fa86c5cd6eb906daf4eba4586f163052d57a6',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 19:00:44',
                                    '2021-05-23 19:00:44',
                                    '2022-05-23 19:00:44'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '33e97e5d8eb9db3473936bbe5c1d0789d7a472ca8d61fdcd8229e97c19a796a01c6b00bbeef36e58',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 19:02:19',
                                    '2021-05-23 19:02:19',
                                    '2022-05-23 19:02:19'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '10be39dafc68ad0fe6b379b1c60aadce027d86c4c3eccffc6feda0783b84853c25249d92081bb987',
                                    20,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 19:02:38',
                                    '2021-05-23 19:02:38',
                                    '2022-05-23 19:02:38'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'd5260f5eb77ba433ba0bb03feb0bca7e557c72a132c283a09d1ab02f758c23e539d32c2218c40af4',
                                    7,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 19:03:13',
                                    '2021-05-23 19:03:13',
                                    '2022-05-23 19:03:13'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '26675f1918cf3c65f0a29fa1ced06e92346fddc165e37ae4ae9e36da23289222d2f19e1b5b83a1a6',
                                    20,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 19:05:48',
                                    '2021-05-23 19:05:48',
                                    '2022-05-23 19:05:48'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '81e089d7975645c7289b28104b2a86d3f8070be2fdfcab271b5989e1b78e86e7ec4e7f65c97fb902',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 19:06:27',
                                    '2021-05-23 19:06:27',
                                    '2022-05-23 19:06:27'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '641c475d81f9647a2b5b7903134fbd3275e4d216fb055cbeec48faa2d325617de7fc9fb927bb148e',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 19:07:01',
                                    '2021-05-23 19:07:01',
                                    '2022-05-23 19:07:01'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '4ec1604df42c1eb4819d6d1754854e7b1ee08a24d18c16a8f816d3e4902884eb48a92e666539ce96',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 19:13:07',
                                    '2021-05-23 19:13:07',
                                    '2022-05-23 19:13:07'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '8a8c795a9497bbad4cdd660919ac739684001e038f2bc08fa193111a4c333b2b8c0143fe08f67014',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 19:15:23',
                                    '2021-05-23 19:15:23',
                                    '2022-05-23 19:15:23'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '0316351ac2cbe652739b3ed72937582371f1ae8a9d9e9b14b206190b92885248f7a0f94b4b658d6a',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 19:17:42',
                                    '2021-05-23 19:17:42',
                                    '2022-05-23 19:17:42'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'da087f6b573de16c4c5282cd3378f1a8c3a6cd28aadf7b5fcfa0b427613b22a1d9f1d05a378f20b1',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 19:21:25',
                                    '2021-05-23 19:21:25',
                                    '2022-05-23 19:21:25'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '78829e777eb674f28d60cd3420bd76a1e4ab7830d4f811493676c728d38617e560ad202d8bd3e968',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 19:36:22',
                                    '2021-05-23 19:36:22',
                                    '2022-05-23 19:36:22'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '96868b18c0c282ed02dc81da4a788a5c4b2e349a5a48a7580be5095807ff02a30aa88244839e4000',
                                    10,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 19:36:47',
                                    '2021-05-23 19:36:47',
                                    '2022-05-23 19:36:47'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6d7c521ad65fd61921814767e21db0fccd6330ab2b6e39aadeaa6696a2a38afbe2f28a46c1f096f7',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 19:40:03',
                                    '2021-05-23 19:40:03',
                                    '2022-05-23 19:40:03'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'e2dbba366aef3baefc8ee1661886315e4a25901b1a10c07a257aa8ee6e44f19a018b2c8bc5b2a247',
                                    11,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 19:40:45',
                                    '2021-05-23 19:40:45',
                                    '2022-05-23 19:40:45'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'bd905a5cc1a827a45ea45e5f26d71ff0224a65c43616a5ddd94bec315e9cf835ed13d0ef2160d164',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 19:41:51',
                                    '2021-05-23 19:41:51',
                                    '2022-05-23 19:41:51'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2e1f8d65237b3ebc1948c23fac29fbd615275d77f2a7430a19f854f98650bd77c8dc970807627400',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 19:48:04',
                                    '2021-05-23 19:48:04',
                                    '2022-05-23 19:48:04'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c7f448639cea8ba0695c400df99648382c5d7c2d6a14f4602827b2fe01395377548fc7d362b7430f',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 19:49:11',
                                    '2021-05-23 19:49:11',
                                    '2022-05-23 19:49:11'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'abf422d19ba717a3ccbb32e504e21ef766f26ef53165de2ccb6d25967b88268ac0268ae448806bf2',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 20:00:09',
                                    '2021-05-23 20:00:09',
                                    '2022-05-23 20:00:09'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'cfd3ca3d2e4e99ec290e59908ce7b35f6f2bf5136f7d49d3e6b386cd97f2aecafb75aae756568159',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 20:00:34',
                                    '2021-05-23 20:00:34',
                                    '2022-05-23 20:00:34'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '18727635e1e141b52773260f41786847b90ad92396b075fdf94d3b233fdffdd85c8a2cd1749cea9d',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 20:01:46',
                                    '2021-05-23 20:01:46',
                                    '2022-05-23 20:01:46'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '91f477938ca8a322e828bb40359f1fbec010978f5326172b84cdf1fc41f0bbc162da4904b5b6b12b',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 20:02:39',
                                    '2021-05-23 20:02:39',
                                    '2022-05-23 20:02:39'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '958abf3f2b254a9336ce7bea9ff967861691171ffed3a6e4acbc84890c56ad4f3cc5cc18d25f8fbe',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 20:10:26',
                                    '2021-05-23 20:10:26',
                                    '2022-05-23 20:10:26'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '7553960b47cebe6a867c71a2416ffc7662fe2d0f5babec08aafe2f4b02df0bdfd6116ae939367a9e',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 20:19:47',
                                    '2021-05-23 20:19:47',
                                    '2022-05-23 20:19:47'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'fccd436784c9d35b8a86a24907f6ce8ddd4d7567251fc765affdade768c7c8412fbbe110a87dd2a3',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 23:30:48',
                                    '2021-05-23 23:30:48',
                                    '2022-05-23 23:30:48'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'eab41cd757bbe1d45300e89feb28f8aabb13b90c2a72347ef1cf2965ddfcb0a9f4b635f2d3c87e67',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 23:31:23',
                                    '2021-05-23 23:31:23',
                                    '2022-05-23 23:31:23'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '7203828623c489b1e5de08810ef5e2bce793f958d0c21368ddee1a8a2fec6682d03488081b0505df',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 23:33:03',
                                    '2021-05-23 23:33:03',
                                    '2022-05-23 23:33:03'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2ef6a8e8e315081ca51b4503071e593126d39d422a42d94a4895267169334cbb88aaf7f44865323a',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 23:44:03',
                                    '2021-05-23 23:44:03',
                                    '2022-05-23 23:44:03'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'fe17a2938c487fc1ad9dcda7f693e82c85131d12169c8d8fa257a0a8648e7665da3cc0fce21bbc5b',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 23:44:11',
                                    '2021-05-23 23:44:11',
                                    '2022-05-23 23:44:11'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c6292f332030ad460deaf56eee8fc76ee49250732429c845d82ae44ce745d80fdaccb16b644c9b74',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 23:44:32',
                                    '2021-05-23 23:44:32',
                                    '2022-05-23 23:44:32'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f92539331ac0bb8ef8fe75bb49cfc6b21b605d42d1faa26e7c92ec6f684b71eabcc3b78686f71a68',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 23:50:19',
                                    '2021-05-23 23:50:19',
                                    '2022-05-23 23:50:19'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '36f5d5a4012a571b4017b365c387a593c5e92f20595a8cd547248c9d22d1fc997d166dd02cde43d5',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 23:50:28',
                                    '2021-05-23 23:50:28',
                                    '2022-05-23 23:50:28'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'cfc1d8ccdec30e5b6526664cf93f3ad143add47d381123b534b6f1bde7bf0d48b842e801bb17fb29',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 23:55:18',
                                    '2021-05-23 23:55:18',
                                    '2022-05-23 23:55:18'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c2f893a2891324d3d5eb64639990bf8323659bb93cf69539c8736781ae7abcbc34ec34d27d7b0d15',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 23:56:21',
                                    '2021-05-23 23:56:21',
                                    '2022-05-23 23:56:21'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'fa58f3b77ea96443ca44a1ea028ffc9ff8b91078adb7cc8294505b0db9fe40e1acefd0d40113c962',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 23:58:03',
                                    '2021-05-23 23:58:03',
                                    '2022-05-23 23:58:03'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'aee085522f2be60df31d71edbd4c95a2bbc47e54939de226d62277930633e8d731be951b48a89364',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 23:58:16',
                                    '2021-05-23 23:58:16',
                                    '2022-05-23 23:58:16'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'eb4bec8b08b19c4def9372662d7b207a881216b23232298e3e17fb76b934281e7d7c806b5ee3bcff',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-23 23:58:47',
                                    '2021-05-23 23:58:47',
                                    '2022-05-23 23:58:47'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '3440a6e192ee7e7f76ab0c3bd1cfcb5aec038d274e4182f214d870cab1d5ea8b076804f8a06b3b27',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 00:00:58',
                                    '2021-05-24 00:00:58',
                                    '2022-05-24 00:00:58'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '4346ebc3038bfb0d913aff3e2bdba5704a1eaf81ba4924c3fc954160268557050858b2ed039333e0',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 00:09:28',
                                    '2021-05-24 00:09:28',
                                    '2022-05-24 00:09:28'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '94c1ee934f9195d0a8c43954b4443b2c90561389433596ca10c3d5db52b2aa01046c343376cbf21c',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 00:09:34',
                                    '2021-05-24 00:09:34',
                                    '2022-05-24 00:09:34'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '456eee816b3bea92bd9f084735546205cf2bab3c8ddb34c277fea3df0f301b18ed6524333ac16425',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 00:10:02',
                                    '2021-05-24 00:10:02',
                                    '2022-05-24 00:10:02'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '3e069d185f45d11121a87f4db2422a76782431976b6d43766c58f720f9d8d24c98e370cd9ffdf782',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 00:22:57',
                                    '2021-05-24 00:22:57',
                                    '2022-05-24 00:22:57'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '99ffb40b5ff4d664c9d66ad9a112b91adfad38f6b9ce3e49807a554481157094f3241b6a37e53a8f',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 00:26:06',
                                    '2021-05-24 00:26:06',
                                    '2022-05-24 00:26:06'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '64a5684bf2d3c366e2122e95a55c54c40295fbb8177c561670829ccf441c22607e716017a8596b8c',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 00:26:25',
                                    '2021-05-24 00:26:25',
                                    '2022-05-24 00:26:25'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'd4ca42387f295255c661339fdd3ba874e6c40887c89dd73547e83a286e212e65b740dcf90205a43b',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 00:26:42',
                                    '2021-05-24 00:26:42',
                                    '2022-05-24 00:26:42'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '17f02ae53b172be4858329cc397db2cd4799522495d944fbe3b8cd1ac8cb36174e62af6161fd3749',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 00:47:58',
                                    '2021-05-24 00:47:58',
                                    '2022-05-24 00:47:58'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ba0e96af47febe9d62dc3b0be53759f32f4a93aa50a4b0a30d3775b801b2e9ceb07a5c3b70e06e59',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 00:49:32',
                                    '2021-05-24 00:49:32',
                                    '2022-05-24 00:49:32'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f10f76013ca8b2ea82ecebbab009b4ab31bcbf2949262dcfef7b5790bbd0668f755f34c274a86393',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 00:52:06',
                                    '2021-05-24 00:52:06',
                                    '2022-05-24 00:52:06'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'fe112a503f8b3e23f7c97c65d77acac4b5be14a1d939efc5ed2eade23dccd6b746f2c706d036fdaf',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 00:53:46',
                                    '2021-05-24 00:53:46',
                                    '2022-05-24 00:53:46'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '161b3dc4968bba25e035989ffee5ef931378343fb8aa1cc21f1a92b0433f58501c697b2ef440a6de',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 00:59:58',
                                    '2021-05-24 00:59:58',
                                    '2022-05-24 00:59:58'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a094b25e797b116d3fd1287bcacbfe8a9dbcda5c8f6506a97c4c2b59d4c990ecc105632b9178448d',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 01:01:06',
                                    '2021-05-24 01:01:06',
                                    '2022-05-24 01:01:06'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c2de5051389303503158b4789a7b89723bd2f66fd16e1aab5a4607b443c9fcb7c78887f5c1368ba4',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 01:01:28',
                                    '2021-05-24 01:01:28',
                                    '2022-05-24 01:01:28'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2406aba41323001634a8d31ae97eb7939bce4e14f88e176d09fa7baa3ff188d897f925f736d3caf4',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 01:01:41',
                                    '2021-05-24 01:01:41',
                                    '2022-05-24 01:01:41'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1e7b5e1efd8a579ce795e789a79f57156f6e07e91ec176400446cf78f42dce119404a4ff0cf33aad',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 01:05:22',
                                    '2021-05-24 01:05:22',
                                    '2022-05-24 01:05:22'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '8d6359aaf38da73d1d4ea85eefdfaf4a571eab2ab4ea1a5a5189a8199709b79ed28983d14ab0740b',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 01:07:18',
                                    '2021-05-24 01:07:18',
                                    '2022-05-24 01:07:18'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b57fb1c7be47afa890bce4aba2d17ccc043b3d0a7c645beb4f0cba207b9aa50e145a5ee00b67bf39',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 01:07:55',
                                    '2021-05-24 01:07:55',
                                    '2022-05-24 01:07:55'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1960710adf4a8ee1b33bddf31747cbef4f3abcf0bbc1c9a3b023b2f949f1ebb573aca82e22a1a1f9',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 01:10:11',
                                    '2021-05-24 01:10:11',
                                    '2022-05-24 01:10:11'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '4e78256fbf5c430b6c41f5b6f15fcf154a469582599d52b9775f8fdf4a91d0ac5ba48f9af6320886',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 01:11:10',
                                    '2021-05-24 01:11:10',
                                    '2022-05-24 01:11:10'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '20733c1e54b7f4411ea5a424c4c8717eb58c9422692381073fd8803c192e93c495c6fed1ecad1099',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 01:12:29',
                                    '2021-05-24 01:12:29',
                                    '2022-05-24 01:12:29'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'd96289f2e1b1bca2f78be2f7397808f9e155e1c1f6397b3a798df645ff66b0d0042b88443ccec51a',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 01:12:45',
                                    '2021-05-24 01:12:45',
                                    '2022-05-24 01:12:45'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '84eee838c162c1da2db0e98d2f8568f6a700c82d3fd32209add87c3112bf377bd85d52bc6ca55209',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 01:14:32',
                                    '2021-05-24 01:14:32',
                                    '2022-05-24 01:14:32'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '99ad8ff429ff728b48f04a2932ae0bfc9f32e454cb8e1eea482c336ced6cc4399cb1bfd7724e00ec',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 01:15:43',
                                    '2021-05-24 01:15:43',
                                    '2022-05-24 01:15:43'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '8142636060c2634821ccd5d6118bf76330a4c815c712e65c0b7055efb14acef2ae6c9544ac5c97cd',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 01:15:53',
                                    '2021-05-24 01:15:53',
                                    '2022-05-24 01:15:53'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'cad94bf7b20bf9159852825527ea2ee832b442fe080949a880e47e6fa57637141ede54558963fccc',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 01:16:03',
                                    '2021-05-24 01:16:03',
                                    '2022-05-24 01:16:03'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c6c5f8082d73501fa1d0cffdcfd98b24b91b29aeb89b81010462c2e60b7e288551d7f335fc0edd64',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 01:16:20',
                                    '2021-05-24 01:16:20',
                                    '2022-05-24 01:16:20'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '674d22a4db7b400f194b29441b9dbb3657ccbb87fb5f87a0cb63cf454789dd07928af37986b8deac',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 01:29:02',
                                    '2021-05-24 01:29:02',
                                    '2022-05-24 01:29:02'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'dd030b0d22a68b3ee5056f2d4485db9219efc395fa1cfdc7f6205d5b2736713ce183c5d179a535a6',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 02:00:27',
                                    '2021-05-24 02:00:27',
                                    '2022-05-24 02:00:27'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '3222075fbee39755fb2ecb0782769a63cd43630a4986e58332b49dd85385e1862502b16b9ad5d364',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 02:36:39',
                                    '2021-05-24 02:36:39',
                                    '2022-05-24 02:36:39'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '8c6897455857eacd0796847c0e5dd80676052c8e949c1202d283a85512f2461c3aa2687f16d5fb3d',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 03:16:32',
                                    '2021-05-24 03:16:32',
                                    '2022-05-24 03:16:32'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'd249a8aa4662c48a8e86388807805f832c98f3afc0d76186cff8a6ef9f39b9761499afb557a4952c',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 03:20:47',
                                    '2021-05-24 03:20:47',
                                    '2022-05-24 03:20:47'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '41a59f4b163c04bfda003b679a909655c89fdbd2a645c322ce79a096ab2a37512a5a36a369e1af4a',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 03:21:11',
                                    '2021-05-24 03:21:11',
                                    '2022-05-24 03:21:11'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c5e0af10fee67a3ae674207fb5a85822a77cefae6c01a1758470efb603b8263453298887665f8821',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 03:21:39',
                                    '2021-05-24 03:21:39',
                                    '2022-05-24 03:21:39'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1a2451296cfb01f359923aa4301a953e945a79159bb6fc8097649b6568f7e86064a9abc4e4f1da18',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 03:24:55',
                                    '2021-05-24 03:24:55',
                                    '2022-05-24 03:24:55'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a52a1b3bfe4eb3d6fe6bd99862164a96856f64c8980a2f715acc0e3124be0e4fd0cf4953c89038bd',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 03:25:06',
                                    '2021-05-24 03:25:06',
                                    '2022-05-24 03:25:06'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f58296e1ef26128840aa4ae39f9a538a50e955ce0a62ebdd009ce5aef56f2cecc248d61960aab5d7',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 04:01:36',
                                    '2021-05-24 04:01:36',
                                    '2022-05-24 04:01:36'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '9b620ced0ffcbe8d6523ee484dfaa43cd3d799e275aafd234d501a26143b550a2bc9bd85d1e52461',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 04:08:13',
                                    '2021-05-24 04:08:13',
                                    '2022-05-24 04:08:13'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'daef190783c129df66bd088e207ce711bda71123de2301a5e99869f6f67b080033af41f992a89412',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 04:10:13',
                                    '2021-05-24 04:10:13',
                                    '2022-05-24 04:10:13'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '9513db2fd038a782ae2ae3b22cf35d7722ef2bd517887364e47f3d4819a8139b61193a89f846e108',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 04:11:17',
                                    '2021-05-24 04:11:17',
                                    '2022-05-24 04:11:17'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a3d192ef9b204f53b6912627caa8aed03cb9c400514453d63459f7cd2914beba20f10743b4ee63ac',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 04:13:43',
                                    '2021-05-24 04:13:43',
                                    '2022-05-24 04:13:43'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'e584596d85d67e4f6e01c5b8f857ba39ef2c341bb56576ff7b295b6697a789c5e2c397ad8f0038a4',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 04:15:16',
                                    '2021-05-24 04:15:16',
                                    '2022-05-24 04:15:16'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'e9f4d13d115be2d4c5824ac838fcee232f5a20994d8bdcda8039600b3c8404cad85427841bdc4cf7',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 04:15:48',
                                    '2021-05-24 04:15:48',
                                    '2022-05-24 04:15:48'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'adc1bf94aa387c256b2f538d12e1d4112868afd76ff551dadd39f850405739a35c1730b033de080a',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 04:17:18',
                                    '2021-05-24 04:17:18',
                                    '2022-05-24 04:17:18'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '00a313e131b1a35216895e7fb0e00e68d2c290fa165e8670d97c835a488ee5ed87f0d7b0260e8dad',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 04:17:48',
                                    '2021-05-24 04:17:48',
                                    '2022-05-24 04:17:48'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '20829b042170629b4f6beb90a436c4d8cabbb250bf012e9392506ce7948a858bbd1dc095f558aac0',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 04:25:23',
                                    '2021-05-24 04:25:23',
                                    '2022-05-24 04:25:23'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'd3577717bc7fc987efa9c7e19534290186af20b9b6a2baafb3399b10de5dd9233d928a747bef9b45',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 04:27:04',
                                    '2021-05-24 04:27:04',
                                    '2022-05-24 04:27:04'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '644c38bd8cb8b253efd1b9d2493ae79a9d666de646e1d24fc5fe896d92445ff31e041048679435af',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 04:32:42',
                                    '2021-05-24 04:32:42',
                                    '2022-05-24 04:32:42'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '025718c7f7e53e905fefba8a4c2b750e3408d0f0ebadbd45ef10929603b28f91e0d024c3222ce7e0',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 04:33:07',
                                    '2021-05-24 04:33:07',
                                    '2022-05-24 04:33:07'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b28758712b2afea651de141e1a3f056fcb0bde66cb929b6d4df9e4a25f8bda715ed7948735c793dc',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 04:34:36',
                                    '2021-05-24 04:34:36',
                                    '2022-05-24 04:34:36'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '5d5bab5e61a24e3047ee82a61590b795d7bc5b410193060f0517e0a42abb347f078c8d4c0a80335e',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 05:02:01',
                                    '2021-05-24 05:02:01',
                                    '2022-05-24 05:02:01'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '4fc9036071bc047bf1e46afe2e1c6ff65073c3105664cf55d0072f96f32d20b04e2c7660b8572889',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 05:07:28',
                                    '2021-05-24 05:07:28',
                                    '2022-05-24 05:07:28'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '452fb6bfc840febd3a42ded132987236a5f0879d1faa4e790a86b3c26b70821d80ea6cb3711c45c5',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 05:09:42',
                                    '2021-05-24 05:09:42',
                                    '2022-05-24 05:09:42'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '71491a0b96f7fcfbcf8129b419e75fac5e663b94fd9fded78499b0be7391b3318a8e6afdfc845db6',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 05:19:30',
                                    '2021-05-24 05:19:30',
                                    '2022-05-24 05:19:30'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '52fe1e5682a3c3f63f0a3cd3464c37bbd411f0755041907fc6883b4da0703522e42325526a432ea9',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 05:23:47',
                                    '2021-05-24 05:23:47',
                                    '2022-05-24 05:23:47'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '87e353af71627a953503bf9ca10162880e3272b642e0b6490a3ca1bf2c834da28b7f02459394a1ac',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 05:27:50',
                                    '2021-05-24 05:27:50',
                                    '2022-05-24 05:27:50'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '08d92dd8bcb17f60c38927d3a14240737bbaf56994cef4928ab4b6b04ca55e083a40f13272035d9d',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 06:07:56',
                                    '2021-05-24 06:07:56',
                                    '2022-05-24 06:07:56'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '54cc38c0f3ddfec79cda851babacf5ab1f6dacc9cb162ba4b821cd2746381db9252f52f775729136',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 07:06:15',
                                    '2021-05-24 07:06:15',
                                    '2022-05-24 07:06:15'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f7044501e017c2218ed1303a8a551aa9ae1a080a8580daf0b75a468d4c74371a28e95665143fd1cc',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 07:06:47',
                                    '2021-05-24 07:06:47',
                                    '2022-05-24 07:06:47'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '44d8d64e8af9d366c3c0ea599dbc103737bfc6bf858784e1f15a63b5b95504298feedb9baacbfb51',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 07:07:04',
                                    '2021-05-24 07:07:04',
                                    '2022-05-24 07:07:04'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '554bd0c1bbc037305ee2409be1beef4003861388760761004b007833a3f4b96c4b7faa7ed3c6612d',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 07:08:10',
                                    '2021-05-24 07:08:10',
                                    '2022-05-24 07:08:10'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2c6b6ea26355ff30c868d03d7cd33badb510fe6acad209ea16f4add4c3514e305b97b0fcbf874ea9',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 12:32:04',
                                    '2021-05-24 12:32:04',
                                    '2022-05-24 12:32:04'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b36415daf93b2e331915a7f499c40e9cefb99ca8b6ef923bf6c06527522505b03ea44ff742bf559f',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 13:59:23',
                                    '2021-05-24 13:59:23',
                                    '2022-05-24 13:59:23'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '7579f741bea6d0819dd0ffb6c140c52241aa7f1d9b96b1b2624cd6d473f73436765648e617508ca0',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 14:01:17',
                                    '2021-05-24 14:01:17',
                                    '2022-05-24 14:01:17'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '8ad55ac7428aac12d650219d7383b64fcfdcb6995edf9b985d7dda2626d3a28c3c084fd482397936',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 14:07:55',
                                    '2021-05-24 14:07:55',
                                    '2022-05-24 14:07:55'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '68cfdd810d10c0243bd4d507ed7f95ea6178a9ee53b90f9db79cff816e121f830b1905fea6ea646c',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 14:24:25',
                                    '2021-05-24 14:24:25',
                                    '2022-05-24 14:24:25'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '8b9cc54c5b6b5b6850c1c5c78bec4340e77daccae2ba623bc89fec644333f0908ad9f273eee628a7',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 14:24:58',
                                    '2021-05-24 14:24:58',
                                    '2022-05-24 14:24:58'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '0dd2bd8ded1ed65671b437314dec46ca6e35a1318bca8bec988596c8b08cb62577bdb08e000d205c',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 14:25:51',
                                    '2021-05-24 14:25:51',
                                    '2022-05-24 14:25:51'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'd21aef767fc52227bb773462e0627fd08d3c00049539cda4777e5dd643b098540926a68cf9ea5148',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 14:34:00',
                                    '2021-05-24 14:34:00',
                                    '2022-05-24 14:34:00'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '35bd7bf47a2ed5b10f89568fb26d10962aae0f3c33544af04247350617530f5833aa54f4275918ee',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 14:35:01',
                                    '2021-05-24 14:35:01',
                                    '2022-05-24 14:35:01'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '774704b613dff18fa7beab4d0735478017f23f5f728d27bcce14c3189f9d648b84f0f47a9a192d35',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 15:20:07',
                                    '2021-05-24 15:20:07',
                                    '2022-05-24 15:20:07'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b8a0d4336aa47d71489410520ceb7f56aea9ed094b8408bc6b5fe434f585a10cc5efa8585e12e613',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 15:25:21',
                                    '2021-05-24 15:25:21',
                                    '2022-05-24 15:25:21'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c807274fb4006e96008ace7e663c2db9258230b50baebd86d3f10753241198ab467c8717697f089a',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 15:26:02',
                                    '2021-05-24 15:26:02',
                                    '2022-05-24 15:26:02'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '68050f7f2b10a28ef989739b6bf1b3597edc41493eaf0029b2690e4bc117ae4e2ab6983b2e81502d',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 15:27:08',
                                    '2021-05-24 15:27:08',
                                    '2022-05-24 15:27:08'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '827f41b5c4d37e15c329b2ebf2c3a8272f790fab61c7f73aae3f5bf068298e5e2775b7c4455d5622',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 15:28:08',
                                    '2021-05-24 15:28:08',
                                    '2022-05-24 15:28:08'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1f2a9ab2a89845963baf7fe62dc96c3f1ef48e93dbbe7ecffdc034773405af25b0965c3807aa3d03',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 15:28:26',
                                    '2021-05-24 15:28:26',
                                    '2022-05-24 15:28:26'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '252660f81f30f803f6149e41cfc08a0e1117a1bbe87ff4484e1136ba2de2e5fba76606f7220f6706',
                                    21,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 15:30:59',
                                    '2021-05-24 15:30:59',
                                    '2022-05-24 15:30:59'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f312f1a67f385670709df055f620d421c7cd35f2bcc28b2532f37f132832a8eb2ad89d677918fd25',
                                    21,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 15:36:25',
                                    '2021-05-24 15:36:25',
                                    '2022-05-24 15:36:25'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f71bdb050f4d512bde844f8bdcc9bacbc21f685b489a3bdc31f8f793877d0fa0ad8c6cc20957eb11',
                                    21,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 15:38:16',
                                    '2021-05-24 15:38:16',
                                    '2022-05-24 15:38:16'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '68f29f6555ca62fb2e3bc1940d88a2a74986d9e8df5c1277bb1487840d48dbf6b4c9d1bd8aeea51f',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 15:38:51',
                                    '2021-05-24 15:38:51',
                                    '2022-05-24 15:38:51'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '751b2b109df1a589c797f1b867c4c24991a4c0da5c1916915bc6365b7f3b06bc21614f49dcc86299',
                                    21,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 15:54:11',
                                    '2021-05-24 15:54:11',
                                    '2022-05-24 15:54:11'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'd20f6a52c565634eb22ad6f5ba35d54f534c81218328c8d803db753d693d36ef0e6ae52ba53e88d5',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 15:55:08',
                                    '2021-05-24 15:55:08',
                                    '2022-05-24 15:55:08'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '7466f3714bdfa51797f88dda0d30677626686792d4f8929bc27f693662f79ad5d4c5e9cbff53a5ee',
                                    21,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 16:00:39',
                                    '2021-05-24 16:00:39',
                                    '2022-05-24 16:00:39'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f242b7712a1bbdee6d35704d90c12a19990d00a59286b2774141014e58b5c7d6b34f4b74e3f77206',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 16:02:06',
                                    '2021-05-24 16:02:06',
                                    '2022-05-24 16:02:06'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'bb0e7be10a7fa089eb1eb37fff34282a71e4fc3d64983376f2b82d23d8616be408acb4f26f0440b3',
                                    21,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 16:04:01',
                                    '2021-05-24 16:04:01',
                                    '2022-05-24 16:04:01'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'd191e2b272e0e81d6f00d75d65370045d2c7eb45c7609282e0b12bc8dd6edbe9d256b83bf2eb89c7',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 16:16:43',
                                    '2021-05-24 16:16:43',
                                    '2022-05-24 16:16:43'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '3931807073e06b4adf481b66ba3fecdaf45600f22c3389df500841a82a93f51d9c9e3b13cf23a39e',
                                    21,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 16:18:01',
                                    '2021-05-24 16:18:01',
                                    '2022-05-24 16:18:01'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'bb5b14fed40da7cdcadf5cf22f664287427012188d4d1b8273d4d5aeaf38bd2b2e949d89cfe1cb6f',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 16:19:22',
                                    '2021-05-24 16:19:22',
                                    '2022-05-24 16:19:22'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '62199e29b457f1b11917dffea18417fccfd94db810eb589398d2dbf1e41e02807cfdaa0c6864f20e',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 16:25:30',
                                    '2021-05-24 16:25:30',
                                    '2022-05-24 16:25:30'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '05607ca608656c38ca69a4e0682eb632a8d3bbb787a477749aed7e0b2e38cb35c123d8866044e274',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 16:30:52',
                                    '2021-05-24 16:30:52',
                                    '2022-05-24 16:30:52'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a8001cd7a38bdeb8892a5f5d1db24b1f80fd2fe1a2ec448410586768799cb2125342c5b7e5950472',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 16:58:48',
                                    '2021-05-24 16:58:48',
                                    '2022-05-24 16:58:48'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'dc032c61bb1d7cd78d96ebed0db90633c8a7fc0746262c16d393a5a38a1ebd5c8d63c311f144569e',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 18:40:56',
                                    '2021-05-24 18:40:56',
                                    '2022-05-24 18:40:56'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '615631e9fedfd070ba0423cd61b87dae8defe29206e556fb2bdf7f8007d352135493a2629c512d28',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 18:48:35',
                                    '2021-05-24 18:48:35',
                                    '2022-05-24 18:48:35'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'cf7fcc1a7d2c9dd5b8bbbcb8ad14c049fd56be3d3541f6935159c6eb091daf2027e848198c37fd55',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 18:55:18',
                                    '2021-05-24 18:55:18',
                                    '2022-05-24 18:55:18'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '58b46d66330800869bf13658892449ae4385e12978832c75e92b8e9ad40572eb97e49e018986251b',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 18:56:27',
                                    '2021-05-24 18:56:27',
                                    '2022-05-24 18:56:27'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '178ff92bd194056ceb506f118b677bf519308aa275c05401735f5af24418ebad252272a10f777fc6',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 19:12:52',
                                    '2021-05-24 19:12:52',
                                    '2022-05-24 19:12:52'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '87709fbf021fc6d8e115f59d4b94746ad67f10b7c397340355559f6b3ea77c4d86ddecc10920c58e',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 19:17:29',
                                    '2021-05-24 19:17:29',
                                    '2022-05-24 19:17:29'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ea75cf924aa4bf738b69545593f3a1b7618ef772ea3db9b9133a1aed167c314eeb7e4690b491c564',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 19:17:57',
                                    '2021-05-24 19:17:57',
                                    '2022-05-24 19:17:57'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'cb06a14b54f116b46ee49237cc15792bca5c794e3e784f8305d713069313958eaa2815d01f47b696',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 19:19:43',
                                    '2021-05-24 19:19:43',
                                    '2022-05-24 19:19:43'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '98f713530afbb37c1c425409c64564f4c8f8ae716841b0a159259ab1de9806a4dd156012d5d639a7',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 19:25:13',
                                    '2021-05-24 19:25:13',
                                    '2022-05-24 19:25:13'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '7929778d2b19b7e2bb43a520dee6c0ecb5a56ba7224e40548d42a91ba81b49c170e6a883b45a8757',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 19:27:16',
                                    '2021-05-24 19:27:16',
                                    '2022-05-24 19:27:16'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '757b1d72dab6ea748b9f062f6475369105536851ed6fa2cdcf82e3f3eaa9e676c06dab5814db022d',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 19:29:13',
                                    '2021-05-24 19:29:13',
                                    '2022-05-24 19:29:13'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'cdfd59f96fe4287c63da4c5d9c9753664b33afe2f99b5f65cd9b9e2250e5a9664c552ad11b2688bc',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 19:29:45',
                                    '2021-05-24 19:29:45',
                                    '2022-05-24 19:29:45'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'feb985c264e206dceb7f915056974d0c4adcfedd6ee69a3633bf119e78a086bd52d46b414db414d0',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 19:30:09',
                                    '2021-05-24 19:30:09',
                                    '2022-05-24 19:30:09'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'd0ce174b027a5f752f3b25a58bf15fd097e4835d2e13d1abb2bce8ce6ae9b5f9f7bba83e44e5789a',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 19:32:54',
                                    '2021-05-24 19:32:54',
                                    '2022-05-24 19:32:54'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '74a1f9d44b0d6eedadd5e82a1d6473be17599579f9610c53e57294a6764b57f4b31eadae8982d4c5',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 19:34:26',
                                    '2021-05-24 19:34:26',
                                    '2022-05-24 19:34:26'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f5f031feee4a146e3eb9a8e1ba9ebffbe50d507792c3759fbbf802e0d8903b8b667c51afd1876b2d',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 19:35:10',
                                    '2021-05-24 19:35:10',
                                    '2022-05-24 19:35:10'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '22082706938e6b7bbe0302b1d3ceef3dec0e6865b28e83b8cfb60743b2dbeff56de2a83aba9d9947',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 19:40:50',
                                    '2021-05-24 19:40:50',
                                    '2022-05-24 19:40:50'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '34ec9238db245abe98b80046d2d7bedb1c3e044533ea3c9fe53c4b6f432c16ccd2990d48f16f7a75',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 19:41:18',
                                    '2021-05-24 19:41:18',
                                    '2022-05-24 19:41:18'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '26775c88fb8fdc39c22a773f9c461b68f9ecff66ae36d0bc7f13bfe1a702a1cc91a7a291abdd77ab',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 19:41:56',
                                    '2021-05-24 19:41:56',
                                    '2022-05-24 19:41:56'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '509262e273e40fa615ba43aa8586b48e6a3436fb0ff7120414fe0c72b4640192529a68bfb3b2976d',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 19:58:01',
                                    '2021-05-24 19:58:01',
                                    '2022-05-24 19:58:01'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2d79f34dce37a91f5e7cd1100171cafcf6132044482b533433868a4bef70fb38688341169b840d31',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 20:07:49',
                                    '2021-05-24 20:07:49',
                                    '2022-05-24 20:07:49'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '4c580a8ecf722908b4eec00bcf04de06ef97557a9906196acf5a91e7bf82de4491271b295da6208e',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 20:08:04',
                                    '2021-05-24 20:08:04',
                                    '2022-05-24 20:08:04'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '5cddd1347dc43e01bb566e042def9f0ad2f819151101d11fde0eee04be473d9c9860d340ee750e6e',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 21:40:12',
                                    '2021-05-24 21:40:12',
                                    '2022-05-24 21:40:12'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '5634dade1c0f24ac846967dc2dc49ecfd2fe9250ae7253e85155e0d28c79f568c08c049b37c5c2f1',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 21:40:37',
                                    '2021-05-24 21:40:37',
                                    '2022-05-24 21:40:37'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '63b01cf7e0b852f08311a59a763202a14bac5a8e5fa5519d8461e2ce50deaf546456c035df33985c',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 21:41:57',
                                    '2021-05-24 21:41:57',
                                    '2022-05-24 21:41:57'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '05b21bab56bfbd659d497e7a40bb2e200db9622b6ab649805f034e9f4ec4faa2ec4239a4f193add2',
                                    22,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 22:37:04',
                                    '2021-05-24 22:37:04',
                                    '2022-05-24 22:37:04'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '0dc4a7c797f83c287dc63ce75107e8604f699f08ca014298a2a4a6dc1031c455578f5fd1a25045bd',
                                    22,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 22:42:29',
                                    '2021-05-24 22:42:29',
                                    '2022-05-24 22:42:29'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c80feccb81f4e92a98fd8c1cd9cb52dd26aacb89154dcf80604e668cc3d1e4ec091d44388576ec3e',
                                    23,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 22:45:08',
                                    '2021-05-24 22:45:08',
                                    '2022-05-24 22:45:08'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6800eb12f7ffb19b96367934d76195b642171a71ea42590cf348c04a534e6868716b23a81f9c56df',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 22:45:48',
                                    '2021-05-24 22:45:48',
                                    '2022-05-24 22:45:48'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '3ea997d830d603ef6b40b34b99e1b2e8d5df0d3b0e46c0fff8364b3aac49b28355e629dc4b3bfbf7',
                                    24,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-24 22:46:57',
                                    '2021-05-24 22:46:57',
                                    '2022-05-24 22:46:57'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2f462b8d51550481d324588275bc478998d9fb01025381e87a97689f966456c09fec5192427a88e4',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 00:53:57',
                                    '2021-05-25 00:53:57',
                                    '2022-05-25 00:53:57'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c552848fab8d11d82b07e1faf075d5340aee0d798c4d8629bce47d12a9b0bd0ae04a60177456a0ae',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 00:57:34',
                                    '2021-05-25 00:57:34',
                                    '2022-05-25 00:57:34'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'aaaefe201332b44e6b57a1c52227635538ecb6e12be3acbcabedfe5f6d3570fe07199fee43174046',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 01:10:42',
                                    '2021-05-25 01:10:42',
                                    '2022-05-25 01:10:42'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f80ad80cb3ece26f8ec3b0618e4607b23c40f140bfdcf957bcc4eb722cc6ffd218da7fecbdc00312',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 01:16:54',
                                    '2021-05-25 01:16:54',
                                    '2022-05-25 01:16:54'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'd28f4ef6411b55cce004ab1c80b1792dff422a47c693d765d135df04084c5a87e55b390de062dbe5',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 01:20:03',
                                    '2021-05-25 01:20:03',
                                    '2022-05-25 01:20:03'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a7f347c00d8c9a741f6fc054922bf35166e44a253654379520a16004d12115b5e7ac0a889b6f6392',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 01:47:57',
                                    '2021-05-25 01:47:57',
                                    '2022-05-25 01:47:57'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '31f74d42cd7107787002e3f4f6992e47345cd6950506e3d97e95b805ff4b90a018694d5f391593e6',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 01:49:24',
                                    '2021-05-25 01:49:24',
                                    '2022-05-25 01:49:24'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '27110583091ba1657aa1b57573a61e365aeedc59a255f9ce5552228b072fa37072f6c54c320c6542',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 01:52:41',
                                    '2021-05-25 01:52:41',
                                    '2022-05-25 01:52:41'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '48d5bd0d4ccb2f86cdb3069115dd7152df19a8353eaee1be81bd36b8004b1bbacca8815aa709be9f',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 01:56:44',
                                    '2021-05-25 01:56:44',
                                    '2022-05-25 01:56:44'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'cdf278abc3a80c194320d015b3a109800b1313e556476456bae1fe61918948f17e3f118dadf8a2ca',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 02:01:03',
                                    '2021-05-25 02:01:03',
                                    '2022-05-25 02:01:03'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a14f87f6489e6b3e2325a3035ecda09ef82a81613f3c0bafef68abc600bd9dd17f427e7eea275b5d',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 02:01:47',
                                    '2021-05-25 02:01:47',
                                    '2022-05-25 02:01:47'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'd8dbe0aaede6ee887b3d43335f9b2e97a0bc53a2510a755fbd110521e48000c31f84282261090163',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 02:20:58',
                                    '2021-05-25 02:20:58',
                                    '2022-05-25 02:20:58'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '9c5bdd36343031bc684f4f0fd1c5d6fc28e66941629de1bf21ae83f7836d9773d0d3b6affefa6d3a',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 02:23:15',
                                    '2021-05-25 02:23:15',
                                    '2022-05-25 02:23:15'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '518f9ddb01d0b978a88f029a07ee7fca75f867e0261519d1ac37baeea9a83eb69716e6622608d411',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 02:34:55',
                                    '2021-05-25 02:34:55',
                                    '2022-05-25 02:34:55'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '085d8a1e48318f536a9905e534d4e2835ab62df8baf6b6b46a708474fc6aa5fa7885e0e6088d1714',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 02:41:24',
                                    '2021-05-25 02:41:24',
                                    '2022-05-25 02:41:24'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a0981be428d1a443f9c1aec6caca33fb5d1a13375b4dc994cfbbad95785e42fa4643a8297517fe19',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 02:42:30',
                                    '2021-05-25 02:42:30',
                                    '2022-05-25 02:42:30'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1e02df961ba3953a35a7b1ed853704752af5ab3f27f7257d428fbc28fd15dceb26dd75913a76e693',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 02:42:49',
                                    '2021-05-25 02:42:49',
                                    '2022-05-25 02:42:49'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f0eaceae258563742f136bd8c29ad1c70af20564c6f12b90ca132cb2ae5d675073ebe78ca384d7f6',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 02:50:06',
                                    '2021-05-25 02:50:06',
                                    '2022-05-25 02:50:06'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '03c087f9c76dcf97fa319c505b3e5ed6f1c4e91066d30023bb27c5aa82223d6aabfb9fd2218a4d59',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 02:53:19',
                                    '2021-05-25 02:53:19',
                                    '2022-05-25 02:53:19'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '46232fda78cc7ea3d65bde055ca2186f3ba7ebe0a1de716ab54e1a2e0119fb984a0fe39ad62ee2d4',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 02:54:52',
                                    '2021-05-25 02:54:52',
                                    '2022-05-25 02:54:52'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1fa6216f2d31f6589f8ebb57ef9252d175707b1f9c88d2dd3ace154462b371f18ced237edbd84cfd',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 02:56:28',
                                    '2021-05-25 02:56:28',
                                    '2022-05-25 02:56:28'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '118834ad1f0e2a0e6fbb810ab73f4b64dd6b985bd8b84ac9792cb7ba90e2ec9833f316dce46f232c',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 02:57:41',
                                    '2021-05-25 02:57:41',
                                    '2022-05-25 02:57:41'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '39a8c3fed65d3a3ae4bffa91089ae050f44042d14bd8eb30e052e99e04828ece77ff76d3bab1766a',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 02:58:14',
                                    '2021-05-25 02:58:14',
                                    '2022-05-25 02:58:14'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'e74db19f6a69cb7116b7c078f048af28be67f619482357099aa044181599d5d1aaefabd6a60d28f5',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 02:58:27',
                                    '2021-05-25 02:58:27',
                                    '2022-05-25 02:58:27'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '778d9bf5e09f66e6d5a4c9ac505b10306b5a8d0ede09d0537be0780d76e0ac2f676e71ec9b87a047',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 02:58:40',
                                    '2021-05-25 02:58:40',
                                    '2022-05-25 02:58:40'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '238e5ceaa5cf8a0d7eec26593844e7014fb70338195c46d28dcc08a01e900c70114aecf1f7de3882',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 02:58:50',
                                    '2021-05-25 02:58:50',
                                    '2022-05-25 02:58:50'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a199abf6e2da3eace2d2cfe003d15f7421385effd64ad2327b4e4d984826f5470795beef7ddf4241',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 02:58:57',
                                    '2021-05-25 02:58:57',
                                    '2022-05-25 02:58:57'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c3284b7ac79da2bce537d106de484bf8ad3354b8d67dfbd32b74812d2fc702d4c7865d037a8b5271',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 03:03:30',
                                    '2021-05-25 03:03:30',
                                    '2022-05-25 03:03:30'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'bb708bebdd70b29f7824b2c5abbf0dd4e0d6e7cdc7c1c6c81c2cc63447f1561ec07f24246ca56689',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 03:04:07',
                                    '2021-05-25 03:04:07',
                                    '2022-05-25 03:04:07'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '9a9e289777d6b4ae8380717c7959fe8e0f63a1f72c85c522f93051f10c34a811c0f6fcef95bbb0b8',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 03:04:19',
                                    '2021-05-25 03:04:19',
                                    '2022-05-25 03:04:19'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'e09ef418fc452cd80d33caa589e8af546824262db7ef0cb69e8dd7397792a1a4b35cfeae669656e5',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 03:04:39',
                                    '2021-05-25 03:04:39',
                                    '2022-05-25 03:04:39'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '7b1f31db0489f2d289cb37134003b645d22f86e79e37b1eb304dce4a4d4745089603e44c503a5905',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 03:05:07',
                                    '2021-05-25 03:05:07',
                                    '2022-05-25 03:05:07'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '30e4e2251934a88ee8e5f61f0dca1b43f66aeddbe6438afe9f3561634879793e8111e5a9ad7945c3',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 03:07:56',
                                    '2021-05-25 03:07:56',
                                    '2022-05-25 03:07:56'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '7f46f3aa5f57060cb468c402024b00d9e2f1f39d5f091bf7c641cc25f91c75ba9ab0daf92e1f6fea',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 03:08:20',
                                    '2021-05-25 03:08:20',
                                    '2022-05-25 03:08:20'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'fc3e4d82e68d0f9c0177ba6d8a83ec42b1856da192a219acaaac0b1e8cd63071d1c71985bbb2b5ee',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 04:18:48',
                                    '2021-05-25 04:18:48',
                                    '2022-05-25 04:18:48'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '05553e68ed499a2430748c7987f824714ce6905d596f6dab5f8ff83e9ef93e5e49d97ed797eddab9',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 04:42:55',
                                    '2021-05-25 04:42:55',
                                    '2022-05-25 04:42:55'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '460570996f56817d68e80fc360cdd8e5831a72f4aea91afaa40f614575fc752044dbed96ffe51b03',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 04:45:34',
                                    '2021-05-25 04:45:34',
                                    '2022-05-25 04:45:34'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c4e4d5236b5f71e8f71186fec3ff397ec03e1fed675f557ec1639df1f1086eaf1a726e3abeda54a2',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 04:46:35',
                                    '2021-05-25 04:46:35',
                                    '2022-05-25 04:46:35'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f69490bd307f26b7e81a396839fa4b450aad7c71895283cee22dc972f956bf530a166f0531fb852b',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 04:53:43',
                                    '2021-05-25 04:53:43',
                                    '2022-05-25 04:53:43'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '29f0dc3e4e4b0d057deb1aedc69bb034d1cb262f37488fa7f6d10a4018ed9c9f6cd7cadb83ebc58a',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 04:57:47',
                                    '2021-05-25 04:57:47',
                                    '2022-05-25 04:57:47'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b0b540d341846aaf5a4897d98f72da2572308d89e4e79a40be6e3895dcbcf8bbc448c5a0cf8f40c1',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 05:02:18',
                                    '2021-05-25 05:02:18',
                                    '2022-05-25 05:02:18'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '9da8e65c500f75713f0e82108d292689bd76a3b6ad6c9b5ee34400001fbb2d8f3bb7ddaa2af71487',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 05:10:14',
                                    '2021-05-25 05:10:14',
                                    '2022-05-25 05:10:14'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c17f887e7be0600910443c611b24612fb7c1307baa2cd6c76c6a5447fb9e760b71dfb94dfeddfb0e',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 05:10:50',
                                    '2021-05-25 05:10:50',
                                    '2022-05-25 05:10:50'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '71b61b17e595d78527edc12f96341c8a76e7ae3c06b4482478b93e4b478a91c8374497dac71f90de',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 05:17:07',
                                    '2021-05-25 05:17:07',
                                    '2022-05-25 05:17:07'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '633d82eb55f95d9a3a3cb2c9257e3f5c4102891bd75d3091bef1099442471c0fa4f634468094ee64',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 06:07:20',
                                    '2021-05-25 06:07:20',
                                    '2022-05-25 06:07:20'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'def8256451d8be6b5a5904b23ff1a1b49e8c2e665fe7b083a1d22d2ed42ce6b3972ba9ae1256824f',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 06:08:15',
                                    '2021-05-25 06:08:15',
                                    '2022-05-25 06:08:15'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '81eac7dd801bc06809eb25b556b80584e92da07bfc01cad4001c01e113ec17db2a2a03904d7d9388',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 06:18:40',
                                    '2021-05-25 06:18:40',
                                    '2022-05-25 06:18:40'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ef649f28f436a0a1104f84634d5b7d6d772f4ee6022f8635dc843796888354a7e1682fe6c1622b00',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 06:19:03',
                                    '2021-05-25 06:19:03',
                                    '2022-05-25 06:19:03'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ab14638b133530d104357ec31b8d4fe52a45120ef92ab027074718af184ed06d9c2c6c452898b3c7',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 06:20:08',
                                    '2021-05-25 06:20:08',
                                    '2022-05-25 06:20:08'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '338ec58fb1a235f92e8239fcc55152cc396e1c586277004e736ead173e65759b892df47c03b52625',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 06:25:01',
                                    '2021-05-25 06:25:01',
                                    '2022-05-25 06:25:01'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f04cabc3a2630c17cc51bd4e9b77952aa333b9991ad506d6970ee4f8c1971f33b57825ddc339582d',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 06:29:14',
                                    '2021-05-25 06:29:14',
                                    '2022-05-25 06:29:14'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '881c6c0612c6ca61e4138f509f1b0620c8a75078e722e0b268f5cf4e2213e8c2f033ccbdc2739dc3',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 06:30:30',
                                    '2021-05-25 06:30:30',
                                    '2022-05-25 06:30:30'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '591ae6cbfc681cf37c6da75beb7bdbb2ed5fd718e6296020787b94dc7344ce0548fafb999da8d4bf',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 06:30:58',
                                    '2021-05-25 06:30:58',
                                    '2022-05-25 06:30:58'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '815733a49836b42a6d5081dcc2ca4b509bb23a0fd74f3534c164d5ddb5994389f14e8cd666d3d82b',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 06:32:20',
                                    '2021-05-25 06:32:20',
                                    '2022-05-25 06:32:20'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1192a3fc92a6c7c9ace3c1056f8316aaa2303dd204b06b6281e45df3804131965bf4d00570d8a9a6',
                                    4,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 06:49:19',
                                    '2021-05-25 06:49:19',
                                    '2022-05-25 06:49:19'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'd8c70f7405317fb6bd0140b18c8d1231b1b81543d77aa0eb8788626dd109e3b177dfb39546e8dd7e',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 13:54:11',
                                    '2021-05-25 13:54:11',
                                    '2022-05-25 13:54:11'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '422193ff4d99e5875ded2c43db650f3dfd4e82902564edd30c7f5ad9b9c0d79794b3ad9ee8ff5f19',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 13:54:29',
                                    '2021-05-25 13:54:29',
                                    '2022-05-25 13:54:29'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '3832de365f944118290bdc3d4e9b14788e9d01ee6ae9c2348e9b2c6c9314d787d8ea9d72e8a12646',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 13:54:37',
                                    '2021-05-25 13:54:37',
                                    '2022-05-25 13:54:37'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a432e585d09124b9aa851732f2d01feed287d3302608a6cfa5c13525282e37dcece08b6d4e3a8311',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 13:54:45',
                                    '2021-05-25 13:54:45',
                                    '2022-05-25 13:54:45'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'fadb55f3f51c1612c9a9012aca4a998e0c6752badb47f28b70166eb0e7f64199baf59f57fd2e0b70',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 13:59:02',
                                    '2021-05-25 13:59:02',
                                    '2022-05-25 13:59:02'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '425e67ea814608737dd894cebc94a6ff55022ec315e555e35442162ffdf5805b55bb061e0a63dc19',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:06:14',
                                    '2021-05-25 14:06:14',
                                    '2022-05-25 14:06:14'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '5a599ec90c0250e31824feb6e3207de97ddc21cf5c28f66bc987f44de60f3639f64d6c6172facdb1',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:06:20',
                                    '2021-05-25 14:06:20',
                                    '2022-05-25 14:06:20'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '787fd5bfe7006a40e117ee25c0f98e01f847c8e8c56449af2d00badce272c5d700a6d3a48896943e',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:06:40',
                                    '2021-05-25 14:06:40',
                                    '2022-05-25 14:06:40'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'aa5986edb5892ceff1ecf31409ef1e0ad72fa712defb3208dce0f36d8267c016e99ae0d61026e79a',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:06:44',
                                    '2021-05-25 14:06:44',
                                    '2022-05-25 14:06:44'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '8c4e964a928ed3a460653e1d4468845d815269050cf4b922d2517b77b90420e2a61849cf3d6f2c63',
                                    17,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:06:49',
                                    '2021-05-25 14:06:49',
                                    '2022-05-25 14:06:49'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a1048b0d1693ca8fd458121bc4f264919402d1abf4c84fb1e0b2bc788309317bacdaaba6198b0ff3',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:06:56',
                                    '2021-05-25 14:06:56',
                                    '2022-05-25 14:06:56'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '205ee057c62f00dbf58103503a0c0c852eb6dfa3c4ad874877089eec9a5df8c498e0a5f66c6aaeb2',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:07:07',
                                    '2021-05-25 14:07:07',
                                    '2022-05-25 14:07:07'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '0d1ab9af1f9ead4f1ef3e644679d2b3ca53ece8657d602e65d32121f444cee69bf8cd895ede24197',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:17:06',
                                    '2021-05-25 14:17:06',
                                    '2022-05-25 14:17:06'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c182e031297cd9ee032beacdb981dd07b3d9dc09b2f5325022222488c89c475eaa6108420b610ae7',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:17:27',
                                    '2021-05-25 14:17:27',
                                    '2022-05-25 14:17:27'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '0ceceedc4395a834bf804fe432890c2ad78fd6da30a0dc95c3d9d2596345b20b4b6b0bf58207f898',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:17:36',
                                    '2021-05-25 14:17:36',
                                    '2022-05-25 14:17:36'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'e3c81c3ebe41038d59c6c90d8ac2677ada84dba02dddba9bc51c2ef95f3a69319c85f75b7637402d',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:17:44',
                                    '2021-05-25 14:17:44',
                                    '2022-05-25 14:17:44'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c03a2045845e197dcec118dc8b24f27e562f983bc00e3724ba6608bf3878a90f9a4f4521e1eab91e',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:17:54',
                                    '2021-05-25 14:17:54',
                                    '2022-05-25 14:17:54'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c4173a4b165937efe9e1ab53998182242e27d352da01dda7982efa33a49d2bf28e3b070a59028438',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:18:02',
                                    '2021-05-25 14:18:02',
                                    '2022-05-25 14:18:02'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a55e8a6471d0ee631d5d62e2b6f1557849fca650a462010cd5e1970c7c860a227773da59e7ee623b',
                                    21,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:18:09',
                                    '2021-05-25 14:18:09',
                                    '2022-05-25 14:18:09'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '105843a3a8968f405dd04da558833ec90b54071429124318a7734d8d659fb777062427c9aef3a4b6',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:18:21',
                                    '2021-05-25 14:18:21',
                                    '2022-05-25 14:18:21'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '82a4658b759f0e68b9428f8803c07972dad3b9c3878a03daa3d402cd2e53f3b488da0a65af93e3e1',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:18:34',
                                    '2021-05-25 14:18:34',
                                    '2022-05-25 14:18:34'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'e9469131c330f6013ae1f645ced23d36452c9d73995c35fb3f6c7db149ea24d37d31f746da6115bb',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:21:41',
                                    '2021-05-25 14:21:41',
                                    '2022-05-25 14:21:41'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f182d9a6d90fc61136969f985834502ab57a6b3d4598f5761bd1ea38292a8782bf83ffaa54562733',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:21:47',
                                    '2021-05-25 14:21:47',
                                    '2022-05-25 14:21:47'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '601697c5dbd37d9fbaa7c24fbbdd7150309495f33f88dec4954212fdb403a6810d562e82e7220ba3',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:21:55',
                                    '2021-05-25 14:21:55',
                                    '2022-05-25 14:21:55'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '666122cd703e7d30d264eb4174803e8a16418d2647136d187ebfc8c350d25e5c49ff3b3684036803',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:22:07',
                                    '2021-05-25 14:22:07',
                                    '2022-05-25 14:22:07'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a4f6d4a93b2158528802fb1bab80e63ad21a2173dc4c3332c214bb011ff51bb34dad81c2b67b878a',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:22:23',
                                    '2021-05-25 14:22:23',
                                    '2022-05-25 14:22:23'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '99f0de96ab05dd3b4fcc795605a75912bc00bc03aaf1632d05b48415145b01c172a1d2456b44a795',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:29:04',
                                    '2021-05-25 14:29:04',
                                    '2022-05-25 14:29:04'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '733ff3d76abe334845d3bed05ee84f66f9dcd72758b683d0e5976ef8a4e77f5f4ed2a2cc51ef99c9',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:30:49',
                                    '2021-05-25 14:30:49',
                                    '2022-05-25 14:30:49'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c3904a730762f02bde57740df2dac1f0f0ce07e46737603f383c07c461919c96f72b33f2224e5afe',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:31:20',
                                    '2021-05-25 14:31:20',
                                    '2022-05-25 14:31:20'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'e57336a3a2e8273c18a639128743ad999f159f91457cd5eaf78e2cf0da5a82b8767ecd1e47c71aaa',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:32:13',
                                    '2021-05-25 14:32:13',
                                    '2022-05-25 14:32:13'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'e3172052b44ae7cf9f73bcc4db0678d076c08ec173c3cfef1ffacf092b950c0241deaf35f8694991',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:41:54',
                                    '2021-05-25 14:41:54',
                                    '2022-05-25 14:41:54'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'bec84c8b279b37d48a0db1fb3eab1c36245077b4412218deb292012dca336d775553dc3e0a2d2278',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:42:21',
                                    '2021-05-25 14:42:21',
                                    '2022-05-25 14:42:21'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '20bf33357cc67a7062052ad5a816d8e42f2bc5d60cca529fd4acd96f582479598fd3af5546183cb4',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:43:48',
                                    '2021-05-25 14:43:48',
                                    '2022-05-25 14:43:48'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '98b0dbee415c0130ee9d0a3d63b86e75af3aba001ebe4eb38c57adcf890d43a2954213b9f091afd1',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:45:24',
                                    '2021-05-25 14:45:24',
                                    '2022-05-25 14:45:24'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2940d208286a5ba32d460a2e6b60bfa0cddef736a0c9f430458852adaf2e2b41443eafa384572c1c',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:46:54',
                                    '2021-05-25 14:46:54',
                                    '2022-05-25 14:46:54'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ae9dfbece981389130214a3b9173084317b38e92e7417b20ede7a4d464eee05ae3ce5cbe785b2c76',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:47:39',
                                    '2021-05-25 14:47:39',
                                    '2022-05-25 14:47:39'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a453cb9efd8370abd5d07c2716d3f95f8d18a3d7160f0d60a5662de12029dbf03a0dfac4bdfc525e',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:49:19',
                                    '2021-05-25 14:49:19',
                                    '2022-05-25 14:49:19'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c38cb10ee6825ca9f3059377aa6c6303085b5cbad8434c31b039bcffd2653cc07e8c1817e846303b',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:51:35',
                                    '2021-05-25 14:51:35',
                                    '2022-05-25 14:51:35'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '9a6413f5cb29411b9ee0aa0cde63fa832a3e5f9b863856cd5b65517240ac002a1ebc4cac1cd5a4b3',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:54:42',
                                    '2021-05-25 14:54:42',
                                    '2022-05-25 14:54:42'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ef96d396c2ec9485a4fa1cbfd7056b650aa5b5b5d53be5186cd1c1df691b45e74353a6035c63fde3',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 14:59:22',
                                    '2021-05-25 14:59:22',
                                    '2022-05-25 14:59:22'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '983fcfd483bc7e72edd11b5128a7d0cb4b7119d466e84f6315931c2c6c11bc92bf2728e1e13ca38e',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:00:09',
                                    '2021-05-25 15:00:09',
                                    '2022-05-25 15:00:09'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f9da52db5dcb676af1722c8bd3b8bf55627f66864c4752a6d8c180c9c1dea93035392ba54873f149',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:00:20',
                                    '2021-05-25 15:00:20',
                                    '2022-05-25 15:00:20'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f2687b194d2f5b4cd61989d2d85adb3b105f6cd816334123142bda57ffd456280e462cdb39edf70a',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:00:35',
                                    '2021-05-25 15:00:35',
                                    '2022-05-25 15:00:35'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a4eaf86b06b77b8c0cffe43f2db0a45ac3a09e21c777ee302b4af29afe2774be8a7b1989dcd3f6ee',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:00:46',
                                    '2021-05-25 15:00:46',
                                    '2022-05-25 15:00:46'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '744cc6ae69e88d7b9cb2a5d467808d9c20b042af9ff4770c5ce88a997e2d6da43212deedf900017e',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:01:21',
                                    '2021-05-25 15:01:21',
                                    '2022-05-25 15:01:21'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '22dc9e0d302cf1c4e18d19a3ff1e9a359f64311a79568687880352e0579e138cdc4af4d0f10f80ea',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:02:50',
                                    '2021-05-25 15:02:50',
                                    '2022-05-25 15:02:50'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c7f44401fdb0a27fa92429089bdc4dfc353e3385fc4da1e738999ea3051c64019b69b5dc0877ac79',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:07:43',
                                    '2021-05-25 15:07:43',
                                    '2022-05-25 15:07:43'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '106ae7e327ea1bc85d0d537f222022887d15926ffb45a84713d6cc8e1d2d1ca25570338e967dad2b',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:07:57',
                                    '2021-05-25 15:07:57',
                                    '2022-05-25 15:07:57'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'df9551774c7cde8ee9e9eb62f4502ccf9c18ceffce2b3d204c152de01f1627c1d8d64cea97a171ea',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:08:07',
                                    '2021-05-25 15:08:07',
                                    '2022-05-25 15:08:07'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '45057a39c9b375e32774ab44f8e9766eb3988cbb4f6c6cfec3a73836061afb8384ca11061d1c9b03',
                                    9,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:08:11',
                                    '2021-05-25 15:08:11',
                                    '2022-05-25 15:08:11'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f146a3cf791ca26091dee80a4e3f10df36a92bfd7000b5cb34737ee096ba95818110444ddc0ad1db',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:10:12',
                                    '2021-05-25 15:10:12',
                                    '2022-05-25 15:10:12'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '8b17a26e9e9fc58b50e2827310e3cdf298147164312ff9002094db78b4171f6978054de164d1bf13',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:10:31',
                                    '2021-05-25 15:10:31',
                                    '2022-05-25 15:10:31'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a966967df21e784c3e2553b819ccc129518e1667dab2235265d7cdfff6b8527fa5e0fca6779b63e3',
                                    21,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:10:51',
                                    '2021-05-25 15:10:51',
                                    '2022-05-25 15:10:51'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'dc66c7479eea0e34f9f8381b613fa5176b74af2d0ede14425413a97d08af03f67c705ab0604cac65',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:11:56',
                                    '2021-05-25 15:11:56',
                                    '2022-05-25 15:11:56'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '20a4f74cf6ae8944b099707b2d0760b5c18363facd2b7c79467a9ffe8d0f54e7df303825bda9eb08',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:12:04',
                                    '2021-05-25 15:12:04',
                                    '2022-05-25 15:12:04'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6723783aad6b2f19a3ee61b599fea2fcbc73605239afca6ed4e219cd5c543edfc91e644421b19bf6',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:13:38',
                                    '2021-05-25 15:13:38',
                                    '2022-05-25 15:13:38'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '4b89dba75694a0e966660994c124dec9a4a01516857da9cd4867877c5eb0952826cac2b3322a3f81',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:13:49',
                                    '2021-05-25 15:13:49',
                                    '2022-05-25 15:13:49'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c792e0ef02fc7e327596c181a87a555c0e6e5f4f1967bf4318c529d92ae5d26822123d504b58e9b2',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:14:18',
                                    '2021-05-25 15:14:18',
                                    '2022-05-25 15:14:18'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '4291e7349a5f936192ea7f145d3eb075e9c86de7df509dfcd6539ccc4e4b734005c43cf8bca46f8c',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:14:28',
                                    '2021-05-25 15:14:28',
                                    '2022-05-25 15:14:28'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c4aee4df9f8e1f4bb042c7e129593f24db2e86c79159c63f1d6352e3bd519c947380b1304987aee6',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:14:53',
                                    '2021-05-25 15:14:53',
                                    '2022-05-25 15:14:53'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '74867ebf35f5e7ad62632c41c1f624baffac2b1877731a4fd7ed5e41e92d48b58219da1bce41fe7e',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:15:05',
                                    '2021-05-25 15:15:05',
                                    '2022-05-25 15:15:05'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '33340e78898e87af4e662deee2a3b37140dd8a1c0f51b4fe5760475c923667bc7dc1e5850276a28a',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:15:13',
                                    '2021-05-25 15:15:13',
                                    '2022-05-25 15:15:13'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a6a77305d5c3211087ecd1021501bdd99c2a578d5486b88c7d9007bebe2f6781d47ec9bc00ec3152',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:15:42',
                                    '2021-05-25 15:15:42',
                                    '2022-05-25 15:15:42'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '5e6beaf9312e7e9b4995df6f235b99102c73304066e96cf998d9a12eb050e6fe772718ee37f9328b',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:15:49',
                                    '2021-05-25 15:15:49',
                                    '2022-05-25 15:15:49'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '8111b58719b7bea2550e17df850410c6da71aadf05ef9cb240c0c686865c22f19357f7f8c921a203',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:15:56',
                                    '2021-05-25 15:15:56',
                                    '2022-05-25 15:15:56'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '9ef0dda216eed58c9dcf1a5a09548840b2c5b20e7d05a7ff2806e5936ec741eb3368785f0e538193',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:43:13',
                                    '2021-05-25 15:43:13',
                                    '2022-05-25 15:43:13'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '06831f771d3eda8dde778aa4bf14f3803b62cb168d609745e91b9d1be3fcbc7092d83d01367e6130',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:43:19',
                                    '2021-05-25 15:43:19',
                                    '2022-05-25 15:43:19'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ae8d7f3ba9c8d25f256521b7046407278d9e199a5459018760b4091bddbaf5e8843d66b74d346d6c',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:43:26',
                                    '2021-05-25 15:43:26',
                                    '2022-05-25 15:43:26'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c02ae9bc34f141d4ef1767cb2c2aeabf0ac49794aef55a8ade24772590d9bd26ca0ac820ca46ae8b',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:43:33',
                                    '2021-05-25 15:43:33',
                                    '2022-05-25 15:43:33'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '81d7529fcfa13aaf22c38237f955405774c853e966b0418b2741577077b81aa89fd3d753fad20543',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:43:41',
                                    '2021-05-25 15:43:41',
                                    '2022-05-25 15:43:41'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1c89affc3c1d1dd7edab09d8eb77683e7ee128b6f66766b1c7d7a9837f26853998c74d76fcbecddd',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:44:16',
                                    '2021-05-25 15:44:16',
                                    '2022-05-25 15:44:16'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2acc7fdcdc75e6200b1eaad4fcd5600fbff86e99d55a3916b4b58cf3fdf3a835b848c571c408aa8b',
                                    21,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:44:22',
                                    '2021-05-25 15:44:22',
                                    '2022-05-25 15:44:22'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '841df3c0c4fcc6de67340527ed9f113b3b37d43e5f197695e1c7953f360817ade5ada2a35f28c930',
                                    21,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 15:55:22',
                                    '2021-05-25 15:55:22',
                                    '2022-05-25 15:55:22'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f504a31b19ce67f434694f25eedb7c4b33d7aeee16942fa032dc344f077a06b0d5799235bca51af3',
                                    21,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 16:38:25',
                                    '2021-05-25 16:38:25',
                                    '2022-05-25 16:38:25'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '49dc27a27373c60c1fa6f6de6cfadbb973343ec282bdac96e8ad9f56332c7191d3e7b0fcd0a4ce31',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 16:54:27',
                                    '2021-05-25 16:54:27',
                                    '2022-05-25 16:54:27'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a8c5ac578fa9a7fb054a3a2ad7cb089623928dc7a32816111e9ce49b1b16b2fc0c5d20511061c58a',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 16:58:12',
                                    '2021-05-25 16:58:12',
                                    '2022-05-25 16:58:12'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '4f3b8b0d9394bfc78a2cfa8768f1469db7a62235d2861b2914e7eebe90196b179463684649b37630',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 17:05:57',
                                    '2021-05-25 17:05:57',
                                    '2022-05-25 17:05:57'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '79108301f6896b9792473d93f285934cad207c8b36356cac0a6531972f13abd715ac0c866234c98a',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 17:06:29',
                                    '2021-05-25 17:06:29',
                                    '2022-05-25 17:06:29'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6574846f9d3f20b358544edaf0da2f14c616ac76bfb5de9bd9e2755062c2188ecc118987f81f6aac',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 17:07:42',
                                    '2021-05-25 17:07:42',
                                    '2022-05-25 17:07:42'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2e013374964d1b5f1cfe36562a900151b226c58c3e2f68f126a8ebd36c763fa5c785207ee18a087e',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 17:07:51',
                                    '2021-05-25 17:07:51',
                                    '2022-05-25 17:07:51'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '5a50c55376552aeba57c2adb45584fbb7adae556d4bc9d25629490af41c648c7dc78ca96bdd6bccf',
                                    19,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 17:08:11',
                                    '2021-05-25 17:08:11',
                                    '2022-05-25 17:08:11'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2cd0efc64b5fcdca6da6e3b6d74e88f5e13fbd9a47079d9991a6caabaef74f2494f8f30c2fa85c82',
                                    19,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 17:08:44',
                                    '2021-05-25 17:08:44',
                                    '2022-05-25 17:08:44'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'cd484a5ae851da82cadcd63b91d46d5e9992735a9fbdb45a23b473bc770a30ad3de24e50eb5fa6a8',
                                    19,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 17:09:06',
                                    '2021-05-25 17:09:06',
                                    '2022-05-25 17:09:06'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'cd0f124e36d07a32f47e9ef4e116681e5b2c09f176213c1bbfd08973f1c695cfeffefca5049261c9',
                                    19,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 17:11:16',
                                    '2021-05-25 17:11:16',
                                    '2022-05-25 17:11:16'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'fbc8ff75b6e5d64675ee2da42dd0ebf96f6c0458c7cdcac100bed8d2547379e8af98a2a3f1936fdc',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 17:12:10',
                                    '2021-05-25 17:12:10',
                                    '2022-05-25 17:12:10'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6936ab3f4f996faee72b28200e21c3d1881bda0d5d40c5670884b2aee706a229e961e2ad19ce1387',
                                    19,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 17:13:13',
                                    '2021-05-25 17:13:13',
                                    '2022-05-25 17:13:13'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'eb342d6cd83e3c9f8f8225fcca82114f653479c58dd23e06f52824bdc2f4a47249b313448bb98107',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 17:13:20',
                                    '2021-05-25 17:13:20',
                                    '2022-05-25 17:13:20'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '26c782179c6064f868a747cc4994ff4b8131dce36ce95bc57ce880013d32dc02fbb62820ef95bd38',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 18:23:35',
                                    '2021-05-25 18:23:35',
                                    '2022-05-25 18:23:35'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '79cd7a6b2776a712b7679252577784a75a446eeeba36a5181a96fa7f6d059f77f902d6bcbb6642a0',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 18:23:43',
                                    '2021-05-25 18:23:43',
                                    '2022-05-25 18:23:43'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '10579c398a7ee4185c8ff86953cea8f2ccbe601894d2aeb4d9476e72af3a68bd7d41de403ba664ee',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 18:57:31',
                                    '2021-05-25 18:57:31',
                                    '2022-05-25 18:57:31'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '801db3a0c094bca74746db3f2b0d61ac99b59cf5881bf32586d25baa2fa149d515edc8ae426ffcd3',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 19:15:16',
                                    '2021-05-25 19:15:16',
                                    '2022-05-25 19:15:16'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '82294fd24e93bd52f6c26dc370ff28005b200d701d15775d11f343f71b3f2e6eda77234584b13a98',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 19:17:02',
                                    '2021-05-25 19:17:02',
                                    '2022-05-25 19:17:02'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '8a289b195d60701ae4876745a4879323b84ffac9f8af0238b1661f2d902123d5afd7b3666aaf64ba',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 19:35:14',
                                    '2021-05-25 19:35:14',
                                    '2022-05-25 19:35:14'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'bde60a79e4da37f98703fc3646b15a21c50316a0840b83f656481b98bb1d23121da8c55542ccaa7f',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 19:35:38',
                                    '2021-05-25 19:35:38',
                                    '2022-05-25 19:35:38'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2446e3b03f9ddef5a82a90136a9c473b275ca72b71befb09da0430c02d0f3bcbb87f1c977f03740e',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 19:36:22',
                                    '2021-05-25 19:36:22',
                                    '2022-05-25 19:36:22'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '95ea26fd5b93ea09a853b75076c3329cc6a94a36ed384a92dbfc13b6ac753ce9a5173ca02026fc08',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 19:42:38',
                                    '2021-05-25 19:42:38',
                                    '2022-05-25 19:42:38'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '9b9ac2d988fde4e46dbda0aa9c4b9023848801759157000354aae512df29bdd0877497575d961f4b',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 19:49:43',
                                    '2021-05-25 19:49:43',
                                    '2022-05-25 19:49:43'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'd066d579b81eee3038b7a0ac9c2d678b34abc2aa6e69bded8f0a31b01a0870ed82829b109ffe244d',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 20:19:39',
                                    '2021-05-25 20:19:39',
                                    '2022-05-25 20:19:39'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b54707780bf95ead54e736767338549e5b300eb202bbfea1add7f7c63a13e3b2ea06db0583ef6d47',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 20:21:27',
                                    '2021-05-25 20:21:27',
                                    '2022-05-25 20:21:27'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '496457aa29aa7f7fff8bad7ab4b0ae3e54c9f9079cf0a2a78b0efdeeb03ffd99cf75b5653081cb3f',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 20:27:52',
                                    '2021-05-25 20:27:52',
                                    '2022-05-25 20:27:52'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'fc09c39e19de6f5204799c30232a524ed09f8289da397da8cdf8f242df3ec9b2b1f19732a4ab4c56',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 20:31:30',
                                    '2021-05-25 20:31:30',
                                    '2022-05-25 20:31:30'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '113ff9f8ee90176191ba656200656ada0534d92809fae94fdf47f56dff0f2350345abbd3b6c77521',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 20:33:15',
                                    '2021-05-25 20:33:15',
                                    '2022-05-25 20:33:15'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '10b514f5f55991f8e8862a8070d5831258dbc95f01586e5c433dcfbde1ae22265140a39718f3f8d9',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 20:51:14',
                                    '2021-05-25 20:51:14',
                                    '2022-05-25 20:51:14'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '35ea3079c5265ecb854fce9e479ced1cfb7aeebc3c2d5ad6a497f880abddba7eadb7cdfece0dea43',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 21:04:40',
                                    '2021-05-25 21:04:40',
                                    '2022-05-25 21:04:40'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '58ad0036afe1f9616a526095c08ac82f483f9369e8a1d145719b371ba3cc8feead9944a6ecc76673',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 21:05:34',
                                    '2021-05-25 21:05:34',
                                    '2022-05-25 21:05:34'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '5745ac809ef93b56610740f01c9b70f6f6d36822f667a0c8d92be7ea490c463c0cb15cfab1c2dc29',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 21:06:44',
                                    '2021-05-25 21:06:44',
                                    '2022-05-25 21:06:44'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'd306e5ee72b2d5cd1a5d952956b1a033c25f1c83f348c9909b60c97f1bda7fa36052d5e08a8389f6',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 21:09:23',
                                    '2021-05-25 21:09:23',
                                    '2022-05-25 21:09:23'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '29f3cd3cbbec3f85bf6afdd28f32a0234924097ecc75b3b31d756b1b55134d71e9acd51ea488c92b',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 21:10:23',
                                    '2021-05-25 21:10:23',
                                    '2022-05-25 21:10:23'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'aed22f255007fa300f4a4f1c4a7149d16f8a8f2831456f334bfd9c1898da8f8bf35854943663b1d5',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 21:29:10',
                                    '2021-05-25 21:29:10',
                                    '2022-05-25 21:29:10'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '8546538ac2f9cbf17716a07717bf60d76c75d87770deef6e3aeb23216ea3c0902a7fd30fd849c90c',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 21:47:27',
                                    '2021-05-25 21:47:27',
                                    '2022-05-25 21:47:27'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '5559b77473fed17365d63846adf90357aaeb2c2074ea750786ad02df42cfdd50a4bb9ab1133d218c',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 22:36:22',
                                    '2021-05-25 22:36:22',
                                    '2022-05-25 22:36:22'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6a8643713bf30ddfabeedb4cb917db61ea4d70d47f537c8e6f9b2386066dbac2998d31a976bd94c9',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 22:38:21',
                                    '2021-05-25 22:38:21',
                                    '2022-05-25 22:38:21'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '62d4c71de910e1dd87f737b8196046877f1d3b110c13a20a98e8033627109e05abf397f55c402886',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 22:39:48',
                                    '2021-05-25 22:39:48',
                                    '2022-05-25 22:39:48'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '20e192e0a0621cc7a79bdd2e486c73810c80a129ecf24315bc1a483028a082dfea11cef48e0f0bec',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 22:54:47',
                                    '2021-05-25 22:54:47',
                                    '2022-05-25 22:54:47'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '23267d8ad375152c4a3c2bbe69c47ea191a4ae7425eccdddbaab1ad494e7c19d7d98d3804cd9a900',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-25 23:15:14',
                                    '2021-05-25 23:15:14',
                                    '2022-05-25 23:15:14'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c9e307c7b1c04d40dadde851a426064f99c6326009826bcac2aa502a00fd244c9e13edc73139b706',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 00:40:59',
                                    '2021-05-26 00:40:59',
                                    '2022-05-26 00:40:59'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'cd0de08aa1695acd324804c5e3fdce0a240bb06a722e63a05ee47ffa075362a8baea5917ca9fd5ae',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 00:42:40',
                                    '2021-05-26 00:42:40',
                                    '2022-05-26 00:42:40'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a7a0d6ab728a11a90ce7844db330c80197910c79f30812f80ae22992231eef78abe7fdb2867fad31',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 01:20:20',
                                    '2021-05-26 01:20:20',
                                    '2022-05-26 01:20:20'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '61e9d6908ea1f7aea80967787dc3f034a3a37472ba696b4c4d3cae685673f75d53d63e4c84446521',
                                    18,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 01:20:37',
                                    '2021-05-26 01:20:37',
                                    '2022-05-26 01:20:37'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a31ce10dc4b45383493ff60f055683973eea8e285144a542a8f7dff14e4e1677bfff3db570876da0',
                                    19,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 01:24:10',
                                    '2021-05-26 01:24:10',
                                    '2022-05-26 01:24:10'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '673e50f9e2d723131d120f411b5f5514545c502b8cf34d6de1d6daf39c43c44d392191ba24985b03',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 01:24:54',
                                    '2021-05-26 01:24:54',
                                    '2022-05-26 01:24:54'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '263e148c06bb433f08048ba3374fdbdc5122079032e7bdf81e87ac92affeb336622e0010bc8f1f8c',
                                    20,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 01:25:08',
                                    '2021-05-26 01:25:08',
                                    '2022-05-26 01:25:08'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f3ad2f2cc4b0fbd31ae75c0704b696ff12d3b2d01dd3d127c0fe5e517dce9a691e62b27a621c5090',
                                    20,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 03:56:44',
                                    '2021-05-26 03:56:44',
                                    '2022-05-26 03:56:44'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c3a82dcad2c6d5817c4ab1a3ce2c1a1a5eb3de648eca6573478c93eb109a637afe35f69699d036c9',
                                    20,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:03:04',
                                    '2021-05-26 04:03:04',
                                    '2022-05-26 04:03:04'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'd02901a12da95781980963138a58a4fe7b069a5714ddcbdcfd8ae7db5ed140838ebffcbaaf3064a5',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:06:25',
                                    '2021-05-26 04:06:25',
                                    '2022-05-26 04:06:25'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '42c96a4271b3067a1a5dd9096151474794c3ffcc3f2b6a08efae435201b55162e5d7d2bdac2446c2',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:17:33',
                                    '2021-05-26 04:17:33',
                                    '2022-05-26 04:17:33'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1aac7516f938f5fcb0cda07f6415a1fee1882c477346bbf165ebcec77d192e64a6ed7653222a5262',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:19:51',
                                    '2021-05-26 04:19:51',
                                    '2022-05-26 04:19:51'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1a1fc083cd78269c92e4b07c2c687f516f8aa0ee197b336ddd3c7cc61c0372feabbb60198eb42c2b',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:20:06',
                                    '2021-05-26 04:20:06',
                                    '2022-05-26 04:20:06'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6026e5bc6c758a1a3778afe79349874e22a2cfd82880c1aa42275b699d602c3781c1ec2bdf213138',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:20:17',
                                    '2021-05-26 04:20:17',
                                    '2022-05-26 04:20:17'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f433fc07b0b7305ace23289425fbb803f668a42d3ab720f40e2d8ebb3af97ac85c3c75d80c2cdb2d',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:27:00',
                                    '2021-05-26 04:27:00',
                                    '2022-05-26 04:27:00'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c3acbd4a392c1a68de17f8222ff3330421a71eef3365715a3edc981ed14e30e5a220c6370324563f',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:27:27',
                                    '2021-05-26 04:27:27',
                                    '2022-05-26 04:27:27'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6b2e3a356b0bf1b2559d45e28401030f80d499d1d119d339636907df1bc8fae71800bcf6e6920ff5',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:28:33',
                                    '2021-05-26 04:28:33',
                                    '2022-05-26 04:28:33'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2248fb94d5a642a46e6dc9e0648670fb7a71b952b90604fd499ef14b9a5ec0b6c7eaefec01b68680',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:28:45',
                                    '2021-05-26 04:28:45',
                                    '2022-05-26 04:28:45'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6b1263c9f9356cf84e462e43c1a07b2e02ed955eed0e20887b6332a2a9a2645079051da0d69d5b90',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:30:29',
                                    '2021-05-26 04:30:29',
                                    '2022-05-26 04:30:29'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f392fa641fe1c32f04f5f9f1c9cfc53d205d7ff7a42aad3066331a59b9d1b86a988a3b745e756e1e',
                                    19,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:31:59',
                                    '2021-05-26 04:31:59',
                                    '2022-05-26 04:31:59'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '846acd421931398dc9cd84a704a9f31f8a3d35a6082f0d1c547d9415db85fd1ff4bffdcdf09e3922',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:32:25',
                                    '2021-05-26 04:32:25',
                                    '2022-05-26 04:32:25'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '3cedce428e0c4d86f884b09931091347a55012285eb1d4c84c0b9393b2b1716a39e5ae359ac7dfe5',
                                    20,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:35:12',
                                    '2021-05-26 04:35:12',
                                    '2022-05-26 04:35:12'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '715ff1125e253045be7f8dada932f139b85304aa7b6d2e776d68e32b581d316ba92f3c59a44d3e8d',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:35:37',
                                    '2021-05-26 04:35:37',
                                    '2022-05-26 04:35:37'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '0aeaa3700f2a968a1db7955edb3263b2888df2469b6c2a362db07a1d814d5db3adfcd97e5ec45c1c',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:37:32',
                                    '2021-05-26 04:37:32',
                                    '2022-05-26 04:37:32'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '5a9e924bf6064321dd83d996d1a87e6625259be6b028bbcf54f9c62fe87c5cc755732d6a5d884a0b',
                                    19,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:37:54',
                                    '2021-05-26 04:37:54',
                                    '2022-05-26 04:37:54'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6b2ad3edb6fbd0f54ba2bcbfd648dedc26255da7fc60a09f4f96a5e2a3724b6e9c4a47f2cc772bb2',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:38:16',
                                    '2021-05-26 04:38:16',
                                    '2022-05-26 04:38:16'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ffe683246697852065bc5b2a996412f116400e84942b3c2f29453de30f58082598522799e7cb9378',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:38:51',
                                    '2021-05-26 04:38:51',
                                    '2022-05-26 04:38:51'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '608526e9de8c101b2f70b9f023d15c7013f1fa4dd22bb0d599effa6664ae377e0bd3611ff93b2403',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:39:08',
                                    '2021-05-26 04:39:08',
                                    '2022-05-26 04:39:08'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '4b26963432875f6da3971539b483cd3e9efab7290371a38c3eb98065608633326d07f288c1a338cc',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:46:01',
                                    '2021-05-26 04:46:01',
                                    '2022-05-26 04:46:01'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1bd1ac7ee48d52ba2ac73f81a5e1d1d2d6c403e7b2b12d51d703dfdaae2ddc62b0b3f327980674ff',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:46:15',
                                    '2021-05-26 04:46:15',
                                    '2022-05-26 04:46:15'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a54ed603e318810713409a402bd51e6b95e2638093dff34e88f0294cb127757472d8dc36d7f687c5',
                                    20,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:46:48',
                                    '2021-05-26 04:46:48',
                                    '2022-05-26 04:46:48'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b37c5b9725e6a0e9ab21289324acd40a54cf8fcd73ff73609db58e7422fba0f0b30d2ccf23077e33',
                                    6,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:48:20',
                                    '2021-05-26 04:48:20',
                                    '2022-05-26 04:48:20'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '5ce8e8374d00614845776bb15200a283bf2274b4013c3398aa8469cc720b856a49cb61a432d8afc3',
                                    8,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:48:58',
                                    '2021-05-26 04:48:58',
                                    '2022-05-26 04:48:58'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '9b8e4e9794910d2b908ec7f8987ccfb3fbfca18c2f3feda6435536f53d51d1b2d183309680501d15',
                                    1,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:49:24',
                                    '2021-05-26 04:49:24',
                                    '2022-05-26 04:49:24'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '5f7ea5c76c8d9a88340fe8929fd2efee0b59eade4ab704ebe008450674c03b27050ed2d95f173555',
                                    19,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 04:51:04',
                                    '2021-05-26 04:51:04',
                                    '2022-05-26 04:51:04'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b188f0839aedeb04b0cb7433fd74d097d5f30bf048a0bfde23d04a2cbc82225ae7816b856e09c95e',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 05:50:14',
                                    '2021-05-26 05:50:14',
                                    '2022-05-26 05:50:14'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2435dc70234c331b546df1123834b9b0a01ef5b92ba6195aa6c1f3c4513e818f2309f4a8de5246c6',
                                    19,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 05:50:20',
                                    '2021-05-26 05:50:20',
                                    '2022-05-26 05:50:20'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '5d9d76cccf271a6a9f6b62c8a32636e8f3eae14404685d1cbf3db8fa663bc63871c232d179975fe4',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 05:50:27',
                                    '2021-05-26 05:50:27',
                                    '2022-05-26 05:50:27'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '9720bead8986edaa9baaea9e5fe78a316b1178a5275df665fb9a3a58befd2d55e287a1ffa76327ed',
                                    20,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 12:47:54',
                                    '2021-05-26 12:47:54',
                                    '2022-05-26 12:47:54'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '9bebb44079a4940f07956ba9d0b9e26a8038097a39598cabe4b45e8d2c0f2c8b161f953e6a92ee0b',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 15:05:47',
                                    '2021-05-26 15:05:47',
                                    '2022-05-26 15:05:47'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'caae1b01c1f035d9ee43e057282ef1c6a014e51635f389268cd472796c00e291b65cdf4f753e5db3',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 16:37:59',
                                    '2021-05-26 16:37:59',
                                    '2022-05-26 16:37:59'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'fb52a221b6d0dcd69ac67af2e4886743ca203bc00b56e9bfda8b7cd7c4802f1f3f0bb4748abd8c3f',
                                    3,
                                    1,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-26 16:42:00',
                                    '2021-05-26 16:42:00',
                                    '2022-05-26 16:42:00'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c8cd9e451cc5f56c1ac7da7898ea377dffff0136f513c4ca998cb5f46e48161340e62232204f6985',
                                    28,
                                    3,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-27 00:33:07',
                                    '2021-05-27 00:33:07',
                                    '2022-05-27 00:33:07'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1f61f74c9a6ccf3f1f89d80a92fea58b4556136f08d02d417110af616c3eaa0c3f18f2cb983fba49',
                                    29,
                                    3,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-27 00:34:13',
                                    '2021-05-27 00:34:13',
                                    '2022-05-27 00:34:13'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '37f6f424346d295f71fb855ff4b6f7729f9ee06d94b9fc3eabb8c46d1800ac7ed2d5771a952e3549',
                                    25,
                                    3,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-27 00:35:45',
                                    '2021-05-27 00:35:45',
                                    '2022-05-27 00:35:45'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '541d83d9edad4ab09d2d029c0cc0b39a0371ea1322f47f452718a90546bb8a9ecea2391ab8471567',
                                    25,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-27 00:40:28',
                                    '2021-05-27 00:40:28',
                                    '2022-05-27 00:40:28'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b7dfdc23361ceebb71f4b174a5dd852cab64b62b5e642cc1332a0983e15ea08be4b05c8b52002d59',
                                    25,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-27 00:41:42',
                                    '2021-05-27 00:41:42',
                                    '2022-05-27 00:41:42'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'fc83f84caf0809a2134a8d91f3c5137c9a31ff62415f0d4fdba3bd9c9535de1b3a7a6ab16fab4272',
                                    30,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-27 00:42:23',
                                    '2021-05-27 00:42:23',
                                    '2022-05-27 00:42:23'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2a54104a279a4c28e1dbedb5e0317baa90ce41ff8f7d03c141ca1f49c329e683776defb639888f1c',
                                    25,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-27 00:47:37',
                                    '2021-05-27 00:47:37',
                                    '2022-05-27 00:47:37'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f656f1cbfe08a26bc20c3ce008c19cfabeeeda5e8883dbea70fedfc016668def6ab35fbbfc5171f9',
                                    25,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-27 00:47:51',
                                    '2021-05-27 00:47:51',
                                    '2022-05-27 00:47:51'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'bffe2daa8339e5643ce553751f49e3599ab3528975091d2f0e4a87fc56cbb7d87b8ad7b5a063aea4',
                                    31,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-27 00:49:03',
                                    '2021-05-27 00:49:03',
                                    '2022-05-27 00:49:03'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '4b12322bbece7188203d88f04c5bd307f8bd8af3a61a6d172675ef7ef8cec66fc816ed0d4bbd9814',
                                    25,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-27 01:05:31',
                                    '2021-05-27 01:05:31',
                                    '2022-05-27 01:05:31'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f063999c992d0b291d47a45a30fa147944921f2f63465ad12ab0be0992bf49618847217d1d8c4b37',
                                    32,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-27 01:06:56',
                                    '2021-05-27 01:06:56',
                                    '2022-05-27 01:06:56'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '76d173245ba30f65fe07b978be4aa22da578478b589f81dad815be0cd9e86a4dfe23c4411f00e361',
                                    33,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-27 01:17:00',
                                    '2021-05-27 01:17:00',
                                    '2022-05-27 01:17:00'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '098cf641e1bb6928c768fddd445df3896497d6f562cc78fd7225f0e7d6916ef1abf936849153797c',
                                    33,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-27 01:21:32',
                                    '2021-05-27 01:21:32',
                                    '2022-05-27 01:21:32'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c9d1bbefd6f1e0ed8207336332a98d6b865b88f7987b6c5c8394065fc35c6c4cbe1d63742b9b6607',
                                    33,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-27 01:22:17',
                                    '2021-05-27 01:22:17',
                                    '2022-05-27 01:22:17'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '14826dd8188d6e38012b38f5f9009c305a30902b4d8a8e1e704f224ebc70697f19eccff2e69fa74a',
                                    25,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-27 01:30:14',
                                    '2021-05-27 01:30:14',
                                    '2022-05-27 01:30:14'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '9ec61fb51ebc20df2e6d07bb66ac52e67668979ba56dfbd225d8622a0b8d6f3bd2d2e422a15e967c',
                                    25,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-27 01:51:06',
                                    '2021-05-27 01:51:06',
                                    '2022-05-27 01:51:06'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c4b67fe7da0e3e07437609e20650520d99d6bb73c5551fbf3edf5b81b52e9771a980272a9bebaff1',
                                    33,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-27 01:52:09',
                                    '2021-05-27 01:52:09',
                                    '2022-05-27 01:52:09'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '00c8842dc91d03060c0370705c406272258dcec2da925a77ef1f57366b7d9e3b2cece6caf3800476',
                                    25,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-27 02:05:48',
                                    '2021-05-27 02:05:48',
                                    '2022-05-27 02:05:48'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b7db9d15ea4d4d789c1a4a5fe42dc98366fb2ccf1f9134272fc0d3a3d85bd5311e1c5b0825f4ed7b',
                                    33,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-27 02:06:06',
                                    '2021-05-27 02:06:06',
                                    '2022-05-27 02:06:06'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '72d13f10b7bca6ae175320b8d1114e16290f296c263d7a4049cc351029d3af5fd8761a6493be6072',
                                    33,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-27 02:11:46',
                                    '2021-05-27 02:11:46',
                                    '2022-05-27 02:11:46'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a1722e29efbbe5a5ac6e4e1b9ed4dc45a3476f413cd014909a0f0debe6ec200df6fb54e93c17c146',
                                    33,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-27 02:13:54',
                                    '2021-05-27 02:13:54',
                                    '2022-05-27 02:13:54'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'e756752b10570544cd896dd0663572aca4cab0da60a23bc192f43f91b01ebf60c6264fbf3a94ec0a',
                                    25,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-30 02:25:24',
                                    '2021-05-30 02:25:24',
                                    '2022-05-30 02:25:24'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '8ae3ec13e5bbf596ad1a3c77ed7e3d608605faa6db96f0d63695a2459498fbbb5dd1cbab94138767',
                                    17,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-30 02:27:03',
                                    '2021-05-30 02:27:03',
                                    '2022-05-30 02:27:03'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '0c8b6fe7cb15eba5e6213a9cc3bdf519dbe3edb7d0a1e3e515d68a94875be47bf20aac3e4a059138',
                                    17,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-30 02:27:45',
                                    '2021-05-30 02:27:45',
                                    '2022-05-30 02:27:45'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '4c0f10c170928afa5521a124423dd6892c7fdb6cbbb4718dfa0081f7d44845596cc23e05881b30c8',
                                    17,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-30 02:27:50',
                                    '2021-05-30 02:27:50',
                                    '2022-05-30 02:27:50'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '0452b82e0edc58cc39a085a0f39a44ac7e43f00a74f8c3a5d1d92637aab3a00f4ea32e7df768c92e',
                                    1,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-30 02:28:52',
                                    '2021-05-30 02:28:52',
                                    '2022-05-30 02:28:52'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'dda2583852e4a3287dcca5dcf967b1b2a609be72e4613a28b1e2e73c01b752162582f564248718be',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-30 02:29:41',
                                    '2021-05-30 02:29:41',
                                    '2022-05-30 02:29:41'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f75f500eeece1594bf5361a6194a72e32e047bf578e28ea51a083447e947dd7195635ef6ff054716',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-30 03:25:32',
                                    '2021-05-30 03:25:32',
                                    '2022-05-30 03:25:32'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '5af7765748b46d52dabe8a4320023a350733256f0d9b12220a686855f97c35ab5866e788ee2cef23',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-30 03:25:35',
                                    '2021-05-30 03:25:35',
                                    '2022-05-30 03:25:35'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '517aeba5a8fbc4684e671093890c15bb382738e4130b831de362c7e665cf299db3ac27d103d86e31',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-30 03:47:09',
                                    '2021-05-30 03:47:09',
                                    '2022-05-30 03:47:09'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '10519742c4addabb5ffe6f597634319126a0ef9ce2de3a2eecdc342b2ab652f11d65f7704f3d8d5e',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-30 04:05:26',
                                    '2021-05-30 04:05:26',
                                    '2022-05-30 04:05:26'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c16317e94a5034c4401e017d0d55d582646c800653c3280ae42ac86ea6fe2a9ed73ec5dbebf4ff25',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-30 04:31:02',
                                    '2021-05-30 04:31:02',
                                    '2022-05-30 04:31:02'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '9d9b0a1b15c35e9b48f05158c85040390f1d68c2751ec1f8cdc0ea07269f150d4386f4e1b4e2c97c',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-30 04:31:13',
                                    '2021-05-30 04:31:13',
                                    '2022-05-30 04:31:13'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '3582abe6b1c6c446467ff5c6c211491cfb0c4f8fac47e22d274f4e8529493a45a15d1f6f575f4002',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-30 04:32:57',
                                    '2021-05-30 04:32:57',
                                    '2022-05-30 04:32:57'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'eed5a0e9742baba018346d29bdea8a42e5465952c2348aa706e457ef352f79436955a38699717898',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-30 04:35:04',
                                    '2021-05-30 04:35:04',
                                    '2022-05-30 04:35:04'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b99348617f271931127b1d980a104634c5434d7af57e6573a6e75eb75aaa550b97cde320d1f670f8',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-31 04:20:14',
                                    '2021-05-31 04:20:14',
                                    '2022-05-31 04:20:14'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b0d9dc64cd46092aa28a4baf29453593089466bd1579dd1cb28c09305afefb243382ffc4f19ec0ef',
                                    34,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-31 05:48:40',
                                    '2021-05-31 05:48:40',
                                    '2022-05-31 05:48:40'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'e8a039a7ff9d740d96eeea9815e3f94b12a4fe76c3378a5ce028071474995cc01f258fe45694ed9c',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-31 05:49:53',
                                    '2021-05-31 05:49:53',
                                    '2022-05-31 05:49:53'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6ff50eba7033a3ae193859ce9a851759c18a587331335cd2e69fa9c825262cd195a58d17c50e9a47',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-31 05:50:06',
                                    '2021-05-31 05:50:06',
                                    '2022-05-31 05:50:06'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '279f7a2b0db2ddaebca1c534841e7efa65030949f78add191d17575b6a0436d7354a08b96a9039fe',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-31 05:51:39',
                                    '2021-05-31 05:51:39',
                                    '2022-05-31 05:51:39'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '5b20a912a9244e8fa60ea2d5377c2bacd0815e9da51e6e95cced2b724f2b09f8df44bde876a041e1',
                                    1,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-31 05:51:52',
                                    '2021-05-31 05:51:52',
                                    '2022-05-31 05:51:52'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '9acbb8832a9efb0a0d522444692c27954071baf54d785693c3e0231bc5798704fd4f375d33e1f74e',
                                    1,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-31 05:51:58',
                                    '2021-05-31 05:51:58',
                                    '2022-05-31 05:51:58'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'fd6f609b5a2e33ad1bf60f3835b1b6fbcfe8b9ccb42dfd602f36ab88935a85c38239f7b3aa59ea0b',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-31 05:52:28',
                                    '2021-05-31 05:52:28',
                                    '2022-05-31 05:52:28'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b9a3bd3fecf08e69493c03a676ce5d8f7f70cdfb703da9054d33002e79460ccff8c398e73e83c82a',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-31 05:54:15',
                                    '2021-05-31 05:54:15',
                                    '2022-05-31 05:54:15'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '5e5f54f55d018c24db0cefb65a7a19d27733bd99f8ac093b8e24e9835ca3bd38a607b4ea255f262f',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-31 10:30:22',
                                    '2021-05-31 10:30:22',
                                    '2022-05-31 10:30:22'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b1321039aa6a42147efd68a777a9c58c136bf5612a0ba298d661f62bb2030355513cf35d8cd072f5',
                                    4,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-31 12:58:05',
                                    '2021-05-31 12:58:05',
                                    '2022-05-31 12:58:05'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '7011ab08927147269cac628f89cb8bca835b1818f75112d36df479151256bd43fe1a4f4d6e5d0c64',
                                    4,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-31 12:58:37',
                                    '2021-05-31 12:58:37',
                                    '2022-05-31 12:58:37'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f407292620c1748ec7dafa3c1628cced0f3652755183e5e0f12453d44a6b830fc210df207fb614b4',
                                    4,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-31 13:23:16',
                                    '2021-05-31 13:23:16',
                                    '2022-05-31 13:23:16'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '4cf97f648fd433cf459db194236ada8e1f4dc17139e4ae626fd02634ad3d734e444cea846e92a35e',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-31 14:50:27',
                                    '2021-05-31 14:50:27',
                                    '2022-05-31 14:50:27'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'e661cf746a7d340a4339c8a325e8926bfba79b01012fcb7b3e7bea5545f90e3f816af307f8748087',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-31 15:01:01',
                                    '2021-05-31 15:01:01',
                                    '2022-05-31 15:01:01'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '372e1bbfafe77e399dcf2aa09ab7192c7417b5186593300d9d49c2b264c89d5d26d46b0e12ee22dc',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-31 15:26:59',
                                    '2021-05-31 15:26:59',
                                    '2022-05-31 15:26:59'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1b95f7a21d32f198f0ef73ab0fb93e69ead32af7b0ea567666b90cc4429c27545a1b0eeff46ed32d',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-31 15:27:39',
                                    '2021-05-31 15:27:39',
                                    '2022-05-31 15:27:39'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '61718c725ccb5bf6cce6eedb2794a75b2d1baac368aef93f082c901b9c4524a3f684e20a428b0cab',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-31 15:29:11',
                                    '2021-05-31 15:29:11',
                                    '2022-05-31 15:29:11'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a6dcb6155544391be582f8971509191618385e809c900b5b3cdd35ccce27a28c9955f29ec1cec30d',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-31 15:29:23',
                                    '2021-05-31 15:29:23',
                                    '2022-05-31 15:29:23'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'cf26171abf3001ed7b6082b8338269cfb3006214e4f9b4d3a564cc5e9d1cc911e2cb835d10a2b657',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-31 15:55:10',
                                    '2021-05-31 15:55:10',
                                    '2022-05-31 15:55:10'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b81a9bed8c094e731cc31266021e9418605f2ec68c775055b2b2f6cea54b6c9c3a9ee254837167e6',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-31 16:14:10',
                                    '2021-05-31 16:14:10',
                                    '2022-05-31 16:14:10'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '0b32e1fc2dab518a02dd3a32598195a6b0d8548644a178852d4f9cd9e79b7f2604124a1359d5e569',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-05-31 16:32:44',
                                    '2021-05-31 16:32:44',
                                    '2022-05-31 16:32:44'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'bcf3cc2db73e547af61fba1c65a8196f7a9d9a3f69265bc80878da65da3d84c5f6cd43e8db88d585',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 02:28:26',
                                    '2021-06-01 02:28:26',
                                    '2022-06-01 02:28:26'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '7de1c5f9b4aa897dfa278c4e4bb02875e64c8eb66345f1bf056ac4bc23373aad91e649c7a5454dc2',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 07:16:35',
                                    '2021-06-01 07:16:35',
                                    '2022-06-01 07:16:35'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '84b30690b63c9638811e72ea1b716ef6debd9e7f3ec15a3bf4c1f23ccab84420f8655c541d4fd3e7',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 08:08:44',
                                    '2021-06-01 08:08:44',
                                    '2022-06-01 08:08:44'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6930c76d1de4e4a065d70afa9da0ac33ada37a1c4d49b6c015d7fb4fc54e27d21b3535f297899f71',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 09:06:48',
                                    '2021-06-01 09:06:48',
                                    '2022-06-01 09:06:48'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '0aa65900dc8f833a19593fc1cf6dfec06744377be5cdc11d0090f6f9306c45931ae1893ace2cd0d7',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 09:11:27',
                                    '2021-06-01 09:11:27',
                                    '2022-06-01 09:11:27'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'd7af46f58e848befc9f6dd1910c4e3fa750f83eae5f8fffe6855655596211127115a11690b2b6156',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 09:12:58',
                                    '2021-06-01 09:12:58',
                                    '2022-06-01 09:12:58'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '3b061577eea6464520acd19a56d60c9bd2231bd4777b5995c442a95d22c87e040d04646ebc3a2ecd',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 09:13:19',
                                    '2021-06-01 09:13:19',
                                    '2022-06-01 09:13:19'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '049610993072710de848e31396e68a093f7f0643795c5ed7f80fc58fc3f47c9d05113cc4cb097dff',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 09:17:11',
                                    '2021-06-01 09:17:11',
                                    '2022-06-01 09:17:11'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '5e4b9a539fa40de350f03800f567b81e2ac39bb7c1e729c2b05c0d228a86fad2770ba4270cb055db',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 09:26:59',
                                    '2021-06-01 09:26:59',
                                    '2022-06-01 09:26:59'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '9b13cf72ce719cf2bee6929d19dabaa9230627524a75d6863c167083e04e6c6b913a0d9edfcd09cb',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 09:27:27',
                                    '2021-06-01 09:27:27',
                                    '2022-06-01 09:27:27'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a6785f20b3479c66bc81f069957ac56385b678627082bbcf4c0d5a0cea452ebcf5047c05dd5d44b5',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 10:17:08',
                                    '2021-06-01 10:17:08',
                                    '2022-06-01 10:17:08'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '225989773bb4e990f9bc710b357c27d6377f08a4be273f11ccae9e433aa9801aba777d84f802ca03',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 10:17:51',
                                    '2021-06-01 10:17:51',
                                    '2022-06-01 10:17:51'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6c7a49ef79d5039b2f90b8986203856665a5479766f00893ff9d9bae6ec13ef5b7b18d2175593cb2',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 10:19:27',
                                    '2021-06-01 10:19:27',
                                    '2022-06-01 10:19:27'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'bfb41ef80e61270909e3bc22d983bc509ebf5fbd6935628276e86a70bf6d8e21e62f5a1fabb696d8',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 10:22:46',
                                    '2021-06-01 10:22:46',
                                    '2022-06-01 10:22:46'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6d36ca1410d55043a3f067c51c4c6f42592a87e61d281760ed2159f7df9989e2a782cf92654b6306',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 11:29:10',
                                    '2021-06-01 11:29:10',
                                    '2022-06-01 11:29:10'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f4cdae8d2c25dc305911cca8bfef16360e1ab790012040803321f54f56ebd3618f8630a6e4d005d7',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 11:29:33',
                                    '2021-06-01 11:29:33',
                                    '2022-06-01 11:29:33'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '0b5604b1af1e71d7a9bed2cc08c5859638e211193a10dd5c8e918974f0d583849d2f891d3a959188',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 12:21:36',
                                    '2021-06-01 12:21:36',
                                    '2022-06-01 12:21:36'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1348ca7941488ceec0e137163730007fa8b83c522ddfdc3b5e22d8228d3495aac2887805b5abad3a',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 12:22:03',
                                    '2021-06-01 12:22:03',
                                    '2022-06-01 12:22:03'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f82745a6862190cf4470da7c17f1e3c1ae6633d998c651cf8b5c46e81a72d7038886cf0dff40ef7c',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 12:24:32',
                                    '2021-06-01 12:24:32',
                                    '2022-06-01 12:24:32'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '54abf4b6600c14daee881d708e8add838345783dc79eb5b1d892f253ccf78a9a9f63b640122cb63d',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 12:24:56',
                                    '2021-06-01 12:24:56',
                                    '2022-06-01 12:24:56'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '728a4d0680006d15f852e2f5c3fd21bd4b2313936a4358f64e7d9009f05dc452979dfd9bccb57413',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 12:26:04',
                                    '2021-06-01 12:26:04',
                                    '2022-06-01 12:26:04'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '5e0072b6497a3d8db96a8323a529adff8087e773eb278dfcc2e00bf91705a1cc3792944d14269d12',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 21:22:00',
                                    '2021-06-01 21:22:00',
                                    '2022-06-01 21:22:00'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '7a46aec9e2dd9d9030db716e6c552ef9c55b3a8991c0c5fb122f441db7674cc5e1fde35e022c459d',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 21:23:00',
                                    '2021-06-01 21:23:00',
                                    '2022-06-01 21:23:00'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '085898b03e54457612a85bcbd58404e16508b9983657907390df3931cf5a74df1a88385fe1a42e75',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 21:26:13',
                                    '2021-06-01 21:26:13',
                                    '2022-06-01 21:26:13'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '7a154240d269456cff894084d2c7131a981f860598b52dbe76c8e476caa6bd20ff7ee71ae61d8dd5',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 21:27:16',
                                    '2021-06-01 21:27:16',
                                    '2022-06-01 21:27:16'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '8a2cbe89b5097547b7e977f3e6be0d0e9d089646b895fa74b5baddc07570007593e36105af53fcfd',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 21:47:23',
                                    '2021-06-01 21:47:23',
                                    '2022-06-01 21:47:23'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'da8d195196d453e65d5761ee40906121f7f210b702da77f67eb8d0835a1a6679d828f2a9e355ffd6',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 21:47:35',
                                    '2021-06-01 21:47:35',
                                    '2022-06-01 21:47:35'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '3f7e9235f3261f7260fd90574348662fc75339ac18df5c88bc5c44689975ff217ee8d0f3216d383c',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 21:48:22',
                                    '2021-06-01 21:48:22',
                                    '2022-06-01 21:48:22'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a325325ce1d10fbec813526cba7a1672bf864b11fa23f649fd60de73db666541bc47a776b78150de',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 22:00:07',
                                    '2021-06-01 22:00:07',
                                    '2022-06-01 22:00:07'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '9661056edcaeb3b606cffa3e8eec90b76acdded77b14b166607b319e871c0654c40c2d8253acee8c',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 22:17:27',
                                    '2021-06-01 22:17:27',
                                    '2022-06-01 22:17:27'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'cc12f739fd9227f34cac9c7c8799a64f2e1504df5be2023e9c4f8006209682172990faf6ab16c468',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 22:18:30',
                                    '2021-06-01 22:18:30',
                                    '2022-06-01 22:18:30'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '4ff29c03c3c05193cc8559aca69346fe430064c574e1f5232acb98a068a955fc556be3e425f44498',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 22:43:46',
                                    '2021-06-01 22:43:46',
                                    '2022-06-01 22:43:46'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '83c44c12ecb5fdc69667c6561aaae7a8edc8c233344e06ddf69f6ff531ae9361755d2c8c914ee8b9',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 22:44:10',
                                    '2021-06-01 22:44:10',
                                    '2022-06-01 22:44:10'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'edad831598a5fd8adff3644a251573e47a05188322d26d0ef8eff0fa2fcf751b7649f5e9ac604986',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 22:56:49',
                                    '2021-06-01 22:56:49',
                                    '2022-06-01 22:56:49'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'bb05d083daf826e9aa4f432c0942ca35d33fbfa9426813b77fbc7e0a6a6529a07bd9686e180cea2c',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 22:58:02',
                                    '2021-06-01 22:58:02',
                                    '2022-06-01 22:58:02'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'de96ed02b1a8999e931def67366174412bca6344d3a370dd7894845ba8db81b0752edaaa3626e7c9',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 22:59:01',
                                    '2021-06-01 22:59:01',
                                    '2022-06-01 22:59:01'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '9d16d485f444c3b4fa463b13d18dd5924e9360591ce85241c8a0578b97bc11a4e9ae9863859f2d36',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 23:00:51',
                                    '2021-06-01 23:00:51',
                                    '2022-06-01 23:00:51'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'efefe53b6d9136df69e68ec4d702273494f760cb6cf7564eb90bdf4397e0821c5035eb25c57f3b2d',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 23:04:54',
                                    '2021-06-01 23:04:54',
                                    '2022-06-01 23:04:54'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '5f74d0bee9d7e1a118ea6e3f10de60d95fabaa64933a3744921420e281b1be5184bbe2acbd08983e',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 23:48:46',
                                    '2021-06-01 23:48:46',
                                    '2022-06-01 23:48:46'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'dce633f54135ebaa2736269d1c3190a6a06085b3fc796fc026c5b2821a0f641011f6c389d1567a45',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-01 23:50:30',
                                    '2021-06-01 23:50:30',
                                    '2022-06-01 23:50:30'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '46a560097b8da43a08ee3895311b340e3e8dd22f33b72c92c3c9096d2a6c5725b7006a3c0cc02377',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-02 01:01:05',
                                    '2021-06-02 01:01:05',
                                    '2022-06-02 01:01:05'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '028d40e15d556f9c9711767cfd23b1fe9c4b63523decfd0376939d6e5a952c68f113e2c8169fe1ab',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-02 01:04:41',
                                    '2021-06-02 01:04:41',
                                    '2022-06-02 01:04:41'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '3eef33a64391abe6618f015676a9626abb33c578074c11b0a13194fe5aed7a429d598c9e6845995e',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-02 01:15:26',
                                    '2021-06-02 01:15:26',
                                    '2022-06-02 01:15:26'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b8318b92272c74859e78c73da70e1c13fda97369919be5ee058b09b7446bdf0f3451f53dd612ea66',
                                    1,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-02 02:41:20',
                                    '2021-06-02 02:41:20',
                                    '2022-06-02 02:41:20'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'cec4ade25ac64b32303e8ba00eadda94147dc28d2236fc6d2f87f350b4ee9c9c6173632230c5d839',
                                    8,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-02 02:45:00',
                                    '2021-06-02 02:45:00',
                                    '2022-06-02 02:45:00'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6109e67c3aa99f460ee53127d63247a93cc02b4677f85b0e5843e832c829518f6050726f775e5134',
                                    1,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-02 02:55:11',
                                    '2021-06-02 02:55:11',
                                    '2022-06-02 02:55:11'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a90e2faacdefbcede208989e0ad30c0835cd14f9eae70e4f17492e0f7d5c8457320877a51f0b2366',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-02 02:56:35',
                                    '2021-06-02 02:56:35',
                                    '2022-06-02 02:56:35'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ce539c4c219cb6db618d40c312911af5243d911907d30b20e58a0d74d501a1f49e5aa179140a542b',
                                    8,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-02 02:57:37',
                                    '2021-06-02 02:57:37',
                                    '2022-06-02 02:57:37'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f6aa0c24b2842bfe61f18e15727f826aff1fd1ba107ad0e17c22d4cf8008610c997c8b06328caeae',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-02 02:58:01',
                                    '2021-06-02 02:58:01',
                                    '2022-06-02 02:58:01'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '9cfcef551d8d6ec3efed17342dcf52d78a7ce909fefbbb2bdebbff1de8d36b2f2df8a75d4d6cec81',
                                    8,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-02 07:33:21',
                                    '2021-06-02 07:33:21',
                                    '2022-06-02 07:33:21'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '9ccde1147cdaa9e2077885d934b34bf2f618a84d98b2b629f5b5ed29ca4fcc5abc8f14f2db72a39e',
                                    8,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-02 11:31:39',
                                    '2021-06-02 11:31:39',
                                    '2022-06-02 11:31:39'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '418b9f8c2171836da0df4f75785f9e0de08bf476d0368a08852db4ed0dde7b9116cd1855e47db00c',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-02 12:25:26',
                                    '2021-06-02 12:25:26',
                                    '2022-06-02 12:25:26'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '32d3a26fdfd829613ae1d0ffd1ed5ded101bbd6af21f47b08217bd066f34ea79b99c7470e3dda9b7',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-02 12:25:58',
                                    '2021-06-02 12:25:58',
                                    '2022-06-02 12:25:58'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f0785ac092e8271f583613c38bc58c606e075ddced11bb96da465bc4d3922ed73c9e655d1b98c123',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-02 12:26:21',
                                    '2021-06-02 12:26:21',
                                    '2022-06-02 12:26:21'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '1aabfa22c1024b9da9039b299f4d5ae28cfdedf9f83ce5c15c1ac3f5c68ae107facf6f11d47c855f',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-02 12:35:20',
                                    '2021-06-02 12:35:20',
                                    '2022-06-02 12:35:20'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'b8a22470153831f81015441e765939f8bda6965e420496a372cd218ae08684f3679914f36b8f8391',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-02 15:26:44',
                                    '2021-06-02 15:26:44',
                                    '2022-06-02 15:26:44'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '3c4176b9f71d61bb81cba25a175d75c94b528c1e59110301fa2cc98bee342ff9756e70397491efe6',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-02 15:27:57',
                                    '2021-06-02 15:27:57',
                                    '2022-06-02 15:27:57'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'c346605f0d071f7b56c615c7c8f562c3862f71b99a6e8375281dda5c5ac66719abfd9389563d511e',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-02 15:29:11',
                                    '2021-06-02 15:29:11',
                                    '2022-06-02 15:29:11'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '2ae56bbbdfab08cbde1bfa0e705a24f96b577e080286b0c57a5a516bcee1d53dad238bcdacbb5fb1',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-02 15:41:00',
                                    '2021-06-02 15:41:00',
                                    '2022-06-02 15:41:00'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '912217d073845539eb373436cd6f351b98df807d780b272983d169e0a6127cc158af7a24a5df0a3c',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-02 15:42:07',
                                    '2021-06-02 15:42:07',
                                    '2022-06-02 15:42:07'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '70c51e94b5ee07a7686c61935788b5a30247feb4f57b3d785bf54cbfefacaf8513e017c88353021a',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-02 15:53:38',
                                    '2021-06-02 15:53:38',
                                    '2022-06-02 15:53:38'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'a6d8120e681d5f3faa6a1a5a480987ce665fc6894ded87daf293f541ea8d63854283e082cbed0338',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-03 13:28:49',
                                    '2021-06-03 13:28:49',
                                    '2022-06-03 13:28:49'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'ab7ad0c14ddb44640f98f28b7bab66cdd04e18396438ce81612cd9b73ac17688508cf648600f5d14',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-03 13:31:54',
                                    '2021-06-03 13:31:54',
                                    '2022-06-03 13:31:54'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '6ebf16419a529ce1cc4068b8820f2bf244ba746030b92538d83d4573a4ff70c9230aff8f4e154542',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-03 13:32:20',
                                    '2021-06-03 13:32:20',
                                    '2022-06-03 13:32:20'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '45078666a7f6e5528b67a7ac1c71193e2928f3c04a8b287901d9c60b26236dda1a93ad132fc4faa2',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-03 13:36:17',
                                    '2021-06-03 13:36:17',
                                    '2022-06-03 13:36:17'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '664e491ab8b7644875262a168e7540cd90b824a99e5dfc9601796153c4d7666345a3014945dc0162',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-03 13:42:25',
                                    '2021-06-03 13:42:25',
                                    '2022-06-03 13:42:25'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'f89f5eb8e28827b72051eab345165dfe71f034a1a207d1004071244c68eb479433a069e1251c2e02',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-03 13:56:49',
                                    '2021-06-03 13:56:49',
                                    '2022-06-03 13:56:49'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '32ca2fc3fa2be299b542d7638dfc5bbcbdb2458ffe90db10b34b515f6b1728644a16952971de4ec6',
                                    3,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-03 14:26:01',
                                    '2021-06-03 14:26:01',
                                    '2022-06-03 14:26:01'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    'bc81645d29847e1a4e33c920c0578fb87078eee702dd4b3ea0b32fd242181abb55c57393d419852e',
                                    2,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-03 14:29:03',
                                    '2021-06-03 14:29:03',
                                    '2022-06-03 14:29:03'
                                );

INSERT INTO oauth_access_tokens (
                                    id,
                                    user_id,
                                    client_id,
                                    name,
                                    scopes,
                                    revoked,
                                    created_at,
                                    updated_at,
                                    expires_at
                                )
                                VALUES (
                                    '09cae6323d775c9f24f432b6f2896355cb204a86d8b3bf37cdaba838947896eec0c1714c63d4ca19',
                                    5,
                                    5,
                                    'authToken',
                                    '[]',
                                    0,
                                    '2021-06-03 14:29:54',
                                    '2021-06-03 14:29:54',
                                    '2022-06-03 14:29:54'
                                );


-- Table: oauth_auth_codes
DROP TABLE IF EXISTS oauth_auth_codes;

CREATE TABLE oauth_auth_codes (
    id         VARCHAR     NOT NULL,
    user_id    INTEGER     NOT NULL,
    client_id  INTEGER     NOT NULL,
    scopes     TEXT,
    revoked    TINYINT (1) NOT NULL,
    expires_at DATETIME,
    PRIMARY KEY (
        id
    )
);


-- Table: oauth_clients
DROP TABLE IF EXISTS oauth_clients;

CREATE TABLE oauth_clients (
    id                     INTEGER     NOT NULL
                                       PRIMARY KEY AUTOINCREMENT,
    user_id                INTEGER,
    name                   VARCHAR     NOT NULL,
    secret                 VARCHAR,
    provider               VARCHAR,
    redirect               TEXT        NOT NULL,
    personal_access_client TINYINT (1) NOT NULL,
    password_client        TINYINT (1) NOT NULL,
    revoked                TINYINT (1) NOT NULL,
    created_at             DATETIME,
    updated_at             DATETIME
);

INSERT INTO oauth_clients (
                              id,
                              user_id,
                              name,
                              secret,
                              provider,
                              redirect,
                              personal_access_client,
                              password_client,
                              revoked,
                              created_at,
                              updated_at
                          )
                          VALUES (
                              1,
                              NULL,
                              'Soft-paie Personal Access Client',
                              'jbSvB5xNMJ0DpyNQQOlx4Y0LBWZYlHHJ6ehSxCD5',
                              NULL,
                              'http://localhost',
                              1,
                              0,
                              0,
                              '2021-05-22 00:48:12',
                              '2021-05-22 00:48:12'
                          );

INSERT INTO oauth_clients (
                              id,
                              user_id,
                              name,
                              secret,
                              provider,
                              redirect,
                              personal_access_client,
                              password_client,
                              revoked,
                              created_at,
                              updated_at
                          )
                          VALUES (
                              2,
                              NULL,
                              'Soft-paie Password Grant Client',
                              'PY1H3bDQUUWO08YwhaWwdOOBrXU4MsOV84wxnwIl',
                              'users',
                              'http://localhost',
                              0,
                              1,
                              0,
                              '2021-05-22 00:48:12',
                              '2021-05-22 00:48:12'
                          );

INSERT INTO oauth_clients (
                              id,
                              user_id,
                              name,
                              secret,
                              provider,
                              redirect,
                              personal_access_client,
                              password_client,
                              revoked,
                              created_at,
                              updated_at
                          )
                          VALUES (
                              3,
                              NULL,
                              'Laravel Personal Access Client',
                              'YUgAwNbZ3Qhn3gXgBMVdiMd3Elp3RGytyIv2O7J1',
                              NULL,
                              'http://localhost',
                              1,
                              0,
                              0,
                              '2021-05-27 00:32:27',
                              '2021-05-27 00:32:27'
                          );

INSERT INTO oauth_clients (
                              id,
                              user_id,
                              name,
                              secret,
                              provider,
                              redirect,
                              personal_access_client,
                              password_client,
                              revoked,
                              created_at,
                              updated_at
                          )
                          VALUES (
                              4,
                              NULL,
                              'Laravel Password Grant Client',
                              '8cgmrUecBNJszVijSQtLSKisIni8jjDSkG74wKTf',
                              'users',
                              'http://localhost',
                              0,
                              1,
                              0,
                              '2021-05-27 00:32:28',
                              '2021-05-27 00:32:28'
                          );

INSERT INTO oauth_clients (
                              id,
                              user_id,
                              name,
                              secret,
                              provider,
                              redirect,
                              personal_access_client,
                              password_client,
                              revoked,
                              created_at,
                              updated_at
                          )
                          VALUES (
                              5,
                              NULL,
                              'Laravel Personal Access Client',
                              'rrWoX0IpcZNtF0q8rfEp8ePox67ZKDvKZo9AGpde',
                              NULL,
                              'http://localhost',
                              1,
                              0,
                              0,
                              '2021-05-27 00:37:33',
                              '2021-05-27 00:37:33'
                          );

INSERT INTO oauth_clients (
                              id,
                              user_id,
                              name,
                              secret,
                              provider,
                              redirect,
                              personal_access_client,
                              password_client,
                              revoked,
                              created_at,
                              updated_at
                          )
                          VALUES (
                              6,
                              NULL,
                              'Laravel Password Grant Client',
                              'R7uYeD4g8QMcSxJgB3SmMurcp56iIucRpauDQFco',
                              'users',
                              'http://localhost',
                              0,
                              1,
                              0,
                              '2021-05-27 00:37:33',
                              '2021-05-27 00:37:33'
                          );


-- Table: oauth_personal_access_clients
DROP TABLE IF EXISTS oauth_personal_access_clients;

CREATE TABLE oauth_personal_access_clients (
    id         INTEGER  NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    client_id  INTEGER  NOT NULL,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO oauth_personal_access_clients (
                                              id,
                                              client_id,
                                              created_at,
                                              updated_at
                                          )
                                          VALUES (
                                              1,
                                              1,
                                              '2021-05-22 00:48:12',
                                              '2021-05-22 00:48:12'
                                          );

INSERT INTO oauth_personal_access_clients (
                                              id,
                                              client_id,
                                              created_at,
                                              updated_at
                                          )
                                          VALUES (
                                              2,
                                              3,
                                              '2021-05-27 00:32:27',
                                              '2021-05-27 00:32:27'
                                          );

INSERT INTO oauth_personal_access_clients (
                                              id,
                                              client_id,
                                              created_at,
                                              updated_at
                                          )
                                          VALUES (
                                              3,
                                              5,
                                              '2021-05-27 00:37:33',
                                              '2021-05-27 00:37:33'
                                          );


-- Table: oauth_refresh_tokens
DROP TABLE IF EXISTS oauth_refresh_tokens;

CREATE TABLE oauth_refresh_tokens (
    id              VARCHAR     NOT NULL,
    access_token_id VARCHAR     NOT NULL,
    revoked         TINYINT (1) NOT NULL,
    expires_at      DATETIME,
    PRIMARY KEY (
        id
    )
);


-- Table: password_resets
DROP TABLE IF EXISTS password_resets;

CREATE TABLE password_resets (
    email      VARCHAR  NOT NULL,
    token      VARCHAR  NOT NULL,
    created_at DATETIME
);


-- Table: planifications
DROP TABLE IF EXISTS planifications;

CREATE TABLE planifications (
    id            INTEGER  NOT NULL
                           PRIMARY KEY AUTOINCREMENT,
    user_id       INTEGER  NOT NULL,
    planning_day  DATETIME,
    shift_1_start DATETIME,
    shift_1_end   DATETIME,
    shift_2_start DATETIME,
    shift_2_end   DATETIME,
    validator_id  INTEGER,
    created_at    DATETIME,
    updated_at    DATETIME
);

INSERT INTO planifications (
                               id,
                               user_id,
                               planning_day,
                               shift_1_start,
                               shift_1_end,
                               shift_2_start,
                               shift_2_end,
                               validator_id,
                               created_at,
                               updated_at
                           )
                           VALUES (
                               1,
                               4,
                               '2021-05-3',
                               8,
                               12,
                               13,
                               18,
                               NULL,
                               NULL,
                               NULL
                           );


-- Table: primerendements
DROP TABLE IF EXISTS primerendements;

CREATE TABLE primerendements (
    id              INTEGER  NOT NULL
                             PRIMARY KEY AUTOINCREMENT,
    user_id         INTEGER  NOT NULL,
    prime_rendement FLOAT,
    validator_id    INTEGER,
    created_at      DATETIME,
    updated_at      DATETIME
);

INSERT INTO primerendements (
                                id,
                                user_id,
                                prime_rendement,
                                validator_id,
                                created_at,
                                updated_at
                            )
                            VALUES (
                                1,
                                4,
                                350.0,
                                3,
                                NULL,
                                NULL
                            );


-- Table: products
DROP TABLE IF EXISTS products;

CREATE TABLE products (
    id          INTEGER  NOT NULL
                         PRIMARY KEY AUTOINCREMENT,
    description TEXT     NOT NULL,
    price       NUMERIC  NOT NULL,
    created_at  DATETIME,
    updated_at  DATETIME
);


-- Table: qualifications
DROP TABLE IF EXISTS qualifications;

CREATE TABLE qualifications (
    id            INTEGER  NOT NULL
                           PRIMARY KEY AUTOINCREMENT,
    user_id       INTEGER  NOT NULL,
    qualification VARCHAR,
    validator_id  INTEGER  NOT NULL,
    created_at    DATETIME,
    updated_at    DATETIME
);

INSERT INTO qualifications (
                               id,
                               user_id,
                               qualification,
                               validator_id,
                               created_at,
                               updated_at
                           )
                           VALUES (
                               1,
                               1,
                               'comptable',
                               3,
                               NULL,
                               NULL
                           );

INSERT INTO qualifications (
                               id,
                               user_id,
                               qualification,
                               validator_id,
                               created_at,
                               updated_at
                           )
                           VALUES (
                               2,
                               6,
                               'developpeur',
                               3,
                               NULL,
                               NULL
                           );

INSERT INTO qualifications (
                               id,
                               user_id,
                               qualification,
                               validator_id,
                               created_at,
                               updated_at
                           )
                           VALUES (
                               3,
                               5,
                               'formateur',
                               3,
                               NULL,
                               NULL
                           );

INSERT INTO qualifications (
                               id,
                               user_id,
                               qualification,
                               validator_id,
                               created_at,
                               updated_at
                           )
                           VALUES (
                               4,
                               4,
                               'financier',
                               3,
                               NULL,
                               NULL
                           );

INSERT INTO qualifications (
                               id,
                               user_id,
                               qualification,
                               validator_id,
                               created_at,
                               updated_at
                           )
                           VALUES (
                               5,
                               3,
                               'analyste',
                               3,
                               NULL,
                               NULL
                           );

INSERT INTO qualifications (
                               id,
                               user_id,
                               qualification,
                               validator_id,
                               created_at,
                               updated_at
                           )
                           VALUES (
                               6,
                               2,
                               'ingenieur',
                               3,
                               NULL,
                               NULL
                           );


-- Table: ressources
DROP TABLE IF EXISTS ressources;

CREATE TABLE ressources (
    id                  INTEGER       PRIMARY KEY AUTOINCREMENT
                                      NOT NULL,
    user_id             INTEGER       NOT NULL,
    etat_civil          VARCHAR (255) DEFAULT NULL
                                      COLLATE BINARY,
    dob                 DATE          DEFAULT NULL,
    nb_enfants          INTEGER       DEFAULT NULL,
    num_cnss            INTEGER       DEFAULT NULL,
    type_contrat        INTEGER       DEFAULT NULL,
    date_recrutement    DATE          DEFAULT NULL,
    date_titularisation DATE          DEFAULT NULL,
    date_licenciement   DATE          DEFAULT NULL,
    actif               INTEGER       DEFAULT NULL,
    validator_id        INTEGER       DEFAULT NULL,
    created_at          DATETIME      DEFAULT NULL,
    updated_at          DATETIME      DEFAULT NULL,
    rib                 VARCHAR (255) DEFAULT NULL
                                      COLLATE BINARY
);

INSERT INTO ressources (
                           id,
                           user_id,
                           etat_civil,
                           dob,
                           nb_enfants,
                           num_cnss,
                           type_contrat,
                           date_recrutement,
                           date_titularisation,
                           date_licenciement,
                           actif,
                           validator_id,
                           created_at,
                           updated_at,
                           rib
                       )
                       VALUES (
                           1,
                           1,
                           'celibataire',
                           '2000-05-03',
                           0,
                           765432156,
                           'CDI',
                           '2018-03-03',
                           '2018-09-07',
                           '-',
                           1,
                           3,
                           NULL,
                           NULL,
                           '66543244678'
                       );

INSERT INTO ressources (
                           id,
                           user_id,
                           etat_civil,
                           dob,
                           nb_enfants,
                           num_cnss,
                           type_contrat,
                           date_recrutement,
                           date_titularisation,
                           date_licenciement,
                           actif,
                           validator_id,
                           created_at,
                           updated_at,
                           rib
                       )
                       VALUES (
                           2,
                           2,
                           'marie',
                           '2000-02-03',
                           3,
                           765432156,
                           'CDD',
                           '2017-03-03',
                           '2017-09-07',
                           '-',
                           1,
                           3,
                           NULL,
                           NULL,
                           '66543210987'
                       );

INSERT INTO ressources (
                           id,
                           user_id,
                           etat_civil,
                           dob,
                           nb_enfants,
                           num_cnss,
                           type_contrat,
                           date_recrutement,
                           date_titularisation,
                           date_licenciement,
                           actif,
                           validator_id,
                           created_at,
                           updated_at,
                           rib
                       )
                       VALUES (
                           3,
                           3,
                           'celibataire',
                           '1990-02-03',
                           0,
                           765432156,
                           'CDI',
                           '2019-03-03',
                           '2016-09-07',
                           '-',
                           1,
                           3,
                           NULL,
                           NULL,
                           '54326789086'
                       );

INSERT INTO ressources (
                           id,
                           user_id,
                           etat_civil,
                           dob,
                           nb_enfants,
                           num_cnss,
                           type_contrat,
                           date_recrutement,
                           date_titularisation,
                           date_licenciement,
                           actif,
                           validator_id,
                           created_at,
                           updated_at,
                           rib
                       )
                       VALUES (
                           4,
                           4,
                           'celibataire',
                           '1980-02-03',
                           0,
                           765432156,
                           'CDD',
                           '2010-03-03',
                           '2010-09-07',
                           '-',
                           1,
                           3,
                           NULL,
                           NULL,
                           '54366789086'
                       );

INSERT INTO ressources (
                           id,
                           user_id,
                           etat_civil,
                           dob,
                           nb_enfants,
                           num_cnss,
                           type_contrat,
                           date_recrutement,
                           date_titularisation,
                           date_licenciement,
                           actif,
                           validator_id,
                           created_at,
                           updated_at,
                           rib
                       )
                       VALUES (
                           5,
                           5,
                           'celibataire',
                           '1990-02-03',
                           0,
                           765992156,
                           'CDD',
                           '2019-03-03',
                           '2016-09-07',
                           '-',
                           1,
                           3,
                           NULL,
                           NULL,
                           '54326789086'
                       );

INSERT INTO ressources (
                           id,
                           user_id,
                           etat_civil,
                           dob,
                           nb_enfants,
                           num_cnss,
                           type_contrat,
                           date_recrutement,
                           date_titularisation,
                           date_licenciement,
                           actif,
                           validator_id,
                           created_at,
                           updated_at,
                           rib
                       )
                       VALUES (
                           6,
                           6,
                           'celibataire',
                           '1990-02-03',
                           0,
                           765992156,
                           'CDD',
                           '2019-03-03',
                           '2016-09-07',
                           '-',
                           1,
                           3,
                           NULL,
                           NULL,
                           '54326789086'
                       );

INSERT INTO ressources (
                           id,
                           user_id,
                           etat_civil,
                           dob,
                           nb_enfants,
                           num_cnss,
                           type_contrat,
                           date_recrutement,
                           date_titularisation,
                           date_licenciement,
                           actif,
                           validator_id,
                           created_at,
                           updated_at,
                           rib
                       )
                       VALUES (
                           7,
                           7,
                           'marie',
                           '1990-02-03',
                           4,
                           765992156,
                           'CDD',
                           '2011-03-03',
                           '2016-09-07',
                           '-',
                           1,
                           3,
                           NULL,
                           NULL,
                           '54326789086'
                       );

INSERT INTO ressources (
                           id,
                           user_id,
                           etat_civil,
                           dob,
                           nb_enfants,
                           num_cnss,
                           type_contrat,
                           date_recrutement,
                           date_titularisation,
                           date_licenciement,
                           actif,
                           validator_id,
                           created_at,
                           updated_at,
                           rib
                       )
                       VALUES (
                           8,
                           8,
                           'celibataire',
                           '1990-02-03',
                           0,
                           765991886,
                           'CDI',
                           '2019-03-03',
                           '2016-09-07',
                           '-',
                           1,
                           3,
                           NULL,
                           NULL,
                           '54326789086'
                       );

INSERT INTO ressources (
                           id,
                           user_id,
                           etat_civil,
                           dob,
                           nb_enfants,
                           num_cnss,
                           type_contrat,
                           date_recrutement,
                           date_titularisation,
                           date_licenciement,
                           actif,
                           validator_id,
                           created_at,
                           updated_at,
                           rib
                       )
                       VALUES (
                           9,
                           9,
                           'celibataire',
                           '1990-02-03',
                           0,
                           765992156,
                           'CDD',
                           '2019-03-03',
                           '2016-09-07',
                           '-',
                           1,
                           3,
                           NULL,
                           NULL,
                           '54326789086'
                       );

INSERT INTO ressources (
                           id,
                           user_id,
                           etat_civil,
                           dob,
                           nb_enfants,
                           num_cnss,
                           type_contrat,
                           date_recrutement,
                           date_titularisation,
                           date_licenciement,
                           actif,
                           validator_id,
                           created_at,
                           updated_at,
                           rib
                       )
                       VALUES (
                           10,
                           10,
                           'celibataire',
                           '1990-02-03',
                           0,
                           765992156,
                           'CDD',
                           '2015-03-03',
                           '2016-09-07',
                           '-',
                           1,
                           3,
                           NULL,
                           NULL,
                           '54326789086'
                       );

INSERT INTO ressources (
                           id,
                           user_id,
                           etat_civil,
                           dob,
                           nb_enfants,
                           num_cnss,
                           type_contrat,
                           date_recrutement,
                           date_titularisation,
                           date_licenciement,
                           actif,
                           validator_id,
                           created_at,
                           updated_at,
                           rib
                       )
                       VALUES (
                           11,
                           11,
                           'marie',
                           '1990-02-03',
                           5,
                           765966156,
                           'CDI',
                           '2019-03-03',
                           '2016-09-07',
                           '-',
                           1,
                           3,
                           NULL,
                           NULL,
                           '54326789086'
                       );

INSERT INTO ressources (
                           id,
                           user_id,
                           etat_civil,
                           dob,
                           nb_enfants,
                           num_cnss,
                           type_contrat,
                           date_recrutement,
                           date_titularisation,
                           date_licenciement,
                           actif,
                           validator_id,
                           created_at,
                           updated_at,
                           rib
                       )
                       VALUES (
                           12,
                           12,
                           'celibataire',
                           '1990-02-03',
                           0,
                           765992156,
                           'CDD',
                           '2019-03-03',
                           '2016-09-07',
                           '-',
                           1,
                           3,
                           NULL,
                           NULL,
                           '54326789086'
                       );

INSERT INTO ressources (
                           id,
                           user_id,
                           etat_civil,
                           dob,
                           nb_enfants,
                           num_cnss,
                           type_contrat,
                           date_recrutement,
                           date_titularisation,
                           date_licenciement,
                           actif,
                           validator_id,
                           created_at,
                           updated_at,
                           rib
                       )
                       VALUES (
                           13,
                           13,
                           'celibataire',
                           '1990-02-03',
                           0,
                           765552156,
                           'CDD',
                           '2009-03-03',
                           '2016-09-07',
                           '-',
                           1,
                           3,
                           NULL,
                           NULL,
                           '54326789086'
                       );

INSERT INTO ressources (
                           id,
                           user_id,
                           etat_civil,
                           dob,
                           nb_enfants,
                           num_cnss,
                           type_contrat,
                           date_recrutement,
                           date_titularisation,
                           date_licenciement,
                           actif,
                           validator_id,
                           created_at,
                           updated_at,
                           rib
                       )
                       VALUES (
                           14,
                           14,
                           'marie',
                           '1990-02-03',
                           2,
                           765992156,
                           'CDI',
                           '2019-03-03',
                           '2016-09-07',
                           '-',
                           1,
                           3,
                           NULL,
                           NULL,
                           '54326789086'
                       );

INSERT INTO ressources (
                           id,
                           user_id,
                           etat_civil,
                           dob,
                           nb_enfants,
                           num_cnss,
                           type_contrat,
                           date_recrutement,
                           date_titularisation,
                           date_licenciement,
                           actif,
                           validator_id,
                           created_at,
                           updated_at,
                           rib
                       )
                       VALUES (
                           15,
                           15,
                           'celibataire',
                           '1990-02-03',
                           0,
                           765999956,
                           'CDD',
                           '2021-03-03',
                           '2016-09-07',
                           '-',
                           1,
                           3,
                           NULL,
                           NULL,
                           '54326789086'
                       );


-- Table: role_user
DROP TABLE IF EXISTS role_user;

CREATE TABLE role_user (
    id         INTEGER  NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    user_id    INTEGER  NOT NULL,
    role_id    INTEGER  NOT NULL,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          2,
                          2,
                          2,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          6,
                          6,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          7,
                          7,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          8,
                          8,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          9,
                          9,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          10,
                          10,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          11,
                          11,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          12,
                          12,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          13,
                          13,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          14,
                          14,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          15,
                          15,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          16,
                          16,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          18,
                          17,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          19,
                          18,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          20,
                          19,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          21,
                          20,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          22,
                          21,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          23,
                          22,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          24,
                          23,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          25,
                          24,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          26,
                          29,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          27,
                          30,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          28,
                          31,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          29,
                          32,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          30,
                          33,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          42,
                          3,
                          1,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          45,
                          5,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          47,
                          34,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          49,
                          4,
                          3,
                          NULL,
                          NULL
                      );

INSERT INTO role_user (
                          id,
                          user_id,
                          role_id,
                          created_at,
                          updated_at
                      )
                      VALUES (
                          51,
                          1,
                          2,
                          NULL,
                          NULL
                      );


-- Table: roles
DROP TABLE IF EXISTS roles;

CREATE TABLE roles (
    id         INTEGER  NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    name       VARCHAR  NOT NULL,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO roles (
                      id,
                      name,
                      created_at,
                      updated_at
                  )
                  VALUES (
                      1,
                      'admin',
                      NULL,
                      NULL
                  );

INSERT INTO roles (
                      id,
                      name,
                      created_at,
                      updated_at
                  )
                  VALUES (
                      2,
                      'manager',
                      NULL,
                      NULL
                  );

INSERT INTO roles (
                      id,
                      name,
                      created_at,
                      updated_at
                  )
                  VALUES (
                      3,
                      'employe',
                      NULL,
                      NULL
                  );


-- Table: schedulers
DROP TABLE IF EXISTS schedulers;

CREATE TABLE schedulers (
    id         INTEGER  NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    created_at DATETIME,
    updated_at DATETIME
);


-- Table: tauxhoraires
DROP TABLE IF EXISTS tauxhoraires;

CREATE TABLE tauxhoraires (
    id           INTEGER  NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    user_id      INTEGER  NOT NULL,
    taux_horaire NUMERIC,
    validator_id INTEGER,
    created_at   DATETIME,
    updated_at   DATETIME
);

INSERT INTO tauxhoraires (
                             id,
                             user_id,
                             taux_horaire,
                             validator_id,
                             created_at,
                             updated_at
                         )
                         VALUES (
                             1,
                             4,
                             5.4,
                             3,
                             NULL,
                             NULL
                         );

INSERT INTO tauxhoraires (
                             id,
                             user_id,
                             taux_horaire,
                             validator_id,
                             created_at,
                             updated_at
                         )
                         VALUES (
                             2,
                             6,
                             6.3,
                             3,
                             NULL,
                             NULL
                         );

INSERT INTO tauxhoraires (
                             id,
                             user_id,
                             taux_horaire,
                             validator_id,
                             created_at,
                             updated_at
                         )
                         VALUES (
                             3,
                             5,
                             6.4,
                             3,
                             NULL,
                             NULL
                         );


-- Table: timecounters
DROP TABLE IF EXISTS timecounters;

CREATE TABLE timecounters (
    id         INTEGER  NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    user_id    INTEGER  NOT NULL,
    work_time  FLOAT,
    created_at DATETIME,
    updated_at DATETIME
);


-- Table: users
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id                INTEGER  NOT NULL
                               PRIMARY KEY AUTOINCREMENT,
    nom               VARCHAR  NOT NULL,
    prenom            VARCHAR  NOT NULL,
    adresse           VARCHAR,
    gsm               VARCHAR,
    file              VARCHAR,
    email             VARCHAR  NOT NULL,
    email_verified_at DATETIME,
    password          VARCHAR  NOT NULL,
    remember_token    VARCHAR,
    created_at        DATETIME,
    updated_at        DATETIME
);

INSERT INTO users (
                      id,
                      nom,
                      prenom,
                      adresse,
                      gsm,
                      file,
                      email,
                      email_verified_at,
                      password,
                      remember_token,
                      created_at,
                      updated_at
                  )
                  VALUES (
                      1,
                      'belkahla',
                      'iheb',
                      'rue hedi nouira, 1023 zahrouni',
                      '99 718 543',
                      'uploads/users/manager/belkahla-1/iheb.jpg',
                      'belkahla@soft-paie.tn',
                      NULL,
                      '$2y$10$vxauVxkb9Rl1Bt7cAqNs3ef3CypIDnSU20sAZ2/5TQXWzgpRpxY.G',
                      NULL,
                      NULL,
                      '2021-06-01 08:07:28'
                  );

INSERT INTO users (
                      id,
                      nom,
                      prenom,
                      adresse,
                      gsm,
                      file,
                      email,
                      email_verified_at,
                      password,
                      remember_token,
                      created_at,
                      updated_at
                  )
                  VALUES (
                      2,
                      'belkadi',
                      'bassem',
                      'Avenue Habib Bourguiba - 2080 Ariana.',
                      '97 719 371',
                      'uploads/users/manager/belkadi-2/bassem.jpg',
                      'bassem@soft-paie.tn',
                      NULL,
                      '$2y$10$EBhTWt.SKqgp7e1CBUgJX.GEvCNO8gad84YY0/B1yNAFNgl9rpk1O',
                      NULL,
                      '2021-05-22 03:13:28',
                      '2021-06-01 08:07:18'
                  );

INSERT INTO users (
                      id,
                      nom,
                      prenom,
                      adresse,
                      gsm,
                      file,
                      email,
                      email_verified_at,
                      password,
                      remember_token,
                      created_at,
                      updated_at
                  )
                  VALUES (
                      3,
                      'maala',
                      'abdelhamid',
                      'espace tunis-bloc c 1073 montplaisir',
                      '55 719 371',
                      'uploads/users/admin/maala-3/abdelhamid.jpg',
                      'maala@soft-paie.tn',
                      NULL,
                      '$2y$10$mfF88Zmev5W9KcPaB1/2iejhveNrGqavM06ZqnFVrp8DZwFuNHupu',
                      NULL,
                      '2021-05-22 03:22:32',
                      '2021-06-01 08:07:34'
                  );

INSERT INTO users (
                      id,
                      nom,
                      prenom,
                      adresse,
                      gsm,
                      file,
                      email,
                      email_verified_at,
                      password,
                      remember_token,
                      created_at,
                      updated_at
                  )
                  VALUES (
                      5,
                      'fadlaoui',
                      'nassima',
                      'Espace Tunis-Bloc C 1073 ennasr',
                      '22 419 371',
                      'uploads/users/employe/fadlaoui-5/nassima.jpeg',
                      'fadlaoui@soft-paie.tn',
                      NULL,
                      '$2y$10$rhxfw.yLW5IzyivEYuHIY.GsrQTgVluIjf7uvlohXXhMiH7u3NdKe',
                      NULL,
                      '2021-05-22 03:36:55',
                      '2021-05-31 15:00:14'
                  );

INSERT INTO users (
                      id,
                      nom,
                      prenom,
                      adresse,
                      gsm,
                      file,
                      email,
                      email_verified_at,
                      password,
                      remember_token,
                      created_at,
                      updated_at
                  )
                  VALUES (
                      6,
                      'fahem',
                      'karima',
                      'avenue farhat hached - 1060 tunis',
                      '66 555 855',
                      'uploads/users/employe/fahem-6/karima202105260422.jpg',
                      'fahem@soft-paie.tn',
                      NULL,
                      '$2y$10$2hzs.ezea83kKkPGLxJGB.FtAMWRitP.vvMxh/wP2cWfvAaVPydZi',
                      NULL,
                      '2021-05-22 03:39:51',
                      '2021-06-01 08:07:58'
                  );

INSERT INTO users (
                      id,
                      nom,
                      prenom,
                      adresse,
                      gsm,
                      file,
                      email,
                      email_verified_at,
                      password,
                      remember_token,
                      created_at,
                      updated_at
                  )
                  VALUES (
                      7,
                      'rajhi',
                      'hamdi',
                      ' Avenue Tunis Carthage - 1060 Tunis',
                      '27 332 102',
                      'uploads/users/employe/rajhi-7/hamdi.jpeg',
                      'iheblatrech1998@gmail.com',
                      NULL,
                      '$2y$10$qVLuSHBPOKy2cAPcDuz8a.MHU8xDnQCl15SBR68Oy/uCbNl8G3LEe',
                      NULL,
                      '2021-05-22 03:42:14',
                      '2021-06-01 08:08:05'
                  );

INSERT INTO users (
                      id,
                      nom,
                      prenom,
                      adresse,
                      gsm,
                      file,
                      email,
                      email_verified_at,
                      password,
                      remember_token,
                      created_at,
                      updated_at
                  )
                  VALUES (
                      8,
                      'hfaied',
                      'abdkarim',
                      'avenue tunis carthage - 1060 tunis',
                      '55 345 567',
                      'uploads/users/employe/fekih-8\abdkarim202106020222.jpg',
                      'hfaied@soft-paie.tn',
                      NULL,
                      '$2y$10$2mIW6sUw7tzA8R5yb9MUp.IEOr5cDPlNcKp/Nd9BzhkmtElkDWTku',
                      NULL,
                      '2021-05-22 03:45:04',
                      '2021-06-02 02:46:22'
                  );

INSERT INTO users (
                      id,
                      nom,
                      prenom,
                      adresse,
                      gsm,
                      file,
                      email,
                      email_verified_at,
                      password,
                      remember_token,
                      created_at,
                      updated_at
                  )
                  VALUES (
                      9,
                      'kahlaoui',
                      'mounir',
                      '45 avenue habib bourguiba 1007',
                      '33 355 109',
                      'uploads/users/employe/kahlaoui-9/mounir.jpg',
                      'kahlaoui@soft-paie.tn',
                      NULL,
                      '$2y$10$tmLaFZyNpOiUgrLePw6e3u72JHcaN92yboyVgKvix.1MiYB8296WO',
                      NULL,
                      '2021-05-22 03:47:05',
                      '2021-06-01 08:08:17'
                  );

INSERT INTO users (
                      id,
                      nom,
                      prenom,
                      adresse,
                      gsm,
                      file,
                      email,
                      email_verified_at,
                      password,
                      remember_token,
                      created_at,
                      updated_at
                  )
                  VALUES (
                      10,
                      'belhaj-ali',
                      'kamal',
                      '  40 Avenue Habib Jgham 1007',
                      '44 655 109',
                      'uploads/users/employe/belhaj-ali-10/kamal.jpg',
                      'kamal@soft-paie.tn',
                      NULL,
                      '$2y$10$ZsghC9oqNvcLh8PLC9l0K.mhhgVF5jhe7TpVOkNqNaybPOpy3fwqm',
                      NULL,
                      '2021-05-22 03:49:08',
                      '2021-05-22 03:49:08'
                  );

INSERT INTO users (
                      id,
                      nom,
                      prenom,
                      adresse,
                      gsm,
                      file,
                      email,
                      email_verified_at,
                      password,
                      remember_token,
                      created_at,
                      updated_at
                  )
                  VALUES (
                      11,
                      'lahmer',
                      'najla',
                      '  04 Avenue Habiba Messika 1007',
                      '97 655 109',
                      'uploads/users/employe/lahmer-11/najla.jpg',
                      'support@tn-devfactory.com',
                      NULL,
                      '$2y$10$3gOUok3zpTD0/U/B2KABA.tSpSwLNgpFKd/uEx6MdzOIgHqiACqZa',
                      NULL,
                      '2021-05-22 03:50:55',
                      '2021-05-22 03:50:55'
                  );

INSERT INTO users (
                      id,
                      nom,
                      prenom,
                      adresse,
                      gsm,
                      file,
                      email,
                      email_verified_at,
                      password,
                      remember_token,
                      created_at,
                      updated_at
                  )
                  VALUES (
                      12,
                      'lasfer',
                      'sami',
                      '  04 Rue Bab El Khadra 1006',
                      '32 659 809',
                      'uploads/users/employe/Lasfer-12/sami.jpg',
                      'barhoumi.chawki@gmail.com',
                      NULL,
                      '$2y$10$6dMCnTy6vU.8qPPuRW1rRuCcvN0arqr0tdij7ba.jKi2UgtbanTd2',
                      NULL,
                      '2021-05-22 03:52:48',
                      '2021-05-22 03:52:48'
                  );

INSERT INTO users (
                      id,
                      nom,
                      prenom,
                      adresse,
                      gsm,
                      file,
                      email,
                      email_verified_at,
                      password,
                      remember_token,
                      created_at,
                      updated_at
                  )
                  VALUES (
                      13,
                      'laajili',
                      'manel',
                      '  04 Rue Bab Souika 1006',
                      '55 657 309',
                      'uploads/users/employe/laajili-13/manel.jpg',
                      'tndevfactory@gmail.com',
                      NULL,
                      '$2y$10$drQUwmYC3R7r/ck/eybZUuhxjTmMcpxpXx7srolNcg7WmVGy3r4jy',
                      NULL,
                      '2021-05-22 03:54:38',
                      '2021-05-22 03:54:38'
                  );

INSERT INTO users (
                      id,
                      nom,
                      prenom,
                      adresse,
                      gsm,
                      file,
                      email,
                      email_verified_at,
                      password,
                      remember_token,
                      created_at,
                      updated_at
                  )
                  VALUES (
                      14,
                      'sghaier',
                      'mostfa',
                      '  04 Rue Bab Jazira 1009',
                      '98 157 409',
                      'uploads/users/employe/sghaier-14/mostfa.jpg',
                      'tndev8@gmail.com',
                      NULL,
                      '$2y$10$7vMw4IKrUaiMk/VESFWZBOvv/c6uxuCUzaKOwQLmJrrlEG52q38gG',
                      NULL,
                      '2021-05-22 03:56:39',
                      '2021-05-22 03:56:39'
                  );


-- Index: failed_jobs_uuid_unique
DROP INDEX IF EXISTS failed_jobs_uuid_unique;

CREATE UNIQUE INDEX failed_jobs_uuid_unique ON failed_jobs (
    "uuid"
);


-- Index: oauth_access_tokens_user_id_index
DROP INDEX IF EXISTS oauth_access_tokens_user_id_index;

CREATE INDEX oauth_access_tokens_user_id_index ON oauth_access_tokens (
    "user_id"
);


-- Index: oauth_auth_codes_user_id_index
DROP INDEX IF EXISTS oauth_auth_codes_user_id_index;

CREATE INDEX oauth_auth_codes_user_id_index ON oauth_auth_codes (
    "user_id"
);


-- Index: oauth_clients_user_id_index
DROP INDEX IF EXISTS oauth_clients_user_id_index;

CREATE INDEX oauth_clients_user_id_index ON oauth_clients (
    "user_id"
);


-- Index: oauth_refresh_tokens_access_token_id_index
DROP INDEX IF EXISTS oauth_refresh_tokens_access_token_id_index;

CREATE INDEX oauth_refresh_tokens_access_token_id_index ON oauth_refresh_tokens (
    "access_token_id"
);


-- Index: password_resets_email_index
DROP INDEX IF EXISTS password_resets_email_index;

CREATE INDEX password_resets_email_index ON password_resets (
    "email"
);


-- Index: users_email_unique
DROP INDEX IF EXISTS users_email_unique;

CREATE UNIQUE INDEX users_email_unique ON users (
    "email"
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
