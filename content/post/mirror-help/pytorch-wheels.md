+++
title = "pytorch-wheels"
tags = ["mirror-help"]
author = "skyzh"
+++

pytorch-wheels 是 PyTorch pip 源的镜像。直接将 [PyTorch 安装指引](https://pytorch.org/get-started/locally/)
中的 `https://download.pytorch.org/whl` 替换为 `https://mirror.sjtu.edu.cn/pytorch-wheels` 即可。

```bash
pip install torch===1.7.1 torchvision===0.8.2 torchaudio===0.7.2 -f https://mirror.sjtu.edu.cn/pytorch-wheels/torch_stable.html
```
