USE myapp;

CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

INSERT INTO users (name, email, password)
VALUES ('ABC', 'ABC@example.com', 'password'),
       ('DEF', 'DEF@example.com', 'password');

~                                                                                                                                                     
~                                                                                                                                                     
~                                                                                                                                                     
~                            
