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

Category.create(name:"Soccer Headlines",priority:1)
Category.create(name:"NBA Headlines",priority:3)
Category.create(name:"NFL Top-Stories",priority:5)
Category.create(name:"MLB Lates-News",priority:7)
Category.create(name:"NHL Top News",priority:9)

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
    ",image: 'https://cdn.nba.com/manage/2020/12/USATSI_15328129-scaled-e1608840678492-784x452.jpg',
    category_id:2)



Article.create(
author_id:2,
title:"Several of NBA’s best and brightest stars set to shine on Christmas Day",
body:
"Tuesday night’s doubleheader was a great way to wake up the palate for a new NBA season. And Wednesdays 13-game sampler platter was the ideal follow up, a chance to taste a bit of everything the 2020-21 season has to offer.
But nothing satisfies the hunger like Friday’s Christmas Day showcase, a rice-course meal full of the league’s best teams, a who’s who of the best duos and players that highlight matchups that provide the framework for where the season goes in the coming weeks and months.
You could put together a first and second All-NBA team with the star power that will be in uniform around the country, including Kia MVP’s past, present and future, as well as champions and Finals MVPs of the same ilk.
Nine players who earned All-NBA honors last season are scheduled to hit the floor and that doesn’t include Brooklyn’s two-time Finals MVP Kevin Durant and Kyrie Irving or New Orleans Pelicans’ sensation Zion Williamson, three of the biggest and most recognizable stars in the NBA’s global universe.
The NBA’s scheduling Santa has delivered the goods as usual; not even a global pandemic could disrupt this holiday tradition, which gets under way early in the day and will keep you locked in until for hours.",
image: 'https://cdn.nba.com/manage/2020/01/GettyImages-1180763594-scaled-e1608823013222-784x432.jpg',
category_id:2)


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
image: 'https://static.www.nfl.com/image/private/t_editorial_landscape_8_desktop_mobile/league/p8pdzw5k9odpaoizbbhg.jpg',
category_id:3)

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
image:'https://img.mlbstatic.com/mlb-images/image/private/t_16x9/t_w1024/mlb/magp9osvkzal3qw9akkq',
category_id:4)


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
image:'https://cms.nhl.bamgrid.com/images/photos/319886550/1024x576/cut.jpg',
category_id:5)

Article.create(
author_id:1,
title:"Chelsea's Lampard slams Premier League, broadcasters for 'back in time' festive schedule",
body:"Frank Lampard has said Chelsea have been disadvantaged in the title race by being forced to play twice in 48 hours over Christmas, accusing the Premier League of taking football \"back in time\" and compromising the integrity of the competition.
Chelsea travel to Arsenal on Boxing Day for a 5:30 p.m. GMT kickoff on Saturday, then have a home game against Aston Villa exactly 48 hours later.

- Watch ESPN FC Daily on ESPN+ (U.S. only)
- Olley: Abraham, Werner must show more for Chelsea
- Karlsen: Why Chelsea are so keen on Declan Rice

Manchester City have the same schedule -- albeit kicking off at 8 p.m. GMT on both days -- but by contrast, Liverpool and Tottenham Hotspur play on Dec. 27 and then Dec. 30, while Manchester United play on the 26th and the 29th, an imbalance that Lampard believes is unfair.

It is two games in two days, 48 hours, Lampard told a news conference. I am not trying to be clever, it is an important point for us, because there are other teams that are challenging at the top of the league that play two games in three days.

And I know clearly what happened with this one as well. The game are being broadcast live as they all are now. We play Arsenal on Boxing Day and our game with Man City now has been pushed to the Sunday (Jan. 3). So the schedule meant that we couldn't play and Aston Villa also wanted to play on the Tuesday, they wanted an extra day, and so did we. But we got overruled by both the Premier League and the broadcasters.",
image: 'https://i2-prod.football.london/incoming/article17030576.ece/ALTERNATES/s1200c/0_Chelsea.jpg',
category_id:1)

Article.create(
author_id:2,
title:"Arsenal boss Arteta: Chelsea have strongest squad in the Premier League",
body:"Arsenal manager Mikel Arteta has claimed Chelsea have the strongest squad in the Premier League ahead of the London clubs Boxing Day meeting, which kicks off a week that the Gunners boss said will define their season.
Arsenal beat Chelsea in Augusts FA Cup final at Wembley, but the two clubs have endured vastly contrasting fortunes since then.
While the Blues have spent more than £220 million in the summer transfer market and are placed just outside the Champions League places after 14 games, Arteta's men are just four points above the relegation zone having lost eight times, including four of their last five league matches.

- ESPN+ viewers guide: Bundesliga, Serie A, MLS, FA Cup and more
- Watch ESPN FC Daily on ESPN+ (U.S. only)
- Olley: Arteta leads the Premier League sack race

Arsenal are set to be without their biggest summer signing, Thomas Partey, and club captain Pierre-Emerick Aubameyang is a doubt with a calf problem. Chelsea are missing Hakim Ziyech due to a hamstring injury and Ben Chilwell is a doubt with an ankle knock but their other four acquisitions -- Timo Werner, Kai Havertz, Thiago Silva, Edouard Mendy -- are fit.
Obviously Chelsea always have a great squad of great players, Arteta said. The team that we faced a few months ago was a top one.
In this moment, you are probably talking about the strongest squad in the Premier League. They are doing a really good job, Frank [Lampard] is doing a really good job. He's got a team full of belief and confidence, and even though they had some defeats, they got back to winning on Monday [beating West Ham 3-0] and it's a team that is going to be fighting for the top spot in the league for sure.

I would not like to compare them with Arsenal. What they did seems to be working fine and at the moment we are not there.",
image: 'https://e0.365dm.com/20/03/2048x1152/skysports-arsenal-olympiakos_4944696.jpg',
category_id:1)


