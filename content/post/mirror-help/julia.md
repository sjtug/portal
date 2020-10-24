+++
title = "julia"
tags = ["mirror-help"]
author = "johnnychen94"
date = "2020-08-05T12:00:00+08:00"
+++

SJTUG 目前提供了 Julia 的官方包注册表 [General](https://github.com/JuliaRegistries/General) 镜像来加速 Julia 包的安装。

关于 Julia 的安装，请使用 `julia-releases` 镜像。

注：本镜像的使用需要 Julia `v1.4.0` 或更新的版本。

## 使用方式

只需要设置环境变量 `JULIA_PKG_SERVER=https://mirrors.sjtug.sjtu.edu.cn/julia` 即可切换镜像。若成功切换镜像，则能通过 `versioninfo()` 查询到相关信息，例如：

```julia
julia> versioninfo()
Julia Version 1.5.0
Commit 96786e22cc (2020-08-01 23:44 UTC)
Platform Info:
  OS: macOS (x86_64-apple-darwin18.7.0)
  CPU: Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-9.0.1 (ORCJIT, skylake)
Environment:
  JULIA_PKG_SERVER = https://mirrors.sjtug.sjtu.edu.cn/julia
```

若不设置该环境变量则默认使用官方服务器 `pkg.julialang.org` 作为上游。本镜像站是其国内服务器的数据上游之一。

### 临时使用

不同系统和命令行下设置环境变量的方式各不相同，在命令行下可以通过以下方式来临时修改环境变量

* Linux Bash: `export JULIA_PKG_SERVER=https://mirrors.sjtug.sjtu.edu.cn/julia`
* Windows Powershell: `$env:JULIA_PKG_SERVER = 'https://mirrors.sjtug.sjtu.edu.cn/julia'`

也可以利用 JuliaCN 社区维护的中文本地化工具包 [JuliaZH](https://github.com/JuliaCN/JuliaZH.jl) 来进行切换：

```julia
using JuliaZH # 在 using 时会自动切换到国内的镜像站
JuliaZH.set_mirror("SJTUG") # 也可以选择手动切换到 BFSU 镜像
JuliaZH.mirrors # 查询记录的上游信息
```

### 永久使用

不同系统和命令行下永久设定环境变量的方式也不相同，例如 Linux Bash 下可以通过修改 `~/.bashrc` 文件实现该目的：

```
# ~/.bashrc
export JULIA_PKG_SERVER=https://mirrors.sjtug.sjtu.edu.cn/julia
```

此外，这里再提供一种针对 Julia 的全平台通用的方式：`$JULIA_DEPOT_PATH/config/startup.jl`
( 默认为 `~/.julia/config/startup.jl` ) 文件定义了每次启动 Julia 时都会执行的命令，编辑该文件，添加以下内容即可：

```julia
# ~/.julia/config/startup.jl
ENV["JULIA_PKG_SERVER"] = "https://mirrors.sjtug.sjtu.edu.cn/julia"
```

也可以选择使用 `JuliaZH` 来一键修改/创建 `startup.jl` 文件：

```julia
julia> JuliaZH.generate_startup("SJTUG")
┌ Info: 添加 PkgServer
│   服务器地址 = "https://mirrors.sjtug.sjtu.edu.cn/julia"
└   配置文件 = "/root/.julia/config/startup.jl"
```

若要临时禁止，可以通过 `julia --startup-file=no` 来取消执行 `startup.jl` 文件。


## 常见问题

### 加快 Conda.jl 相关操作的速度

`Conda.jl` 的加速分为两部分：

* `conda` 的安装：如果系统中没有找到 `conda` 的话，`Conda.jl` 会下载并安装一份 miniconda。如果这一步下载非常缓慢的话，你可以提前从 [BFSU 镜像站](https://mirrors.bfsu.edu.cn/anaconda/archive/)下载并安装 anaconda，然后通过设置环境变量 `CONDA_JL_HOME=$HOME/anaconda3` 来指定 `Conda.jl` 所使用的`conda`，这样就避免重复下载 `miniconda`. （`$HOME/anaconda3`是 anaconda3 的默认安装位置，你可能需要根据具体情况进行调整。）
* `conda add` 等操作的加速：这个只需要配置 anaconda 镜像源即可，即修改 `~/.condarc` 文件。具体的配置可以查看镜像站中 anaconda 镜像的使用说明。

### 为什么有些包的下载还是很慢？

有两类数据不会被镜像：

* 在 `deps/build.jl` 文件中硬编码的下载地址，例如 [GR](https://github.com/jheinen/GR.jl/blob/70f025d5cb439d036409f1985107cb5e1615097f/deps/build.jl#L116).
* 在 `Artifacts.toml` 中没有给出 `download` 项的资源, 例如 [TestImages](https://github.com/JuliaImages/TestImages.jl/blob/eaa94348df619c65956e8cfb0032ecddb7a29d3a/Artifacts.toml).

在安装包含这两类数据的包时，其数据依然是从原始地址进行下载，因此若网络不稳定则可能会在 `build` 阶段报错。

### 为什么注册表还是从原地址下载？

Julia `v1.4.0` 之前的版本采用的是 `git clone` 的方式拉取注册表。为了保持兼容性，如果现有的注册表是一个完整的 git 仓库的话，
那么即使设置了 PkgServer 作为上游镜像也依然会通过 `git` 来进行更新，换句话说，不会通过镜像站来下载注册表数据。

以默认注册表 `General` 为例，只需要手动将其重置到镜像站即可：

1. 删除当前注册表：`(@v1.4) pkg> registry rm General`
2. 从镜像站重新下载数据：`(@v1.4) pkg> registry add General`

### 为什么有些包还是从原地址下载？

镜像站只镜像注册表中记录的包，因此如果某些包是通过指定 URL 的方式来安装的话，那么该包的更新不会从镜像站进行下载。
这常见于那些还未注册的包及其版本，例如：

```julia
]add Flux#master
]add https://github.com/FluxML/Flux.jl.git
Pkg.add(PackageSpec(url="https://github.com/FluxML/Flux.jl.git"))
```
