+++
title = "maven-central"
tags = ["mirror-help"]
author = "htfy96"
+++

Apache Maven仓库存放了可用于Maven的大量软件包（特别是Java软件）。目前本镜像为 http://repo.maven.apache.org/maven2/ 的反向代理，能够加速安装。

使用方法：

修改Maven根目录下的`conf/setting.xml`，增加一节`<mirror />`，具体如下：
```xml
<mirrors>
    <!-- Other mirrors... -->
    <mirror>
        <id>sjtugmaven</id>
        <name>sjtug maven</name>
        <url>https://mirrors.sjtug.sjtu.edu.cn/maven-central/</url>
        <mirrorOf>central</mirrorOf>
    </mirror>
</mirrors>
```