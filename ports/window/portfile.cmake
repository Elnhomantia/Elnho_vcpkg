vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Elnhomantia/window
    REF v1.0.0
    HEAD_REF release
    SHA512 050442f504fc93e4620d738c6f103e2c423e439f28eba6348b864a6e2e8ac750aa39f1500cbb3b0582f3c13964a4b00be9dc00cfc1565e2f8380ca16a58dc68a
)

set(VCPKG_POLICY_EMPTY_PACKAGE enabled)
vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

vcpkg_fixup_cmake_targets(CONFIG_PATH lib/cmake/window)