@Entry
@Component
export struct PetCreatePage {
  @State name: string = '';
  @State species: 'dog' | 'cat' = 'dog';
  @State breed: string = '';
  @State ageMonths: string = '';
  @State weightKg: string = '';
  @State activityLevel: 'low' | 'medium' | 'high' = 'medium';
  @State allergies: string = '';

  private isValid(): boolean {
    const age = Number(this.ageMonths);
    const weight = Number(this.weightKg);
    return this.name.trim().length > 0 && age > 0 && weight > 0;
  }

  build() {
    Scroll() {
      Column({ space: 14 }) {
        Text('创建宠物档案').fontSize(28).fontWeight(FontWeight.Bold)
        Text('这些信息会用于营养计算和生成食谱。').fontSize(14).fontColor('#777777')

        TextInput({ placeholder: '宠物名字 *', text: this.name })
          .onChange(value => { this.name = value })

        Text('物种').fontSize(15).fontWeight(FontWeight.Medium)
        Row({ space: 10 }) {
          Button('🐶 狗').layoutWeight(1)
            .backgroundColor(this.species === 'dog' ? '#EAF2FF' : '#F5F5F5')
            .fontColor('#222222')
            .onClick(() => { this.species = 'dog' })
          Button('🐱 猫').layoutWeight(1)
            .backgroundColor(this.species === 'cat' ? '#EAF2FF' : '#F5F5F5')
            .fontColor('#222222')
            .onClick(() => { this.species = 'cat' })
        }.width('100%')

        TextInput({ placeholder: '品种（可选）', text: this.breed })
          .onChange(value => { this.breed = value })
        TextInput({ placeholder: '年龄（月）*', text: this.ageMonths })
          .type(InputType.Number)
          .onChange(value => { this.ageMonths = value })
        TextInput({ placeholder: '体重（kg）*', text: this.weightKg })
          .type(InputType.Number)
          .onChange(value => { this.weightKg = value })

        Text('活动水平').fontSize(15).fontWeight(FontWeight.Medium)
        Row({ space: 8 }) {
          Button('低').layoutWeight(1).onClick(() => { this.activityLevel = 'low' })
          Button('中').layoutWeight(1).onClick(() => { this.activityLevel = 'medium' })
          Button('高').layoutWeight(1).onClick(() => { this.activityLevel = 'high' })
        }.width('100%')

        TextInput({ placeholder: '过敏/忌口（可选）', text: this.allergies })
          .onChange(value => { this.allergies = value })

        Button(this.isValid() ? '保存宠物档案' : '请填写姓名、年龄和体重')
          .width('100%')
          .height(50)
          .enabled(this.isValid())
          .onClick(() => {
            // Commit 25: input model is now ready for the repository layer.
            console.info(`Pet profile ready: ${this.species}, ${this.weightKg}kg`)
          })
      }
      .padding(24)
      .width('100%')
    }
    .scrollable(ScrollDirection.Vertical)
    .width('100%')
    .height('100%')
  }
}
