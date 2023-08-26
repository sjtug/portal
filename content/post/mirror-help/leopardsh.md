+++
title = "leopardsh"
tags = ["mirror-help"]
author = "zombie203619"
+++

leopard.sh / tiger.sh 是一个 PPC Mac OS X 10.4-10.5 上的包管理器，提供了许多常用软件包，节省了 PowerPC Mac 漫长的编译时间

**使用说明**

**Mac OS X Tiger:**

下载 `tiger.sh`，并运行安装

```bash
curl -O http://leopard.sh/tigersh/tiger.sh
chmod +x ./tiger.sh
./tiger.sh
```

安装完成后，脚本会自己移动到`/usr/local/bin/tiger.sh`，对其进行编辑：

```
TIGERSH_MIRROR=${TIGERSH_MIRROR:-https://mirror.sjtu.edu.cn/leopardsh}
```

并在文件开头添加:

```
export TIGERSH_MIRROR_NO_HTTP=1
export TIGERSH_MIRROR_NO_HEAD=1
```

**Mac OS X Leopard:**

下载 `leopard.sh`，并运行安装

```bash
curl -O http://leopard.sh/leopardsh/leopard.sh
chmod +x ./leopard.sh
./leopard.sh
```

安装完成后，脚本会自己移动到`/usr/local/bin/leopard.sh`，对其进行编辑：

```
LEOPARDSH_MIRROR=${LEOPARDSH_MIRROR:-https://mirror.sjtu.edu.cn/leopardsh}
```

并在文件开头添加:

```
export LEOPARDSH_MIRROR_NO_HTTP=1
export LEOPARDSH_MIRROR_NO_HEAD=1
```


