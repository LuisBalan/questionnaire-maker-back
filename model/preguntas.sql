    /* Preguntas */
    -- FOREIGN KEY(Id_Pregunta) REFERENCES Cuestionarios(Id_Cuestionario) ON DELETE CASCADE ON UPDATE RESTRICT,
CREATE TABLE Preguntas (
    Id_Cuestionario INT NOT NULL,
    Id_Pregunta INT NOT NULL AUTO_INCREMENT,
    Pregunta VARCHAR(255) NOT NULL,

    PRIMARY KEY (Id_Cuestionario, Id_Pregunta),
    FOREIGN KEY(Id_Cuestionario) REFERENCES Cuestionarios(Id_Cuestionario) ON DELETE CASCADE ON UPDATE RESTRICT,
    UNIQUE(Id_Cuestionario, Id_Pregunta)
);