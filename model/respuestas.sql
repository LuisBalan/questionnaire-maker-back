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
    UNIQUE(Id_Cuestionario, Id_Pregunta, Id_Respuesta)

);
/*
--FOREIGN KEY(Id_Respuesta) REFERENCES Preguntas(Id_Pregunta) ON DELETE CASCADE ON UPDATE RESTRICT,
*/