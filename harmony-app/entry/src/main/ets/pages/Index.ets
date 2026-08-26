@Entry
@Component
struct Index {
  @State petName: string = '我的宠物';

  build() {
    Column() {
      Text('🐾 Pet Recipe AI')
        .fontSize(28)
        .margin({bottom:20})

      Text(`你好，${this.petName}`)
        .fontSize(20)

      Button('生成今日食谱')
        .margin({top:30})
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}
