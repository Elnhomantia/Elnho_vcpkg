vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Elnhomantia/window
    REF v1.0.0
    HEAD_REF release
    SHA512 
)

set(VCPKG_POLICY_EMPTY_PACKAGE enabled)
vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

vcpkg_fixup_cmake_targets(CONFIG_PATH lib/cmake/window)