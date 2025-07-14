vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Elnhomantia/window
    REF v1.0.1
    HEAD_REF release
    SHA512 3a4b2d57f30373fdb48e2d940c13934e4cc82f34aa1c620e52aada93c676f113434703956d3dfb27fe4e9f7a46fb4731fd0de0d330a834083229cbfdbc51b429
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

vcpkg_fixup_cmake_targets(CONFIG_PATH lib/cmake/window)
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")