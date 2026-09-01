+++
title = "astral-wheels"
tags = ["mirror-help"]
author = "comonad"
+++

[Astral GPU indexes](https://wheels.astral.sh) 是 Astral 为 PyTorch 生态提供的 GPU 相关依赖的预构建轮子，目前提供了 CPU / CUDA 11 / CUDA 12 / CUDA 13 的变种。

根据 PyTorch 命名习惯，Astral GPU indexes 为支持的不同 CUDA 版本使用独立的索引 URL（e.g., `/simple/cu128`），并为不同的 CUDA - PyTorch 版本组合发布轮子（e.g., `+cu.12.8.torch.2.11`）。

# 使用方式：

以 CUDA 12.8、PyTorch 2.11 为例，选择以下任一方式使用镜像：

- 使用 `uv add`（推荐，锁定依赖）

```sh
uv add flash-attn==2.8.3.post1+cu.12.8.torch.2.11 --index astral-cu128=https://mirror.sjtu.edu.cn/astral-wheels/cu128/
```

- 使用 `uv pip`

```sh
uv pip install \
    flash-attn==2.8.3.post1+cu.12.8.torch.2.11 \
    --index astral-cu128=https://mirror.sjtu.edu.cn/astral-wheels/cu128/
```

- 使用 `pip install`

```sh
python -m pip install \
    flash-attn==2.8.3.post1+cu.12.8.torch.2.11 \
    --extra-index-url https://mirror.sjtu.edu.cn/astral-wheels/cu128/
```
