# Remote Two PyInstaller ARM64 Docker build image

ARM64 Docker build image to create Python based [Unfolded Circle Remote Two](https://www.unfoldedcircle.com/)
integrations with [PyInstaller](https://www.pyinstaller.org/).

This build image simplifies creating a runtime archive with PyInstaller. Since PyInstaller can't cross-compile
for other architectures, it has to run on the same target architecture! Many build machines are still x86-64 based,
which complicates the build. Using qemu and Docker solves this challenge, but it requires significantly more time than
running on an ARM-based Mac (15-20x slower in our case).

To speed up the builds, this build image pre-installs the most commonly used Python library dependencies used in our
integrations. This reduces the integration project's build process to mainly run PyInstaller and no longer installing
and compiling Python libraries.

## Build

Build Docker image with:
```bash
./build.sh
```

This will set the build metadata `VERSION`, `REVISION`, `BUILD_DATE` in image labels and tag the resulting image:
- `unfoldedcircle/r2-pyinstaller:$PYTHON_VERSION`
- `unfoldedcircle/r2-pyinstaller:$PYTHON_VERSION-$VERSION`

## Usage

- Bind-mount your workspace containing the Python project at: `/workspace`
  - In the examples below, replace `~/my-project-folder` with the Python project folder on your host.
- Map your user-id and group-id with: `--user=$(id -u):$(id -g)`
  - Otherwise, the container will run as root and create build artifacts in your project folder as root! 

Example usage for manual builds.

### x86-64 Debian based Linux

Install qemu to run aarch64 Docker images: 
```bash
sudo apt update && sudo apt install -y qemu-system-arm binfmt-support qemu-user-static
docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
```

```shell
docker run --rm -it \
  --platform=aarch64 \
  --user=$(id -u):$(id -g) \  
  -v ~/my-project-folder:/workspace \
  docker.io/unfoldedcircle/r2-pyinstaller:3.11.12 bash
```

### aarch64 Linux / macOS

```shell
docker run --rm -it \
  --user=$(id -u):$(id -g) \
  -v ~/my-project-folder:/workspace \
  docker.io/unfoldedcircle/r2-pyinstaller:3.11.12 bash
```

### Manual Build

From within the started container shell:
```shell
cd /workspace/integration-foobar/
pip install -r requirements.txt
pyinstaller --clean --onefile --name intg-foobar intg-foobar/driver.py
```