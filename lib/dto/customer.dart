class CustomerServis {
   int? id;
   String? nim;
   String? titleIssues;
   String? decriptionIssues;
   int? rating;
   String? image;

  CustomerServis({
   this.id,
   this.nim,
   this.titleIssues,
   this.decriptionIssues,
   this.rating,
   this.image,
  });

  factory CustomerServis.fromJson(Map<String, dynamic> json) {
    return CustomerServis(
      id: json['id'] as int,
      nim: json['nim'] as String,
      titleIssues: json['titleIssues'],
      decriptionIssues: json['descriptionIssues'],
      rating: json['rating'],
      image: json['image'],
    );
  }
}
