# mark7

A Ruby project for QA automation learning with test automation exercises.

## Security

For security concerns, please see [SECURITY.md](SECURITY.md)

## Setup

1. Install dependencies:
   ```bash
   bundle install
   ```

2. For Aula2 and Aula3 (Cucumber tests), set environment variables:
   ```bash
   export CAPYBARA_APP_HOST=https://mark7.herokuapp.com
   export TEST_USER_EMAIL=your-test-email@example.com
   ```

## Running Tests

### Aula1 - RSpec Tests
```bash
cd mark7/Aula1/caixa
bundle exec rspec
```

### Aula2 & Aula3 - Cucumber Tests
```bash
cd mark7/Aula2
bundle exec cucumber
```
