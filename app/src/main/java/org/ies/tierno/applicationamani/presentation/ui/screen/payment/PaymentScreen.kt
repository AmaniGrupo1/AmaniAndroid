package org.ies.tierno.applicationamani.presentation.ui.screen.payment

import android.widget.Toast
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import com.stripe.android.paymentsheet.PaymentSheetResult
import com.stripe.android.paymentsheet.rememberPaymentSheet
import org.ies.tierno.applicationamani.presentation.viewmodels.payment.PaymentUiState
import org.ies.tierno.applicationamani.presentation.viewmodels.payment.PaymentViewModel

/**
 * Pantalla de pago de una cita mediante la integración con Stripe.
 *
 * Muestra un resumen de la cita (psicólogo, fecha, importe) y gestiona
 * el flujo de pago seguro a través de Stripe Payment Sheet. Notifica al
 * usuario el resultado del pago (éxito, cancelación o error) y permite
 * reintentar en caso de fallo.
 *
 * @param citaId Identificador de la cita a pagar.
 * @param psicologoName Nombre del psicólogo asociado a la cita.
 * @param fecha Fecha de la cita en formato legible.
 * @param monto Importe a pagar.
 * @param viewModel ViewModel que gestiona el flujo de pago.
 * @param onPaymentSuccess Callback invocado cuando el pago se completa con éxito.
 * @param onPaymentCanceled Callback invocado cuando el usuario cancela el pago.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PaymentScreen(
    citaId: Long,
    psicologoName: String,
    fecha: String,
    monto: String,
    viewModel: PaymentViewModel,
    onPaymentSuccess: () -> Unit,
    onPaymentCanceled: () -> Unit,
) {
    val context = LocalContext.current
    val uiState by viewModel.uiState.collectAsStateWithLifecycle()

    val paymentSheet =
        rememberPaymentSheet { result ->
            when (result) {
                is PaymentSheetResult.Completed -> {
                    viewModel.onPaymentSuccess()
                }
                is PaymentSheetResult.Canceled -> {
                    viewModel.onPaymentCanceled()
                }
                is PaymentSheetResult.Failed -> {
                    viewModel.onPaymentFailed(result.error.localizedMessage ?: "Error en el pago")
                }
            }
        }

    LaunchedEffect(citaId) {
        if (uiState is PaymentUiState.Idle) {
            viewModel.preparePayment(citaId)
        }
    }

    LaunchedEffect(uiState) {
        when (val state = uiState) {
            is PaymentUiState.PaymentReady -> {
                paymentSheet.presentWithPaymentIntent(state.clientSecret)
            }
            is PaymentUiState.Success -> {
                Toast.makeText(context, "Pago realizado con éxito", Toast.LENGTH_LONG).show()
                onPaymentSuccess()
            }
            is PaymentUiState.Error -> {
                Toast.makeText(context, (uiState as PaymentUiState.Error).message, Toast.LENGTH_LONG).show()
            }
            else -> {}
        }
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Pago de sesión") },
            )
        },
    ) { paddingValues ->
        Column(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
        ) {
            Card(
                modifier = Modifier.fillMaxWidth(),
                elevation = CardDefaults.cardElevation(defaultElevation = 4.dp),
            ) {
                Column(
                    modifier = Modifier.padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp),
                ) {
                    Text(
                        text = "Resumen de la cita",
                        style = MaterialTheme.typography.titleMedium,
                    )
                    Text(text = "Psicólogo: $psicologoName")
                    Text(text = "Fecha: $fecha")
                    Text(text = "Importe: $monto")
                }
            }

            when (uiState) {
                is PaymentUiState.Idle,
                is PaymentUiState.Loading,
                -> {
                    CircularProgressIndicator()
                    Text(text = "Preparando pago seguro...")
                }
                is PaymentUiState.PaymentReady -> {
                    Text(
                        text = "Procesando pago seguro con Stripe...",
                        textAlign = TextAlign.Center,
                    )
                }
                is PaymentUiState.Error -> {
                    val errorMessage = (uiState as PaymentUiState.Error).message
                    Text(
                        text = "Error: $errorMessage",
                        color = MaterialTheme.colorScheme.error,
                        textAlign = TextAlign.Center,
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Button(onClick = { viewModel.preparePayment(citaId) }) {
                        Text("Reintentar")
                    }
                    Button(onClick = onPaymentCanceled) {
                        Text("Volver")
                    }
                }
                is PaymentUiState.Success -> {
                    Text(
                        text = "Pago completado correctamente.",
                        color = MaterialTheme.colorScheme.primary,
                        textAlign = TextAlign.Center,
                    )
                    Button(onClick = onPaymentSuccess) {
                        Text("Continuar")
                    }
                }
            }
        }
    }
}
