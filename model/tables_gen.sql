/* Cuestionarios */
CREATE TABLE Cuestionarios (
    Id_Cuestionario INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(255) NOT NULL,
    Fecha_Creacion TIMESTAMP NOT NULL DEFAULT NOW()
);

/* Preguntas */
CREATE TABLE Preguntas (
    Id_Cuestionario INT NOT NULL,
    Id_Pregunta INT NOT NULL AUTO_INCREMENT,
    Pregunta VARCHAR(255) NOT NULL,

    PRIMARY KEY (Id_Cuestionario, Id_Pregunta),
    FOREIGN KEY(Id_Cuestionario) REFERENCES Cuestionarios(Id_Cuestionario) ON DELETE CASCADE ON UPDATE RESTRICT,
    FOREIGN KEY(Id_Pregunta) REFERENCES Cuestionarios(Id_Cuestionario) ON DELETE CASCADE ON UPDATE RESTRICT,
    UNIQUE(Id_Cuestionario, Id_Pregunta)
);

/* Respuestas */
CREATE TABLE Respuestas (
    Id_Cuestionario INT NOT NULL,
    Id_Pregunta INT NOT NULL,
    Id_Respuesta INT NOT NULL AUTO_INCREMENT,
    Respuesta VARCHAR(255) NOT NULL,
    EsCorrecta BOOLEAN,

    PRIMARY KEY (Id_Cuestionario, Id_Pregunta, Id_Respuesta),
    FOREIGN KEY(Id_Cuestionario) REFERENCES Preguntas(Id_Cuestionario) ON DELETE CASCADE ON UPDATE RESTRICT,
    FOREIGN KEY(Id_Pregunta) REFERENCES Preguntas(Id_Pregunta) ON DELETE CASCADE ON UPDATE RESTRICT,
    FOREIGN KEY(Id_Respuesta) REFERENCES Preguntas(Id_Pregunta) ON DELETE CASCADE ON UPDATE RESTRICT,
    UNIQUE(Id_Cuestionario, Id_Pregunta)
);

CREATE TABLE Usuarios(
    Nombre VARCHAR(255) NOT NULL,
    Usuario VARCHAR(255) NOT NULL PRIMARY KEY,
    Contrasenia VARCHAR(255) NOT NULL,
    EsAdministrador BOOLEAN
);


