package org.ies.tierno.applicationamani.data.local.juego

import org.ies.tierno.applicationamani.domain.models.enumm.Direction

import android.content.Context
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import android.graphics.Point
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.View
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlin.math.abs

class SnakeView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : View(context, attrs, defStyleAttr) {

    private val gameEngine = SnakeGameEngine()
    private var gameJob: Job? = null

    // Definir colores directamente usando Color.parseColor (NO necesitan R.color)
    private val snakeColor = Color.parseColor("#CCC0E4")  // AmaniPurple
    private val headColor = Color.parseColor("#9B8CBF")   // AmaniPurpleDark
    private val foodColor = Color.parseColor("#BA1A1A")   // AmaniError
    private val backgroundColor = Color.parseColor("#1A1A1A") // Fondo oscuro
    private val gridColor = Color.parseColor("#CCC0E4").let {
        // Versión con 30% de opacidad
        Color.argb(77, Color.red(it), Color.green(it), Color.blue(it))
    }

    // Paints
    private val snakePaint = Paint().apply {
        color = snakeColor
        style = Paint.Style.FILL
    }

    private val foodPaint = Paint().apply {
        color = foodColor
        style = Paint.Style.FILL
    }

    private val gridPaint = Paint().apply {
        color = gridColor
        style = Paint.Style.STROKE
        strokeWidth = 1f
    }

    private val headPaint = Paint().apply {
        color = headColor
        style = Paint.Style.FILL
    }

    // Touch controls
    private var startX = 0f
    private var startY = 0f
    private val minSwipeDistance = 50f

    private var cellSize = 0f
    private var gridSize = 0

    init {
        isFocusable = true
        isFocusableInTouchMode = true
        gridSize = gameEngine.gameState.value.gridSize
    }

    override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
        super.onSizeChanged(w, h, oldw, oldh)
        android.util.Log.d("SNAKE", "width=$w height=$h")
        cellSize = (width.coerceAtMost(height).toFloat()) / gridSize
    }

    override fun onDraw(canvas: Canvas) {
        super.onDraw(canvas)
        android.util.Log.d("SNAKE", "onDraw llamado")
        val state = gameEngine.gameState.value

        // Dibujar fondo
        canvas.drawColor(backgroundColor)

        // Dibujar grid
        drawGrid(canvas)

        // Dibujar comida
        if (state.food.x >= 0 && state.food.y >= 0) {
            canvas.drawRect(
                state.food.x * cellSize,
                state.food.y * cellSize,
                (state.food.x + 1) * cellSize,
                (state.food.y + 1) * cellSize,
                foodPaint
            )
        }

        // Dibujar serpiente
        state.snake.forEachIndexed { index, point ->
            val paint = if (index == 0) headPaint else snakePaint
            canvas.drawRect(
                point.x * cellSize,
                point.y * cellSize,
                (point.x + 1) * cellSize,
                (point.y + 1) * cellSize,
                paint
            )
        }

        // Dibujar Game Over
        if (state.isGameOver) {
            drawGameOver(canvas)
        } else if (!state.isPlaying) {
            drawPaused(canvas)
        }
    }

    private fun drawGrid(canvas: Canvas) {
        for (i in 0..gridSize) {
            canvas.drawLine(0f, i * cellSize, width.toFloat(), i * cellSize, gridPaint)
            canvas.drawLine(i * cellSize, 0f, i * cellSize, height.toFloat(), gridPaint)
        }
    }

    private fun drawGameOver(canvas: Canvas) {
        val textPaint = Paint().apply {
            color = foodColor  // Rojo AmaniError
            textSize = 48f
            textAlign = Paint.Align.CENTER
            isAntiAlias = true
        }

        val subTextPaint = Paint().apply {
            color = snakeColor  // Lila AmaniPurple
            textSize = 32f
            textAlign = Paint.Align.CENTER
            isAntiAlias = true
        }

        canvas.drawText(
            "GAME OVER",
            width / 2f,
            height / 2f - 50,
            textPaint
        )

        canvas.drawText(
            "Score: ${gameEngine.gameState.value.score}",
            width / 2f,
            height / 2f + 20,
            subTextPaint
        )

        canvas.drawText(
            "Toca para reiniciar",
            width / 2f,
            height / 2f + 80,
            subTextPaint
        )
    }

    private fun drawPaused(canvas: Canvas) {
        val textPaint = Paint().apply {
            color = snakeColor  // Lila AmaniPurple
            textSize = 48f
            textAlign = Paint.Align.CENTER
            isAntiAlias = true
        }

        canvas.drawText(
            "PAUSADO",
            width / 2f,
            height / 2f,
            textPaint
        )
    }

    override fun onTouchEvent(event: MotionEvent): Boolean {
        when (event.action) {
            MotionEvent.ACTION_DOWN -> {
                startX = event.x
                startY = event.y
                return true
            }

            MotionEvent.ACTION_UP -> {
                val dx = event.x - startX
                val dy = event.y - startY

                if (abs(dx) > abs(dy) && abs(dx) > minSwipeDistance) {
                    val newDirection = if (dx > 0) Direction.RIGHT else Direction.LEFT
                    gameEngine.setDirection(newDirection)
                } else if (abs(dy) > minSwipeDistance) {
                    val newDirection = if (dy > 0) Direction.DOWN else Direction.UP
                    gameEngine.setDirection(newDirection)
                } else {
                    handleTap()
                }
                return true
            }
        }
        return super.onTouchEvent(event)
    }

    private fun handleTap() {
        val state = gameEngine.gameState.value
        if (state.isGameOver) {
            gameEngine.resetGame()
            startGameLoop()
        } else if (state.isPlaying) {
            gameEngine.pauseGame()
            cancelGameLoop()
        } else {
            gameEngine.resumeGame()
            startGameLoop()
        }
        invalidate()
    }

    fun startGameLoop() {
        cancelGameLoop()
        gameJob = CoroutineScope(Dispatchers.Main).launch {
            while (true) {
                delay(150L)
                gameEngine.moveSnake()
                invalidate()

                if (gameEngine.gameState.value.isGameOver) {
                    cancelGameLoop()
                }
            }
        }
    }

    private fun cancelGameLoop() {
        gameJob?.cancel()
        gameJob = null
    }

    fun onDestroy() {
        cancelGameLoop()
    }
}