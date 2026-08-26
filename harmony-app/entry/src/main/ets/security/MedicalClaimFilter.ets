export class MedicalClaimFilter {
  static blockedWords: string[] = [
    '治疗',
    '治愈',
    '药效',
    '替代兽医',
    '改善疾病'
  ];

  static sanitize(text: string): string {
    let result = text;

    this.blockedWords.forEach(word => {
      result = result.replace(
        new RegExp(word, 'g'),
        '辅助饮食建议'
      );
    });

    return result;
  }
}
