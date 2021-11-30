
import 'package:meta/meta.dart';

class ForumData {
  static const ForumModels = <ForumModel>[
    ForumModel(
      urlAvatar:
      'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      owner: 'Tom',
      question: 'Welcome to the Abstract user community—we’re glad you’re here. This is a space to build community with other enthusiastic and knowledgeable ...',
      liked: 20,
      comments: 15,
      subject: 'Math',
      date: "1 month"
    ),
    ForumModel(
      urlAvatar:
      'https://images.unsplash.com/photo-1569913486515-b74bf7751574?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=635&q=80',
      owner: 'Marie Luise',
      question: 'Yesterday was the best day of my life',
        liked: 15,
        comments: 25,
        subject: 'Fizika)',
        date: "1 month"
    ),
    ForumModel(
      urlAvatar:
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      owner: 'Honey',
      question: 'Hey whatsup?',
        liked: 20,
        comments: 15,
        subject: 'Math',
        date: "1 month"
    ),
    ForumModel(
      urlAvatar:
      'https://images.unsplash.com/photo-1588979355313-6711a095465f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=621&q=80',
      owner: 'Family',
      question: 'Good morning guys!',
        liked: 20,
        comments: 15,
        subject: 'Math',
        date: "1 month"
    ),
    ForumModel(
      urlAvatar:
      'https://images.unsplash.com/photo-1507842217343-583bb7270b66?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1153&q=80',
      owner: 'Book Club',
      question: 'What\'s the next book to read?',
        liked: 20,
        comments: 15,
        subject: 'Math',
        date: "1 month"
    ),
    ForumModel(
        urlAvatar:
        'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
        owner: 'Tom',
        question: 'Welcome to the Abstract user community—we’re glad you’re here. This is a space to build community with other enthusiastic and knowledgeable ...',
        liked: 285,
        comments: 515,
        subject: 'Chemistry',
        date: "5 month"
    ),
  ];
}


class ForumModel {
  final String urlAvatar;
  final String owner;
  final String subject;
  final String question;
  final String date;
  final int liked;
  final int comments;





  const ForumModel({
    required this.urlAvatar,
    required this.owner,
    required this.subject,
    required this.question,
    required this.date,
    required this.liked,
    required this.comments

  });
}
