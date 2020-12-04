+++
title = "emacs-elpa"
tags = ["mirror-help"]
author = "skyzh"
date = "2020-08-14T14:55:00+08:00"
+++

emacs-elpa 包含了 GNU ELPA, NonGNU ELPA, MELPA, MELPA Stable, Marmalade, Org, Sunrise Commander ELPA, user42 ELPA 这 8 个镜像。

| ELPA                                                         | 镜像地址                                                     |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [GNU ELPA](http://elpa.gnu.org/)                             | https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/gnu/            |
| [NonGNU ELPA](http://elpa.gnu.org/nongnu/)                         | https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/nongnu/            |
| [MELPA](https://melpa.org/)                                  | https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/melpa/          |
| [MELPA Stable](http://stable.melpa.org/#/)                   | https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/melpa-stable/   |
| [Marmalade](https://marmalade-repo.org/)                     | https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/marmalade/      |
| [Org](http://orgmode.org/elpa.html)                          | https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/org/            |
| [Sunrise Commander ELPA](https://www.emacswiki.org/emacs/Sunrise_Commander) | https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/sunrise-commander/ |
| [user42 ELPA](http://user42.tuxfamily.org/elpa/index.html)   | https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/user42/         |

## 使用方法



根据你的需求，设置 `package-archives` ，比如用 GNU ELPA 和 MELPA：
```lisp
(setq package-archives '(("gnu" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/gnu/")
                         ("melpa" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/melpa/")))

```

### Spacemacs 用户



#### master 分支



添加下面的代码到  `.spacemacs`  的  `dotspacemacs/user-init()`

```lisp
(setq configuration-layer--elpa-archives
    '(("melpa-cn" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/melpa/")
      ("org-cn"   . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/org/")
      ("gnu-cn"   . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/gnu/")))
```

#### develop 分支



使用 `configuration-layer-elpa-archives` 代替原来的 `configuration-layer--elpa-archives` （ `--` 换成 `-` ）

```lisp
(setq configuration-layer-elpa-archives
    '(("melpa-cn" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/melpa/")
      ("org-cn"   . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/org/")
      ("gnu-cn"   . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/gnu/")))
```

### Cask 用户



[Cask](https://github.com/cask/cask) 是一个 Emacs Lisp 的项目管理工具。这里还是以 GNU ELPA 和 MELPA 为例，在添加下面的代码到 Cask

```lisp
(source "gnu"   "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/gnu/")
(source "melpa" "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/melpa/")
```

本镜像上游为 [https://elpa.emacs-china.org](https://elpa.emacs-china.org) 。

SJTUG 不提供 rsync 镜像。
