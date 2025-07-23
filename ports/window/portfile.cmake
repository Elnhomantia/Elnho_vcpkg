vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Elnhomantia/window
    REF v1.1.1
    HEAD_REF release
    SHA512 e1b2499e1045cc90d6394f2c44696aafc6c0dfc918754f779bafb2416a02e487f96c9bf4b355f769ed13d0aa0ab67f2e9c49b93494a49508e5859d35e4771e5f
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

vcpkg_fixup_cmake_targets(CONFIG_PATH lib/cmake/window)
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")