import router from '@ohos.router';

@Entry
@Component
struct Index {
  build() {
    Column({ space: 18 }) {
      Text('🐾 Pet Recipe AI')
        .fontSize(30)
        .fontWeight(FontWeight.Bold)

      Text('宠物 AI 食谱助手')
        .fontSize(18)
        .fontColor('#666666')

      Text('输入宠物信息，结合营养规则生成个性化食谱建议。')
        .fontSize(15)
        .fontColor('#888888')
        .textAlign(TextAlign.Center)
        .width('90%')

      Button('创建宠物档案')
        .width('90%')
        .height(50)
        .onClick(() => router.pushUrl({ url: 'pages/PetCreatePage' }))

      Button('🍲 生成今日食谱')
        .width('90%')
        .height(50)
        .onClick(() => router.pushUrl({ url: 'pages/GenerateRecipePage' }))

      Row({ space: 12 }) {
        Button('历史食谱').layoutWeight(1)
          .onClick(() => router.pushUrl({ url: 'pages/HistoryPage' }))
        Button('设置').layoutWeight(1)
          .onClick(() => router.pushUrl({ url: 'pages/SettingsPage' }))
      }
      .width('90%')
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .padding(24)
  }
}
