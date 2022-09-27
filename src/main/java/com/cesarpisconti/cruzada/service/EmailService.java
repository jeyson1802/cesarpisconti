package com.cesarpisconti.cruzada.service;

import com.cesarpisconti.cruzada.dto.RegistroConferenciaDto;

import java.util.Map;

public interface EmailService {

    void sendMail(String template, String asunto, String destino, Map<String, Object> parametros, Map<String, byte[]> imagenesCorreo,  Map<String, byte[]> adjuntos) throws Exception;
}
