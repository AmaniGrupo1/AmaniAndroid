package org.ies.tierno.applicationamani.domain.models.enumm

enum class MetodoPago {
    EFECTIVO,
    TARJETA,
    PRESENCIAL,
    ONLINE,
}

enum class EstadoPago {
    PENDIENTE,
    PAGADO,
    FALLIDO,
    REEMBOLSADO,
}
