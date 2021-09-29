#include <stdio.h>
#include <stdlib.h>
#include <math.h>

void PruebaCNorm(float *v1, int N, float *n2) {
    int i = 0;
    float sum = 0;
    for(i = 0; i < N; i++) {
        sum += v1[i] * v1[i];
    }
    n2[0] = sqrtf(sum);
}
