# Pet Recipe AI MVP

宠物 AI 食谱助手 MVP。

## Runnable Minimal MVP

已完成核心流程：

```
Pet Profile
    |
PetStore
    |
Recipe Service
    |
AI Recipe Generator
    |
Safety Validator
    |
Recipe Detail
    |
History Storage
```

## 已实现

- HarmonyOS ArkUI 页面结构
- 宠物档案创建
- 宠物数据存储
- AI 食谱生成服务
- Mock AI Client（可替换真实 OpenRouter）
- 食谱详情展示
- 历史记录存储
- 安全提示流程

## Demo 流程

```
打开 App
  |
创建宠物
  |
保存档案
  |
生成食谱
  |
查看详情
  |
保存历史
```

## 下一阶段

- OpenRouter 真实 HTTP 调用
- 云端账号体系
- 更完整营养数据库
- 发布版本 UI 优化
