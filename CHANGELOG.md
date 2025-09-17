# Remote Two PyInstaller ARM64 Docker build image Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

_Changes for the next release will be listed here_

### Changed
- Use Python 3.11.13
- Update pre-installed Python libraries.

### Fixed
- Instructions for setting up qemu.
- Using `--platform=aarch64` in the build helper script.

---

## 0.3.0 - 2025-04-24
### Changed
- Use Python 3.11.12
- Update and add more pre-installed Python libraries.

## 0.2.0 - 2023-11-08
### Changed
- Use Python 3.11.6
- Remove asyncio library. Not required for new Python versions.
- Update zeroconf library and relax dependency versions.
- Create a Docker image only for release builds.

## 0.1.0 - 2023-11-03
### Added
- Initial internal release.
