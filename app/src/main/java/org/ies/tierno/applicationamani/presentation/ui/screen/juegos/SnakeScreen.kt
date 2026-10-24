package org.ies.tierno.applicationamani.presentation.ui.screen.juegos

import android.content.res.Configuration
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.statusBarsPadding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.viewinterop.AndroidView
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.juego.SnakeView
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Spacing

@Composable
fun SnakeScreen(
    onBackPressed: () -> Unit = {},
    modifier: Modifier = Modifier,
) {
    val lifecycleOwner = LocalLifecycleOwner.current

    var snakeView by remember {
        mutableStateOf<SnakeView?>(null)
    }

    var isGameStarted by remember {
        mutableStateOf(false)
    }

    DisposableEffect(lifecycleOwner) {
        val observer =
            LifecycleEventObserver { _, event ->
                when (event) {
                    Lifecycle.Event.ON_RESUME -> {
                        if (isGameStarted) {
                            snakeView?.startGameLoop()
                        }
                    }

                    Lifecycle.Event.ON_PAUSE -> {
                        snakeView?.onDestroy()
                    }

                    else -> Unit
                }
            }

        lifecycleOwner.lifecycle.addObserver(observer)

        onDispose {
            lifecycleOwner.lifecycle.removeObserver(observer)
            snakeView?.onDestroy()
        }
    }

    SnakeScreenContent(
        isGameStarted = isGameStarted,
        score = 0,
        onStartGame = {
            isGameStarted = true
            snakeView?.startGameLoop()
        },
        modifier = modifier,
        gameCanvas = {
            AndroidView(
                factory = { context ->
                    SnakeView(context).also {
                        snakeView = it
                        it.post {
                            android.util.Log.d(
                                "SNAKE",
                                "AndroidView size width=${it.width} height=${it.height}",
                            )
                        }
                        it.startGameLoop()
                    }
                },
                modifier = Modifier.fillMaxSize(),
            )
        },
    )
}

@Composable
fun SnakeScreenContent(
    isGameStarted: Boolean,
    score: Int,
    onStartGame: () -> Unit,
    modifier: Modifier = Modifier,
    gameCanvas: @Composable () -> Unit = {},
) {
    Surface(
        modifier = modifier.fillMaxSize(),
        color = MaterialTheme.colorScheme.background,
    ) {
        Column(
            modifier =
                Modifier
                    .fillMaxSize()
                    .statusBarsPadding(),
        ) {
            GameHeader(score = score)

            Box(
                modifier =
                    Modifier
                        .weight(1f)
                        .fillMaxWidth()
                        .padding(Spacing.m),
                contentAlignment = Alignment.Center,
            ) {
                if (!isGameStarted) {
                    Column(
                        horizontalAlignment = Alignment.CenterHorizontally,
                        modifier = Modifier.fillMaxSize(),
                    ) {
                        Box(
                            modifier = Modifier.fillMaxSize(),
                            contentAlignment = Alignment.Center,
                        ) {
                            Column(
                                horizontalAlignment = Alignment.CenterHorizontally,
                            ) {
                                Text(
                                    text = stringResource(R.string.snake_quieres_jugar),
                                    style = MaterialTheme.typography.headlineMedium,
                                    color = MaterialTheme.colorScheme.primary,
                                )

                                Text(
                                    text = stringResource(R.string.snake_toca_play),
                                    style = MaterialTheme.typography.bodyLarge,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                                    modifier = Modifier.padding(top = Spacing.s),
                                )

                                IconButton(
                                    onClick = onStartGame,
                                    modifier = Modifier.size(Dimensions.avatarLarge),
                                ) {
                                    Icon(
                                        imageVector = Icons.Default.PlayArrow,
                                        contentDescription = stringResource(R.string.snake_jugar),
                                        modifier = Modifier.fillMaxSize(),
                                        tint = MaterialTheme.colorScheme.primary,
                                    )
                                }
                            }
                        }
                    }
                } else {
                    gameCanvas()
                }
            }
        }
    }
}

@Composable
private fun GameHeader(score: Int) {
    Surface(
        modifier = Modifier.fillMaxWidth(),
        color = MaterialTheme.colorScheme.primaryContainer,
    ) {
        Text(
            text = stringResource(R.string.snake_puntuacion, score),
            style = MaterialTheme.typography.headlineSmall,
            modifier = Modifier.padding(Spacing.m),
            color = MaterialTheme.colorScheme.onPrimaryContainer,
        )
    }
}

@Preview(name = "Light", showBackground = true)
@Preview(name = "Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "FontScale 1.5x", fontScale = 1.5f, showBackground = true)
@Composable
private fun SnakeScreenPreview() {
    AppTheme {
        SnakeScreenContent(
            isGameStarted = false,
            score = 0,
            onStartGame = {},
        )
    }
}