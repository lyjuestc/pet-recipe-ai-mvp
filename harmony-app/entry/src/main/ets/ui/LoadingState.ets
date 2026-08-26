export enum GenerateStage {
  ANALYZING_PET = '分析宠物信息',
  CALCULATING_NUTRITION = '计算营养需求',
  GENERATING_RECIPE = '生成食谱',
  SAFETY_CHECKING = '安全检查',
  COMPLETED = '完成'
}

export class LoadingState {
  stage: GenerateStage = GenerateStage.ANALYZING_PET;

  update(stage: GenerateStage) {
    this.stage = stage;
  }
}
