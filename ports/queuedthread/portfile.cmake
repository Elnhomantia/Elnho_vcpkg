vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Elnhomantia/QueuedThread
    REF v1.0.1
    HEAD_REF release
    SHA512 d81a42c80cd48faa91ac49b5fbf7b727cb80b574fddafebff64fbb2baabb88b08681f843de10705037ab8736b7f11b830553a68d4873a6c3e0783b50db25e90b
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

vcpkg_fixup_cmake_targets(CONFIG_PATH lib/cmake/QueuedThread)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")