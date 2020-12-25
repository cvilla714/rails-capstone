# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email:"luffy@onepiece.com",name:"luffy",password:"password")
User.create(email:"zorro@onepiece.com",name:"zorro",password:"password")
User.create(email:"sanji@onepiece.com",name:"sanji",password:"password")
User.create(email:"jinbei@onepiece.com",name:"jinbei",password:"password")
User.create(email:"robin@onepiece.com",name:"robin",password:"password")

puts "users created #{User.all.count}"

Category.create(name:"Injuries",priority:1)
Category.create(name:"NBA Headlines",priority:3)
Category.create(name:"NFL Top-Stories",priority:5)
Category.create(name:"MLB Lates-News",priority:7)
Category.create(name:"NHL News",priority:9)

puts "Categories created #{Category.all.count}"


Article.create(author_id:1,title:"James Harden must quarantine until Friday",body:"James Harden will be in quarantine until Friday, meaning the Houston Rockets star could be eligible to play Saturday when his team is to finally open its season in Portland.
    The Rockets were scheduled to play Wednesday against Oklahoma City, a game postponed for a variety of coronavirus issues. Among them was Harden declared unavailable to play after the NBA determined he violated the league’s health and safety protocols.
    “There was James’s high-profile violation, but then there was a series of incidents with the team; some involving violations, some not,” NBA Commissioner Adam Silver said on Thursday while appearing on ESPN’s “The Jump”.
    “At the end of the day, our medical professionals have to go player by player,” he continued. “You look at the particular situation of each player. Obviously, if someone’s infected, that’s a quick decision to isolate and separate them. But then, there’s the contact tracing. Then, there’s the question of what other players or team personnel did that infected person come in contact with? That takes time.”
    Meanwhile, the league announced Thursday that out of the 558 players tested for COVID-19 in the week starting Dec. 16, there were two new confirmed player positive tests.
    But the Rockets-Thunder game is the only one to be postponed so far this season.
    Under NBA rules, a team needs eight healthy players to play, and the Rockets were one short Wednesday. They have 16 players on the roster, and nine were out: One was injured; three returned tests that were either positive or inconclusive for coronavirus; four other players are quarantined as part of the virus protocols; and Harden was ineligible.
    The NBA’s medical staff determined Harden needed to quarantine for four days, which started Tuesday, before he can return to practice, games or team activities. The league was still reviewing to see if any other quarantine decisions were needed for other Rockets players.
    Harden was fined $50,000 on Wednesday by the NBA, which said he violated protocols. The league prohibits attending indoor social gatherings of 15 or more people or entering bars, lounges, clubs or similar establishments.
    Video of the disgruntled star surfaced on social media, where he was shown without a mask at a crowded party in a private event space Monday night.
    Harden, in a since-deleted Instagram post, explained why he was at the event.
    He wrote: “One thing after another. I went to show love to my homegirl at her event (not a strip club) because she is becoming a boss and putting her people in a position of success and now it’s a problem. Everyday it’s something different. No matter how many times people try to drag my name under you can’t. The real people always end up on top.
    ",image: 'https://cdn.nba.com/manage/2020/12/USATSI_15328129-scaled-e1608840678492-784x452.jpg')



Article.create(
author_id:2,
title:"Several of NBA’s best and brightest stars set to shine on Christmas Day",
body:
"Tuesday night’s doubleheader was a great way to wake up the palate for a new NBA season. And Wednesdays 13-game sampler platter was the ideal follow up, a chance to taste a bit of everything the 2020-21 season has to offer.
But nothing satisfies the hunger like Friday’s Christmas Day showcase, a rice-course meal full of the league’s best teams, a who’s who of the best duos and players that highlight matchups that provide the framework for where the season goes in the coming weeks and months.
You could put together a first and second All-NBA team with the star power that will be in uniform around the country, including Kia MVP’s past, present and future, as well as champions and Finals MVPs of the same ilk.
Nine players who earned All-NBA honors last season are scheduled to hit the floor and that doesn’t include Brooklyn’s two-time Finals MVP Kevin Durant and Kyrie Irving or New Orleans Pelicans’ sensation Zion Williamson, three of the biggest and most recognizable stars in the NBA’s global universe.
The NBA’s scheduling Santa has delivered the goods as usual; not even a global pandemic could disrupt this holiday tradition, which gets under way early in the day and will keep you locked in until for hours.",
image: 'https://cdn.nba.com/manage/2020/01/GettyImages-1180763594-scaled-e1608823013222-784x432.jpg')

Article.create(
author_id:3,
title:"Raiders Jon Gruden coy on QB situation, but all signs indicate Derek Carr to start vs. Dolphins",
body:
"Which quarterback will start for the Raiders in Week 16? Thats for Jon Gruden to know and the rest of the world to find out.
After he did not appear on Thursday injury report, all signs are pointing toward Derek Carr returning to lead his team into battle against the Dolphins in a must-win affair. Carr left the Raider  Week 15 overtime loss to the Chargers due to a groin injury.
Despite what the optics are beginning to suggest, however, Gruden coyly said Thursday that he is not going to let the cat out of the bag regarding whether or not Carr will play, per NFL Network  Steve Wyche.
Gruden added that Carr showed a lot of good things over the past two practices after being limited on Tuesday, and that Carr progress makes him optimistic that he will be ready to go. Carr was also a full participant during Wednesday  practice.
After Carr left Las Vegas' matchup against L.A. in the first quarter, backup Marcus Mariota came on and looked fantastic in the team  narrow loss.
Mariota  effort in the final Thursday Night Football game of the season gave the impression that he would again be able to handle the spotlight if need be. But, considering the stakes of this game, having Carr back under center is a sight Gruden most likely wants to see come Saturday.",
image: 'https://static.www.nfl.com/image/private/t_editorial_landscape_8_desktop_mobile/league/p8pdzw5k9odpaoizbbhg.jpg')

Article.create(
author_id:4,
title:"Bell heading to Nationals in trade with Bucs",
body:
"The Nationals addressed their vacancy at first base on Thursday by acquiring switch-hitter Josh Bell from the Pirates. In exchange, Washington sent right-handers Wil Crowe, its No. 3 prospect per MLB Pipeline, and Eddy Yean, its No. 6 prospect, to Pittsburgh.
We are thrilled to be adding a player of Josh Bells caliber to our team, Nationals general manager Mike Rizzo said in a statement. He adds a switch-hitting power bat to our lineup. And we know Josh will be an outstanding addition to our clubhouse and our community.
Bell, 28, is entering his sixth Major League season. Last year, he slashed .226/.305/.364 with a .669 OPS and eight home runs in 57 games. Bell was an All-Star in 2019, when he ranked in the top 10 among National League players in RBIs (116, sixth), OPS+ (142, seventh), doubles (37, eighth), homers (37, ninth), slugging (.569, ninth) and OPS (.936, 10th).
In his career, Bell has hit 261/.349/.466 with an .814 OPS. He averages .271 against righties compared to .232 against lefties.    
I think in this case, this is one of those where I can honestly say that Josh is someone that we really respect and appreciate what he meant to the Pirates and how he played and how he wore the uniform and -- on a personal level -- truly liked and learned from, Pirates general manager Ben Cherington said via Zoom.    
There was a hole at first base following a season in which the position was manned by committee. Howie Kendrick announced his retirement on Monday, while Asdrúbal Cabrera and Eric Thames are free agents. Ryan Zimmerman, who was part of the Nats’ plan at first before he elected not to play in 2020, also is a free agent.
It remains to be seen how Washington will back up the first base position. Last season, Bell started 35 games there, where his fielding percentage dipped to .984. He DH would his other 21 games.
Bell already received a welcome from the Nationals on social media. Trea Turner tweeted his excitement shortly after the trade was announced. Bell joins another Josh on the Nationals -- former Pirates teammate Josh Harrison.",
image:'https://img.mlbstatic.com/mlb-images/image/private/t_16x9/t_w1024/mlb/magp9osvkzal3qw9akkq')


Article.create(
author_id:5,
title:"NHL teams in Canada on track to play in home arenas",
body:
"NHL Deputy Commissioner Bill Daly said Thursday that the League and the relevant provincial authorities are in agreement regarding the protocols necessary to enable the seven NHL teams based in Canada to play in their home arenas during the 2020-21 season.
On the basis of our discussions in the past week, as well as our exchange of correspondence over the last 24 hours, we believe we are aligned and in agreement on the conditions on which each of our Canadian franchises can begin play in their own buildings for the start of the 2020-21 NHL season, Daly said in a statement.The NHL and NHL Players Association have been working with the provincial governments in British Columbia, Alberta, Manitoba, Ontario and Quebec on an agreement that would assuage health concerns they have regarding how games and travel into and out of the seven Canadian NHL cities could impact regulations they already have in place for the general public aimed at curtailing the spread of COVID-19.
The NHL season is scheduled to open Jan. 13 with five games, including the Vancouver Canucks at the Edmonton Oilers and Montreal Canadiens at the Toronto Maple Leafs. The seven teams based in Canada, the Calgary Flames, Oilers, Canadiens, Ottawa Senators, Maple Leafs, Canucks and Winnipeg Jets, will make up the North Division. The NHL released a 56-game schedule on Wednesday that is made up of all intradivision games.The North Division is one of four realigned divisions for the 2020-21 season.
The Boston Bruins, Buffalo Sabres, New Jersey Devils, New York Islanders, New York Rangers, Philadelphia Flyers, Pittsburgh Penguins and Washington Capitals will play in the East Division.
The Carolina Hurricanes, Chicago Blackhawks, Columbus Blue Jackets, Dallas Stars, Detroit Red Wings, Florida Panthers, Nashville Predators and Tampa Bay Lightning will compete in the Central Division.
The Anaheim Ducks, Arizona Coyotes, Colorado Avalanche, Los Angeles Kings, Minnesota Wild, San Jose Sharks, St. Louis Blues and Vegas Golden Knights will be in the West Division.",
image:'https://cms.nhl.bamgrid.com/images/photos/319886550/1024x576/cut.jpg')

    puts "Articles created #{Article.all.count}"

    ArticleCategory.create(article_id:1,category_id:2)
    ArticleCategory.create(article_id:2,category_id:2)
    ArticleCategory.create(article_id:3,category_id:3)
    ArticleCategory.create(article_id:4,category_id:4)
    ArticleCategory.create(article_id:5,category_id:5)
    
    puts "ArticleCategories created #{ArticleCategory.all.count}"
    
    Like.create(article_id: 1, user_id: 1)
    Like.create(article_id: 2, user_id: 2)
    Like.create(article_id: 3, user_id: 3)
    Like.create(article_id: 4, user_id: 4)
    Like.create(article_id: 5, user_id: 5)
    
    puts "likes created #{Like.all.count}"