CREATE TABLE Usuarios(
    Nombre VARCHAR(255) NOT NULL,
    Usuario VARCHAR(255) NOT NULL PRIMARY KEY,
    Contrasenia VARCHAR(255) NOT NULL,
    EsAdministrador BOOLEAN
);