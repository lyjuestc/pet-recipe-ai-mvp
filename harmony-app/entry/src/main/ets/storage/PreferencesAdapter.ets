export class PreferencesAdapter {
  private values: Record<string, string> = {};

  set(key: string, value: string): void {
    this.values[key] = value;
  }

  get(key: string): string | undefined {
    return this.values[key];
  }
}
