+++
date = "2017-01-15T23:12:56+08:00"
title = "sjtug.org写作指南"
tags = ["guide"]
author = "htfy96"
+++

这里介绍了一下发布新文章的步骤

## 安装Hugo, 或直接新建文章
安装`hugo`然后`hugo new post/YYYY-MM-DD-article-title.md`；或直接新建`content/post/YYYY-MM-DD-article-title.md`，手动指定`date`

## Front matters
头部`+++`的front matters部分，可以指定的部分有：

- `title = "article title"` 必填
- `author = "htfy96"` 必填
- `tags = ["tag1", "tag2"]` 建议填写，只有包含`news` tag的文章才会在首页显示，其它常用tag包括`announcement`, `guide`, `sharing`等
- `activity_time = "2017-01-08T15:00:00+08:00"`，格式同date，当有`sharing`标签时建议填写，代表活动开始时间
- `activity_place = "Main Library"`，同上，代表活动地点
- `draft = true`，当不想立即发布时才填写，默认情况`false`不用填写

## 测试并提交
- 使用`hugo server`看看最终效果是否理想
- 提交到 https://github.com/sjtug/portal ，主页会自动生成到sjtug.org

