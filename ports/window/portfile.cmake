vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Elnhomantia/window
    REF v1.1.0
    HEAD_REF release
    SHA512 50dce6a1b95bd427bda715127fdc8ddac3c77952f67c32c11192a1dc809e5be94d7706647c18afa955208852c01e76782a0ef88ea56492241081559096f905f8
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

vcpkg_fixup_cmake_targets(CONFIG_PATH lib/cmake/window)
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")