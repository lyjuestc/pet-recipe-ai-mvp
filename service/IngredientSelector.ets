export class IngredientSelector {
  static select(context: any, ingredients: any[]) {
    return ingredients
      .filter(item => {
        if (!item.species.includes(context.species)) {
          return false;
        }

        if (context.avoid.includes(item.name)) {
          return false;
        }

        return true;
      })
      .slice(0, 10);
  }
}
