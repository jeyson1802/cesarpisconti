package com.cesarpisconti.cruzada.service;

import com.cesarpisconti.cruzada.dto.CargoDto;
import com.cesarpisconti.cruzada.dto.RegistroConferenciaDto;
import com.cesarpisconti.cruzada.request.RequestRegistroConferencia;

import java.io.OutputStream;
import java.util.List;

public interface RegistroConferenciaService {

    RegistroConferenciaDto registrarParticipanteConferencia(RequestRegistroConferencia requestRegistroConferencia) throws Exception;

    void generarConstanciaParticipante(Integer idParticipante, OutputStream outputStream) throws Exception;

    void enviarEmailConstanciaParticipante(Integer idParticipante) throws Exception;

    void agregarContactoParticipanteSendinBlue(Integer idParticipante) throws Exception;

}
