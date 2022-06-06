class Products {
  final int id;
  final int salary;
  final String title;
  final String subtitle;
  final String information;
  final String image;

  Products(
      {required this.id,
      required this.salary,
      required this.title,
      required this.subtitle,
      required this.information,
      required this.image});
}

//list of materials
List<Products> materiales = [
  Products(
      id: 1,
      salary: 250,
      title: "Headphone",
      subtitle: "Sony headphone",
      information: "سماعه سوني اصليه احدث اصدار ومعها شاحن هديه",
      image: "images/Headphone.jpg"),
  Products(
      id: 2,
      salary: 5000,
      title: "Machine",
      subtitle: "Aman machine",
      information: "مكنه امان استعمال خفيف وسعرها كويس وبها شحن 1000 جنيه",
      image: "images/Aman.jpg"),
  Products(
      id: 3,
      salary: 120,
      title: "Machine",
      subtitle: "Boiller",
      information: "البويلر الجديد عليه عرض طقم كوبيات",
      image: "images/Boiller.jpg"),
  Products(
      id: 4,
      salary: 9000,
      title: "Machine",
      subtitle: "cofee Machine",
      information: "مكنه قهوه ايطالي استعمال شهرين",
      image: "images/cofeemachine.jpg"),
  Products(
      id: 5,
      salary: 2400,
      title: "charge",
      subtitle: "power pank",
      information: "باور بانك سعه 10000 ميلي امبير",
      image: "images/powerpank.jpg"),
];
