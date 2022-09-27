package com.cesarpisconti.cruzada.service;

import com.cesarpisconti.cruzada.dto.CargoDto;
import com.cesarpisconti.cruzada.dto.ConferenciaDto;
import com.cesarpisconti.cruzada.model.Conferencia;

import java.util.List;

public interface ConferenciaService {

    ConferenciaDto obtenerConferenciaPorPais(Integer idPais) throws Exception;

}
