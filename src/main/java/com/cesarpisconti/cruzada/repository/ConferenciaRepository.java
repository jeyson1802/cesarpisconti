package com.cesarpisconti.cruzada.repository;

import com.cesarpisconti.cruzada.model.Conferencia;
import com.cesarpisconti.cruzada.model.Pais;
import org.springframework.data.repository.CrudRepository;

public interface ConferenciaRepository extends CrudRepository<Conferencia, Integer> {

    Conferencia findByPaisIdAndEstado(Integer idPais, String estado) throws Exception;
}