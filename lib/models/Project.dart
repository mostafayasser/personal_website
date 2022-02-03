class Project {
  final String? title, description, image, iosLink, androidLink;

  Project({
    this.title,
    this.description,
    this.image,
    this.iosLink,
    this.androidLink,
  });
}

List<Project> demoProjects = [
  Project(
    title: "Homemade food ordering multivendor app",
    image: "assets/images/homemade.jpg",
    description:
        "Homemade an e-commerce multi-versions app for home made food in Saudi Arabia. I was a team leader for a group of developers to develop these 2 apps and was able to develop and deploy them in just 3 weeks.",
    iosLink:
        "https://apps.apple.com/cy/app/%D8%B4%D8%BA%D9%84-%D8%A8%D9%8A%D8%AA/id1587582342",
    androidLink:
        "https://play.google.com/store/apps/details?id=app.tech_time.homemade",
  ),
  Project(
    title: "QatarCyclists social media app",
    image: "assets/images/qatarcyclists.jpg",
    description:
        "Qatar Cyclists a social media app for cyclists in Qatar in which they can add and join events and they can chat with other users and many more features. It was based on APIs for data and firebase for the chat part.",
    iosLink: "https://apps.apple.com/eg/app/qatar-cyclists/id1530453512",
    androidLink:
        "https://play.google.com/store/apps/details?id=com.webzone.qatarcyclistscenter&hl=en&gl=US",
  ),
  Project(
    title: "BeautyDoz e-commerce app",
    image: "assets/images/beautydoz.jpg",
    description:
        "Beauty Doz is an e-commerce app for clothes and cosmetics in Kuwait with online payment feature. Beauty Doz is a typical e-commerce app where user could buy products, rate them and have a favorite list with ability to pay online. The app has notifaction system for orders and offers.",
    iosLink: "https://apps.apple.com/eg/app/beauty-doz/id1531893206",
    androidLink:
        "https://play.google.com/store/apps/details?id=com.overrideeg.apps.beautydoz&hl=en&gl=US",
  ),
  Project(
    title: "Q.H.S recruiting app",
    image: "assets/images/qhs.jpg",
    description:
        "Q.H.S a recruiting app in Qatar for recruiters to post jobs and applicants to apply for jobs. Recruiters can view applications, filter them and contact the applicants to complete the hiring process.",
    iosLink: "",
    androidLink:
        "https://play.google.com/store/apps/details?id=com.overrideeg.hawzen.apps.qhs&hl=en&gl=US",
  ),
  Project(
    title: "O-Pass attendance system",
    image: "assets/images/opass.jpg",
    description:
        "O-Pass an attendance system app for companies and institutions to take employees attendance and authenticate using fingerprint and face recognition.",
    iosLink: "https://apps.apple.com/eg/app/o-pass/id1530717293",
    androidLink:
        "https://play.google.com/store/apps/details?id=com.overrideeg.apps.opass&hl=en&gl=US",
  ),
  Project(
    title: "Doha roots news app",
    image: "assets/images/doharoots.jpg",
    description:
        "Doha roots is a news app for indians in Qatar and around the world to update them with the recent news. The app has written articles and videos.",
    iosLink: "https://apps.apple.com/eg/app/doha-roots/id1525158964",
    androidLink: "",
  ),
];
