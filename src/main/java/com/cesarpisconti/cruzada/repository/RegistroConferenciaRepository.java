package com.cesarpisconti.cruzada.repository;

import com.cesarpisconti.cruzada.model.Pais;
import com.cesarpisconti.cruzada.model.RegistroConferencia;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RegistroConferenciaRepository extends JpaRepository<RegistroConferencia, Integer> {

    RegistroConferencia findByCorreo(String correo) throws Exception;
}