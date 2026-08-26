@Entry
@Component
struct RecipeDetailPage {

  build() {
    Column() {
      Text('🍲 牛肉南瓜餐')
        .fontSize(26)

      Text('适合：成年犬\n\n食材：\n🥩 牛肉 100g\n🎃 南瓜 40g\n🥕 胡萝卜 20g\n\n制作：\n1. 食材煮熟\n2. 切碎混合\n3. 放凉后喂食\n\n注意：辅助饮食，不替代完整宠粮')
        .margin({ top: 24 })
    }
    .padding(24)
  }
}
