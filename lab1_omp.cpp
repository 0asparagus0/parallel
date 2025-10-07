#include <iostream>
#include <vector>
#include <chrono>
#include <omp.h>

const int N = 10000; // Размер матрицы

void transpose_matrix(std::vector<std::vector<double>>& A) 
{
    #pragma omp parallel for
    for (int i = 0; i < N; ++i) {
        for (int j = i + 1; j < N; ++j) {
            double temp = A[i][j];
            A[i][j] = A[j][i];
            A[j][i] = temp;
        }
    }
}

int main() {
    std::vector<std::vector<double>> A(N, std::vector<double>(N, 0.0));
    
    // Инициализируем матрицу A некоторыми значениями
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            A[i][j] = i * N + j;
        }
    }

    auto start = std::chrono::high_resolution_clock::now();
    transpose_matrix(A);
    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> duration = end - start;
    std::cout << "Time: " << duration.count() << " second" << std::endl;
    return 0;
}