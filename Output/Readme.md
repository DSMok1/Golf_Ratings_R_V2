Current Golf Ratings
================
DSMok1
April 01, 2019

Summary
-------

This is a super-simple golf rating system. It's just a straight regression over the past 3 years of golf results, with the most recent results weighted far more heavily. An exponential weighting system of 0.97 to the "weeks ago" power was used--in other words, results from 1 year ago are weighted at 0.97^52, or 20% as much as this week's results. The previous years get less and less weight, but are there to provide some stability to the regression for portions of the dataset with more tenuous connections.

The Player Rating is denominated in strokes per round more or less than the average golfer playing on the PGA and European tours. Players with a minimum of 40 rounds were included and tournament rounds with a minimum of 15 ranked players were included.

Data
----

The full output is located at <https://github.com/DSMok1/Golf_Ratings_R_V2/blob/master/Output/Recent_Ratings.csv>

|  Rank| Player\_Name         |  Player\_Value|  Num\_Rounds|  Num\_Rounds\_Yr| Country | Tour\_Yr                |
|-----:|:---------------------|--------------:|------------:|----------------:|:--------|:------------------------|
|     1| Dustin Johnson       |          -2.61|          258|               94| USA     | PGA Tour                |
|     2| Rory McIlroy         |          -2.33|          229|               88| NIR     | PGA Tour                |
|     3| Justin Thomas        |          -2.23|          269|               94| USA     | PGA Tour                |
|     4| Justin Rose          |          -2.10|          252|               88| ENG     | PGA Tour                |
|     5| Jon Rahm             |          -2.07|          249|               94| ESP     | PGA Tour                |
|     6| Jason Day            |          -1.94|          215|               78| AUS     | PGA Tour                |
|     7| Tiger Woods          |          -1.93|           98|               70| USA     | PGA Tour                |
|     8| Rickie Fowler        |          -1.87|          261|               90| USA     | PGA Tour                |
|     9| Tony Finau           |          -1.84|          300|              104| USA     | PGA Tour                |
|    10| Paul Casey           |          -1.76|          258|               88| ENG     | PGA Tour                |
|    11| Tommy Fleetwood      |          -1.74|          305|              112| ENG     | PGA Tour                |
|    12| Patrick Cantlay      |          -1.74|          160|               84| USA     | PGA Tour                |
|    13| Bryson DeChambeau    |          -1.74|          270|              102| USA     | PGA Tour                |
|    14| Xander Schauffele    |          -1.60|          300|              101| USA     | PGA Tour                |
|    15| Webb Simpson         |          -1.56|          265|               90| USA     | PGA Tour                |
|    16| Sergio Garcia        |          -1.50|          246|               81| ESP     | PGA Tour                |
|    17| Gary Woodland        |          -1.48|          286|               99| USA     | PGA Tour                |
|    18| Brooks Koepka        |          -1.47|          244|               96| USA     | PGA Tour                |
|    19| Francesco Molinari   |          -1.46|          258|               84| ITA     | PGA Tour                |
|    20| Marc Leishman        |          -1.45|          283|               94| AUS     | PGA Tour                |
|    21| Hideki Matsuyama     |          -1.44|          264|              100| JPN     | PGA Tour                |
|    22| Charles Howell III   |          -1.36|          269|              102| USA     | PGA Tour                |
|    23| Louis Oosthuizen     |          -1.36|          234|               84| RSA     | PGA Tour                |
|    24| Matt Kuchar          |          -1.35|          306|               98| USA     | PGA Tour                |
|    25| Adam Scott           |          -1.22|          235|               82| AUS     | PGA Tour                |
|    26| Jim Furyk            |          -1.21|          179|               64| USA     | PGA Tour                |
|    27| Ian Poulter          |          -1.20|          270|              104| ENG     | PGA Tour                |
|    28| Phil Mickelson       |          -1.17|          249|               84| USA     | PGA Tour                |
|    29| Lucas Glover         |          -1.16|          242|               73| USA     | PGA Tour                |
|    30| Rafael Cabrera Bello |          -1.15|          318|              106| ESP     | PGA Tour                |
|    31| Joost Luiten         |          -1.14|          226|               43| NED     | European Tour           |
|    32| Henrik Stenson       |          -1.14|          228|               78| SWE     | PGA Tour                |
|    33| Bubba Watson         |          -1.10|          237|               82| USA     | PGA Tour                |
|    34| Patrick Reed         |          -1.09|          342|              106| USA     | PGA Tour                |
|    35| Billy Horschel       |          -1.07|          254|              100| USA     | PGA Tour                |
|    36| Matthew Fitzpatrick  |          -1.06|          277|              100| ENG     | European Tour           |
|    37| Cameron Smith        |          -1.05|          270|               94| AUS     | PGA Tour                |
|    38| Jason Kokrak         |          -1.04|          286|               99| USA     | PGA Tour                |
|    39| Byeong Hun An        |          -1.04|          288|              108| KOR     | PGA Tour                |
|    40| Tyrrell Hatton       |          -1.01|          266|               92| ENG     | PGA Tour                |
|    41| Keegan Bradley       |          -1.01|          299|              107| USA     | PGA Tour                |
|    42| Jordan Spieth        |          -0.98|          250|               78| USA     | PGA Tour                |
|    43| Emiliano Grillo      |          -0.91|          301|               98| ARG     | PGA Tour                |
|    44| Luke List            |          -0.91|          275|               85| USA     | PGA Tour                |
|    45| Zach Johnson         |          -0.87|          256|               85| USA     | PGA Tour                |
|    46| Kevin Kisner         |          -0.86|          276|               89| USA     | PGA Tour                |
|    47| Ryan Moore           |          -0.82|          242|               86| USA     | PGA Tour                |
|    48| Daniel Berger        |          -0.81|          243|               68| USA     | PGA Tour                |
|    49| Russell Knox         |          -0.79|          298|              108| SCO     | PGA Tour                |
|    50| Haotong Li           |          -0.78|          267|               92| CHN     | European Tour           |
|    51| Abraham Ancer        |          -0.76|          281|              100| MEX     | PGA Tour                |
|    52| Alex Noren           |          -0.76|          246|               74| SWE     | PGA Tour                |
|    53| Lee Westwood         |          -0.75|          236|               70| ENG     | European Tour           |
|    54| Sungjae Im           |          -0.75|          333|              132| KOR     | Web.com Tour            |
|    55| Matt Wallace         |          -0.75|          261|              108| ENG     | European Tour           |
|    56| Adam Hadwin          |          -0.73|          282|               91| CAN     | PGA Tour                |
|    57| Aaron Wise           |          -0.72|          225|               75| USA     | PGA Tour                |
|    58| Brandt Snedeker      |          -0.72|          251|              106| USA     | PGA Tour                |
|    59| Thorbjorn Olesen     |          -0.69|          253|               86| DEN     | European Tour           |
|    60| Chez Reavie          |          -0.68|          269|               86| USA     | PGA Tour                |
|    61| Bud Cauley           |          -0.68|          213|               55| USA     | PGA Tour                |
|    62| Victor Dubuisson     |          -0.68|          100|               16| FRA     | European Tour           |
|    63| Kevin Na             |          -0.67|          259|               87| USA     | PGA Tour                |
|    64| Jhonattan Vegas      |          -0.65|          286|               91| VEN     | PGA Tour                |
|    65| Michael Thompson     |          -0.64|          202|               92| USA     | PGA Tour                |
|    66| Siwoo Kim            |          -0.63|          280|              104| KOR     | PGA Tour                |
|    67| Branden Grace        |          -0.62|          289|               98| RSA     | PGA Tour                |
|    68| Scott Piercy         |          -0.61|          243|               90| USA     | PGA Tour                |
|    69| Thomas Pieters       |          -0.59|          247|               92| BEL     | European Tour           |
|    70| Kevin Chappell       |          -0.59|          240|               54| USA     | PGA Tour                |
|    71| J.B. Holmes          |          -0.57|          244|               77| USA     | PGA Tour                |
|    72| Denny McCarthy       |          -0.56|          265|               91| USA     | PGA Tour                |
|    73| Shane Lowry          |          -0.56|          255|               91| IRL     | European Tour           |
|    74| Julian Suri          |          -0.53|          216|               78| USA     | European Tour           |
|    75| Graham Delaet        |          -0.52|          115|                0| CAN     | NA                      |
|    76| Dylan Frittelli      |          -0.51|          333|              105| RSA     | PGA Tour                |
|    77| Fabrizio Zanotti     |          -0.50|          233|               62| PAR     | European Tour           |
|    78| Keith Mitchell       |          -0.48|          274|              102| USA     | PGA Tour                |
|    79| Andrew Putnam        |          -0.48|          268|               90| USA     | PGA Tour                |
|    80| Aaron Baddeley       |          -0.48|          241|               89| AUS     | PGA Tour                |
|    81| Cameron Champ        |          -0.47|          132|              104| USA     | Web.com Tour            |
|    82| Russell Henley       |          -0.47|          256|               84| USA     | PGA Tour                |
|    83| Brian Gay            |          -0.47|          259|              112| USA     | PGA Tour                |
|    84| Joel Dahmen          |          -0.46|          258|               94| USA     | PGA Tour                |
|    85| Pat Perez            |          -0.45|          203|               73| USA     | PGA Tour                |
|    86| Eddie Pepperell      |          -0.43|          213|               76| ENG     | European Tour           |
|    87| JT Poston            |          -0.43|          281|               96| USA     | PGA Tour                |
|    88| Austin Cook          |          -0.42|          290|               90| USA     | PGA Tour                |
|    89| Talor Gooch          |          -0.42|          229|               67| USA     | PGA Tour                |
|    90| Beau Hossler         |          -0.41|          221|              100| USA     | PGA Tour                |
|    91| C.T. Pan             |          -0.41|          300|              103| TPE     | PGA Tour                |
|    92| Cameron Percy        |          -0.41|          233|               80| AUS     | Web.com Tour            |
|    93| Nick Taylor          |          -0.40|          273|               97| CAN     | PGA Tour                |
|    94| Ryan Palmer          |          -0.40|          200|               75| USA     | PGA Tour                |
|    95| Steve Stricker       |          -0.39|          135|               42| USA     | PGA Tour                |
|    96| Vaughn Taylor        |          -0.39|          264|               86| USA     | PGA Tour                |
|    97| Charley Hoffman      |          -0.39|          287|               86| USA     | PGA Tour                |
|    98| Nick Watney          |          -0.37|          202|              101| USA     | PGA Tour                |
|    99| Kevin Tway           |          -0.37|          297|               96| USA     | PGA Tour                |
|   100| Shugo Imahira        |          -0.37|          282|               91| JPN     | Japan Golf Tour         |
|   101| Ryan Armour          |          -0.36|          284|              104| USA     | PGA Tour                |
|   102| Sam Ryder            |          -0.35|          262|               92| USA     | PGA Tour                |
|   103| Mike Lorenzo-Vera    |          -0.35|          238|               85| FRA     | European Tour           |
|   104| Lucas Bjerregaard    |          -0.33|          275|               98| DEN     | European Tour           |
|   105| Steve Marino         |          -0.33|          139|               50| USA     | PGA Tour                |
|   106| Graeme McDowell      |          -0.33|          263|               82| NIR     | PGA Tour                |
|   107| Kiradech Aphibarnrat |          -0.32|          294|               98| THA     | PGA Tour                |
|   108| Chesson Hadley       |          -0.32|          274|               99| USA     | PGA Tour                |
|   109| D.J. Trahan          |          -0.32|          106|               30| USA     | PGA Tour                |
|   110| Stewart Cink         |          -0.32|          237|               77| USA     | PGA Tour                |
|   111| Rory Sabbatini       |          -0.31|          225|               85| RSA     | PGA Tour                |
|   112| Tyler McCumber       |          -0.31|          181|               68| USA     | PGA Tour Canada         |
|   113| Jamie Lovemark       |          -0.30|          257|               68| USA     | PGA Tour                |
|   114| Alexander Bjork      |          -0.30|          288|               85| SWE     | European Tour           |
|   115| Justin Harding       |          -0.30|          239|               99| RSA     | Asian Tour              |
|   116| Tom Lewis            |          -0.30|          214|               98| ENG     | European Tour           |
|   117| Sunghoon Kang        |          -0.29|          290|               91| KOR     | PGA Tour                |
|   118| Scott Stallings      |          -0.29|          254|               84| USA     | PGA Tour                |
|   119| Mark Anderson        |          -0.28|          216|               76| USA     | Web.com Tour            |
|   120| Harold Varner III    |          -0.28|          307|               94| USA     | PGA Tour                |
|   121| Kyle Stanley         |          -0.28|          268|               84| USA     | PGA Tour                |
|   122| Joaquin Niemann      |          -0.27|          106|               88| CHI     | PGA Tour                |
|   123| Jordan L Smith       |          -0.26|          297|               98| ENG     | European Tour           |
|   124| Roberto Castro       |          -0.25|          232|               81| USA     | Web.com Tour            |
|   125| Adam Schenk          |          -0.24|          298|              104| USA     | PGA Tour                |
|   126| Matt Jones           |          -0.24|          245|               83| AUS     | PGA Tour                |
|   127| Chris Kirk           |          -0.21|          281|               99| USA     | PGA Tour                |
|   128| Jorge Campillo       |          -0.21|          279|               95| ESP     | European Tour           |
|   129| J.J Spaun            |          -0.20|          274|               89| USA     | PGA Tour                |
|   130| Johnson Wagner       |          -0.20|          236|               79| USA     | PGA Tour                |
|   131| Joseph Bramlett      |          -0.20|          107|               85| USA     | Web.com Tour            |
|   132| Ryan Fox             |          -0.19|          297|              103| NZL     | European Tour           |
|   133| Martin Laird         |          -0.19|          225|               72| SCO     | PGA Tour                |
|   134| Andy Sullivan        |          -0.18|          270|               94| ENG     | European Tour           |
|   135| Jonathan Byrd        |          -0.18|          243|               70| USA     | PGA Tour                |
|   136| Sam Burns            |          -0.17|          139|               93| USA     | PGA Tour                |
|   137| Jazz Janewattananond |          -0.16|          247|              102| THA     | Asian Tour              |
|   138| Kevin Streelman      |          -0.16|          269|               87| USA     | PGA Tour                |
|   139| Peter Malnati        |          -0.16|          261|               97| USA     | PGA Tour                |
|   140| Trey Mullinax        |          -0.15|          270|               80| USA     | PGA Tour                |
|   141| Danny Lee            |          -0.14|          280|               94| NZL     | PGA Tour                |
|   142| Peter Uihlein        |          -0.13|          228|               85| USA     | PGA Tour                |
|   143| Ross Fisher          |          -0.13|          259|               90| ENG     | European Tour           |
|   144| Troy Merritt         |          -0.13|          255|               72| USA     | PGA Tour                |
|   145| Patrick Rodgers      |          -0.11|          255|               88| USA     | PGA Tour                |
|   146| Ernie Els            |          -0.11|          230|               86| RSA     | PGA Tour                |
|   147| Brian Stuard         |          -0.11|          289|              103| USA     | PGA Tour                |
|   148| Scottie Scheffler    |          -0.11|           42|               30| USA     | Web.com Tour            |
|   149| Thomas Detry         |          -0.10|          270|               92| BEL     | European Tour           |
|   150| Wyndham Clark        |          -0.09|          137|              101| USA     | Web.com Tour            |
|   151| Doug Ghim            |          -0.07|           56|               52| USA     | PGA Tour                |
|   152| Martin Kaymer        |          -0.07|          268|               95| GER     | European Tour           |
|   153| Mikko Korhonen       |          -0.06|          229|               83| FIN     | European Tour           |
|   154| Alexander Levy       |          -0.06|          240|               78| FRA     | European Tour           |
|   155| Carlos Ortiz         |          -0.05|          269|              104| MEX     | Web.com Tour            |
|   156| Gaganjeet Bhullar    |          -0.03|          230|               96| IND     | Asian Tour              |
|   157| Charl Schwartzel     |          -0.03|          251|               79| RSA     | PGA Tour                |
|   158| Danny Willett        |          -0.03|          212|               87| ENG     | European Tour           |
|   159| Patton Kizzire       |          -0.03|          256|               89| USA     | PGA Tour                |
|   160| James Hahn           |          -0.03|          264|               76| USA     | PGA Tour                |
|   161| Erik van Rooyen      |          -0.02|          247|               91| RSA     | European Tour           |
|   162| Nacho Elvira         |          -0.02|          270|               88| ESP     | European Tour           |
|   163| Seungyul Noh         |          -0.02|          132|                0| KOR     | NA                      |
|   164| Richard Sterne       |          -0.02|          249|               83| RSA     | European Tour           |
|   165| Nate Lashley         |          -0.02|          256|               64| USA     | PGA Tour                |
|   166| Sam Saunders         |          -0.01|          234|               80| USA     | PGA Tour                |
|   167| Matthias Schwab      |           0.00|          181|              100| AUT     | European Tour           |
|   168| Chris Stroud         |           0.01|          216|               63| USA     | PGA Tour                |
|   169| David Lipsky         |           0.02|          280|               92| USA     | European Tour           |
|   170| Maximilian Kieffer   |           0.02|          240|               86| GER     | European Tour           |
|   171| Andrew Landry        |           0.03|          240|               88| USA     | PGA Tour                |
|   172| Bronson Burgoon      |           0.03|          171|               71| USA     | PGA Tour                |
|   173| Mackenzie Hughes     |           0.03|          281|               78| CAN     | PGA Tour                |
|   174| Brian Harman         |           0.04|          291|               93| USA     | PGA Tour                |
|   175| Luke Donald          |           0.04|          162|               13| ENG     | PGA Tour                |
|   176| Jason Scrivener      |           0.04|          257|               95| AUS     | European Tour           |
|   177| Shawn Stefani        |           0.05|          261|               91| USA     | PGA Tour                |
|   178| Richy Werenski       |           0.05|          265|               94| USA     | PGA Tour                |
|   179| Brice Garnett        |           0.05|          257|               94| USA     | PGA Tour                |
|   180| Kramer Hickok        |           0.05|          208|              104| USA     | Web.com Tour            |
|   181| Billy Kennerly       |           0.06|          152|               70| USA     | Web.com Tour            |
|   182| Robert Rock          |           0.06|          238|               81| ENG     | European Tour           |
|   183| Bradley Dredge       |           0.06|          225|               84| WAL     | European Tour           |
|   184| Adria Arnaus         |           0.06|          167|              114| ESP     | European Challenge Tour |
|   185| Bill Haas            |           0.07|          250|               84| USA     | PGA Tour                |
|   186| Jimmy Stanger        |           0.08|           89|               63| USA     | Web.com Tour            |
|   187| Jimmy Walker         |           0.08|          237|               83| USA     | PGA Tour                |
|   188| Chris Paisley        |           0.08|          248|               74| ENG     | European Tour           |
|   189| Adrian Otaegui       |           0.09|          285|               94| ESP     | European Tour           |
|   190| Corey Conners        |           0.09|          299|               90| CAN     | PGA Tour                |
|   191| Adam Long            |           0.10|          261|              101| USA     | Web.com Tour            |
|   192| Lucas Herbert        |           0.10|          155|               87| AUS     | European Tour           |
|   193| Anirban Lahiri       |           0.10|          278|               90| IND     | PGA Tour                |
|   194| William McGirt       |           0.10|          218|               42| USA     | PGA Tour                |
|   195| Jonas Blixt          |           0.10|          225|               76| SWE     | PGA Tour                |
|   196| Ben Kohles           |           0.11|          222|               81| USA     | Web.com Tour            |
|   197| Kelly Kraft          |           0.11|          249|               86| USA     | PGA Tour                |
|   198| John Oda             |           0.11|           68|               48| USA     | Web.com Tour            |
|   199| Will Wilcox          |           0.12|          152|               65| USA     | Web.com Tour            |
|   200| Darren Fichardt      |           0.12|          228|               87| RSA     | European Tour           |
