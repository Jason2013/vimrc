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

# 配置 gvim

```
cd c:\chenchang\app\gvim
git clone https://github.com/Jason2013/vimrc.git
```

打开 gvim ，执行 `:ec $HOME` 命令，查看 `HOME` 目录（ Windows 下的 %USERPROFILE% 目录）。

在该目录下创建一个 `_vimrc` 文件，内容如下：

```
source C:/chenchang/app/gvim/_vimrc
```

退出 gvim ，重新运行 gvim ，新配置生效。

# 配置 neovim

配置文件本地路径为：`${vimrc}/nvim/init.lua` 。

`${vimrc}` 在下面示例代码中为 `C:\Users\jasonche\chenchang\study\gvim` 。

## init.lua

在 neovim 中使用下面命令，查看脚本启动目录：

```
:echo stdpath('config')
```

复制脚本启动目录到系统剪贴板：

```
:let @+=stdpath('config')
```

使用管理员权限启动 Command Prompt ，在脚本启动目录中创建链接文件：

```powershell
mklink C:\Users\jasonche\AppData\Local\nvim\init.lua C:\Users\jasonche\chenchang\study\gvim\nvim\init.lua
```

## _vimrc

配置文件本地路径为：`${vimrc}/_vimrc` 。

在 neovim 中使用下面命令，查看系统启动脚本路径：

```powershell
:echo $VIM
```

在该路径下创建 `sysinit.vim` 文件，内容如下：

```powershell
source C:\Users\jasonche\chenchang\study\gvim\_vimrc
```

## goneovim 在高分辨率显示器下字体模糊

强制 DPI / 缩放（解决高分屏模糊）

**Windows**

* 右键 Goneovim 快捷方式 → 属性 → 兼容性 → 更改高 DPI 设置
* 勾选 `替代高 DPI 缩放行为`
  * 缩放执行：选择 `系统（增强）` 或 `应用程序`
