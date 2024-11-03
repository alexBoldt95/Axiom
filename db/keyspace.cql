
CREATE KEYSPACE IF NOT EXISTS axiom WITH REPLICATION =
{ 'class' : 'NetworkTopologyStrategy',
  'DC1' : '3'
};

CREATE TABLE IF NOT EXISTS axiom.test (
    id uuid PRIMARY KEY,
    name text,
    string_col text,
    float_col float,
    double_col double,
    created_at timestamp, -- milliseconds
    updated_at timestamp  -- milliseconds
);
