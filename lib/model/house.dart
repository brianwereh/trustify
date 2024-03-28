class House {
  String name;
  String address;
  String imageUrl;

  House(this.name, this.address, this.imageUrl);

  static List<House> generateRecommended() {
    return [
      House('Bagik Hostels', 'Bagik, Behind University of Embu',
          'assets/images/house01.jpeg'),
      House('Jerusalem Hostel', 'Kangaru Market, Embu',
          'assets/images/house02.jpeg'),
      House('Kamiu Hostel', 'Kamiu, Embu', 'assets/images/house02.jpeg'),
    ];
  }

  static List<House> generateBestOffer() {
    return [
      House('Bagik Hostels', 'Bagik, near Calvidas Hotel',
          'assets/images/offer01.jpeg'),
      House('Jerusalem Hostel', 'Kangaru Market, Embu',
          'assets/images/offer02.jpeg'),
    ];
  }
}
