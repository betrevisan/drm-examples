#!/bin/bash
set -xe
#################################################################
# Make the host C++ project.
#################################################################
cmake -Bdebug -DCMAKE_BUILD_TYPE=Debug
pushd debug > /dev/null
make
#################################################################
# Make the guest Flutter project.
#################################################################
if [ ! -d myapp ]; then
    flutter create myapp
    cd myapp
    flutter pub add flutter_spinkit
    cd ..
fi
pushd myapp > /dev/null
cp ../../main.dart lib/main.dart
flutter build bundle \
        --local-engine-src-path ../../../../../ \
        --local-engine=host_debug_unopt
popd > /dev/null
#################################################################
# Run the Flutter Engine Embedder
#################################################################
./embedder_drm_example_vulkan ./myapp ../../../../third_party/icu/common/icudtl.dat
popd > /dev/null
