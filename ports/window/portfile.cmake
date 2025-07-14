vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Elnhomantia/window
    REF v1.0.2
    HEAD_REF release
    SHA512 950db64357be31c6fee77324d8158eafdd49cf7040c162d8577dda42b1784ccdab3bf6979b9e23e0a3aa448765f1aa7c56f2a0a6a71be72f387f3e03ea166524
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

vcpkg_fixup_cmake_targets(CONFIG_PATH lib/cmake/window)
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")