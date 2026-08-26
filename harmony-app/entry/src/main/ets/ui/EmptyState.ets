export class EmptyState {
  title: string;
  description: string;

  constructor(title: string, description: string) {
    this.title = title;
    this.description = description;
  }

  static history() {
    return new EmptyState('暂无食谱记录', '生成你的第一份宠物食谱');
  }

  static favorite() {
    return new EmptyState('暂无收藏', '收藏喜欢的宠物食谱');
  }
}
