package androidx.media3.common.audio;

import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes21.dex */
public final class ChannelMixingMatrix {
    private final float[] coefficients;
    private final int inputChannelCount;
    private final boolean isDiagonal;
    private final boolean isIdentity;
    private final boolean isZero;
    private final int outputChannelCount;

    public static ChannelMixingMatrix createForConstantGain(int inputChannelCount, int outputChannelCount) {
        return new ChannelMixingMatrix(inputChannelCount, outputChannelCount, createConstantGainMixingCoefficients(inputChannelCount, outputChannelCount));
    }

    public static ChannelMixingMatrix createForConstantPower(int inputChannelCount, int outputChannelCount) {
        return new ChannelMixingMatrix(inputChannelCount, outputChannelCount, createConstantPowerMixingCoefficients(inputChannelCount, outputChannelCount));
    }

    public ChannelMixingMatrix(int inputChannelCount, int outputChannelCount, float[] coefficients) {
        boolean z = false;
        Preconditions.checkArgument(inputChannelCount > 0, "Input channel count must be positive.");
        Preconditions.checkArgument(outputChannelCount > 0, "Output channel count must be positive.");
        Preconditions.checkArgument(coefficients.length == inputChannelCount * outputChannelCount, "Coefficient array length is invalid.");
        this.inputChannelCount = inputChannelCount;
        this.outputChannelCount = outputChannelCount;
        this.coefficients = checkCoefficientsValid(coefficients);
        boolean allDiagonalCoefficientsAreOne = true;
        boolean allCoefficientsAreZero = true;
        boolean allNonDiagonalCoefficientsAreZero = true;
        int row = 0;
        while (row < inputChannelCount) {
            int col = 0;
            while (col < outputChannelCount) {
                float coefficient = getMixingCoefficient(row, col);
                boolean onDiagonal = row == col;
                if (coefficient != 1.0f && onDiagonal) {
                    allDiagonalCoefficientsAreOne = false;
                }
                if (coefficient != 0.0f) {
                    allCoefficientsAreZero = false;
                    if (!onDiagonal) {
                        allNonDiagonalCoefficientsAreZero = false;
                    }
                }
                col++;
            }
            row++;
        }
        this.isZero = allCoefficientsAreZero;
        this.isDiagonal = isSquare() && allNonDiagonalCoefficientsAreZero;
        if (this.isDiagonal && allDiagonalCoefficientsAreOne) {
            z = true;
        }
        this.isIdentity = z;
    }

    public int getInputChannelCount() {
        return this.inputChannelCount;
    }

    public int getOutputChannelCount() {
        return this.outputChannelCount;
    }

    public float getMixingCoefficient(int inputChannel, int outputChannel) {
        return this.coefficients[(this.outputChannelCount * inputChannel) + outputChannel];
    }

    public boolean isZero() {
        return this.isZero;
    }

    public boolean isSquare() {
        return this.inputChannelCount == this.outputChannelCount;
    }

    public boolean isDiagonal() {
        return this.isDiagonal;
    }

    public boolean isIdentity() {
        return this.isIdentity;
    }

    public ChannelMixingMatrix scaleBy(float scale) {
        float[] scaledCoefficients = new float[this.coefficients.length];
        for (int i = 0; i < this.coefficients.length; i++) {
            scaledCoefficients[i] = this.coefficients[i] * scale;
        }
        return new ChannelMixingMatrix(this.inputChannelCount, this.outputChannelCount, scaledCoefficients);
    }

    private static float[] initializeIdentityMatrix(int channelCount) {
        float[] coefficients = new float[channelCount * channelCount];
        for (int c = 0; c < channelCount; c++) {
            coefficients[(channelCount * c) + c] = 1.0f;
        }
        return coefficients;
    }

    private static float[] checkCoefficientsValid(float[] coefficients) {
        for (int i = 0; i < coefficients.length; i++) {
            if (coefficients[i] < 0.0f) {
                throw new IllegalArgumentException("Coefficient at index " + i + " is negative.");
            }
        }
        return coefficients;
    }

    private static float[] createConstantGainMixingCoefficients(int inputChannelCount, int outputChannelCount) {
        if (inputChannelCount == outputChannelCount) {
            return initializeIdentityMatrix(outputChannelCount);
        }
        if (inputChannelCount == 1 && outputChannelCount == 2) {
            return new float[]{1.0f, 1.0f};
        }
        if (inputChannelCount == 2 && outputChannelCount == 1) {
            return new float[]{0.5f, 0.5f};
        }
        throw new UnsupportedOperationException("Default channel mixing coefficients for " + inputChannelCount + "->" + outputChannelCount + " are not yet implemented.");
    }

    private static float[] createConstantPowerMixingCoefficients(int inputChannelCount, int outputChannelCount) {
        if (outputChannelCount == 1) {
            return getConstantPowerCoefficientsToMono(inputChannelCount);
        }
        if (outputChannelCount == 2) {
            return getConstantPowerCoefficientsToStereo(inputChannelCount);
        }
        if (inputChannelCount == outputChannelCount) {
            return initializeIdentityMatrix(outputChannelCount);
        }
        throw new UnsupportedOperationException("Default constant power channel mixing coefficients for " + inputChannelCount + "->" + outputChannelCount + " are not implemented.");
    }

    private static float[] getConstantPowerCoefficientsToMono(int inputChannelCount) {
        switch (inputChannelCount) {
            case 1:
                return new float[]{1.0f};
            case 2:
                return new float[]{0.7071f, 0.7071f};
            case 3:
                return new float[]{0.7071f, 0.7071f, 1.0f};
            case 4:
                return new float[]{0.7071f, 0.7071f, 0.5f, 0.5f};
            case 5:
                return new float[]{0.7071f, 0.7071f, 1.0f, 0.5f, 0.5f};
            case 6:
                return new float[]{0.7071f, 0.7071f, 1.0f, 0.7071f, 0.5f, 0.5f};
            default:
                throw new UnsupportedOperationException("Default constant power channel mixing coefficients for " + inputChannelCount + "->1 are not implemented.");
        }
    }

    private static float[] getConstantPowerCoefficientsToStereo(int inputChannelCount) {
        switch (inputChannelCount) {
            case 1:
                return new float[]{0.7071f, 0.7071f};
            case 2:
                return new float[]{1.0f, 0.0f, 0.0f, 1.0f};
            case 3:
                return new float[]{1.0f, 0.0f, 0.7071f, 0.0f, 1.0f, 0.7071f};
            case 4:
                return new float[]{1.0f, 0.0f, 0.7071f, 0.0f, 0.0f, 1.0f, 0.0f, 0.7071f};
            case 5:
                return new float[]{1.0f, 0.0f, 0.7071f, 0.7071f, 0.0f, 0.0f, 1.0f, 0.7071f, 0.0f, 0.7071f};
            case 6:
                return new float[]{1.0f, 0.0f, 0.7071f, 0.5f, 0.7071f, 0.0f, 0.0f, 1.0f, 0.7071f, 0.5f, 0.0f, 0.7071f};
            default:
                throw new UnsupportedOperationException("Default constant power channel mixing coefficients for " + inputChannelCount + "->2 are not implemented.");
        }
    }
}
