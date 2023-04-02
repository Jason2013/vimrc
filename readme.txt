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

# 添加 gvim 到新环境

cd c:\chenchang\app\gvim
git clone https://github.com/Jason2013/vimrc.git

打开 gvim ，执行 `:ec $HOME` 命令，查看 `HOME` 目录（ Windows 下的 %USERPROFILE% 目录）。

在该目录下创建一个 `_vimrc` 文件，内容如下：

```
source C:/chenchang/app/gvim/_vimrc
```

退出 gvim ，重新运行 gvim ，新配置生效。