Article.create!(
author_id:3,
title:"
Russell Wilson trade rumors
",
body:"
If the Houston Texans reportedly won't listen to trade inquiries regarding star quarterback Deshaun Watson, 
it's a safe bet that the Seattle Seahawks won't be in a hurry to field calls about Russell Wilson. 
Or is it? Hours after The Athletic reported that Wilson's relationship with his one and only NFL team has become 
increasingly rocky -- to the point Wilson's camp apparently even discussed potential trade destinations with Seattle -- 
the quarterback's agent identified to ESPN four different teams Wilson would be comfortable playing for in the event 
of a future deal: the Bears, Cowboys, Raiders and Saints.
",
image: 'https://sportshub.cbsistatic.com/i/r/2020/07/03/4d70a072-6187-4cde-9d2d-c1bf53c7b2ce/thumbnail/770x433/4f6a28f284193daa40e6af82649546b6/russell-wilson-seahawks.jpg',
category_id:3)

Article.create!(
author_id:4,
title:"The best landing spots for top free agents",
body:" Hot Stove Tracker
So we are here to serve Major League teams and free agents at this still-unsettled occasion in the offseason. These are the best fits for the remaining free agents from our list of the top 25 going into the winter. And just to help as many teams as possible with this process, we are going to limit ourselves to only one selection per squad.
J.T. Realmuto and the Phillies
Yeah, it is complicated. The Phillies financial picture looks a lot different today than it did at the time of the Bryce Harper signing. They are trying to lower a payroll that neared the luxury tax threshold in 2020, and they have needs other than just catcher. But we’re not here to figure all of that out. We’re here to point out the obvious, which is that the Plan B's here aren’t palatable, particularly given what the Phillies gave up (Sixto Sanchez) to get Realmuto in the first place. There are other teams that could stand to upgrade at catcher, but none with the emotional attachment that the Phillies have. Losing him would greatly compromise their competitive effort for 2021.
Dave Dombrowski on Realmuto",
image: 'https://cdn.mlbtraderumors.com/files/2020/11/Top50FreeAgents_1024-1024x512.jpg',
category_id:4)

Article.create(
author_id:5,
title:"2020-21 NHL schedule announced",
body:"NEW YORK -- The NHLs 2020-21 regular season will commence Wednesday, Jan. 13, 2021, with a five-game slate, highlighted by the Tampa Bay Lightning raising their second Stanley Cup championship banner before facing the Chicago Blackhawks at Amalie Arena.  
The other four games on the first night of the 2020-21 season include the Pittsburgh Penguins visiting the Philadelphia Flyers; the Montreal Canadiens at the Toronto Maple Leafs; the Vancouver Canucks at the Edmonton Oilers; and the St. Louis Blues at the Colorado Avalanche. 
The 868-game regular-season schedule - 56 games per team - will conclude Saturday, May 8, when 30 of the Leagues 31 teams take to the ice. 
A complete listing of each team's 2020-21 regular-season opening game is below and the complete 2020-21 regular-season schedule is attached. Start times and broadcast details for all games will be announced when available. 
As previously announced, in reaching agreement on the format for the 2020-21 season, the NHL and NHLPA determined that the ongoing closure of the U.S.-Canada border required realignment and the League and the Players also sought to minimize team travel as much as possible by shifting to exclusively intradivisional play. It is the current plan to play games in the home arenas of participating teams while understanding that most arenas will not, at least in the initial part of the season, be able to host fans. However, depending on prevailing conditions both in local markets and across North America, the League will be prepared to play games in one or more neutral site venues per division should it become necessary. Each team in the East, Central and West divisions will play every other team in its division eight times while each team in the North Division will play every other team in its division nine or 10 times. 
The top four teams in each division will qualify for the Stanley Cup Playoffs, with intradivisional play in the first two rounds 1 vs. 4; 2 vs. 3. The four teams that advance to the Semifinal Round would be seeded by their regular season points total, with the No. 1 seed playing the No. 4 seed in one series and the No. 2 and No. 3 seeds meeting in the other. Formal training camps will begin on Jan. 3. There will be no pre-season games. The seven teams that did not participate in the 2019-20 Return to Play will be permitted to open their training camps as early as Dec. 31. ",
image: 'https://cms.nhl.bamgrid.com/images/photos/319875658/1024x576/cut.jpg',
category_id:5)

    puts "Articles created #{Article.all.count}"

    ArticleCategory.create(article_id:1,category_id:2)
    ArticleCategory.create(article_id:2,category_id:2)
    ArticleCategory.create(article_id:3,category_id:3)
    ArticleCategory.create(article_id:4,category_id:4)
    ArticleCategory.create(article_id:5,category_id:5)
    ArticleCategory.create(article_id:6,category_id:1)
    ArticleCategory.create(article_id:7,category_id:1)
    ArticleCategory.create(article_id:8,category_id:3)
    ArticleCategory.create(article_id:9,category_id:4)
    ArticleCategory.create(article_id:10,category_id:5)

    
    puts "ArticleCategories created #{ArticleCategory.all.count}"
    
    Like.create(article_id: 1, user_id: 1)
    Like.create(article_id: 2, user_id: 2)
    Like.create(article_id: 3, user_id: 3)
    Like.create(article_id: 4, user_id: 4)
    Like.create(article_id: 5, user_id: 5)
    Like.create(article_id: 6, user_id: 1)
    Like.create(article_id: 7, user_id: 1)
    Like.create(article_id: 8, user_id: 3)
    Like.create(article_id: 9, user_id: 4)
    Like.create(article_id: 10, user_id: 5)
    
    puts "likes created #{Like.all.count}"