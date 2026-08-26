@Entry
@Component
struct GenerateRecipePage {

  @State status: string = '正在分析宠物信息...'

  build() {
    Column() {
      Text('🍲 AI 食谱生成')
        .fontSize(26)

      Text(this.status)
        .margin({ top: 20 })

      Text('✓ 分析年龄阶段\n✓ 匹配营养规则\n✓ 检查危险食材\n✓ 生成食谱')
        .margin({ top: 30 })
    }
    .padding(24)
  }
}
