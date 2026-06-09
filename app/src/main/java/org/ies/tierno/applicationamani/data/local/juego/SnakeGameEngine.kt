package org.ies.tierno.applicationamani.data.local.juego

import android.graphics.Point
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import org.ies.tierno.applicationamani.domain.models.enumm.Direction
import kotlin.random.Random

data class GameState(
    val snake: List<Point>,
    val food: Point,
    val direction: Direction,
    val score: Int,
    val isGameOver: Boolean,
    val isPlaying: Boolean,
    val gridSize: Int
)

class SnakeGameEngine(
    private val gridSize: Int = 20,
    private val initialSnake: List<Point> = listOf(
        Point(5, 5),
        Point(4, 5),
        Point(3, 5)
    )
) {

    private val _gameState = MutableStateFlow(
        GameState(
            snake = initialSnake,
            food = Point(10, 10),
            direction = Direction.RIGHT,
            score = 0,
            isGameOver = false,
            isPlaying = true,
            gridSize = gridSize
        )
    )

    val gameState: StateFlow<GameState> = _gameState.asStateFlow()

    private var pendingDirection: Direction = Direction.RIGHT
    private var currentDirection: Direction = Direction.RIGHT

    init {
        spawnFood()
    }

    fun setDirection(newDirection: Direction) {
        // Evitar que la serpiente vaya en dirección opuesta a la actual
        if (!newDirection.isOpposite(currentDirection)) {
            pendingDirection = newDirection
        }
    }

    fun moveSnake() {
        if (_gameState.value.isGameOver || !_gameState.value.isPlaying) return

        // Actualizar dirección
        currentDirection = pendingDirection

        val currentState = _gameState.value
        val head = currentState.snake.first()

        val newHead = when (currentDirection) {
            Direction.UP -> Point(head.x, head.y - 1)
            Direction.DOWN -> Point(head.x, head.y + 1)
            Direction.LEFT -> Point(head.x - 1, head.y)
            Direction.RIGHT -> Point(head.x + 1, head.y)
        }

        val newSnake = mutableListOf(newHead)
        newSnake.addAll(currentState.snake)

        val ateFood = newHead == currentState.food

        if (!ateFood) {
            newSnake.removeAt(newSnake.size - 1)
        }

        val newScore = if (ateFood) currentState.score + 10 else currentState.score
        val newFood = if (ateFood) generateRandomFood(newSnake) else currentState.food

        val isGameOver = checkCollision(newHead, newSnake, currentState.snake)

        _gameState.value = currentState.copy(
            snake = newSnake,
            food = newFood,
            score = newScore,
            isGameOver = isGameOver,
            direction = currentDirection
        )

        // Si el juego terminó, detener el movimiento automático
        if (isGameOver) {
            _gameState.value = _gameState.value.copy(isPlaying = false)
        }
    }

    private fun checkCollision(head: Point, newSnake: List<Point>, oldSnake: List<Point>): Boolean {
        // Colisión con paredes
        if (head.x < 0 || head.y < 0 || head.x >= gridSize || head.y >= gridSize) {
            return true
        }

        // Colisión con el cuerpo (excepto la cabeza)
        val bodyWithoutHead = newSnake.drop(1)
        if (bodyWithoutHead.any { it == head }) {
            return true
        }

        return false
    }

    private fun spawnFood() {
        val newFood = generateRandomFood(_gameState.value.snake)
        _gameState.value = _gameState.value.copy(food = newFood)
    }

    private fun generateRandomFood(snake: List<Point>): Point {
        val occupiedPositions = snake.toSet()

        // Si la serpiente llena todo el tablero -> victoria
        if (occupiedPositions.size >= gridSize * gridSize) {
            return Point(-1, -1) // Indica victoria
        }

        var newFood: Point
        do {
            newFood = Point(
                Random.nextInt(gridSize),
                Random.nextInt(gridSize)
            )
        } while (occupiedPositions.contains(newFood))

        return newFood
    }

    fun resetGame() {
        pendingDirection = Direction.RIGHT
        currentDirection = Direction.RIGHT

        _gameState.value = GameState(
            snake = initialSnake,
            food = Point(10, 10),
            direction = Direction.RIGHT,
            score = 0,
            isGameOver = false,
            isPlaying = true,
            gridSize = gridSize
        )
        spawnFood()
    }

    fun pauseGame() {
        _gameState.value = _gameState.value.copy(isPlaying = false)
    }

    fun resumeGame() {
        if (!_gameState.value.isGameOver) {
            _gameState.value = _gameState.value.copy(isPlaying = true)
        }
    }
}