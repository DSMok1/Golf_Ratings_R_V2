Current Golf Ratings
================
DSMok1
April 09, 2019

Summary
-------

This is a super-simple golf rating system. It's just a straight regression over the past 3 years of golf results, with the most recent results weighted far more heavily. An exponential weighting system of 0.97 to the "weeks ago" power was used--in other words, results from 1 year ago are weighted at 0.97^52, or 20% as much as this week's results. The previous years get less and less weight, but are there to provide some stability to the regression for portions of the dataset with more tenuous connections.

The Player Rating is denominated in strokes per round more or less than the average golfer playing on the PGA and European tours. Players with a minimum of 40 rounds were included and tournament rounds with a minimum of 15 ranked players were included.

Data
----

The full output is located at <https://github.com/DSMok1/Golf_Ratings_R_V2/blob/master/Output/Recent_Ratings.csv>

    ## Warning: package 'knitr' was built under R version 3.5.3

|  Rank| Player\_Name         |  Player\_Value|  Num\_Rounds|  Num\_Rounds\_Yr| Country | Tour\_Yr                |
|-----:|:---------------------|--------------:|------------:|----------------:|:--------|:------------------------|
|     1| Dustin Johnson       |          -2.62|          254|               94| USA     | PGA Tour                |
|     2| Rory McIlroy         |          -2.34|          229|               88| NIR     | PGA Tour                |
|     3| Justin Thomas        |          -2.24|          269|               94| USA     | PGA Tour                |
|     4| Justin Rose          |          -2.11|          252|               84| ENG     | PGA Tour                |
|     5| Jon Rahm             |          -2.08|          249|               94| ESP     | PGA Tour                |
|     6| Jason Day            |          -1.95|          215|               78| AUS     | PGA Tour                |
|     7| Tiger Woods          |          -1.94|           98|               70| USA     | PGA Tour                |
|     8| Rickie Fowler        |          -1.88|          261|               86| USA     | PGA Tour                |
|     9| Paul Casey           |          -1.77|          258|               88| ENG     | PGA Tour                |
|    10| Patrick Cantlay      |          -1.75|          160|               84| USA     | PGA Tour                |
|    11| Tommy Fleetwood      |          -1.75|          305|              112| ENG     | PGA Tour                |
|    12| Bryson DeChambeau    |          -1.75|          270|              102| USA     | PGA Tour                |
|    13| Tony Finau           |          -1.72|          302|              100| USA     | PGA Tour                |
|    14| Xander Schauffele    |          -1.61|          298|              101| USA     | PGA Tour                |
|    15| Webb Simpson         |          -1.57|          265|               90| USA     | PGA Tour                |
|    16| Sergio Garcia        |          -1.51|          243|               81| ESP     | PGA Tour                |
|    17| Gary Woodland        |          -1.49|          282|               99| USA     | PGA Tour                |
|    18| Brooks Koepka        |          -1.48|          242|               96| USA     | PGA Tour                |
|    19| Francesco Molinari   |          -1.47|          258|               84| ITA     | PGA Tour                |
|    20| Marc Leishman        |          -1.46|          283|               94| AUS     | PGA Tour                |
|    21| Hideki Matsuyama     |          -1.45|          264|              100| JPN     | PGA Tour                |
|    22| Matt Kuchar          |          -1.42|          310|               94| USA     | PGA Tour                |
|    23| Charles Howell III   |          -1.37|          265|               98| USA     | PGA Tour                |
|    24| Louis Oosthuizen     |          -1.37|          232|               84| RSA     | PGA Tour                |
|    25| Lucas Glover         |          -1.24|          242|               69| USA     | PGA Tour                |
|    26| Jim Furyk            |          -1.23|          183|               64| USA     | PGA Tour                |
|    27| Adam Scott           |          -1.23|          235|               82| AUS     | PGA Tour                |
|    28| Ian Poulter          |          -1.21|          270|              100| ENG     | PGA Tour                |
|    29| Phil Mickelson       |          -1.18|          245|               80| USA     | PGA Tour                |
|    30| Rafael Cabrera Bello |          -1.16|          314|              104| ESP     | PGA Tour                |
|    31| Henrik Stenson       |          -1.15|          224|               74| SWE     | PGA Tour                |
|    32| Jason Kokrak         |          -1.14|          286|               96| USA     | PGA Tour                |
|    33| Byeong Hun An        |          -1.13|          292|              104| KOR     | PGA Tour                |
|    34| Bubba Watson         |          -1.11|          237|               82| USA     | PGA Tour                |
|    35| Patrick Reed         |          -1.10|          338|              106| USA     | PGA Tour                |
|    36| Matthew Fitzpatrick  |          -1.07|          277|              100| ENG     | European Tour           |
|    37| Cameron Smith        |          -1.06|          266|               94| AUS     | PGA Tour                |
|    38| Ryan Moore           |          -1.05|          246|               86| USA     | PGA Tour                |
|    39| Keegan Bradley       |          -1.02|          297|              103| USA     | PGA Tour                |
|    40| Tyrrell Hatton       |          -1.02|          266|               92| ENG     | PGA Tour                |
|    41| Jordan Spieth        |          -0.99|          250|               74| USA     | PGA Tour                |
|    42| Joost Luiten         |          -0.98|          230|               43| NED     | European Tour           |
|    43| Billy Horschel       |          -0.93|          256|              100| USA     | PGA Tour                |
|    44| Emiliano Grillo      |          -0.93|          301|               94| ARG     | PGA Tour                |
|    45| Zach Johnson         |          -0.89|          256|               85| USA     | PGA Tour                |
|    46| Kevin Kisner         |          -0.88|          276|               89| USA     | PGA Tour                |
|    47| Siwoo Kim            |          -0.80|          280|              104| KOR     | PGA Tour                |
|    48| Russell Knox         |          -0.80|          298|              106| SCO     | PGA Tour                |
|    49| Sungjae Im           |          -0.80|          337|              132| KOR     | Web.com Tour            |
|    50| Alex Noren           |          -0.77|          246|               74| SWE     | PGA Tour                |
|    51| Abraham Ancer        |          -0.76|          285|               96| MEX     | PGA Tour                |
|    52| Lee Westwood         |          -0.76|          234|               67| ENG     | European Tour           |
|    53| Matt Wallace         |          -0.76|          261|              108| ENG     | European Tour           |
|    54| Haotong Li           |          -0.75|          267|               92| CHN     | European Tour           |
|    55| Adam Hadwin          |          -0.75|          280|               91| CAN     | PGA Tour                |
|    56| Aaron Wise           |          -0.74|          225|               71| USA     | PGA Tour                |
|    57| Luke List            |          -0.73|          273|               81| USA     | PGA Tour                |
|    58| Brandt Snedeker      |          -0.73|          251|              103| USA     | PGA Tour                |
|    59| Daniel Berger        |          -0.72|          241|               64| USA     | PGA Tour                |
|    60| Thorbjorn Olesen     |          -0.70|          253|               86| DEN     | European Tour           |
|    61| Chez Reavie          |          -0.70|          265|               84| USA     | PGA Tour                |
|    62| Victor Dubuisson     |          -0.69|          100|               20| FRA     | European Tour           |
|    63| Jhonattan Vegas      |          -0.69|          286|               92| VEN     | PGA Tour                |
|    64| Kevin Na             |          -0.68|          259|               87| USA     | PGA Tour                |
|    65| Michael Thompson     |          -0.66|          202|               88| USA     | PGA Tour                |
|    66| Charley Hoffman      |          -0.65|          287|               86| USA     | PGA Tour                |
|    67| Bud Cauley           |          -0.64|          215|               51| USA     | PGA Tour                |
|    68| Branden Grace        |          -0.63|          289|               98| RSA     | PGA Tour                |
|    69| Scott Piercy         |          -0.63|          239|               86| USA     | PGA Tour                |
|    70| Kevin Chappell       |          -0.60|          238|               54| USA     | PGA Tour                |
|    71| Thomas Pieters       |          -0.59|          247|               88| BEL     | European Tour           |
|    72| Shane Lowry          |          -0.57|          253|               87| IRL     | European Tour           |
|    73| Julian Suri          |          -0.55|          216|               78| USA     | European Tour           |
|    74| Denny McCarthy       |          -0.54|          265|               91| USA     | PGA Tour                |
|    75| Graham Delaet        |          -0.54|          111|                0| CAN     | NA                      |
|    76| Aaron Baddeley       |          -0.53|          243|               89| AUS     | PGA Tour                |
|    77| Dylan Frittelli      |          -0.53|          337|              107| RSA     | PGA Tour                |
|    78| Andrew Putnam        |          -0.51|          270|               86| USA     | PGA Tour                |
|    79| Fabrizio Zanotti     |          -0.51|          233|               62| PAR     | European Tour           |
|    80| J.B. Holmes          |          -0.51|          247|               73| USA     | PGA Tour                |
|    81| Keith Mitchell       |          -0.50|          274|               98| USA     | PGA Tour                |
|    82| Cameron Champ        |          -0.49|          132|              100| USA     | Web.com Tour            |
|    83| Graeme McDowell      |          -0.48|          267|               86| NIR     | PGA Tour                |
|    84| Russell Henley       |          -0.47|          256|               80| USA     | PGA Tour                |
|    85| Pat Perez            |          -0.46|          203|               73| USA     | PGA Tour                |
|    86| Beau Hossler         |          -0.45|          225|               96| USA     | PGA Tour                |
|    87| Eddie Pepperell      |          -0.44|          213|               76| ENG     | European Tour           |
|    88| Talor Gooch          |          -0.44|          229|               65| USA     | PGA Tour                |
|    89| Cameron Percy        |          -0.42|          233|               80| AUS     | Web.com Tour            |
|    90| Steve Stricker       |          -0.41|          133|               40| USA     | PGA Tour                |
|    91| Nick Taylor          |          -0.41|          273|               95| CAN     | PGA Tour                |
|    92| C.T. Pan             |          -0.40|          298|              101| TPE     | PGA Tour                |
|    93| Brian Gay            |          -0.39|          262|              112| USA     | PGA Tour                |
|    94| Sam Ryder            |          -0.38|          262|               88| USA     | PGA Tour                |
|    95| Scott Stallings      |          -0.38|          256|               81| USA     | PGA Tour                |
|    96| Ryan Palmer          |          -0.37|          198|               73| USA     | PGA Tour                |
|    97| Adam Schenk          |          -0.37|          298|              104| USA     | PGA Tour                |
|    98| Joel Dahmen          |          -0.37|          260|               95| USA     | PGA Tour                |
|    99| Shugo Imahira        |          -0.36|          282|               91| JPN     | Japan Golf Tour         |
|   100| Kevin Streelman      |          -0.36|          271|               83| USA     | PGA Tour                |
|   101| Harold Varner III    |          -0.36|          309|               92| USA     | PGA Tour                |
|   102| Rory Sabbatini       |          -0.36|          229|               85| RSA     | PGA Tour                |
|   103| Mike Lorenzo-Vera    |          -0.36|          238|               85| FRA     | European Tour           |
|   104| Nick Watney          |          -0.36|          204|               97| USA     | PGA Tour                |
|   105| Ryan Armour          |          -0.35|          284|              100| USA     | PGA Tour                |
|   106| Kevin Tway           |          -0.35|          295|               92| USA     | PGA Tour                |
|   107| Steve Marino         |          -0.35|          136|               46| USA     | PGA Tour                |
|   108| JT Poston            |          -0.35|          285|               92| USA     | PGA Tour                |
|   109| Vaughn Taylor        |          -0.35|          265|               86| USA     | PGA Tour                |
|   110| Stewart Cink         |          -0.33|          233|               77| USA     | PGA Tour                |
|   111| Tyler McCumber       |          -0.33|          181|               72| USA     | PGA Tour Canada         |
|   112| Kiradech Aphibarnrat |          -0.33|          294|               98| THA     | PGA Tour                |
|   113| Scottie Scheffler    |          -0.32|           46|               34| USA     | Web.com Tour            |
|   114| Sunghoon Kang        |          -0.32|          290|               91| KOR     | PGA Tour                |
|   115| Jamie Lovemark       |          -0.32|          253|               64| USA     | PGA Tour                |
|   116| Danny Lee            |          -0.31|          284|               90| NZL     | PGA Tour                |
|   117| Austin Cook          |          -0.31|          290|               90| USA     | PGA Tour                |
|   118| Alexander Bjork      |          -0.31|          288|               85| SWE     | European Tour           |
|   119| Matt Jones           |          -0.31|          247|               83| AUS     | PGA Tour                |
|   120| Tom Lewis            |          -0.31|          214|               98| ENG     | European Tour           |
|   121| Brian Stuard         |          -0.30|          293|              103| USA     | PGA Tour                |
|   122| Mark Anderson        |          -0.30|          214|               72| USA     | Web.com Tour            |
|   123| Kyle Stanley         |          -0.29|          268|               84| USA     | PGA Tour                |
|   124| Jordan L Smith       |          -0.27|          297|               98| ENG     | European Tour           |
|   125| D.J. Trahan          |          -0.26|          108|               34| USA     | PGA Tour                |
|   126| Sam Burns            |          -0.26|          143|               93| USA     | PGA Tour                |
|   127| Martin Laird         |          -0.25|          225|               72| SCO     | PGA Tour                |
|   128| Peter Malnati        |          -0.25|          263|               95| USA     | PGA Tour                |
|   129| Corey Conners        |          -0.23|          303|               90| CAN     | PGA Tour                |
|   130| Roberto Castro       |          -0.23|          230|               77| USA     | PGA Tour                |
|   131| Chesson Hadley       |          -0.22|          272|               95| USA     | PGA Tour                |
|   132| Joseph Bramlett      |          -0.22|          105|               85| USA     | Web.com Tour            |
|   133| Jorge Campillo       |          -0.22|          279|               99| ESP     | European Tour           |
|   134| Wyndham Clark        |          -0.22|          141|               99| USA     | Web.com Tour            |
|   135| Johnson Wagner       |          -0.22|          232|               77| USA     | PGA Tour                |
|   136| Justin Harding       |          -0.21|          241|               99| RSA     | Asian Tour              |
|   137| Chris Kirk           |          -0.20|          283|               97| USA     | PGA Tour                |
|   138| Ryan Fox             |          -0.19|          297|              103| NZL     | European Tour           |
|   139| Andy Sullivan        |          -0.19|          270|               94| ENG     | European Tour           |
|   140| Jazz Janewattananond |          -0.17|          251|              104| THA     | Asian Tour              |
|   141| Joaquin Niemann      |          -0.17|          108|               90| CHI     | PGA Tour                |
|   142| J.J Spaun            |          -0.15|          274|               89| USA     | PGA Tour                |
|   143| Lucas Bjerregaard    |          -0.15|          277|               98| DEN     | European Tour           |
|   144| Troy Merritt         |          -0.14|          255|               68| USA     | PGA Tour                |
|   145| Ross Fisher          |          -0.14|          259|               90| ENG     | European Tour           |
|   146| Patrick Rodgers      |          -0.13|          253|               86| USA     | PGA Tour                |
|   147| Ernie Els            |          -0.12|          230|               82| RSA     | PGA Tour                |
|   148| Martin Kaymer        |          -0.11|          272|               93| GER     | European Tour           |
|   149| Thomas Detry         |          -0.11|          270|               96| BEL     | European Tour           |
|   150| Peter Uihlein        |          -0.10|          230|               87| USA     | PGA Tour                |
|   151| Trey Mullinax        |          -0.10|          269|               84| USA     | PGA Tour                |
|   152| Doug Ghim            |          -0.09|           56|               56| USA     | PGA Tour                |
|   153| Mikko Korhonen       |          -0.07|          229|               87| FIN     | European Tour           |
|   154| Alexander Levy       |          -0.07|          240|               78| FRA     | European Tour           |
|   155| Sam Saunders         |          -0.06|          238|               76| USA     | PGA Tour                |
|   156| Jonathan Byrd        |          -0.05|          245|               71| USA     | PGA Tour                |
|   157| Charl Schwartzel     |          -0.04|          247|               83| RSA     | PGA Tour                |
|   158| James Hahn           |          -0.04|          262|               72| USA     | PGA Tour                |
|   159| Patton Kizzire       |          -0.04|          254|               89| USA     | PGA Tour                |
|   160| Danny Willett        |          -0.04|          212|               87| ENG     | European Tour           |
|   161| Gaganjeet Bhullar    |          -0.04|          230|              100| IND     | Asian Tour              |
|   162| Seungyul Noh         |          -0.04|          129|                0| KOR     | NA                      |
|   163| Nate Lashley         |          -0.04|          256|               62| USA     | PGA Tour                |
|   164| Erik van Rooyen      |          -0.03|          247|               95| RSA     | European Tour           |
|   165| Nacho Elvira         |          -0.03|          270|               92| ESP     | European Tour           |
|   166| Carlos Ortiz         |          -0.03|          269|              104| MEX     | Web.com Tour            |
|   167| Mackenzie Hughes     |          -0.03|          283|               80| CAN     | PGA Tour                |
|   168| Richard Sterne       |          -0.02|          249|               83| RSA     | European Tour           |
|   169| Jimmy Walker         |          -0.02|          237|               83| USA     | PGA Tour                |
|   170| Matthias Schwab      |          -0.01|          181|              104| AUT     | European Tour           |
|   171| Scott Brown          |          -0.01|          271|               92| USA     | PGA Tour                |
|   172| Kyounghoon Lee       |           0.00|          323|              103| KOR     | Web.com Tour            |
|   173| Jonas Blixt          |           0.00|          226|               78| SWE     | PGA Tour                |
|   174| Fabian Gomez         |           0.01|          248|               93| ARG     | PGA Tour                |
|   175| David Lipsky         |           0.01|          280|               96| USA     | European Tour           |
|   176| Maximilian Kieffer   |           0.01|          240|               88| GER     | European Tour           |
|   177| Bronson Burgoon      |           0.02|          171|               67| USA     | PGA Tour                |
|   178| Chris Stroud         |           0.02|          214|               65| USA     | PGA Tour                |
|   179| Jason Scrivener      |           0.03|          257|               95| AUS     | European Tour           |
|   180| Brice Garnett        |           0.04|          257|               96| USA     | PGA Tour                |
|   181| Billy Kennerly       |           0.04|          152|               70| USA     | Web.com Tour            |
|   182| Brian Harman         |           0.04|          289|               93| USA     | PGA Tour                |
|   183| Robert Rock          |           0.05|          238|               85| ENG     | European Tour           |
|   184| Richy Werenski       |           0.05|          267|               91| USA     | PGA Tour                |
|   185| Bill Haas            |           0.05|          250|               81| USA     | PGA Tour                |
|   186| Adria Arnaus         |           0.05|          167|              114| ESP     | European Challenge Tour |
|   187| Bradley Dredge       |           0.05|          225|               84| WAL     | European Tour           |
|   188| Kramer Hickok        |           0.05|          208|              106| USA     | Web.com Tour            |
|   189| Andrew Landry        |           0.05|          242|               88| USA     | PGA Tour                |
|   190| Jimmy Stanger        |           0.06|           89|               67| USA     | Web.com Tour            |
|   191| Shawn Stefani        |           0.07|          261|               91| USA     | PGA Tour                |
|   192| Chris Paisley        |           0.08|          248|               74| ENG     | European Tour           |
|   193| Adrian Otaegui       |           0.08|          285|               98| ESP     | European Tour           |
|   194| William McGirt       |           0.08|          216|               40| USA     | PGA Tour                |
|   195| Anirban Lahiri       |           0.08|          276|               92| IND     | PGA Tour                |
|   196| Lucas Herbert        |           0.09|          155|               87| AUS     | European Tour           |
|   197| Ben Kohles           |           0.09|          222|               81| USA     | Web.com Tour            |
|   198| John Oda             |           0.09|           68|               52| USA     | Web.com Tour            |
|   199| Adam Long            |           0.10|          259|               99| USA     | Web.com Tour            |
|   200| Will Wilcox          |           0.10|          150|               65| USA     | Web.com Tour            |
