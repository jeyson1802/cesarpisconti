package com.cesarpisconti.cruzada.service.impl;

import com.cesarpisconti.cruzada.dto.ConferenciaDto;
import com.cesarpisconti.cruzada.model.Conferencia;
import com.cesarpisconti.cruzada.model.Pais;
import com.cesarpisconti.cruzada.repository.ConferenciaRepository;
import com.cesarpisconti.cruzada.repository.PaisRepository;
import com.cesarpisconti.cruzada.service.ConferenciaService;
import com.cesarpisconti.cruzada.util.Constante;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class ConferenciaServiceImpl implements ConferenciaService {

    private static final Logger logger = LogManager.getLogger(ConferenciaServiceImpl.class);

    @Autowired
    private ConferenciaRepository conferenciaRepository;

    @Autowired
    private ModelMapper modelMapper;

    @Override
    public ConferenciaDto obtenerConferenciaPorPais(Integer idPais) throws Exception {

        Conferencia conferencia = conferenciaRepository.findByPaisIdAndEstado(idPais, Constante.COD_ESTADO_ACTIVO);

        logger.info("conferencia ===> " + conferencia.toString());

        ConferenciaDto conferenciaDto = modelMapper.map(conferencia, ConferenciaDto.class);

        logger.info("conferenciaDto ===> " + conferenciaDto.toString());

        return conferenciaDto;
    }
}
