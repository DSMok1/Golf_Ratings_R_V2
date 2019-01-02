Current Golf Ratings
================
DSMok1
January 02, 2019

Summary
-------

This is a super-simple golf rating system. It's just a straight regression over the past 3 years of golf results, with the most recent results weighted far more heavily. An exponential weighting system of 0.97 to the "weeks ago" power was used--in other words, results from 1 year ago are weighted at 0.97^52, or 20% as much as this week's results. The previous years get less and less weight, but are there to provide some stability to the regression for portions of the dataset with more tenuous connections.

The Player Rating is denominated in strokes per round more or less than the average golfer playing on the PGA and European tours. Players with a minimum of 40 rounds were included and tournament rounds with a minimum of 15 ranked players were included.

Data
----

The full output is located at <https://github.com/DSMok1/Golf_Ratings_R_V2/blob/master/Output/Recent_Ratings.csv>

|  Rank| Player\_Name         |  Player\_Value|  Num\_Rounds|  Num\_Rounds\_Yr| Country | Tour\_Yr                |
|-----:|:---------------------|--------------:|------------:|----------------:|:--------|:------------------------|
|     1| Dustin Johnson       |          -2.48|          246|               82| USA     | PGA Tour                |
|     2| Justin Rose          |          -2.37|          252|               90| ENG     | PGA Tour                |
|     3| Justin Thomas        |          -2.14|          265|               90| USA     | PGA Tour                |
|     4| Rickie Fowler        |          -2.13|          259|               86| USA     | PGA Tour                |
|     5| Tony Finau           |          -2.05|          305|              102| USA     | PGA Tour                |
|     6| Jon Rahm             |          -2.02|          217|               86| ESP     | PGA Tour                |
|     7| Brooks Koepka        |          -1.99|          238|               74| USA     | PGA Tour                |
|     8| Tiger Woods          |          -1.93|           82|               72| USA     | PGA Tour                |
|     9| Patrick Cantlay      |          -1.88|          144|               88| USA     | PGA Tour                |
|    10| Jason Day            |          -1.85|          215|               72| AUS     | PGA Tour                |
|    11| Webb Simpson         |          -1.80|          261|               90| USA     | PGA Tour                |
|    12| Tommy Fleetwood      |          -1.79|          295|              108| ENG     | European Tour           |
|    13| Bryson DeChambeau    |          -1.72|          254|               94| USA     | PGA Tour                |
|    14| Rory McIlroy         |          -1.72|          227|               89| NIR     | PGA Tour                |
|    15| Paul Casey           |          -1.70|          248|               80| ENG     | PGA Tour                |
|    16| Henrik Stenson       |          -1.68|          228|               72| SWE     | PGA Tour                |
|    17| Marc Leishman        |          -1.53|          278|               94| AUS     | PGA Tour                |
|    18| Francesco Molinari   |          -1.52|          266|               86| ITA     | PGA Tour                |
|    19| Louis Oosthuizen     |          -1.51|          236|               80| RSA     | PGA Tour                |
|    20| Alex Noren           |          -1.49|          244|               84| SWE     | PGA Tour                |
|    21| Tyrrell Hatton       |          -1.48|          260|               86| ENG     | PGA Tour                |
|    22| Sergio Garcia        |          -1.47|          232|               73| ESP     | European Tour           |
|    23| Gary Woodland        |          -1.47|          283|               95| USA     | PGA Tour                |
|    24| Patrick Reed         |          -1.46|          330|              100| USA     | PGA Tour                |
|    25| Jordan Spieth        |          -1.45|          256|               82| USA     | PGA Tour                |
|    26| Xander Schauffele    |          -1.38|          289|              101| USA     | PGA Tour                |
|    27| Rafael Cabrera Bello |          -1.28|          310|              102| ESP     | PGA Tour                |
|    28| Emiliano Grillo      |          -1.21|          305|              104| ARG     | PGA Tour                |
|    29| Zach Johnson         |          -1.19|          257|               81| USA     | PGA Tour                |
|    30| Keegan Bradley       |          -1.16|          283|               99| USA     | PGA Tour                |
|    31| Matt Kuchar          |          -1.16|          300|               94| USA     | PGA Tour                |
|    32| Hideki Matsuyama     |          -1.14|          254|               84| JPN     | PGA Tour                |
|    33| Billy Horschel       |          -1.13|          253|               97| USA     | PGA Tour                |
|    34| Kyle Stanley         |          -1.10|          277|               88| USA     | PGA Tour                |
|    35| Phil Mickelson       |          -1.10|          249|               85| USA     | PGA Tour                |
|    36| Daniel Berger        |          -1.10|          243|               68| USA     | PGA Tour                |
|    37| Adam Scott           |          -1.08|          236|               82| AUS     | PGA Tour                |
|    38| Steve Stricker       |          -1.06|          141|               40| USA     | PGA Tour                |
|    39| Aaron Wise           |          -1.05|          204|               80| USA     | PGA Tour                |
|    40| Luke List            |          -1.03|          279|               91| USA     | PGA Tour                |
|    41| Adam Hadwin          |          -0.98|          282|               91| CAN     | PGA Tour                |
|    42| Charles Howell III   |          -0.97|          267|               96| USA     | PGA Tour                |
|    43| Byeong Hun An        |          -0.96|          282|              104| KOR     | PGA Tour                |
|    44| Cameron Smith        |          -0.95|          267|               94| AUS     | PGA Tour                |
|    45| Lucas Glover         |          -0.95|          242|               75| USA     | PGA Tour                |
|    46| Bubba Watson         |          -0.94|          226|               75| USA     | PGA Tour                |
|    47| Ian Poulter          |          -0.92|          263|               90| ENG     | PGA Tour                |
|    48| Thorbjorn Olesen     |          -0.91|          251|               80| DEN     | European Tour           |
|    49| Kevin Na             |          -0.91|          267|               92| USA     | PGA Tour                |
|    50| Matthew Fitzpatrick  |          -0.90|          276|               91| ENG     | European Tour           |
|    51| Cameron Champ        |          -0.88|          111|              101| USA     | Web.com Tour            |
|    52| Chez Reavie          |          -0.87|          271|               86| USA     | PGA Tour                |
|    53| Ryan Moore           |          -0.84|          243|               84| USA     | PGA Tour                |
|    54| Pat Perez            |          -0.82|          206|               82| USA     | PGA Tour                |
|    55| Branden Grace        |          -0.82|          285|               96| RSA     | PGA Tour                |
|    56| J.B. Holmes          |          -0.81|          251|               85| USA     | PGA Tour                |
|    57| Lee Westwood         |          -0.80|          226|               64| ENG     | European Tour           |
|    58| Abraham Ancer        |          -0.80|          269|              102| MEX     | PGA Tour                |
|    59| Shane Lowry          |          -0.79|          256|               94| IRL     | PGA Tour                |
|    60| C.T. Pan             |          -0.78|          282|               98| TPE     | PGA Tour                |
|    61| Joost Luiten         |          -0.77|          230|               47| NED     | European Tour           |
|    62| Charley Hoffman      |          -0.75|          288|               86| USA     | PGA Tour                |
|    63| Haotong Li           |          -0.74|          263|               94| CHN     | European Tour           |
|    64| Austin Cook          |          -0.74|          282|              105| USA     | PGA Tour                |
|    65| Eddie Pepperell      |          -0.71|          205|               69| ENG     | European Tour           |
|    66| Kiradech Aphibarnrat |          -0.70|          292|              102| THA     | European Tour           |
|    67| Kevin Kisner         |          -0.69|          264|               80| USA     | PGA Tour                |
|    68| Brandt Snedeker      |          -0.68|          244|               98| USA     | PGA Tour                |
|    69| Kevin Chappell       |          -0.68|          261|               82| USA     | PGA Tour                |
|    70| Kevin Tway           |          -0.68|          287|              102| USA     | PGA Tour                |
|    71| Joaquin Niemann      |          -0.67|           79|               63| CHI     | PGA Tour                |
|    72| Russell Henley       |          -0.66|          245|               76| USA     | PGA Tour                |
|    73| Stewart Cink         |          -0.65|          243|               83| USA     | PGA Tour                |
|    74| Andrew Putnam        |          -0.65|          258|               91| USA     | PGA Tour                |
|    75| Beau Hossler         |          -0.64|          195|              100| USA     | PGA Tour                |
|    76| Danny Lee            |          -0.62|          284|               87| NZL     | PGA Tour                |
|    77| Denny McCarthy       |          -0.62|          252|               85| USA     | PGA Tour                |
|    78| Thomas Pieters       |          -0.61|          245|               90| BEL     | European Tour           |
|    79| Dylan Frittelli      |          -0.60|          334|              106| RSA     | European Tour           |
|    80| Peter Uihlein        |          -0.60|          225|               92| USA     | PGA Tour                |
|    81| Graham Delaet        |          -0.59|          143|                0| CAN     | NA                      |
|    82| Scott Piercy         |          -0.58|          235|               84| USA     | PGA Tour                |
|    83| Andy Sullivan        |          -0.56|          276|               98| ENG     | European Tour           |
|    84| Chesson Hadley       |          -0.56|          272|               97| USA     | PGA Tour                |
|    85| Shugo Imahira        |          -0.55|          274|               91| JPN     | Japan Golf Tour         |
|    86| J.J Spaun            |          -0.53|          267|               85| USA     | PGA Tour                |
|    87| Nick Watney          |          -0.52|          182|              100| USA     | PGA Tour                |
|    88| Russell Knox         |          -0.52|          287|              100| SCO     | PGA Tour                |
|    89| Harold Varner III    |          -0.51|          306|               97| USA     | PGA Tour                |
|    90| Jimmy Walker         |          -0.51|          236|               83| USA     | PGA Tour                |
|    91| Martin Laird         |          -0.50|          229|               71| SCO     | PGA Tour                |
|    92| Matt Wallace         |          -0.50|          244|              104| ENG     | European Tour           |
|    93| Chris Kirk           |          -0.50|          278|              104| USA     | PGA Tour                |
|    94| Jason Kokrak         |          -0.50|          279|               93| USA     | PGA Tour                |
|    95| Bud Cauley           |          -0.48|          199|               50| USA     | PGA Tour                |
|    96| Siwoo Kim            |          -0.48|          286|              102| KOR     | PGA Tour                |
|    97| Ryan Armour          |          -0.47|          270|              109| USA     | PGA Tour                |
|    98| Alexander Bjork      |          -0.47|          270|               85| SWE     | European Tour           |
|    99| Patrick Rodgers      |          -0.46|          249|               90| USA     | PGA Tour                |
|   100| Brian Gay            |          -0.46|          241|              105| USA     | PGA Tour                |
|   101| Jim Furyk            |          -0.46|          159|               56| USA     | PGA Tour                |
|   102| Julian Suri          |          -0.45|          208|               92| USA     | European Tour           |
|   103| Jamie Lovemark       |          -0.44|          283|               90| USA     | PGA Tour                |
|   104| Sam Ryder            |          -0.44|          236|               86| USA     | PGA Tour                |
|   105| Lucas Bjerregaard    |          -0.43|          275|               94| DEN     | European Tour           |
|   106| Tom Lewis            |          -0.43|          204|               82| ENG     | European Tour           |
|   107| Bronson Burgoon      |          -0.41|          181|               70| USA     | PGA Tour                |
|   108| Ryan Palmer          |          -0.41|          208|               75| USA     | PGA Tour                |
|   109| Joel Dahmen          |          -0.40|          240|               93| USA     | PGA Tour                |
|   110| Sungjae Im           |          -0.40|          294|              119| KOR     | Web.com Tour            |
|   111| Andrea Pavan         |          -0.38|          224|               90| ITA     | European Tour           |
|   112| Anders Albertson     |          -0.38|          246|              103| USA     | Web.com Tour            |
|   113| Ryan Fox             |          -0.35|          286|               94| NZL     | European Tour           |
|   114| Mike Lorenzo-Vera    |          -0.34|          228|               79| FRA     | European Tour           |
|   115| Jhonattan Vegas      |          -0.34|          276|               87| VEN     | PGA Tour                |
|   116| Bill Haas            |          -0.33|          251|               78| USA     | PGA Tour                |
|   117| Brice Garnett        |          -0.33|          240|               95| USA     | PGA Tour                |
|   118| Charl Schwartzel     |          -0.32|          244|               76| RSA     | PGA Tour                |
|   119| Aaron Baddeley       |          -0.31|          238|               86| AUS     | PGA Tour                |
|   120| Roberto Castro       |          -0.30|          228|               71| USA     | Web.com Tour            |
|   121| Keith Mitchell       |          -0.27|          255|               97| USA     | PGA Tour                |
|   122| Richy Werenski       |          -0.27|          250|               92| USA     | PGA Tour                |
|   123| Thomas Detry         |          -0.27|          242|               90| BEL     | European Tour           |
|   124| George Cunningham    |          -0.27|           52|               52| USA     | PGA Tour Canada         |
|   125| Adam Schenk          |          -0.26|          268|               98| USA     | PGA Tour                |
|   126| Joseph Bramlett      |          -0.25|           91|               79| USA     | Web.com Tour            |
|   127| Peter Malnati        |          -0.25|          266|               97| USA     | PGA Tour                |
|   128| Rory Sabbatini       |          -0.25|          214|               88| RSA     | PGA Tour                |
|   129| James Hahn           |          -0.23|          274|               89| USA     | PGA Tour                |
|   130| Johnson Wagner       |          -0.23|          226|               71| USA     | PGA Tour                |
|   131| Kevin Streelman      |          -0.22|          260|               86| USA     | PGA Tour                |
|   132| Brendan Steele       |          -0.22|          241|               77| USA     | PGA Tour                |
|   133| Jordan L Smith       |          -0.21|          280|               92| ENG     | European Tour           |
|   134| Graeme McDowell      |          -0.21|          260|               86| NIR     | PGA Tour                |
|   135| Ross Fisher          |          -0.21|          249|               82| ENG     | European Tour           |
|   136| Brian Harman         |          -0.21|          294|               94| USA     | PGA Tour                |
|   137| Henrik Norlander     |          -0.20|          215|               89| SWE     | Web.com Tour            |
|   138| Ted Potter Jr        |          -0.20|          236|               87| USA     | PGA Tour                |
|   139| Troy Merritt         |          -0.19|          271|               89| USA     | PGA Tour                |
|   140| Anirban Lahiri       |          -0.18|          276|               84| IND     | PGA Tour                |
|   141| Adrian Otaegui       |          -0.18|          272|               93| ESP     | European Tour           |
|   142| Alexander Levy       |          -0.17|          250|               84| FRA     | European Tour           |
|   143| Kramer Hickok        |          -0.16|          181|               99| USA     | Web.com Tour            |
|   144| Robert Rock          |          -0.16|          236|               79| ENG     | European Tour           |
|   145| Jason Dufner         |          -0.12|          254|               78| USA     | PGA Tour                |
|   146| Cameron Percy        |          -0.11|          218|               74| AUS     | PGA Tour                |
|   147| Chris Wood           |          -0.11|          218|               72| ENG     | European Tour           |
|   148| Michael Thompson     |          -0.10|          193|               68| USA     | PGA Tour                |
|   149| Shawn Stefani        |          -0.10|          253|               84| USA     | PGA Tour                |
|   150| Vaughn Taylor        |          -0.09|          247|               80| USA     | PGA Tour                |
|   151| Sam Saunders         |          -0.09|          229|               75| USA     | PGA Tour                |
|   152| Danny Willett        |          -0.08|          209|               72| ENG     | European Tour           |
|   153| Matthias Schwab      |          -0.08|          155|               96| AUT     | European Tour           |
|   154| Andrew Landry        |          -0.08|          226|               74| USA     | PGA Tour                |
|   155| Ryan Blaum           |          -0.08|          270|               85| USA     | PGA Tour                |
|   156| Seungyul Noh         |          -0.08|          160|                0| KOR     | NA                      |
|   157| Alex Cejka           |          -0.07|          221|               64| GER     | PGA Tour                |
|   158| Mikko Korhonen       |          -0.07|          229|               81| FIN     | European Tour           |
|   159| Erik van Rooyen      |          -0.06|          233|               87| RSA     | European Tour           |
|   160| Hunter Mahan         |          -0.06|          225|               75| USA     | PGA Tour                |
|   161| Sam Burns            |          -0.06|          110|               96| USA     | Web.com Tour            |
|   162| Nate Lashley         |          -0.05|          242|               67| USA     | PGA Tour                |
|   163| Patton Kizzire       |          -0.03|          256|               87| USA     | PGA Tour                |
|   164| Martin Kaymer        |          -0.02|          256|               81| GER     | European Tour           |
|   165| Chris Paisley        |          -0.01|          242|               68| ENG     | European Tour           |
|   166| Andrew Johnston      |           0.00|          229|               71| ENG     | European Tour           |
|   167| Talor Gooch          |           0.01|          208|               73| USA     | PGA Tour                |
|   168| Corey Conners        |           0.01|          287|               99| CAN     | PGA Tour                |
|   169| Soren Kjeldsen       |           0.01|          262|               85| DEN     | European Tour           |
|   170| Dylan Meyer          |           0.01|           48|               42| USA     | PGA Tour                |
|   171| Nick Taylor          |           0.01|          268|               88| CAN     | PGA Tour                |
|   172| William McGirt       |           0.02|          246|               66| USA     | PGA Tour                |
|   173| Seungsu Han          |           0.02|          231|               81| USA     | Japan Golf Tour         |
|   174| Fabrizio Zanotti     |           0.03|          225|               60| PAR     | European Tour           |
|   175| Ben Martin           |           0.04|          220|               48| USA     | PGA Tour                |
|   176| Wes Roach            |           0.04|          240|              103| USA     | Web.com Tour            |
|   177| Sean Crocker         |           0.05|          100|               70| USA     | European Challenge Tour |
|   178| Scott Stallings      |           0.05|          245|               86| USA     | PGA Tour                |
|   179| Jorge Campillo       |           0.05|          279|               91| ESP     | European Tour           |
|   180| Aaron Rai            |           0.06|          257|               91| ENG     | European Tour           |
|   181| Ben Crane            |           0.08|          235|               71| USA     | PGA Tour                |
|   182| Jason Scrivener      |           0.08|          261|               99| AUS     | European Tour           |
|   183| Brandon Harkins      |           0.08|          234|               93| USA     | PGA Tour                |
|   184| Hudson Swafford      |           0.10|          265|               71| USA     | PGA Tour                |
|   185| Brendan Jones        |           0.10|          230|               75| AUS     | Japan Golf Tour         |
|   186| Sam Horsfield        |           0.10|          113|               81| ENG     | European Tour           |
|   187| Paul Dunne           |           0.11|          263|               84| IRL     | European Tour           |
|   188| Miguel A Jimenez     |           0.11|           79|               19| ESP     | European Tour           |
|   189| Mark Anderson        |           0.11|          212|               84| USA     | Web.com Tour            |
|   190| Tom Hoge             |           0.12|          248|               93| USA     | PGA Tour                |
|   191| JT Poston            |           0.12|          247|               77| USA     | PGA Tour                |
|   192| Meenwhee Kim         |           0.12|          264|               89| KOR     | PGA Tour                |
|   193| Carlos Ortiz         |           0.12|          262|              100| MEX     | Web.com Tour            |
|   194| Sanghyun Park        |           0.13|          269|               90| KOR     | Asian Tour              |
|   195| Yuki Inamori         |           0.13|          262|               87| JPN     | Japan Golf Tour         |
|   196| John Huh             |           0.13|          259|               84| USA     | PGA Tour                |
|   197| Fabian Gomez         |           0.13|          246|               96| ARG     | PGA Tour                |
|   198| Cameron Davis        |           0.13|          143|               89| AUS     | Web.com Tour            |
|   199| David Hearn          |           0.14|          255|               69| CAN     | PGA Tour                |
|   200| Lucas Herbert        |           0.14|          152|               78| AUS     | European Tour           |
