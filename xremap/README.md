可能需要先执行以下下面这个命令，否则会报 permission 的问题。

```shell
❯ sudo modprobe uinput
```

配置的目录在 `~/.config/xremap/` 下，直接进入这个目录，然后执行以下命令即可，

```shell
xremap config.yml
```

其他调配的信息见 xremap 的仓库。


