class Achievement {
  final String name;
  final String imageUrl;
  final String certificationUrl;
  final String? issuedBy;

  const Achievement({
    required this.name,
    required this.imageUrl,
    required this.certificationUrl,
    this.issuedBy,
  });
}
