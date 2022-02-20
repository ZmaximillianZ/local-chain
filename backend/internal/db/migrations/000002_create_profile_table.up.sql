create table profile (
    id            int GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    status         int2
        CONSTRAINT state_check CHECK (status > 0 and status <= 5),
    phone         varchar(255) NOT NULL,
    email         varchar(255) NOT NULL,
    dob           date NOT NULL
)