import 'package:portfolio/content/project_content.dart';

class Projects{
  final String? title,description,animationMessage,projectType,projectLink,longContent,iosLink;

  Projects({this.title,this.description,this.animationMessage,this.projectType,this.projectLink,this.longContent,this.iosLink});
}

List<Projects> demoProjects=[

  Projects(
      title: "DIDIT GYM App",
      animationMessage: "Work out App",
      projectType: "Flutter",
      projectLink: "https://play.google.com/store/apps/details?id=com.app.didit&pli=1",
      iosLink:'https://apps.apple.com/in/app/didit-app/id6478201495' ,
      longContent: ProjectContent.didit,
      description: "From deciding to complete your first Half Marathon, to completing a Full IronMan, we will be part of your journey. While achieving your goals, our main mission is to create personalised memorabilia on all your fitness journeys. For you and your family and friends to cherish your accomplishments , hard work and dedication. We will help you set goals, track workouts, monitor progress, and most importantly capture your memories along the way."
  ),

  Projects(
      title: "Quick & Random Chat",
      animationMessage: "Chat App with firebase",
      projectType: "Flutter",
      projectLink: "https://play.google.com/store/apps/details?id=com.rcw.randomChatWorld",
      longContent: ProjectContent.quickChat,
      description: "Quick & Random Chat App is designed for anyone who loves to meet new people and engage in exciting conversations with random strangers. Simply join the chat room, and you will be paired with another random user who is also looking for a chat. It is easy to use and accessible from anywhere in the world. All you need is an internet connection and a device to start chatting with random people. So, come join us and start having fun, spontaneous conversations with strangers today!"
  ),
  Projects(
      title: "Vigour.Media",
      animationMessage: "e-Newspaper & Magazine App",
      projectType: "Flutter",
      longContent: ProjectContent.vigourMedia,
      projectLink: "https://play.google.com/store/apps/details?id=com.app.vigourmedia&pli=1",
      iosLink: 'https://apps.apple.com/in/app/vigour-media/id6446580465',
      description: "Vigour.Media is Australia’s most contemporary digital media company specialising in health & wellbeing. We believe in positively influencing health behaviours by enhancing health literacy and creating an engaging, immersive and interactive user experience. Our App provides an easy & convenient way to access a number of our digital services. These include our eMagazine, Online Bookings, Benefits Program and other health content. Premium access to the App includes Recipes, Workout Videos, Podcasts, Video Blogs, Articles and health calculators. All our solutions can be customised for your organisation / business."
  ),
  Projects(
    title: "Carro Libre",
    longContent: ProjectContent.carroLibre,
    animationMessage: "Like OLA, UBER & BLA BLA App",
    projectType: "Android",
    projectLink: "https://play.google.com/store/apps/details?id=com.app.carrolibre",
    description: "Carro Libre is just Like a OLA, UBER and BLA BLA App. The Carro Libre app offer mobility solutions by connecting customers to drivers and wide range of vehicle across Bikes, Cars and Trucks."
  ),
  Projects(
      title: "Locker Room Timer",
      longContent: ProjectContent.lockerRoom,
      animationMessage: "Gym class Timer App",
      projectType: "Android",
      projectLink: "https://play.google.com/store/apps/details?id=com.app.lockerroom",
      description: "Locker Room is a Gym class Timer App basically created for home workout. In Locker room User Select TIme and Sets according to body Workout. Locker Room is an Android Tv Application"
  ),
  Projects(
      title: "Drip User",
      longContent: ProjectContent.dripp,
      animationMessage: "Wash car with unique waterless cleaning technology",
      projectType: "Android",
      projectLink: "https://play.google.com/store/apps/details?id=com.dripp.drippuser",
      description: "Dripp is redefining how you wash your car with a unique waterless cleaning technology, providing simplicity and convenience to our clients. Download the Dripp mobile app and experience a smarter way to clean your car at the office or while you sleep."
  ),
  Projects(
      title: "Tic Tac Toe",
      longContent: ProjectContent.ticTac,
      animationMessage: "Tic Tac Toe is a classic two-player game",
      projectType: "Android",
      projectLink: "https://play.google.com/store/apps/details?id=com.mind.tictactoegame",
      description: "Tic Tac Toe is a classic two-player game where the players take turns placing their mark (an X or an O) on a 3x3 grid. The objective of the game is to get three of your marks in a row, either horizontally, vertically, or diagonally. Tic Tac Toe is a simple game that can be played by people of all ages, and it doesn't require any special equipment or setup. It's often used as a fun way to teach children about strategy, critical thinking, and problem-solving."
  ),
  Projects(
      title: "Brain Test",
      longContent: ProjectContent.brainTest,
      animationMessage: "Brain Test improving cognitive skills i.e memory",
      projectType: "Android",
      projectLink: "https://play.google.com/store/apps/details?id=com.sharpbrain&pli=1",
      description: "Brain Test applications are digital platforms that offer a variety of games and activities designed to stimulate and challenge the brain. These applications are developed with the goal of improving cognitive skills such as memory, attention, problem-solving, and reasoning.Brain Test applications are popular among people of all ages, but they are particularly popular among those who are interested in improving their cognitive abilities or maintaining their mental sharpness. They are also used by educators and therapists as a tool for enhancing learning and treating cognitive disorders."
  ),

];