import { RecipeMapper, RecipeResult } from './RecipeMapper';
import { RecipeValidator } from './RecipeValidator';

export class RecipeService {
  private mapper = new RecipeMapper();
  private validator = new RecipeValidator();

  build(raw: any): RecipeResult | null {
    const recipe = this.mapper.map(raw);
    return this.validator.validate(recipe) ? recipe : null;
  }
}
