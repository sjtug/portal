+++
title = "pytorch-wheels"
tags = ["mirror-help"]
author = "skyzh"
+++

pytorch-wheels 是 PyTorch 官方预构建轮子（wheels）软件源的镜像。

PyTorch 根据不同的计算平台（CPU / CUDA / ROCm 等）提供了独立的 Simple Repository 索引，例如 `/cpu/`、`/cu118/`、`/cu121/`、`/cu124/`、`/cu126/` 等。你可以根据使用的硬件与驱动版本选择对应的索引 URL。

# 使用方式

以 CUDA 12.6（`cu126`）为例：

## pip

```sh
pip install torch torchvision torchaudio --index-url https://mirror.sjtu.edu.cn/pytorch-wheels/cu126/
```

或使用 `--extra-index-url`：

```sh
pip install torch torchvision torchaudio --extra-index-url https://mirror.sjtu.edu.cn/pytorch-wheels/cu126/
```

## Astral uv

使用 `uv add`（推荐，锁定依赖）：

```sh
uv add torch torchvision torchaudio --index pytorch-cu126=https://mirror.sjtu.edu.cn/pytorch-wheels/cu126/
```

或使用 `uv pip`：

```sh
uv pip install torch torchvision torchaudio --index-url https://mirror.sjtu.edu.cn/pytorch-wheels/cu126/
```

在 `pyproject.toml` 中配置源（推荐，避免依赖混淆）：

```toml
[tool.uv.sources]
torch = { index = "pytorch-cu126" }
torchvision = { index = "pytorch-cu126" }
torchaudio = { index = "pytorch-cu126" }

[[tool.uv.index]]
name = "pytorch-cu126"
url = "https://mirror.sjtu.edu.cn/pytorch-wheels/cu126/"
explicit = true
```

## Poetry

添加源并安装依赖：

```sh
poetry source add --priority=explicit pytorch-cu126 https://mirror.sjtu.edu.cn/pytorch-wheels/cu126/
poetry add --source pytorch-cu126 torch torchvision torchaudio
```

或者在 `pyproject.toml` 中配置：

```toml
[[tool.poetry.source]]
name = "pytorch-cu126"
url = "https://mirror.sjtu.edu.cn/pytorch-wheels/cu126/"
priority = "explicit"

[tool.poetry.dependencies]
torch = { version = "*", source = "pytorch-cu126" }
```

## PDM

添加源并安装依赖：

```sh
pdm config pypi.extra.url "https://mirror.sjtu.edu.cn/pytorch-wheels/cu126/"
pdm add --source pytorch-cu126 torch torchvision torchaudio
```

或者在 `pyproject.toml` 中配置：

```toml
[[tool.pdm.source]]
name = "pytorch-cu126"
url = "https://mirror.sjtu.edu.cn/pytorch-wheels/cu126/"
type = "index"
```

---

以下基于 `torch_stable.html` 的 find-links 使用方式已废弃：

```sh
pip install torch torchvision torchaudio -f https://mirror.sjtu.edu.cn/pytorch-wheels/torch_stable.html
```
