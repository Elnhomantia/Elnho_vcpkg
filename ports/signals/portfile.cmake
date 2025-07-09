vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Elnhomantia/signals
    REF v1.1.3
    HEAD_REF release
    SHA512 cb065ca2bca3716edb449e6619343743775a588410005f30fda1cbe5ee4e2bf6e7d2f3785b1db5f9f46d97a29bcfb82a0aab19c4b38c13e35068363cbddf8553
)

set(VCPKG_POLICY_EMPTY_PACKAGE enabled)
vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

vcpkg_fixup_cmake_targets(CONFIG_PATH lib/cmake/signals)