export class PromptBuilder {

  static build(pet:any, nutrition:any, ingredients:any[]) {
    return `
你是一名宠物饮食助手。

规则：
1. 不进行疾病诊断。
2. 不提供治疗方案。
3. 不推荐危险食物。
4. 输出JSON格式。

宠物信息:
${JSON.stringify(pet)}

营养分析:
${JSON.stringify(nutrition)}

推荐食材:
${JSON.stringify(ingredients)}

请生成辅助饮食食谱。
`;
  }
}
