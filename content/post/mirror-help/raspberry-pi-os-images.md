+++
title = "raspberry-pi-os-images"
tags = ["mirror-help"]
author = "danyang685"
+++

主仓库地址： http://downloads.raspberrypi.org/

**使用方法**

根据需要的版本进入以下包含 Raspberry Pi OS 系统镜像的目录，选择`.zip`文件下载即可。推荐使用 [balenaEtcher](https://www.balena.io/etcher/) 将镜像写入 SD 卡

| Raspberry Pi OS 版本            | 存储目录                                                     | 预计大小 |
| ------------------------------- | ------------------------------------------------------------ | -------- |
| 精简版 Raspberry Pi OS 系统     | [raspios_lite_armhf](https://mirrors.sjtug.sjtu.edu.cn/raspberry-pi-os-images/raspios_lite_armhf/images/) | 0.4 GiB  |
| 常规版 Raspberry Pi OS 系统     | [raspios_armhf](https://mirrors.sjtug.sjtu.edu.cn/raspberry-pi-os-images/raspios_armhf/images/) | 1.1 GiB  |
| 完整版 Raspberry Pi OS 系统     | [raspios_full_armhf](https://mirrors.sjtug.sjtu.edu.cn/raspberry-pi-os-images/raspios_full_armhf/images/) | 2.5 GiB  |
| 精简版 Raspberry Pi OS 64位系统 | [raspios_lite_arm64](https://mirrors.sjtug.sjtu.edu.cn/raspberry-pi-os-images/raspios_lite_arm64/images/) | 0.5 GiB  |
| 常规版 Raspberry Pi OS 64位系统 | [raspios_arm64](https://mirrors.sjtug.sjtu.edu.cn/raspberry-pi-os-images/raspios_arm64/images/) | 1.0 GiB  |

**备注**

- 暂无 Raspberry Pi OS 64位完整版系统
- Raspberry Pi OS 是 Raspbian 的后继者，二者名称不同，但功能和界面相同。首个 Raspberry Pi OS 系统发行于 2020年5月27日
- 2012年7月15日-2020年2月14日期间发行的旧版 Raspbian 系统镜像与 Raspberry Pi OS 位于不同目录，各版本分别位于：[raspbian_lite](https://mirrors.sjtug.sjtu.edu.cn/raspberry-pi-os-images/raspbian_lite/images/)、[raspbian](https://mirrors.sjtug.sjtu.edu.cn/raspberry-pi-os-images/raspbian/images/)、[raspbian_full](https://mirrors.sjtug.sjtu.edu.cn/raspberry-pi-os-images/raspbian_full/images/)。

**Raspberry Pi OS 常用设置**

- 无头初始化设置
  - 启用 SSH：在 SD 卡 boot 分区中创建名为 `ssh` （不应包括任何扩展名或其他字符）的空白文件

  - 预设 WiFi 信息：在 SD 卡 boot 分区中创建名为 `wpa_supplicant.conf` 的文本文件，按如下格式填写 `YOUR_WiFi_NAME` 和 `YOUR_WiFi_PASSWORD` ，推荐设置为本机 WiFi 热点或拥有管理员权限的无线路由器 WiFi ，以便查找树莓派的 IP 地址

    ```
    ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
    update_config=1
    country=CN
    
    network={
    	ssid="YOUR_WiFi_NAME"
    	psk="YOUR_WiFi_PASSWORD"
    }
    ```

  - 远程连接：插卡启动树莓派，在 WiFi 热点中查询 IP 分配情况，确认树莓派的 IP 地址，使用 SSH 进行远程连接。树莓派的默认 SSH 端口为 22，用户名为 `pi` ，默认密码为 `raspberry` 

- 命令行下的设置

  - 在终端输入 `sudo raspi-config` 命令进行基本设置。可将时区设置为 `Asia/Shanghai` ，默认区域更改为 `zh_CN.UTF-8` ，可启用 VNC 以进行远程桌面连接

- 图形界面下的设置

  - 首次进入桌面时，根据提示进行鼠标操作设置即可

- apt 软件源修改

  - Raspberry Pi OS 系统镜像内预置的 apt 软件源在国内访问缓慢，可将 apt 软件源更改为 SJTUG 镜像源

    - 将 `/etc/apt/sources.list` 文件中的 raspbian 存储库由 http://raspbian.raspberrypi.org/raspbian/ 更改为 https://mirrors.sjtug.sjtu.edu.cn/raspbian/raspbian/ ，对于64位 Raspberry Pi OS ，将 http://deb.debian.org/debian/ 更改为 https://mirrors.sjtug.sjtu.edu.cn/debian/ ，将 http://deb.debian.org/debian-security/ 更改为 https://mirrors.sjtug.sjtu.edu.cn/debian-security/
    - 将 `/etc/apt/sources.list.d/raspi.list` 文件中的 raspberrypi 存储库由 http://archive.raspberrypi.org/debian/ 更改为 https://mirrors.sjtug.sjtu.edu.cn/raspberrypi/debian/

  - 可输入以下命令完成 apt 软件源设置（截至 2020-08-27 版仍然适用）

    ```shell
    sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
    sudo cp /etc/apt/sources.list.d/raspi.list /etc/apt/sources.list.d/raspi.list.bak
    sudo sed -i "s|http://raspbian.raspberrypi.org/raspbian/|https://mirrors.sjtug.sjtu.edu.cn/raspbian/raspbian/|g" /etc/apt/sources.list
    sudo sed -i "s|http://deb.debian.org/debian|https://mirrors.sjtug.sjtu.edu.cn/debian|g" /etc/apt/sources.list
    sudo sed -i "s|http://archive.raspberrypi.org/debian/|https://mirrors.sjtug.sjtu.edu.cn/raspberrypi/debian/|g" /etc/apt/sources.list.d/raspi.list
    sudo apt update
    ```

- 软件包更新

  ```shell
  sudo apt update && sudo apt upgrade -y
  ```
  
