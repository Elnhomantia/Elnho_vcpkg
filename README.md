# Introduction
This is my own vcpkg repo for my libs.
Please see https://github.com/microsoft/vcpkg for more information.

# How to use
- Install vcpkg (don't forget the installation script and to update your path).
- Clone this repo.
- Execute `vcpkg install <one-of-my-lib-in-ports> --overlay-ports=<path-to-cloned-repo>`.

Alternatively, some projects might provide a `vcpkg.json` with dependencies inside. You need to execute `vcpkg install` in that case.
To make such file for one of your project :
```
{
  "name": "my-lib",
  "version": "1.0.0",
  "dependencies": [
    "one-lib-in-vcpkg",
    "one-of-my-lib-in-ports",
  ]
}
```
And `vcpkg-configuration.json`.
```
{
  "registries": [
    {
      "kind": "git",
      "repository": "https://github.com/Elnhomantia/Elnho_vcpkg",
      "baseline": "<commit-SHA1>",
      "packages": [ "one-of-my-lib-in-ports" ]
    }
  ]
}
```

# About build
If you want to know how to build one of these lib, this is NOT the right place.
