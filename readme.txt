# Package management

## Add new package
git submodule add --depth 1 <url> <pack/user/start/packname>

## Remove all packages
git submodule deinit --all

## Sync all packages
git submodule init
git submodule update --depth 1

## View package status
git submodule status
