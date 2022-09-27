package com.cesarpisconti.cruzada.service;

import com.cesarpisconti.cruzada.dto.CargoDto;
import com.cesarpisconti.cruzada.dto.PaisDto;

import java.util.List;

public interface CargoService {

    List<CargoDto> listarCargos() throws Exception;

}
