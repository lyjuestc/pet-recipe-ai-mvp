# Pet Recipe AI MVP

宠物 AI 食谱助手 MVP。

## 功能目标

- 宠物档案管理
- 基于 FEDIAF/AFFCO 思路的本地营养规则
- OpenRouter AI 食谱生成
- 危险食材过滤
- JSON 食谱输出

## MVP 架构

```
HarmonyOS App
    |
Local Nutrition Rules
    |
Prompt Builder
    |
OpenRouter API
    |
Recipe JSON
    |
Safety Validator
```

## 当前版本

V0.1:
- 数据模型
- 营养规则库
- 食材安全库
- AI Prompt 模板

后续加入 HarmonyOS ArkTS UI。
