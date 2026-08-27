@Entry
@Component
struct HistoryPage {
  @State hasHistory: boolean = false;

  build() {
    Column({ space: 18 }) {
      Text('历史食谱').fontSize(28).fontWeight(FontWeight.Bold)

      if (this.hasHistory) {
        List() {
          ListItem() {
            Column({ space: 6 }) {
              Text('示例：鸡肉南瓜餐').fontSize(18)
              Text('520 kcal · 今天').fontSize(14).fontColor('#777777')
            }
            .width('100%')
            .padding(16)
          }
        }
        .width('100%')
        .layoutWeight(1)
      } else {
        Column({ space: 10 }) {
          Text('📖').fontSize(44)
          Text('还没有历史食谱').fontSize(20)
          Text('生成第一份食谱后，会自动出现在这里。')
            .fontSize(14)
            .fontColor('#888888')
            .textAlign(TextAlign.Center)
        }
        .width('100%')
        .layoutWeight(1)
        .justifyContent(FlexAlign.Center)
      }
    }
    .width('100%')
    .height('100%')
    .padding(24)
  }
}
