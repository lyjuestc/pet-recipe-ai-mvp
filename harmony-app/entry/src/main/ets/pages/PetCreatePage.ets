import { PetStore } from '../storage/PetStore';

@Entry
@Component
export struct PetCreatePage {
  @State name: string = '';
  @State species: 'dog' | 'cat' = 'dog';
  @State ageMonths: string = '';
  @State weightKg: string = '';

  private store: PetStore = new PetStore()

  private isValid(): boolean {
    return this.name.trim().length > 0 && Number(this.ageMonths) > 0 && Number(this.weightKg) > 0;
  }

  save() {
    this.store.save({
      name: this.name,
      species: this.species,
      age: Number(this.ageMonths),
      weight: Number(this.weightKg)
    })
  }

  build() {
    Column({ space: 14 }) {
      Text('创建宠物档案').fontSize(28)
      TextInput({ placeholder: '名字', text: this.name }).onChange(v => this.name = v)
      TextInput({ placeholder: '年龄(月)', text: this.ageMonths }).onChange(v => this.ageMonths = v)
      TextInput({ placeholder: '体重(kg)', text: this.weightKg }).onChange(v => this.weightKg = v)
      Button('保存')
        .enabled(this.isValid())
        .onClick(() => this.save())
    }.padding(24)
  }
}
