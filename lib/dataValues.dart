import 'dart:math';
import 'package:flutter/material.dart';
import 'package:kk_advice/itemData.dart';
import 'package:rounded_letter/rounded_letter.dart';

class DataValues {
  List<ItemData> getItemValues() {
    var advice = [
      ItemData(
          title: 'Advice',
          primaryText:
              'Learn how to learn from those you disagree with, or even offend you. See if you can find the truth in what they believe.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText: 'Being enthusiastic is worth 25 IQ points.',
          secondaryText: '',
          description: '',
          refIcon: Icon(
            Icons.favorite,
            color: Colors.pink,
          ),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Always demand a deadline. A deadline weeds out the extraneous and the ordinary. It prevents you from trying to make it perfect, so you have to make it different. Different is better.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Don’t be afraid to ask a question that may sound stupid because 99% of the time everyone else is thinking of the same question and is too embarrassed to ask it.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Being able to listen well is a superpower. While listening to someone you love keep asking them “Is there more?”, until there is no more.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'A worthy goal for a year is to learn enough about a subject so that you can’t believe how ignorant you were a year earlier.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Gratitude will unlock all other virtues and is something you can get better at.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Treating a person to a meal never fails, and is so easy to do. It’s powerful with old friends and a great way to make new friends.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(true),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText: 'Don’t trust all-purpose glue.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Reading to your children regularly will bond you together and kickstart their imaginations.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Never use a credit card for credit. The only kind of credit, or debt, that is acceptable is debt to acquire something whose exchange value is extremely likely to increase, like in a home. The exchange value of most things diminishes or vanishes the moment you purchase them. Don’t be in debt to losers.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Pros are just amateurs who know how to gracefully recover from their mistakes.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(true),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Extraordinary claims should require extraordinary evidence to be believed.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Don’t be the smartest person in the room. Hangout with, and learn from, people smarter than yourself. Even better, find smart people who will disagree with you.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Rule of 3 in conversation. To get to the real reason, ask a person to go deeper than what they just said. Then again, and once more. The third time’s answer is close to the truth.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText: 'Don’t be the best. Be the only.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(true),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Everyone is shy. Other people are waiting for you to introduce yourself to them, they are waiting for you to send them an email, they are waiting for you to ask them on a date. Go ahead.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Don’t take it personally when someone turns you down. Assume they are like you: busy, occupied, distracted. Try again later. It’s amazing how often a second try works.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'The purpose of a habit is to remove that action from self-negotiation. You no longer expend energy deciding whether to do it. You just do it. Good habits can range from telling the truth, to flossing.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText: 'Promptness is a sign of respect.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(true),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'When you are young spend at least 6 months to one year living as poor as you can, owning as little as you possibly can, eating beans and rice in a tiny room or tent, to experience what your “worst” lifestyle might be. That way any time you have to risk something in the future you won’t be afraid of the worst case scenario.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText: 'Trust me: There is no “them”.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'The more you are interested in others, the more interesting they find you. To be interesting, be interested.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Optimize your generosity. No one on their deathbed has ever regretted giving too much away.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'To make something good, just do it. To make something great, just re-do it, re-do it, re-do it. The secret to making fine things is in remaking them.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'The Golden Rule will never fail you. It is the foundation of all other virtues.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(true),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'If you are looking for something in your house, and you finally find it, when you’re done with it, don’t put it back where you found it. Put it back where you first looked for it.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Saving money and investing money are both good habits. Small amounts of money invested regularly for many decades without deliberation is one path to wealth.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'To make mistakes is human. To own your mistakes is divine. Nothing elevates a person higher than quickly admitting and taking personal responsibility for the mistakes you make and then fixing them fairly. If you mess up, fess up. It’s astounding how powerful this ownership is.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText: 'Never get involved in a land war in Asia.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'You can obsess about serving your customers/audience/clients, or you can obsess about beating the competition. Both work, but of the two, obsessing about your customers will take you further.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Show up. Keep showing up. Somebody successful said: 99% of success is just showing up.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Separate the processes of creation from improving. You can’t write and edit, or sculpt and polish, or make and analyze at the same time. If you do, the editor stops the creator. While you invent, don’t select. While you sketch, don’t inspect. While you write the first draft, don’t reflect. At the start, the creator mind must be unleashed from judgement.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(true),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'If you are not falling down occasionally, you are just coasting.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Perhaps the most counter-intuitive truth of the universe is that the more you give to others, the more you’ll get. Understanding this is the beginning of wisdom.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Friends are better than money. Almost anything money can do, friends can do better. In so many ways a friend with a boat is better than owning a boat.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText: 'This is true: It’s hard to cheat an honest man.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'When an object is lost, 95% of the time it is hiding within arm’s reach of where it was last seen. Search in all possible locations in that radius and you’ll find it.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'You are what you do. Not what you say, not what you believe, not how you vote, but what you spend your time on.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'If you lose or forget to bring a cable, adapter or charger, check with your hotel. Most hotels now have a drawer full of cables, adapters and chargers others have left behind, and probably have the one you are missing. You can often claim it after borrowing it.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Hatred is a curse that does not affect the hated. It only poisons the hater. Release a grudge as if it was a poison.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'There is no limit on better. Talent is distributed unfairly, but there is no limit on how much we can improve what we start with.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Be prepared: When you are 90% done any large project (a house, a film, an event, an app) the rest of the myriad details will take a second 90% to complete.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'When you die you take absolutely nothing with you except your reputation.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Before you are old, attend as many funerals as you can bear, and listen. Nobody talks about the departed’s achievements. The only thing people will remember is what kind of person you were while you were achieving.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'For every dollar you spend purchasing something substantial, expect to pay a dollar in repairs, maintenance, or disposal by the end of its life.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Anything real begins with the fiction of what could be. Imagination is therefore the most potent force in the universe, and a skill you can get better at. It’s the one skill in life that benefits from ignoring what everyone else knows.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(true),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'When crisis and disaster strike, don’t waste them. No problems, no progress.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'On vacation go to the most remote place on your itinerary first, bypassing the cities. You’ll maximize the shock of otherness in the remote, and then later you’ll welcome the familiar comforts of a city on the way back.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'When you get an invitation to do something in the future, ask yourself: would you accept this if it was scheduled for tomorrow? Not too many promises will pass that immediacy filter.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Don’t say anything about someone in email you would not be comfortable saying to them directly, because eventually they will read it.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(true),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'If you desperately need a job, you are just another problem for a boss; if you can solve many of the problems the boss has right now, you are hired. To be hired, think like your boss.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText: 'Art is in what you leave out.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Acquiring things will rarely bring you deep satisfaction. But acquiring experiences will.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(true),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Rule of 7 in research. You can find out anything if you are willing to go seven levels. If the first source you ask doesn’t know, ask them who you should ask next, and so on down the line. If you are willing to go to the 7th source, you’ll almost always get your answer.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText: 'How to apologize: Quickly, specifically, sincerely.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Don’t ever respond to a solicitation or a proposal on the phone. The urgency is a disguise.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'When someone is nasty, rude, hateful, or mean with you, pretend they have a disease. That makes it easier to have empathy toward them which can soften the conflict.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Eliminating clutter makes room for your true treasures.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'You really don’t want to be famous. Read the biography of any famous person.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Experience is overrated. When hiring, hire for aptitude, train for skills. Most really amazing or great things are done by people doing them for the first time.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText: 'A vacation + a disaster = an adventure.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Buying tools: Start by buying the absolute cheapest tools you can find. Upgrade the ones you use a lot. If you wind up using some tool for a job, buy the very best you can afford.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Learn how to take a 20-minute power nap without embarrassment.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(true),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Following your bliss is a recipe for paralysis if you don’t know what you are passionate about. A better motto for most youth is “master something, anything”. Through mastery of one thing, you can drift towards extensions of that mastery that bring you more joy, and eventually discover where your bliss is.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'I’m positive that in 100 years much of what I take to be true today will be proved to be wrong, maybe even embarrassingly wrong, and I try really hard to identify what it is that I am wrong about today.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'Over the long term, the future is decided by optimists. To be an optimist you don’t have to ignore all the many problems we create; you just have to imagine improving our capacity to solve problems.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Advice',
          primaryText:
              'The universe is conspiring behind your back to make you a success. This will be much easier to do if you embrace this pronoia.',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(true),
          type: 'card'),
    ];

    var dummy = [
      ItemData(
          title: 'TTT',
          primaryText: '',
          secondaryText: '',
          description: 'ddd ',
          refIcon: getRandomIcon(),
          type: 'title'),
      ItemData(
          title: 'TTT',
          primaryText: 'ppp',
          secondaryText: '“ssss',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
    ];

    return advice;
  }

  static Icon getRandomIcon([bool randomColor]) {
    List<Color> clrs = [
      Colors.red,
      Colors.amber,
      Colors.green,
      Colors.lime,
      Colors.orange,
      Colors.black
    ];
    if (randomColor == true) {
      int rndColor = Random().nextInt(clrs.length);
      int codePoint = 59471 + Random().nextInt(100);
      var colr = randomColor == true ? clrs[rndColor] : null;

      var icon = Icon(
        IconData(codePoint, fontFamily: 'MaterialIcons'),
        color: colr,
      );

      return icon;
    } else {
      return null;
    }
  }

  static Widget buildCountIcon(int i, ItemData element) {
    var wd;
    if (element.refIcon == null) {
      wd = RoundedLetter.withRedCircle('$i', 30, 15);
    } else {
      wd = element.refIcon;
    }
    return wd;
  }
}
