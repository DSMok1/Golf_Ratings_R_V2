Current Golf Ratings
================
DSMok1
January 07, 2019

Summary
-------

This is a super-simple golf rating system. It's just a straight regression over the past 3 years of golf results, with the most recent results weighted far more heavily. An exponential weighting system of 0.97 to the "weeks ago" power was used--in other words, results from 1 year ago are weighted at 0.97^52, or 20% as much as this week's results. The previous years get less and less weight, but are there to provide some stability to the regression for portions of the dataset with more tenuous connections.

The Player Rating is denominated in strokes per round more or less than the average golfer playing on the PGA and European tours. Players with a minimum of 40 rounds were included and tournament rounds with a minimum of 15 ranked players were included.

Data
----

The full output is located at <https://github.com/DSMok1/Golf_Ratings_R_V2/blob/master/Output/Recent_Ratings.csv>

|  Rank| Player\_Name         |  Player\_Value|  Num\_Rounds|  Num\_Rounds\_Yr| Country | Tour\_Yr                |
|-----:|:---------------------|--------------:|------------:|----------------:|:--------|:------------------------|
|     1| Dustin Johnson       |          -2.51|          250|               82| USA     | PGA Tour                |
|     2| Justin Rose          |          -2.38|          252|               90| ENG     | PGA Tour                |
|     3| Justin Thomas        |          -2.25|          269|               90| USA     | PGA Tour                |
|     4| Rickie Fowler        |          -2.14|          259|               86| USA     | PGA Tour                |
|     5| Tony Finau           |          -2.06|          305|              102| USA     | PGA Tour                |
|     6| Jon Rahm             |          -2.05|          221|               86| ESP     | PGA Tour                |
|     7| Tiger Woods          |          -1.94|           82|               72| USA     | PGA Tour                |
|     8| Patrick Cantlay      |          -1.89|          144|               88| USA     | PGA Tour                |
|     9| Jason Day            |          -1.85|          219|               72| AUS     | PGA Tour                |
|    10| Brooks Koepka        |          -1.85|          242|               74| USA     | PGA Tour                |
|    11| Webb Simpson         |          -1.85|          265|               90| USA     | PGA Tour                |
|    12| Rory McIlroy         |          -1.81|          231|               89| NIR     | PGA Tour                |
|    13| Tommy Fleetwood      |          -1.80|          295|              108| ENG     | European Tour           |
|    14| Bryson DeChambeau    |          -1.79|          258|               94| USA     | PGA Tour                |
|    15| Henrik Stenson       |          -1.69|          228|               76| SWE     | PGA Tour                |
|    16| Gary Woodland        |          -1.68|          287|               95| USA     | PGA Tour                |
|    17| Paul Casey           |          -1.67|          252|               80| ENG     | PGA Tour                |
|    18| Marc Leishman        |          -1.63|          282|               94| AUS     | PGA Tour                |
|    19| Xander Schauffele    |          -1.61|          293|              101| USA     | PGA Tour                |
|    20| Louis Oosthuizen     |          -1.52|          236|               84| RSA     | PGA Tour                |
|    21| Alex Noren           |          -1.50|          244|               84| SWE     | PGA Tour                |
|    22| Tyrrell Hatton       |          -1.49|          260|               86| ENG     | PGA Tour                |
|    23| Sergio Garcia        |          -1.48|          232|               73| ESP     | European Tour           |
|    24| Jordan Spieth        |          -1.46|          256|               82| USA     | PGA Tour                |
|    25| Francesco Molinari   |          -1.35|          270|               86| ITA     | PGA Tour                |
|    26| Patrick Reed         |          -1.35|          334|              100| USA     | PGA Tour                |
|    27| Rafael Cabrera Bello |          -1.29|          310|              102| ESP     | PGA Tour                |
|    28| Emiliano Grillo      |          -1.22|          305|              104| ARG     | PGA Tour                |
|    29| Zach Johnson         |          -1.20|          257|               81| USA     | PGA Tour                |
|    30| Hideki Matsuyama     |          -1.15|          254|               84| JPN     | PGA Tour                |
|    31| Matt Kuchar          |          -1.12|          304|               94| USA     | PGA Tour                |
|    32| Kyle Stanley         |          -1.12|          277|               88| USA     | PGA Tour                |
|    33| Phil Mickelson       |          -1.11|          249|               85| USA     | PGA Tour                |
|    34| Daniel Berger        |          -1.11|          243|               68| USA     | PGA Tour                |
|    35| Adam Scott           |          -1.09|          236|               82| AUS     | PGA Tour                |
|    36| Steve Stricker       |          -1.08|          141|               40| USA     | PGA Tour                |
|    37| Luke List            |          -1.04|          279|               91| USA     | PGA Tour                |
|    38| Keegan Bradley       |          -1.04|          287|               99| USA     | PGA Tour                |
|    39| Charles Howell III   |          -1.02|          271|               96| USA     | PGA Tour                |
|    40| Billy Horschel       |          -1.02|          257|               97| USA     | PGA Tour                |
|    41| Adam Hadwin          |          -1.00|          282|               91| CAN     | PGA Tour                |
|    42| Cameron Champ        |          -0.97|          115|              101| USA     | Web.com Tour            |
|    43| Byeong Hun An        |          -0.97|          282|              104| KOR     | PGA Tour                |
|    44| Lucas Glover         |          -0.96|          242|               75| USA     | PGA Tour                |
|    45| Cameron Smith        |          -0.96|          267|               94| AUS     | PGA Tour                |
|    46| Ian Poulter          |          -0.94|          267|               90| ENG     | PGA Tour                |
|    47| Kevin Na             |          -0.92|          267|               92| USA     | PGA Tour                |
|    48| Thorbjorn Olesen     |          -0.92|          251|               80| DEN     | European Tour           |
|    49| Matthew Fitzpatrick  |          -0.91|          276|               91| ENG     | European Tour           |
|    50| Aaron Wise           |          -0.90|          208|               80| USA     | PGA Tour                |
|    51| Chez Reavie          |          -0.88|          271|               86| USA     | PGA Tour                |
|    52| Ryan Moore           |          -0.86|          243|               84| USA     | PGA Tour                |
|    53| Pat Perez            |          -0.83|          206|               82| USA     | PGA Tour                |
|    54| Branden Grace        |          -0.83|          285|              100| RSA     | PGA Tour                |
|    55| J.B. Holmes          |          -0.82|          251|               85| USA     | PGA Tour                |
|    56| Abraham Ancer        |          -0.81|          269|              102| MEX     | PGA Tour                |
|    57| Lee Westwood         |          -0.81|          226|               64| ENG     | European Tour           |
|    58| Shane Lowry          |          -0.80|          256|               94| IRL     | PGA Tour                |
|    59| C.T. Pan             |          -0.79|          282|               98| TPE     | PGA Tour                |
|    60| Kevin Tway           |          -0.79|          291|              102| USA     | PGA Tour                |
|    61| Joost Luiten         |          -0.78|          230|               47| NED     | European Tour           |
|    62| Bubba Watson         |          -0.77|          230|               75| USA     | PGA Tour                |
|    63| Charley Hoffman      |          -0.76|          288|               86| USA     | PGA Tour                |
|    64| Haotong Li           |          -0.75|          263|               94| CHN     | European Tour           |
|    65| Austin Cook          |          -0.75|          282|              105| USA     | PGA Tour                |
|    66| Andrew Putnam        |          -0.72|          262|               91| USA     | PGA Tour                |
|    67| Eddie Pepperell      |          -0.72|          205|               69| ENG     | European Tour           |
|    68| Kiradech Aphibarnrat |          -0.71|          292|               98| THA     | European Tour           |
|    69| Kevin Kisner         |          -0.70|          264|               80| USA     | PGA Tour                |
|    70| Kevin Chappell       |          -0.69|          261|               82| USA     | PGA Tour                |
|    71| Joaquin Niemann      |          -0.68|           79|               63| CHI     | PGA Tour                |
|    72| Russell Henley       |          -0.67|          245|               76| USA     | PGA Tour                |
|    73| Stewart Cink         |          -0.67|          243|               83| USA     | PGA Tour                |
|    74| Brandt Snedeker      |          -0.66|          248|               98| USA     | PGA Tour                |
|    75| Beau Hossler         |          -0.65|          195|              100| USA     | PGA Tour                |
|    76| Danny Lee            |          -0.63|          284|               87| NZL     | PGA Tour                |
|    77| Denny McCarthy       |          -0.63|          252|               85| USA     | PGA Tour                |
|    78| Thomas Pieters       |          -0.62|          245|               90| BEL     | European Tour           |
|    79| Dylan Frittelli      |          -0.61|          334|              106| RSA     | European Tour           |
|    80| Peter Uihlein        |          -0.61|          225|               92| USA     | PGA Tour                |
|    81| Graham Delaet        |          -0.61|          143|                0| CAN     | NA                      |
|    82| Scott Piercy         |          -0.59|          239|               84| USA     | PGA Tour                |
|    83| Chesson Hadley       |          -0.57|          272|               97| USA     | PGA Tour                |
|    84| Andy Sullivan        |          -0.57|          276|               98| ENG     | European Tour           |
|    85| Shugo Imahira        |          -0.55|          274|               95| JPN     | Japan Golf Tour         |
|    86| J.J Spaun            |          -0.55|          267|               85| USA     | PGA Tour                |
|    87| Nick Watney          |          -0.54|          182|              100| USA     | PGA Tour                |
|    88| Russell Knox         |          -0.53|          287|              100| SCO     | PGA Tour                |
|    89| Harold Varner III    |          -0.52|          306|               97| USA     | PGA Tour                |
|    90| Jimmy Walker         |          -0.52|          236|               83| USA     | PGA Tour                |
|    91| Martin Laird         |          -0.52|          229|               71| SCO     | PGA Tour                |
|    92| Chris Kirk           |          -0.51|          278|              104| USA     | PGA Tour                |
|    93| Jason Kokrak         |          -0.51|          279|               93| USA     | PGA Tour                |
|    94| Matt Wallace         |          -0.51|          244|              108| ENG     | European Tour           |
|    95| Bud Cauley           |          -0.49|          199|               50| USA     | PGA Tour                |
|    96| Siwoo Kim            |          -0.49|          286|              102| KOR     | PGA Tour                |
|    97| Ryan Armour          |          -0.49|          270|              109| USA     | PGA Tour                |
|    98| Alexander Bjork      |          -0.48|          270|               85| SWE     | European Tour           |
|    99| Patrick Rodgers      |          -0.48|          249|               90| USA     | PGA Tour                |
|   100| Brian Gay            |          -0.47|          241|              105| USA     | PGA Tour                |
|   101| Jim Furyk            |          -0.47|          159|               56| USA     | PGA Tour                |
|   102| Julian Suri          |          -0.46|          208|               92| USA     | European Tour           |
|   103| Jamie Lovemark       |          -0.45|          283|               90| USA     | PGA Tour                |
|   104| Sam Ryder            |          -0.45|          236|               86| USA     | PGA Tour                |
|   105| Lucas Bjerregaard    |          -0.44|          275|               94| DEN     | European Tour           |
|   106| Tom Lewis            |          -0.44|          204|               82| ENG     | European Tour           |
|   107| Bronson Burgoon      |          -0.43|          181|               70| USA     | PGA Tour                |
|   108| Ryan Palmer          |          -0.43|          208|               75| USA     | PGA Tour                |
|   109| Joel Dahmen          |          -0.41|          240|               93| USA     | PGA Tour                |
|   110| Sungjae Im           |          -0.41|          294|              119| KOR     | Web.com Tour            |
|   111| Anders Albertson     |          -0.39|          246|              103| USA     | Web.com Tour            |
|   112| Andrea Pavan         |          -0.39|          224|               90| ITA     | European Tour           |
|   113| Ryan Fox             |          -0.36|          286|               94| NZL     | European Tour           |
|   114| Jhonattan Vegas      |          -0.35|          276|               87| VEN     | PGA Tour                |
|   115| Brice Garnett        |          -0.35|          244|               95| USA     | PGA Tour                |
|   116| Mike Lorenzo-Vera    |          -0.35|          228|               79| FRA     | European Tour           |
|   117| Bill Haas            |          -0.35|          251|               78| USA     | PGA Tour                |
|   118| Charl Schwartzel     |          -0.33|          244|               78| RSA     | PGA Tour                |
|   119| Aaron Baddeley       |          -0.33|          238|               86| AUS     | PGA Tour                |
|   120| Roberto Castro       |          -0.31|          228|               71| USA     | Web.com Tour            |
|   121| Keith Mitchell       |          -0.29|          255|               97| USA     | PGA Tour                |
|   122| Richy Werenski       |          -0.29|          250|               92| USA     | PGA Tour                |
|   123| Troy Merritt         |          -0.28|          275|               89| USA     | PGA Tour                |
|   124| Thomas Detry         |          -0.28|          242|               90| BEL     | European Tour           |
|   125| George Cunningham    |          -0.28|           52|               52| USA     | PGA Tour Canada         |
|   126| Adam Schenk          |          -0.27|          268|               98| USA     | PGA Tour                |
|   127| Joseph Bramlett      |          -0.27|           91|               79| USA     | Web.com Tour            |
|   128| Peter Malnati        |          -0.26|          266|               97| USA     | PGA Tour                |
|   129| Rory Sabbatini       |          -0.26|          214|               88| RSA     | PGA Tour                |
|   130| James Hahn           |          -0.24|          274|               89| USA     | PGA Tour                |
|   131| Johnson Wagner       |          -0.24|          226|               71| USA     | PGA Tour                |
|   132| Kevin Streelman      |          -0.24|          260|               86| USA     | PGA Tour                |
|   133| Brendan Steele       |          -0.24|          241|               77| USA     | PGA Tour                |
|   134| Graeme McDowell      |          -0.23|          260|               86| NIR     | PGA Tour                |
|   135| Jordan L Smith       |          -0.22|          280|               92| ENG     | European Tour           |
|   136| Ross Fisher          |          -0.22|          249|               82| ENG     | European Tour           |
|   137| Brian Harman         |          -0.22|          294|               94| USA     | PGA Tour                |
|   138| Henrik Norlander     |          -0.22|          215|               89| SWE     | Web.com Tour            |
|   139| Patton Kizzire       |          -0.21|          260|               87| USA     | PGA Tour                |
|   140| Anirban Lahiri       |          -0.19|          276|               88| IND     | PGA Tour                |
|   141| Adrian Otaegui       |          -0.18|          272|               93| ESP     | European Tour           |
|   142| Alexander Levy       |          -0.18|          250|               84| FRA     | European Tour           |
|   143| Kramer Hickok        |          -0.18|          181|               99| USA     | Web.com Tour            |
|   144| Robert Rock          |          -0.17|          236|               79| ENG     | European Tour           |
|   145| Ted Potter Jr        |          -0.14|          240|               87| USA     | PGA Tour                |
|   146| Jason Dufner         |          -0.13|          254|               78| USA     | PGA Tour                |
|   147| Cameron Percy        |          -0.12|          218|               74| AUS     | PGA Tour                |
|   148| Chris Wood           |          -0.12|          218|               72| ENG     | European Tour           |
|   149| Michael Thompson     |          -0.11|          193|               68| USA     | PGA Tour                |
|   150| Shawn Stefani        |          -0.11|          253|               84| USA     | PGA Tour                |
|   151| Andrew Landry        |          -0.10|          230|               74| USA     | PGA Tour                |
|   152| Vaughn Taylor        |          -0.10|          247|               80| USA     | PGA Tour                |
|   153| Sam Saunders         |          -0.10|          229|               75| USA     | PGA Tour                |
|   154| Danny Willett        |          -0.09|          209|               72| ENG     | European Tour           |
|   155| Ryan Blaum           |          -0.09|          270|               85| USA     | PGA Tour                |
|   156| Seungyul Noh         |          -0.09|          160|                0| KOR     | NA                      |
|   157| Matthias Schwab      |          -0.09|          155|               96| AUT     | European Tour           |
|   158| Alex Cejka           |          -0.09|          221|               64| GER     | PGA Tour                |
|   159| Mikko Korhonen       |          -0.08|          229|               81| FIN     | European Tour           |
|   160| Hunter Mahan         |          -0.07|          225|               75| USA     | PGA Tour                |
|   161| Sam Burns            |          -0.07|          110|               96| USA     | Web.com Tour            |
|   162| Nate Lashley         |          -0.07|          242|               67| USA     | PGA Tour                |
|   163| Erik van Rooyen      |          -0.07|          233|               91| RSA     | European Tour           |
|   164| Martin Kaymer        |          -0.03|          256|               81| GER     | European Tour           |
|   165| Chris Paisley        |          -0.02|          242|               72| ENG     | European Tour           |
|   166| Talor Gooch          |          -0.01|          208|               73| USA     | PGA Tour                |
|   167| Corey Conners        |          -0.01|          287|               99| CAN     | PGA Tour                |
|   168| Andrew Johnston      |          -0.01|          229|               71| ENG     | European Tour           |
|   169| Soren Kjeldsen       |           0.00|          262|               85| DEN     | European Tour           |
|   170| Dylan Meyer          |           0.00|           48|               42| USA     | PGA Tour                |
|   171| Nick Taylor          |           0.00|          268|               88| CAN     | PGA Tour                |
|   172| William McGirt       |           0.01|          246|               66| USA     | PGA Tour                |
|   173| Seungsu Han          |           0.02|          231|               81| USA     | Japan Golf Tour         |
|   174| Fabrizio Zanotti     |           0.02|          225|               60| PAR     | European Tour           |
|   175| Ben Martin           |           0.03|          220|               48| USA     | PGA Tour                |
|   176| Wes Roach            |           0.03|          240|              103| USA     | Web.com Tour            |
|   177| Scott Stallings      |           0.04|          245|               86| USA     | PGA Tour                |
|   178| Sean Crocker         |           0.04|          100|               74| USA     | European Challenge Tour |
|   179| Jorge Campillo       |           0.05|          279|               91| ESP     | European Tour           |
|   180| Aaron Rai            |           0.05|          257|               91| ENG     | European Tour           |
|   181| Ben Crane            |           0.06|          235|               71| USA     | PGA Tour                |
|   182| Brandon Harkins      |           0.07|          234|               93| USA     | PGA Tour                |
|   183| Jason Scrivener      |           0.07|          261|               99| AUS     | European Tour           |
|   184| Hudson Swafford      |           0.08|          265|               71| USA     | PGA Tour                |
|   185| Brendan Jones        |           0.09|          230|               75| AUS     | Japan Golf Tour         |
|   186| Sam Horsfield        |           0.09|          113|               81| ENG     | European Tour           |
|   187| Paul Dunne           |           0.10|          263|               84| IRL     | European Tour           |
|   188| Mark Anderson        |           0.10|          212|               84| USA     | Web.com Tour            |
|   189| Miguel A Jimenez     |           0.10|           79|               19| ESP     | European Tour           |
|   190| Tom Hoge             |           0.11|          248|               93| USA     | PGA Tour                |
|   191| JT Poston            |           0.11|          247|               77| USA     | PGA Tour                |
|   192| Carlos Ortiz         |           0.11|          262|              100| MEX     | Web.com Tour            |
|   193| Meenwhee Kim         |           0.11|          264|               89| KOR     | PGA Tour                |
|   194| John Huh             |           0.11|          259|               84| USA     | PGA Tour                |
|   195| Fabian Gomez         |           0.11|          246|               96| ARG     | PGA Tour                |
|   196| Cameron Davis        |           0.12|          143|               89| AUS     | Web.com Tour            |
|   197| Sanghyun Park        |           0.12|          269|               94| KOR     | Asian Tour              |
|   198| Yuki Inamori         |           0.12|          262|               87| JPN     | Japan Golf Tour         |
|   199| David Hearn          |           0.12|          255|               69| CAN     | PGA Tour                |
|   200| Alex Prugh           |           0.13|          261|              107| USA     | Web.com Tour            |
