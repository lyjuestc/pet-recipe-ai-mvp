@Component
export struct PetCreatePage {
  @State name:string = '';

  build(){
    Column(){
      Text('创建宠物档案').fontSize(24)
      TextInput({placeholder:'宠物名字'})
        .onChange(value=>{this.name=value})
      Button('保存')
    }
    .padding(20)
  }
}
