# Changelog

All notable changes to the Generator Labs Zabbix template will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.1]

### Changed
- The RBL and Certificate check items now accept error HTTP responses (`status_codes`
  `200,400-599`) and run a JavaScript preprocessing step that maps any non-numeric body to `-1`.
  This keeps the `=-1` "Unknown" triggers firing when the API returns a non-200 status (for
  example a transient 429, a 500, or a 401) instead of leaving the item unsupported with no value.
- Added a template vendor and version (`7.0-1.0.1`).

## [1.0.0]

### Added
- Initial release: RBL and Certificate check HTTP agent items, "Listed"/"Errors" and "Unknown"
  triggers, and result graphs.
