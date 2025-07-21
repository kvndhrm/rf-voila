# Robot Framework Test Automation Project

This project contains automated tests for the Voila website (https://voila.id) using Robot Framework with Browser library.

## Project Structure

```
Robotframework/
├── resources/           # Resource files containing keywords and variables
│   ├── general.robot   # General settings, variables, and browser configuration
│   ├── auth_page.robot # Authentication page keywords
│   └── main_page.robot # Main page keywords
├── tests/              # Test cases
│   └── login.robot     # Login functionality test
├── browser/            # Browser-related files
│   ├── screenshot/     # Screenshots from test runs
│   └── traces/         # Browser traces
├── reports/            # Test execution reports
└── .venv/              # Python virtual environment
```

## Features

- **Web UI Testing**: Automated testing of web applications using Browser library
- **Page Object Model**: Organized test structure with separate resource files for different pages
- **Login Testing**: Comprehensive login flow testing for Voila website
- **Browser Management**: Configurable browser settings (Chromium, headless mode)
- **Test Reporting**: Automatic generation of test reports and screenshots

## Prerequisites

- Python 3.7+
- Robot Framework
- robotframework-browser

## Installation

1. Clone this repository
2. Create and activate a virtual environment:
   ```bash
   python -m venv .venv
   source .venv/bin/activate  # On Windows: .venv\Scripts\activate
   ```
3. Install dependencies:
   ```bash
   pip install robotframework robotframework-browser
   rfbrowser init
   ```

## Configuration

The test configuration is managed in `resources/general.robot`:

- **Browser**: Chromium (configurable)
- **Headless Mode**: Disabled by default
- **Test Credentials**: 
  - Email: kevan1@mailinator.com
  - Password: 123Qwe!

## Running Tests

### Run all tests:
```bash
robot tests/
```

### Run specific test:
```bash
robot tests/login.robot
```

### Run with custom browser:
```bash
robot --variable BROWSER:firefox tests/
```

### Run in headless mode:
```bash
robot --variable HEADLESS:True tests/
```

## Test Cases

### Login Test (`tests/login.robot`)
- **Purpose**: Validates the complete login flow on Voila website
- **Steps**:
  1. Opens Voila website
  2. Clicks sign-in button
  3. Enters email credentials
  4. Enters password
  5. Submits login form
  6. Verifies successful login

## Resource Files

### `resources/general.robot`
- Browser configuration and global variables
- Test credentials and environment settings

### `resources/auth_page.robot`
- Authentication page-specific keywords
- Login form interactions
- Popup/modal handling

### `resources/main_page.robot`
- Main page navigation keywords
- Login verification methods

## Reports and Artifacts

After test execution, the following artifacts are generated:
- **Test Reports**: HTML reports in `reports/` directory
- **Screenshots**: Captured in `browser/screenshot/` directory
- **Browser Traces**: Debug traces in `browser/traces/` directory

## Best Practices

1. **Page Object Pattern**: Each page has its own resource file with specific keywords
2. **Error Handling**: Robust error handling with TRY-EXCEPT blocks
3. **Wait Strategies**: Explicit waits for element states to ensure stability
4. **Modular Design**: Reusable keywords across different test cases

## Troubleshooting

### Common Issues:
1. **Browser not found**: Run `rfbrowser init` to install browser binaries
2. **Element not found**: Check if selectors are up-to-date with the website
3. **Timeout errors**: Increase wait times or check network connectivity

### Debug Mode:
```bash
robot --loglevel DEBUG tests/
```

## License

This project is for testing purposes only.
