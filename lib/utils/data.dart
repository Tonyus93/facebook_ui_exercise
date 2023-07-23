const List<Map<String, dynamic>> stories = [
  {
    'imagePath': 'assets/images/wallpapers/1.jpeg',
    'userData': {
      'avatarPath': 'assets/images/users/2.jpg',
      'name': 'Laura Leparc'
    }
  },
  {
    'imagePath': 'assets/images/wallpapers/2.jpeg',
    'userData': {
      'avatarPath': 'assets/images/users/3.jpg',
      'name': 'Alix Luca',
    }
  },
  {
    'imagePath': 'assets/images/wallpapers/3.jpeg',
    'userData': {
      'avatarPath': 'assets/images/users/4.jpg',
      'name': 'Moa Rotenb',
    }
  },
  {
    'imagePath': 'assets/images/wallpapers/4.jpeg',
    'userData': {
      'avatarPath': 'assets/images/users/5.jpg',
      'name': 'Lucie Polis'
    }
  },
  {
    'imagePath': 'assets/images/wallpapers/5.jpeg',
    'userData': {
      'avatarPath': 'assets/images/users/6.jpg',
      'name': 'Tony Montaña'
    }
  },
];

const List<Map<String, dynamic>> publications = [
  {
    'userData': {
      'avatarPath': 'assets/images/users/7.jpg',
      'name': 'Mathilda Rebus'
    },
    'imageData': {
      'path': 'assets/images/publications/ferrari.jpeg',
      'title':
          'Light of a Ferrari 458 in the streets of London. Look at this is amazing'
    },
    'timeAgo': '8 min',
    'comments': [
      {
        'userData': {
          'avatarPath': 'assets/images/users/4.jpg',
          'name': 'Moa Rotenb'
        },
        'timeAgo': '12 min',
        'message':
            'Enzo Ferrari was not initially interested in the idea of producing road cars when he formed Scuderia',
        'replies': [
          {
            'userData': {
              'avatarPath': 'assets/images/users/5.jpg',
              'name': 'Lucie Polis'
            },
            'timeAgo': '10 min',
            'message':
                'Early in 1969, Fiat took a 50% stake in Ferrari. An immediate result was an increase in available investment funds, and work',
          }
        ]
      },
      {
        'userData': {
          'avatarPath': 'assets/images/users/2.jpg',
          'name': 'Laura Leporc'
        },
        'timeAgo': '15 min',
        'message': 'On 15 September 2012, 964 Ferrari cars worth over',
        'replies': []
      }
    ],
    'shares': '2.7k'
  },
  {
    'userData': {
      'avatarPath': 'assets/images/users/8.jpg',
      'name': 'Patricia Lobert'
    },
    'imageData': {
      'path': 'assets/images/publications/flutter.jpeg',
      'title': 'Flutter is now supported on Windows!'
    },
    'timeAgo': '12 min',
    'comments': [],
    'shares': '6.9k'
  },
  {
    'userData': {
      'avatarPath': 'assets/images/users/2.jpg',
      'name': 'Laura Leparc'
    },
    'imageData': {
      'path': 'assets/images/wallpapers/4.jpeg',
      'title': 'Nature is awesome'
    },
    'timeAgo': '34 min',
    'comments': [],
    'shares': '600'
  },
];
