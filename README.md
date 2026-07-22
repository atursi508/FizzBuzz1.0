# FizzBuzz 1.0 - Print Numbers 1-100

## Overview

A simple Ruby application that prints numbers from 1 to 100. This repository includes unit tests and automated GitHub Actions workflows to ensure the code works correctly.

## Features

- **FizzBuzz Class**: A simple class that prints numbers 1 through 100
- **Unit Tests**: Comprehensive Minitest suite that verifies the output
- **CI/CD Pipeline**: Automated testing on push and pull requests using GitHub Actions

## Files

- `fizzbuzz.rb` - Main FizzBuzz class implementation
- `test_fizzbuzz.rb` - Unit tests using Minitest
- `.github/workflows/test.yml` - GitHub Actions workflow configuration

## Running Tests Locally

### Prerequisites
- Ruby 3.0 or higher
- Minitest gem

### Installation
```bash
gem install minitest
```

### Run Tests
```bash
ruby test_fizzbuzz.rb
```

## Test Details

The `test_print_numbers_1_to_100` test verifies:
1. Exactly 100 lines of output are printed
2. The sequence contains numbers 1 through 100 in the correct order

## CI/CD Workflow

The `.github/workflows/test.yml` workflow:
- Runs on every push to `main` and pull requests to `main`
- Tests against Ruby versions 3.0, 3.1, and 3.2
- Automatically installs dependencies
- Executes the test suite

## Example Output

```
1
2
3
...
100
```

## License

MIT

Test
