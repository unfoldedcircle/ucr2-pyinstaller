# Remote Two PyInstaller ARM64 Docker build image Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

---

## 0.8.0 - 2026-10-19
### Changed
- Update GitHub Actions dependencies and improve CI workflow ([#11](https://github.com/unfoldedcircle/ucr2-pyinstaller/pull/11), [#14](https://github.com/unfoldedcircle/ucr2-pyinstaller/pull/14), [#15](https://github.com/unfoldedcircle/ucr2-pyinstaller/pull/15), [#17](https://github.com/unfoldedcircle/ucr2-pyinstaller/pull/17), [#24](https://github.com/unfoldedcircle/ucr2-pyinstaller/pull/24), [#27](https://github.com/unfoldedcircle/ucr2-pyinstaller/pull/27), [#28](https://github.com/unfoldedcircle/ucr2-pyinstaller/pull/28), [#30](https://github.com/unfoldedcircle/ucr2-pyinstaller/pull/30), [#31](https://github.com/unfoldedcircle/ucr2-pyinstaller/pull/31), [#34](https://github.com/unfoldedcircle/ucr2-pyinstaller/pull/34)).
- Update zeroconf requirement from ~=0.150 to ~=0.151 ([#25](https://github.com/unfoldedcircle/ucr2-pyinstaller/pull/25)).
- Update websockets requirement from ~=16.0 to ~=17.2 ([#26](https://github.com/unfoldedcircle/ucr2-pyinstaller/pull/26)).
- Update androidtvremote2 requirement from ~=0.3.1 to ~=0.3.2 ([#29](https://github.com/unfoldedcircle/ucr2-pyinstaller/pull/29)).
- Update pyinstaller requirement from ~=6.21.0 to ~=6.22.3 ([#33](https://github.com/unfoldedcircle/ucr2-pyinstaller/pull/33)).

## 0.7.0 - 2026-07-01
### Changed
- Use pinned GitHub Actions dependencies and enable Dependabot for GitHub Actions ([#6](https://github.com/unfoldedcircle/ucr2-pyinstaller/pull/6)).
- Update pyinstaller and pre-installed Python libraries ([#7](https://github.com/unfoldedcircle/ucr2-pyinstaller/pull/7)).

## 0.6.0 - 2026-04-27
### Changed
- Update pyinstaller and pre-installed Python libraries ([#5](https://github.com/unfoldedcircle/ucr2-pyinstaller/pull/5)).

## 0.5.0 - 2026-02-16
### Changed
- Update pre-installed Python libraries ([#4](https://github.com/unfoldedcircle/ucr2-pyinstaller/pull/4)).

### Fixed
- Python Docker image platform ([#4](https://github.com/unfoldedcircle/ucr2-pyinstaller/pull/4)).

## 0.4.0 - 2025-09-17
### Changed
- Use Python 3.11.13
- Update pre-installed Python libraries.

### Fixed
- Instructions for setting up qemu.
- Using `--platform=aarch64` in the build helper script.

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
