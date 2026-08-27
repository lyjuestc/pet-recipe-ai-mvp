# Pet Recipe AI MVP

宠物 AI 食谱助手 MVP。

## 项目目标

打造一个 HarmonyOS 宠物 AI 食谱助手：

用户输入宠物资料后，AI 根据宠物情况生成个性化食谱，并提供安全校验、结果展示和历史记录。

核心流程：

```
Pet Profile
    |
    v
Recipe Prompt Builder
    |
    v
OpenRouter AI
    |
    v
Recipe JSON Parser
    |
    v
Safety Validator
    |
    v
Recipe Detail
    |
    v
History Storage
```

---

# 当前仓库状态

当前已经完成的能力：

## 已完成基础模块

- 宠物数据模型
- 营养规则方向设计
- 危险食材规则方向设计
- AI Prompt 架构设计
- 食谱生成流程模型
- AI 返回解析模型
- 历史记录数据模型
- MVP Runtime 骨架

当前代码已经具备 MVP 架构雏形，但还不是最终可安装运行版本。

---

# 最小可运行 MVP（目标版本）

## 用户流程

必须达到：

```
打开 App
    |
创建宠物档案
    |
填写:
- 名称
- 类型
- 年龄
- 体重
    |
点击生成食谱
    |
调用 AI
    |
返回结构化食谱
    |
安全检查
    |
展示详情
    |
保存历史
```

---

# 距离最小 MVP 还缺少的内容

## 1. HarmonyOS 工程完整化（最高优先级）

需要补齐：

- DevEco Studio 可打开工程
- build-profile.json5
- module.json5
- AppScope 配置
- EntryAbility
- 页面路由
- ArkUI 页面入口

目标：

```
DevEco Studio
      |
      v
Build
      |
      v
Run on Emulator / Device
```

---

## 2. UI 页面

需要实现：

### 首页

- App 入口
- 功能导航

### 宠物资料页

输入：

- 名称
- 宠物类型
- 年龄
- 体重

### 食谱生成页

包含：

- 生成按钮
- Loading 状态
- 错误提示

### 食谱详情页

展示：

- 食谱名称
- 食材
- 制作步骤
- 风险提示

### 历史页面

展示：

- 历史生成记录

---

## 3. AI 调用真实接入

需要实现：

- OpenRouter HTTP Client
- API Key 配置
- 网络权限
- 请求封装
- 超时处理
- 错误重试

---

## 4. 数据持久化

需要实现：

- PetStore
- RecipeStore
- HistoryStore

最低要求：

关闭 App 后数据仍存在。

---

## 5. 安全校验

需要实现：

- 禁止食材过滤
- 宠物类型差异化规则
- 警告展示

---

# 后续 Agent 执行建议

不要继续拆小 Commit。

建议下一阶段直接完成：

```
Final MVP Release
```

一次提交完成：

1. 完整 HarmonyOS 工程
2. ArkUI 页面
3. AI Client
4. Storage
5. Validator
6. Demo 数据
7. 可运行测试

验收标准：

```
DevEco Studio 打开
        |
        v
编译成功
        |
        v
模拟器启动
        |
        v
完成一次食谱生成流程
```

---

# 当前版本

Architecture MVP Draft

下一目标：

**Runnable Minimal MVP Release**
