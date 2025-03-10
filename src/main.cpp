#include <iostream>

long long fibonacci_iterative(int n) {
    if (n <= 0) return 0;
    if (n == 1) return 1;
    long long a = 0, b = 1, c;
    for (int i = 2; i <= n; ++i) {
        c = a + b;
        a = b;
        b = c;
    }
    return b;
}

int main(int argc, char* argv[]) {
    if (argc < 2) {
        std::cerr << "Usage: " << argv[0] << " <n>" << std::endl;
        return 1;
    }
    int n = std::stoi(argv[1]);
    std::cout << "Fibonacci number: " << fibonacci_iterative(n) << std::endl;
    return 0;
}
