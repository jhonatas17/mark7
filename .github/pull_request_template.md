## Description

Security fixes and improvements to the mark7 project.

## Type of Change

- [x] Security fix (fixes vulnerability)
- [ ] Bug fix
- [ ] New feature
- [ ] Breaking change

## Security Issues Fixed

- [x] Updated vulnerable dependencies (capybara, selenium-webdriver, nokogiri, mongo, site_prism, rack)
- [x] Removed hardcoded credentials from test code (API endpoints, emails)
- [x] Added .gitignore to prevent accidental commits of sensitive files
- [x] Implemented environment variables for sensitive configuration
- [x] Added SECURITY.md policy
- [x] Fixed test implementation issue in saque_spec.rb
- [x] Fixed typo in metodos_ifs.rb

## Vulnerabilities Addressed

### CVEs Fixed
- nokogiri (1.8.2 -> 1.15.4): Multiple XML/XXE vulnerabilities
- selenium-webdriver (3.12.0 -> 4.15.0): Protocol security improvements
- rack (2.0.5 -> 2.2.8): Multiple security patches
- mongo (2.5.3 -> 2.20.0): Connection security improvements

### Configuration Security
- Environment variables now used for app_host (was hardcoded to mark7.herokuapp.com)
- Reset endpoint URL moved to environment variable
- Test user email moved to environment variable

## Testing

- [x] Updated Gemfile with secure versions
- [x] All RSpec tests still pass
- [x] Cucumber features remain compatible

## Checklist

- [x] My changes follow the code style of this project
- [x] I have updated the README with new setup instructions
- [x] I have added/updated documentation
- [x] No new warnings have been generated
- [x] Any dependent changes have been merged and published

## Related Issues

Fixes general security vulnerabilities in the project.
