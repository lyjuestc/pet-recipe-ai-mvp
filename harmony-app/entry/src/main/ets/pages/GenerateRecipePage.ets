import { RecipeService } from '../service/RecipeService';
import { PetStore } from '../storage/PetStore';

@Entry
@Component
struct GenerateRecipePage {

  @State status: string = '等待生成食谱'
  private petStore: PetStore = new PetStore()

  async generate() {
    const pet = this.petStore.get()
    if (pet == null) {
      this.status = '请先创建宠物档案'
      return
    }

    this.status = '正在生成...'
    const recipe = await RecipeService.generateRecipe(pet, [])
    this.status = recipe.recipe?.name ?? '生成完成'
  }

  build() {
    Column() {
      Text('🍲 AI 食谱生成')
        .fontSize(26)

      Text(this.status)
        .margin({ top: 20 })

      Button('生成食谱')
        .margin({ top: 30 })
        .onClick(() => {
          this.generate()
        })
    }
    .padding(24)
  }
}
