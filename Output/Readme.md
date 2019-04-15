Current Golf Ratings
================
DSMok1
April 15, 2019

Summary
-------

This is a super-simple golf rating system. It's just a straight regression over the past 3 years of golf results, with the most recent results weighted far more heavily. An exponential weighting system of 0.97 to the "weeks ago" power was used--in other words, results from 1 year ago are weighted at 0.97^52, or 20% as much as this week's results. The previous years get less and less weight, but are there to provide some stability to the regression for portions of the dataset with more tenuous connections.

The Player Rating is denominated in strokes per round more or less than the average golfer playing on the PGA and European tours. Players with a minimum of 40 rounds were included and tournament rounds with a minimum of 15 ranked players were included.

Data
----

The full output is located at <https://github.com/DSMok1/Golf_Ratings_R_V2/blob/master/Output/Recent_Ratings.csv>

    ## Warning: package 'knitr' was built under R version 3.5.3

|  Rank| Player\_Name         |  Player\_Value|  Num\_Rounds|  Num\_Rounds\_Yr| Country |  Tour\_Yr|
|-----:|:---------------------|--------------:|------------:|----------------:|:--------|---------:|
|     1| Dustin Johnson       |          -2.68|          254|               90| USA     |         1|
|     2| Rory McIlroy         |          -2.29|          229|               84| NIR     |         1|
|     3| Justin Thomas        |          -2.26|          269|               90| USA     |         1|
|     4| Jon Rahm             |          -2.15|          253|               90| ESP     |         1|
|     5| Tiger Woods          |          -2.13|          102|               66| USA     |         1|
|     6| Jason Day            |          -2.07|          215|               74| AUS     |         1|
|     7| Justin Rose          |          -1.99|          250|               80| ENG     |         1|
|     8| Rickie Fowler        |          -1.95|          263|               86| USA     |         1|
|     9| Patrick Cantlay      |          -1.86|          164|               82| USA     |         1|
|    10| Tony Finau           |          -1.82|          306|              100| USA     |         1|
|    11| Xander Schauffele    |          -1.75|          298|               97| USA     |         1|
|    12| Bryson DeChambeau    |          -1.73|          270|               98| USA     |         1|
|    13| Tommy Fleetwood      |          -1.71|          309|              108| ENG     |         1|
|    14| Webb Simpson         |          -1.69|          265|               86| USA     |         1|
|    15| Brooks Koepka        |          -1.63|          242|               96| USA     |         1|
|    16| Francesco Molinari   |          -1.62|          262|               80| ITA     |         1|
|    17| Paul Casey           |          -1.55|          256|               84| ENG     |         1|
|    18| Matt Kuchar          |          -1.49|          310|               94| USA     |         1|
|    19| Gary Woodland        |          -1.48|          286|               97| USA     |         1|
|    20| Hideki Matsuyama     |          -1.44|          264|               96| JPN     |         1|
|    21| Sergio Garcia        |          -1.41|          241|               79| ESP     |         1|
|    22| Louis Oosthuizen     |          -1.38|          232|               80| RSA     |         1|
|    23| Marc Leishman        |          -1.38|          285|               90| AUS     |         1|
|    24| Charles Howell III   |          -1.36|          269|               98| USA     |         1|
|    25| Ian Poulter          |          -1.30|          270|               96| ENG     |         1|
|    26| Adam Scott           |          -1.29|          235|               78| AUS     |         1|
|    27| Phil Mickelson       |          -1.25|          247|               76| USA     |         1|
|    28| Lucas Glover         |          -1.23|          242|               73| USA     |         1|
|    29| Jim Furyk            |          -1.23|          183|               68| USA     |         1|
|    30| Bubba Watson         |          -1.22|          237|               78| USA     |         1|
|    31| Rafael Cabrera Bello |          -1.15|          314|              100| ESP     |         1|
|    32| Henrik Stenson       |          -1.13|          224|               70| SWE     |         1|
|    33| Jason Kokrak         |          -1.13|          286|              100| USA     |         1|
|    34| Byeong Hun An        |          -1.13|          290|              108| KOR     |         1|
|    35| Matthew Fitzpatrick  |          -1.12|          277|               96| ENG     |         1|
|    36| Patrick Reed         |          -1.10|          338|              102| USA     |         1|
|    37| Jordan Spieth        |          -1.05|          250|               74| USA     |         1|
|    38| Ryan Moore           |          -1.05|          244|               86| USA     |         1|
|    39| Keegan Bradley       |          -1.01|          297|              103| USA     |         1|
|    40| Cameron Smith        |          -0.99|          266|               90| AUS     |         1|
|    41| Joost Luiten         |          -0.98|          230|               47| NED     |         1|
|    42| Kevin Kisner         |          -0.94|          276|               85| USA     |         1|
|    43| Tyrrell Hatton       |          -0.91|          270|               88| ENG     |         1|
|    44| Aaron Wise           |          -0.86|          229|               71| USA     |         1|
|    45| Siwoo Kim            |          -0.86|          284|              104| KOR     |         1|
|    46| Billy Horschel       |          -0.83|          256|              100| USA     |         1|
|    47| Russell Knox         |          -0.80|          296|              106| SCO     |         1|
|    48| Sungjae Im           |          -0.79|          337|              136| KOR     |         1|
|    49| Thorbjorn Olesen     |          -0.78|          257|               86| DEN     |         1|
|    50| Abraham Ancer        |          -0.76|          281|              100| MEX     |         1|
|    51| Lee Westwood         |          -0.76|          230|               67| ENG     |         1|
|    52| Emiliano Grillo      |          -0.76|          301|               94| ARG     |         1|
|    53| Zach Johnson         |          -0.76|          258|               81| USA     |         1|
|    54| Haotong Li           |          -0.75|          271|               92| CHN     |         1|
|    55| Adam Hadwin          |          -0.75|          280|               87| CAN     |         1|
|    56| Luke List            |          -0.73|          273|               83| USA     |         1|
|    57| Daniel Berger        |          -0.71|          237|               62| USA     |         1|
|    58| Charley Hoffman      |          -0.71|          287|               86| USA     |         1|
|    59| Chez Reavie          |          -0.70|          265|               80| USA     |         1|
|    60| Victor Dubuisson     |          -0.69|           96|               20| FRA     |         1|
|    61| Jhonattan Vegas      |          -0.69|          286|               92| VEN     |         1|
|    62| Kevin Na             |          -0.66|          259|               87| USA     |         1|
|    63| Michael Thompson     |          -0.65|          202|               88| USA     |         1|
|    64| Brandt Snedeker      |          -0.65|          249|              103| USA     |         1|
|    65| Matt Wallace         |          -0.64|          263|              108| ENG     |         1|
|    66| Bud Cauley           |          -0.63|          215|               53| USA     |         1|
|    67| Scott Piercy         |          -0.62|          235|               86| USA     |         1|
|    68| Kevin Chappell       |          -0.60|          238|               52| USA     |         1|
|    69| Thomas Pieters       |          -0.59|          247|               86| BEL     |         1|
|    70| Alex Noren           |          -0.57|          250|               72| SWE     |         1|
|    71| Julian Suri          |          -0.54|          216|               78| USA     |         1|
|    72| Branden Grace        |          -0.54|          291|               94| RSA     |         1|
|    73| Denny McCarthy       |          -0.54|          261|               93| USA     |         1|
|    74| Graham Delaet        |          -0.54|          111|                0| CAN     |        NA|
|    75| Aaron Baddeley       |          -0.53|          243|               93| AUS     |         1|
|    76| Dylan Frittelli      |          -0.52|          337|              109| RSA     |         1|
|    77| Fabrizio Zanotti     |          -0.51|          233|               62| PAR     |         1|
|    78| Andrew Putnam        |          -0.51|          266|               90| USA     |         1|
|    79| Keith Mitchell       |          -0.51|          278|               98| USA     |         1|
|    80| Cameron Champ        |          -0.48|          132|              100| USA     |         1|
|    81| Graeme McDowell      |          -0.48|          265|               90| NIR     |         1|
|    82| Russell Henley       |          -0.47|          256|               80| USA     |         1|
|    83| Pat Perez            |          -0.46|          203|               71| USA     |         1|
|    84| Beau Hossler         |          -0.45|          225|              100| USA     |         1|
|    85| Shane Lowry          |          -0.44|          251|               87| IRL     |         1|
|    86| Talor Gooch          |          -0.43|          229|               65| USA     |         1|
|    87| Cameron Percy        |          -0.41|          233|               80| AUS     |         1|
|    88| Steve Stricker       |          -0.41|          133|               40| USA     |         1|
|    89| Nick Taylor          |          -0.41|          273|               99| CAN     |         1|
|    90| Eddie Pepperell      |          -0.40|          217|               76| ENG     |         1|
|    91| Kevin Tway           |          -0.40|          295|               94| USA     |         1|
|    92| C.T. Pan             |          -0.39|          296|              103| TPE     |         1|
|    93| Kyle Stanley         |          -0.39|          272|               84| USA     |         1|
|    94| Brian Gay            |          -0.39|          262|              115| USA     |         1|
|    95| Sam Ryder            |          -0.38|          258|               92| USA     |         1|
|    96| Scott Stallings      |          -0.38|          256|               85| USA     |         1|
|    97| Ryan Palmer          |          -0.37|          198|               75| USA     |         1|
|    98| Joel Dahmen          |          -0.37|          256|               99| USA     |         1|
|    99| Adam Schenk          |          -0.37|          294|              108| USA     |         1|
|   100| Kevin Streelman      |          -0.36|          267|               87| USA     |         1|
|   101| Justin Harding       |          -0.36|          245|              101| RSA     |         1|
|   102| Mike Lorenzo-Vera    |          -0.36|          238|               85| FRA     |         1|
|   103| Harold Varner III    |          -0.36|          309|               96| USA     |         1|
|   104| Rory Sabbatini       |          -0.35|          229|               89| RSA     |         1|
|   105| Nick Watney          |          -0.35|          204|               99| USA     |         1|
|   106| Ryan Armour          |          -0.35|          280|              104| USA     |         1|
|   107| Vaughn Taylor        |          -0.35|          263|               89| USA     |         1|
|   108| JT Poston            |          -0.35|          285|               96| USA     |         1|
|   109| Steve Marino         |          -0.34|          136|               46| USA     |         1|
|   110| J.B. Holmes          |          -0.34|          247|               76| USA     |         1|
|   111| Sunghoon Kang        |          -0.32|          290|               95| KOR     |         1|
|   112| Kiradech Aphibarnrat |          -0.32|          294|               94| THA     |         1|
|   113| Jamie Lovemark       |          -0.31|          253|               64| USA     |         1|
|   114| Scottie Scheffler    |          -0.31|           46|               38| USA     |         1|
|   115| Tom Lewis            |          -0.31|          214|               98| ENG     |         1|
|   116| Alexander Bjork      |          -0.31|          288|               85| SWE     |         1|
|   117| Tyler McCumber       |          -0.31|          181|               72| USA     |         1|
|   118| Austin Cook          |          -0.31|          288|               90| USA     |         1|
|   119| Danny Lee            |          -0.30|          280|               94| NZL     |         1|
|   120| Matt Jones           |          -0.30|          247|               87| AUS     |         1|
|   121| Brian Stuard         |          -0.30|          291|              107| USA     |         1|
|   122| Mark Anderson        |          -0.29|          214|               72| USA     |         1|
|   123| Jordan L Smith       |          -0.27|          297|               98| ENG     |         1|
|   124| Shugo Imahira        |          -0.27|          284|               91| JPN     |         1|
|   125| Stewart Cink         |          -0.26|          235|               77| USA     |         1|
|   126| D.J. Trahan          |          -0.26|          108|               36| USA     |         1|
|   127| Lucas Bjerregaard    |          -0.26|          281|              100| DEN     |         1|
|   128| Sam Burns            |          -0.25|          143|               97| USA     |         1|
|   129| Martin Laird         |          -0.25|          225|               76| SCO     |         1|
|   130| Peter Malnati        |          -0.25|          263|               99| USA     |         1|
|   131| Corey Conners        |          -0.24|          307|               94| CAN     |         1|
|   132| Roberto Castro       |          -0.22|          230|               79| USA     |         1|
|   133| Jorge Campillo       |          -0.22|          279|               99| ESP     |         1|
|   134| Chesson Hadley       |          -0.22|          272|               97| USA     |         1|
|   135| Johnson Wagner       |          -0.21|          232|               77| USA     |         1|
|   136| Wyndham Clark        |          -0.21|          141|              103| USA     |         1|
|   137| Joseph Bramlett      |          -0.20|          105|               85| USA     |         1|
|   138| Chris Kirk           |          -0.20|          281|               99| USA     |         1|
|   139| Ryan Fox             |          -0.19|          297|              103| NZL     |         1|
|   140| Andy Sullivan        |          -0.19|          268|               94| ENG     |         1|
|   141| Patton Kizzire       |          -0.18|          258|               87| USA     |         1|
|   142| Jazz Janewattananond |          -0.18|          251|              108| THA     |         1|
|   143| Joaquin Niemann      |          -0.17|          108|               90| CHI     |         1|
|   144| J.J Spaun            |          -0.15|          270|               91| USA     |         1|
|   145| Troy Merritt         |          -0.14|          251|               68| USA     |         1|
|   146| Ross Fisher          |          -0.14|          259|               88| ENG     |         1|
|   147| Patrick Rodgers      |          -0.12|          253|               86| USA     |         1|
|   148| Ernie Els            |          -0.11|          228|               86| RSA     |         1|
|   149| Thomas Detry         |          -0.11|          270|               96| BEL     |         1|
|   150| Peter Uihlein        |          -0.10|          230|               89| USA     |         1|
|   151| Trey Mullinax        |          -0.10|          267|               87| USA     |         1|
|   152| Martin Kaymer        |          -0.10|          272|               93| GER     |         1|
|   153| Jimmy Walker         |          -0.08|          237|               83| USA     |         1|
|   154| Doug Ghim            |          -0.08|           56|               52| USA     |         1|
|   155| Mikko Korhonen       |          -0.07|          229|               87| FIN     |         1|
|   156| Alexander Levy       |          -0.07|          240|               78| FRA     |         1|
|   157| Sam Saunders         |          -0.06|          238|               80| USA     |         1|
|   158| Jonathan Byrd        |          -0.05|          241|               73| USA     |         1|
|   159| Gaganjeet Bhullar    |          -0.04|          230|              100| IND     |         1|
|   160| James Hahn           |          -0.04|          262|               72| USA     |         1|
|   161| Erik van Rooyen      |          -0.04|          247|               95| RSA     |         1|
|   162| Seungyul Noh         |          -0.03|          129|                0| KOR     |        NA|
|   163| Nacho Elvira         |          -0.03|          270|               92| ESP     |         1|
|   164| Nate Lashley         |          -0.03|          256|               62| USA     |         1|
|   165| Richard Sterne       |          -0.03|          249|               83| RSA     |         1|
|   166| Carlos Ortiz         |          -0.02|          269|              106| MEX     |         1|
|   167| Mackenzie Hughes     |          -0.02|          279|               84| CAN     |         1|
|   168| Matthias Schwab      |          -0.01|          181|              104| AUT     |         1|
|   169| Scott Brown          |           0.00|          271|               96| USA     |         1|
|   170| Kyounghoon Lee       |           0.00|          321|              107| KOR     |         1|
|   171| Jonas Blixt          |           0.01|          226|               82| SWE     |         1|
|   172| Danny Willett        |           0.01|          210|               85| ENG     |         1|
|   173| David Lipsky         |           0.01|          280|               96| USA     |         1|
|   174| Maximilian Kieffer   |           0.01|          240|               88| GER     |         1|
|   175| Fabian Gomez         |           0.01|          246|               97| ARG     |         1|
|   176| Andrew Landry        |           0.02|          242|               90| USA     |         1|
|   177| Charl Schwartzel     |           0.02|          247|               81| RSA     |         1|
|   178| Bronson Burgoon      |           0.02|          171|               67| USA     |         1|
|   179| Chris Stroud         |           0.02|          214|               67| USA     |         1|
|   180| Jason Scrivener      |           0.03|          257|               95| AUS     |         1|
|   181| Brian Harman         |           0.04|          289|               91| USA     |         1|
|   182| Brice Garnett        |           0.04|          257|               96| USA     |         1|
|   183| Adria Arnaus         |           0.04|          167|              114| ESP     |         1|
|   184| Robert Rock          |           0.05|          238|               85| ENG     |         1|
|   185| Bradley Dredge       |           0.05|          225|               84| WAL     |         1|
|   186| Billy Kennerly       |           0.05|          152|               70| USA     |         1|
|   187| Richy Werenski       |           0.05|          265|               95| USA     |         1|
|   188| Bill Haas            |           0.05|          246|               81| USA     |         1|
|   189| Kramer Hickok        |           0.06|          208|              108| USA     |         1|
|   190| Jimmy Stanger        |           0.07|           89|               67| USA     |         1|
|   191| Shawn Stefani        |           0.07|          261|               93| USA     |         1|
|   192| Chris Paisley        |           0.07|          248|               74| ENG     |         1|
|   193| Adrian Otaegui       |           0.08|          285|               98| ESP     |         1|
|   194| William McGirt       |           0.08|          216|               40| USA     |         1|
|   195| Anirban Lahiri       |           0.08|          272|               92| IND     |         1|
|   196| Lucas Herbert        |           0.09|          155|               87| AUS     |         1|
|   197| Ben Kohles           |           0.10|          222|               81| USA     |         1|
|   198| John Oda             |           0.11|           68|               52| USA     |         1|
|   199| Will Wilcox          |           0.11|          150|               65| USA     |         1|
|   200| Darren Fichardt      |           0.11|          228|               87| RSA     |         1|
