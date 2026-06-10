package org.ies.tierno.applicationamani.presentation.viewmodels.juego


import androidx.lifecycle.ViewModel
import kotlinx.coroutines.flow.StateFlow
import org.ies.tierno.applicationamani.data.local.juego.SnakeGameEngine
import org.ies.tierno.applicationamani.data.local.juego.GameState

class SnakeViewModel : ViewModel() {

    private val gameEngine = SnakeGameEngine()

    val gameState: StateFlow<GameState> = gameEngine.gameState

    fun moveSnake() {
        gameEngine.moveSnake()
    }

    fun setDirection(direction: org.ies.tierno.applicationamani.domain.models.enumm.Direction) {
        gameEngine.setDirection(direction)
    }

    fun resetGame() {
        gameEngine.resetGame()
    }

    fun pauseGame() {
        gameEngine.pauseGame()
    }

    fun resumeGame() {
        gameEngine.resumeGame()
    }

    override fun onCleared() {
        super.onCleared()
        // Limpiar recursos si es necesario
    }
}