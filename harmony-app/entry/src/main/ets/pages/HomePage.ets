import router from '@ohos.router';

@Component
export struct HomePage {
  build() {
    Column({ space: 18 }) {
      Text('🐾 Pet Recipe AI').fontSize(30).fontWeight(FontWeight.Bold)
      Text('为你的宠物生成更安全、更个性化的食谱建议')
        .fontSize(16)
        .fontColor('#666666')
        .textAlign(TextAlign.Center)

      Column({ space: 10 }) {
        Text('我的宠物').fontSize(14).fontColor('#888888')
        Text('还没有宠物档案').fontSize(20).fontWeight(FontWeight.Medium)
        Button('创建宠物档案')
          .width('100%')
          .onClick(() => router.pushUrl({ url: 'pages/PetCreatePage' }))
      }
      .width('100%')
      .padding(20)
      .borderRadius(16)
      .backgroundColor('#F7F8FA')

      Button('🍲 生成今日食谱')
        .width('100%')
        .height(50)
        .onClick(() => router.pushUrl({ url: 'pages/GenerateRecipePage' }))

      Row({ space: 12 }) {
        Button('历史食谱').layoutWeight(1)
          .onClick(() => router.pushUrl({ url: 'pages/HistoryPage' }))
        Button('设置').layoutWeight(1)
          .onClick(() => router.pushUrl({ url: 'pages/SettingsPage' }))
      }
      .width('100%')
    }
    .width('100%')
    .height('100%')
    .padding(24)
    .justifyContent(FlexAlign.Center)
  }
}
