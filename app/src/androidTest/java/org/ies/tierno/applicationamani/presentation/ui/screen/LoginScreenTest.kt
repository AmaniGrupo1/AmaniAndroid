package org.ies.tierno.applicationamani.presentation.ui.screen

import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.test.onNodeWithText
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.junit.Rule
import org.junit.Test
import org.koin.core.context.stopKoin
import org.junit.After
import io.mockk.mockk
import io.mockk.every
import kotlinx.coroutines.flow.MutableStateFlow

class LoginScreenTest {

    @get:Rule
    val composeTestRule = createComposeRule()

    @After
    fun tearDown() {
        stopKoin()
    }

    @Test
    fun loginScreen_displaysInitialElements() {
        val mockViewModel = mockk<LoginViewModel>(relaxed = true)
        
        // Mocking the flows to avoid initialization issues
        every { mockViewModel.username } returns MutableStateFlow("")
        every { mockViewModel.password } returns MutableStateFlow("")
        every { mockViewModel.loginResult } returns MutableStateFlow(null)
        every { mockViewModel.isLoggingIn } returns MutableStateFlow(false)
        every { mockViewModel.loginError } returns MutableStateFlow(null)
        every { mockViewModel.isLoginFormValid() } returns false

        composeTestRule.setContent {
            LoginScreen(
                navController = rememberNavController(),
                loginViewModel = mockViewModel
            )
        }

        // Verify key elements are displayed
        composeTestRule.onNodeWithText("AMANI").assertIsDisplayed()
        composeTestRule.onNodeWithText("Psicología y Bienestar").assertIsDisplayed()
        composeTestRule.onNodeWithText("Iniciar sesión").assertIsDisplayed()
    }
}
