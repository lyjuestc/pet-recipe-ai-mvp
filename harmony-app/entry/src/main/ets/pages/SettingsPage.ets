@Entry
@Component
struct SettingsPage {
  @State apiKeyConfigured: boolean = false;
  @State model: string = 'free-model';

  build() {
    Column({ space: 18 }) {
      Text('设置').fontSize(28).fontWeight(FontWeight.Bold)

      Column({ space: 12 }) {
        Text('AI 配置').fontSize(18).fontWeight(FontWeight.Medium)
        Text(this.apiKeyConfigured ? 'OpenRouter API Key：已配置' : 'OpenRouter API Key：未配置')
          .fontSize(15)
        Button(this.apiKeyConfigured ? '重新配置 API Key' : '配置 API Key')
          .width('100%')
          .onClick(() => { this.apiKeyConfigured = true; })
      }
      .width('100%')
      .padding(18)
      .backgroundColor('#F7F8FA')
      .borderRadius(16)

      Column({ space: 8 }) {
        Text('模型').fontSize(18).fontWeight(FontWeight.Medium)
        Text(this.model).fontSize(15).fontColor('#666666')
        Button('使用默认免费模型')
          .width('100%')
          .onClick(() => { this.model = 'free-model'; })
      }
      .width('100%')
      .padding(18)
      .backgroundColor('#F7F8FA')
      .borderRadius(16)

      Text('安全提示：API Key 不应提交到 Git 仓库。生产版本应使用安全存储，并避免日志输出密钥。')
        .fontSize(13)
        .fontColor('#888888')
        .width('100%')
    }
    .width('100%')
    .height('100%')
    .padding(24)
  }
}
