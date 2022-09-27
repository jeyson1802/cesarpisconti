package com.cesarpisconti.cruzada.repository;

import com.cesarpisconti.cruzada.model.Cargo;
import com.cesarpisconti.cruzada.model.Fuente;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface FuenteRepository extends CrudRepository<Fuente, Integer> {

    List<Fuente> findByEstadoOrderByIdAsc(String estado) throws Exception;
}