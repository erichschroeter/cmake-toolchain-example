Simple CMake example to support building with and without a toolchain.

## Without toolchain

On Windows, with Visual Studio Community 2019 installed, this will use MSVC to build.

```bash
cmake -E make_directory build && \
cmake -E chdir build cmake .. && \
cmake --build build --config Debug
```

## With toolchain

I happen to be using a TI toolchain for this example.

```bash
cmake -E make_directory ../build && \
cmake -E chdir ../build cmake -G "Eclipse CDT4 - Ninja" --toolchain cmake/Toolchains/ti-cgt-toolchain.cmake ../cmake-toolchain-example && \
cmake --build ../build --config Debug
```

