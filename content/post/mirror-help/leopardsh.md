+++
title = "leopardsh"
tags = ["mirror-help"]
author = "zombie203619"
+++

leopard.sh / tiger.sh 是一个 PowerPC Mac 上的包管理器，提供了许多常用软件包，节省了 PowerPC Mac 漫长的编译时间

**使用说明**

**Mac OS X Tiger:**

下载 `tiger.sh`，并运行安装

```bash
curl -O http://leopard.sh/tigersh/tiger.sh
chmod +x ./tiger.sh
./tiger.sh
```

安装完成后，脚本会移动到`/usr/local/bin`文件夹下，对其进行编辑：

```
TIGERSH_MIRROR=${TIGERSH_MIRROR:-https://mirror.sjtu.edu.cn/leopardsh}
```

```
size=$(curl --fail --silent --show-error --location -v $insecure_url 2>&1 \
    | grep 'Content-Length:' \
    | grep -v "0" \
    | awk '{print $NF}' \
    | sed "s/$(printf '\r')//"
    )
```

**Mac OS X Leopard:**

下载 `leopard.sh`，并运行安装

```bash
curl -O http://leopard.sh/leopardsh/leopard.sh
chmod +x ./leopard.sh
./leopard.sh
```

安装完成后，脚本会移动到`/usr/local/bin`文件夹下，对其进行编辑：

```
LEOPARDSH_MIRROR=${LEOPARDSH_MIRROR:-https://mirror.sjtu.edu.cn/leopardsh}
```

```
size=$(curl --fail --silent --show-error --location -v $insecure_url 2>&1 \
    | grep 'Content-Length:' \
    | grep -v "0" \
    | awk '{print $NF}' \
    | sed "s/$(printf '\r')//"
    )
```


