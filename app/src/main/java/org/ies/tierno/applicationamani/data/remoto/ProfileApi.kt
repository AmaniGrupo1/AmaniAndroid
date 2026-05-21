package org.ies.tierno.applicationamani.data.remoto

import okhttp3.MultipartBody
import org.ies.tierno.applicationamani.domain.models.admin.PsicologoConPacientesDTO
import org.ies.tierno.applicationamani.dto.perfil.admin.AdminDTO
import org.ies.tierno.applicationamani.dto.perfil.admin.AdminResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.admin.UpdateAdminRequestDTO
import org.ies.tierno.applicationamani.dto.perfil.paciente.PacienteProfileResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.paciente.PacienteResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.paciente.UpdatePacienteRequestDTO
import org.ies.tierno.applicationamani.dto.perfil.psicologo.PsicologoProfileResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.psicologo.UpdatePsicologoRequestDTO
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoRequestDTO
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.Multipart
import retrofit2.http.POST
import retrofit2.http.PUT
import retrofit2.http.Part
import retrofit2.http.Path

/**
 * Interfaz Retrofit para la consulta y actualización de perfiles de los tres roles:
 * psicólogo, paciente y administrador.
 *
 * Centraliza los endpoints de obtención de datos de perfil, subida de foto y
 * actualización de información para cada tipo de usuario.
 */
interface ProfileApi {
    /**
     * Sube la foto de perfil de un psicólogo.
     *
     * @param id Identificador único del psicólogo.
     * @param file Archivo de imagen en formato multipart.
     * @return Perfil actualizado del psicólogo con la URL de la foto.
     */
    @Multipart
    @POST("/api/psicologo/{id}/foto")
    suspend fun uploadFoto(
        @Path("id") id: Long,
        @Part file: MultipartBody.Part,
    ): PsicologoProfileResponseDTO

    /**
     * Obtiene los datos completos del perfil de un psicólogo.
     *
     * @param id Identificador único del psicólogo.
     * @return Datos del perfil del psicólogo.
     */
    @GET("/api/psicologo/{id}/perfil")
    suspend fun getProfilePsicologo(
        @Path("id") id: Long,
    ): PsicologoProfileResponseDTO

    /**
     * Obtiene el psicólogo asignado a un paciente.
     *
     * @param idPaciente Identificador único del paciente.
     * @return Datos del perfil del psicólogo asignado al paciente.
     */
    @GET("/api/psicologo/pacientes/{idPaciente}/psicologo")
    suspend fun obtenerPsicologoAsignado(
        @Path("idPaciente") idPaciente: Long,
    ): PsicologoProfileResponseDTO

    /**
     * Recupera los datos de un paciente por su identificador.
     *
     * @param id Identificador único del paciente.
     * @return Perfil del paciente solicitado.
     */
    @GET("/api/pacientes/{id}")
    suspend fun getPacienteById(
        @Path("id") id: Long,
    ): PacienteProfileResponseDTO

    /**
     * Recupera los datos de un paciente por su identificador de Firebase.
     *
     * @param id Identificador único del paciente en el sistema.
     * @return Perfil del paciente correspondiente al identificador Firebase.
     */
    @GET("/api/pacientes/usuario/{id}")
    suspend fun getPacienteByIdFirebase(
        @Path("id") id: Long,
    ): PacienteProfileResponseDTO

    /**
     * Obtiene los datos de un psicólogo por su identificador de Firebase.
     *
     * @param id Identificador único del psicólogo en el sistema.
     * @return Datos del perfil del psicólogo.
     */
    @GET("/api/psicologo/usuario/{id}")
    suspend fun getPsicologoById(
        @Path("id") id: Long,
    ): PsicologoProfileResponseDTO

    /**
     * Actualiza los datos del perfil de un psicólogo.
     *
     * @param id Identificador único del psicólogo.
     * @param psicologoProfile DTO con los campos modificables del perfil.
     * @return Perfil actualizado del psicólogo.
     */
    @PUT("/api/psicologo/update/{id}")
    suspend fun updateProfile(
        @Path("id") id: Long,
        @Body psicologoProfile: UpdatePsicologoRequestDTO,
    ): PsicologoProfileResponseDTO

    /**
     * Obtiene el perfil del administrador autenticado.
     *
     * @param id Identificador único del administrador.
     * @return Datos del perfil del administrador.
     */
    @GET("/api/psicologo/admin/{id}/perfil")
    suspend fun getAdminProfile(
        @Path("id") id: Long,
    ): AdminDTO

    /**
     * Actualiza los datos del perfil de un administrador.
     *
     * @param id Identificador único del administrador.
     * @param dto Datos modificables del perfil de administrador.
     * @return Respuesta con el perfil de administrador actualizado.
     */
    @PUT("/api/psicologo/admin/{id}/update")
    suspend fun updateAdmin(
        @Path("id") id: Long,
        @Body dto: UpdateAdminRequestDTO,
    ): AdminResponseDTO

    /**
     * Sube o actualiza la foto de perfil de un administrador.
     *
     * @param id Identificador único del administrador.
     * @param file Archivo de imagen en formato multipart.
     * @return Perfil del administrador con la nueva URL de la foto.
     */
    @Multipart
    @POST("/api/psicologo/admin/{id}/foto")
    suspend fun updateAdminPhoto(
        @Path("id") id: Long,
        @Part file: MultipartBody.Part,
    ): AdminDTO

    /**
     * Obtiene el perfil de un paciente autenticado.
     *
     * @param id Identificador único del paciente.
     * @return Datos del perfil del paciente.
     */
    @GET("/api/psicologo/paciente/{id}/get")
    suspend fun getPacienteProfile(
        @Path("id") id: Long,
    ): PacienteProfileResponseDTO

    /**
     * Actualiza los datos del perfil de un paciente.
     *
     * @param id Identificador único del paciente.
     * @param dto Datos modificables del perfil de paciente.
     * @return Respuesta con el perfil de paciente actualizado.
     */
    @PUT("/api/psicologo/paciente/update/{id}")
    suspend fun updatePaciente(
        @Path("id") id: Long,
        @Body dto: UpdatePacienteRequestDTO,
    ): PacienteResponseDTO

    /**
     * Sube o actualiza la foto de perfil de un paciente.
     *
     * @param id Identificador único del paciente.
     * @param file Archivo de imagen en formato multipart.
     * @return Perfil del paciente con la nueva URL de la foto.
     */
    @Multipart
    @POST("/api/psicologo/paciente/{id}/foto")
    suspend fun updatePacientePhoto(
        @Path("id") id: Long,
        @Part file: MultipartBody.Part,
    ): PacienteProfileResponseDTO

    /**
     * Permite al administrador editar el perfil de un psicólogo.
     *
     * @param id Identificador único del psicólogo a editar.
     * @param dto Datos del psicólogo que se desean modificar desde el panel de administración.
     * @return Datos actualizados del psicólogo junto con su lista de pacientes.
     */
    @PUT("/api/admin/psicologos/editar/{id}")
    suspend fun updatePerfilPsicologoAdmin(
        @Path("id") id: Long,
        @Body dto: PsicologoRequestDTO
    ): PsicologoConPacientesDTO

}
