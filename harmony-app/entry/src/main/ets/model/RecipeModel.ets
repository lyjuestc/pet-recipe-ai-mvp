export interface Recipe {
  status: 'success' | 'warning' | 'failed';
  recipe: {
    name: string;
    type: 'supplementary' | 'complete';
    ingredients: Array<{
      name: string;
      amount: string;
    }>;
    steps: string[];
    warnings: string[];
  };
}
