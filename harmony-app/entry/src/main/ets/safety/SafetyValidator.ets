export class SafetyValidator {
  private blocked = ['洋葱', '巧克力', '葡萄'];

  validate(ingredients: string[]): string[] {
    return ingredients.filter(item => this.blocked.includes(item));
  }
}
