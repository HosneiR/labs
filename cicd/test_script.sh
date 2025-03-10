#!/bin/bash
set -e

echo "Running tests..."

if ! ./artifacts/usr/bin/main <<< "10" | grep -q "Fibonacci number: 55"; then
  echo "Test failed: Fibonacci(10) != 55"
  exit 1
fi

echo "All tests passed successfully!"
