import { RecipeService } from '../service/RecipeService';

@Entry
@Component
struct RecipeDetailPage {
  @State title: string = 'AI 食谱详情';
  @State content: string = '等待生成食谱';

  aboutToAppear() {
    const recipe = new RecipeService().getLastRecipe?.();
    if (recipe) {
      this.title = recipe.title;
      this.content = recipe.ingredients.join('、') + '\n\n' + recipe.steps.join('\n');
    }
  }

  build() {
    Column() {
      Text(this.title).fontSize(26)
      Text(this.content).margin({ top: 24 })
      Text('注意：辅助饮食，不替代完整宠粮')
        .margin({ top: 20 })
    }
    .padding(24)
  }
}
