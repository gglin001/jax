# https://jax.readthedocs.io/en/latest/developer.html

pip install numpy wheel build

python build/build.py

# pip install dist/*.whl

# bazel build //jaxlib/...

alias bazel="$PWD/build/bazel-6.1.2-linux-x86_64"

# install bazelisk from https://github.com/bazelbuild/bazelisk/releases
# cp bazelisk to /usr/local/bin/bazelisk

bazelisk run :refresh_compile_commands

# mkdir -p build
mv compile_commands.json build/

# bazelisk query //jaxlib/...
