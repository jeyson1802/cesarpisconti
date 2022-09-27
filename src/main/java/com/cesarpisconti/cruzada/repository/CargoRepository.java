package com.cesarpisconti.cruzada.repository;

import com.cesarpisconti.cruzada.model.Cargo;
import com.cesarpisconti.cruzada.model.Pais;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CargoRepository extends CrudRepository<Cargo, Integer> {

    List<Cargo> findByEstadoOrderByIdAsc(String estado) throws Exception;
}