package org.ies.tierno.applicationamani.presentation.ui.screen

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipal

@Composable
fun Principal(navController: NavController) {
    val minu = FontFamily(
        Font(R.font.nunito_variablefont_wght)
    )
    val roboto = FontFamily(
        Font(R.font.roboto_variablefont_wdth_wght)
    )
    val colorButton = android.graphics.Color.parseColor("#CCC0E4")
    Scaffold(
        topBar = {
            MenuPrincipal(navController)
        }
    ) {
        innerPadding ->
        Column(
            modifier = Modifier.padding(innerPadding)
                .padding(16.dp)
                .fillMaxSize(),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center
        ) {
            Text(
                "AMANI",
                fontFamily = minu,
                modifier = Modifier.padding(16.dp),
                fontSize = 50.sp
            )
            Text(
                "Aquí comienza tu camino de autoconocimiento,bienestar y paz interior",
                fontFamily = roboto,
                modifier = Modifier.padding(16.dp)
                    .fillMaxWidth(),
                fontSize = 16.sp,
                textAlign = TextAlign.Center,
                lineHeight = 26.sp
            )
            Text(
                "Cada paso que das hacia tu bienestar, por pequeño que parezca, es un acto de valentía y amor propio.",
                fontFamily = roboto,
                modifier = Modifier.padding(16.dp)
                    .fillMaxWidth(),
                fontSize = 16.sp,
                textAlign = TextAlign.Center,
                lineHeight = 26.sp
            )

            Button(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(50.dp),
                shape = RoundedCornerShape(50.dp),
                onClick = {

                },
                border = BorderStroke(2.dp, Color.Black),
                colors = ButtonDefaults.buttonColors(
                    containerColor = Color(colorButton),
                    contentColor = Color.Black,

                    )
            ) {
                Text(
                    "Realizar cuestionario",
                    fontSize = 16.sp,
                    fontFamily = roboto
                )
            }
            Espaciado(15)
            Button(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(50.dp),
                shape = RoundedCornerShape(50.dp),
                onClick = {

                },
                border = BorderStroke(2.dp, Color.Black),
                colors = ButtonDefaults.buttonColors(
                    containerColor = Color(colorButton),
                    contentColor = Color.Black,

                    )
            ) {
                Text(
                    "Consejo",
                    fontSize = 16.sp,
                    fontFamily = roboto
                )
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
fun PrincipalPreview() {
    Principal(rememberNavController())
}