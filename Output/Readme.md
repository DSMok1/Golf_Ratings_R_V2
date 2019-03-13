Current Golf Ratings
================
DSMok1
March 13, 2019

Summary
-------

This is a super-simple golf rating system. It's just a straight regression over the past 3 years of golf results, with the most recent results weighted far more heavily. An exponential weighting system of 0.97 to the "weeks ago" power was used--in other words, results from 1 year ago are weighted at 0.97^52, or 20% as much as this week's results. The previous years get less and less weight, but are there to provide some stability to the regression for portions of the dataset with more tenuous connections.

The Player Rating is denominated in strokes per round more or less than the average golfer playing on the PGA and European tours. Players with a minimum of 40 rounds were included and tournament rounds with a minimum of 15 ranked players were included.

Data
----

The full output is located at <https://github.com/DSMok1/Golf_Ratings_R_V2/blob/master/Output/Recent_Ratings.csv>

|  Rank| Player\_Name         |  Player\_Value|  Num\_Rounds|  Num\_Rounds\_Yr| Country | Tour\_Yr                |
|-----:|:---------------------|--------------:|------------:|----------------:|:--------|:------------------------|
|     1| Dustin Johnson       |          -2.54|          250|               86| USA     | PGA Tour                |
|     2| Justin Thomas        |          -2.26|          265|               90| USA     | PGA Tour                |
|     3| Rory McIlroy         |          -2.16|          229|               86| NIR     | PGA Tour                |
|     4| Justin Rose          |          -2.00|          252|               88| ENG     | PGA Tour                |
|     5| Jon Rahm             |          -1.97|          241|               86| ESP     | PGA Tour                |
|     6| Tiger Woods          |          -1.93|           94|               74| USA     | PGA Tour                |
|     7| Rickie Fowler        |          -1.91|          257|               86| USA     | PGA Tour                |
|     8| Jason Day            |          -1.91|          213|               76| AUS     | PGA Tour                |
|     9| Paul Casey           |          -1.85|          256|               86| ENG     | PGA Tour                |
|    10| Patrick Cantlay      |          -1.83|          158|               82| USA     | PGA Tour                |
|    11| Tony Finau           |          -1.79|          304|              102| USA     | PGA Tour                |
|    12| Bryson DeChambeau    |          -1.66|          270|               98| USA     | PGA Tour                |
|    13| Xander Schauffele    |          -1.63|          300|               99| USA     | PGA Tour                |
|    14| Tommy Fleetwood      |          -1.62|          305|              108| ENG     | European Tour           |
|    15| Webb Simpson         |          -1.58|          263|               88| USA     | PGA Tour                |
|    16| Sergio Garcia        |          -1.54|          238|               77| ESP     | European Tour           |
|    17| Francesco Molinari   |          -1.51|          258|               80| ITA     | PGA Tour                |
|    18| Brooks Koepka        |          -1.51|          240|               90| USA     | PGA Tour                |
|    19| Gary Woodland        |          -1.50|          282|               95| USA     | PGA Tour                |
|    20| Marc Leishman        |          -1.47|          285|               92| AUS     | PGA Tour                |
|    21| Charles Howell III   |          -1.32|          269|              102| USA     | PGA Tour                |
|    22| Rafael Cabrera Bello |          -1.31|          312|               96| ESP     | PGA Tour                |
|    23| Hideki Matsuyama     |          -1.30|          264|               96| JPN     | PGA Tour                |
|    24| Matt Kuchar          |          -1.28|          304|               98| USA     | PGA Tour                |
|    25| Phil Mickelson       |          -1.27|          247|               80| USA     | PGA Tour                |
|    26| Louis Oosthuizen     |          -1.26|          226|               80| RSA     | PGA Tour                |
|    27| Tyrrell Hatton       |          -1.24|          262|               88| ENG     | PGA Tour                |
|    28| Patrick Reed         |          -1.23|          336|              104| USA     | PGA Tour                |
|    29| Ian Poulter          |          -1.22|          274|              102| ENG     | PGA Tour                |
|    30| Lucas Glover         |          -1.19|          240|               71| USA     | PGA Tour                |
|    31| Henrik Stenson       |          -1.17|          226|               74| SWE     | PGA Tour                |
|    32| Joost Luiten         |          -1.12|          228|               47| NED     | European Tour           |
|    33| Cameron Smith        |          -1.05|          270|               96| AUS     | PGA Tour                |
|    34| Adam Scott           |          -1.04|          235|               86| AUS     | PGA Tour                |
|    35| Matthew Fitzpatrick  |          -1.04|          277|               96| ENG     | European Tour           |
|    36| Jordan Spieth        |          -1.00|          248|               78| USA     | PGA Tour                |
|    37| Billy Horschel       |          -0.98|          254|               98| USA     | PGA Tour                |
|    38| Bubba Watson         |          -0.98|          229|               74| USA     | PGA Tour                |
|    39| Zach Johnson         |          -0.96|          254|               83| USA     | PGA Tour                |
|    40| Byeong Hun An        |          -0.96|          288|              106| KOR     | PGA Tour                |
|    41| Keegan Bradley       |          -0.92|          297|              105| USA     | PGA Tour                |
|    42| Luke List            |          -0.89|          275|               85| USA     | PGA Tour                |
|    43| Jason Kokrak         |          -0.89|          282|               93| USA     | PGA Tour                |
|    44| Adam Hadwin          |          -0.87|          282|               87| CAN     | PGA Tour                |
|    45| Daniel Berger        |          -0.82|          239|               62| USA     | PGA Tour                |
|    46| Emiliano Grillo      |          -0.82|          301|              106| ARG     | PGA Tour                |
|    47| Alex Noren           |          -0.81|          244|               76| SWE     | PGA Tour                |
|    48| Jim Furyk            |          -0.79|          171|               62| USA     | PGA Tour                |
|    49| Haotong Li           |          -0.79|          271|               92| CHN     | European Tour           |
|    50| Branden Grace        |          -0.74|          283|               96| RSA     | PGA Tour                |
|    51| Aaron Wise           |          -0.74|          223|               77| USA     | PGA Tour                |
|    52| Lee Westwood         |          -0.73|          236|               70| ENG     | European Tour           |
|    53| Chez Reavie          |          -0.73|          269|               84| USA     | PGA Tour                |
|    54| Kevin Na             |          -0.73|          256|               86| USA     | PGA Tour                |
|    55| Kevin Kisner         |          -0.70|          270|               79| USA     | PGA Tour                |
|    56| Russell Knox         |          -0.68|          290|              108| SCO     | PGA Tour                |
|    57| Ryan Moore           |          -0.68|          240|               82| USA     | PGA Tour                |
|    58| Matt Wallace         |          -0.67|          257|              104| ENG     | European Tour           |
|    59| Michael Thompson     |          -0.66|          200|               84| USA     | PGA Tour                |
|    60| Bud Cauley           |          -0.65|          207|               53| USA     | PGA Tour                |
|    61| Thorbjorn Olesen     |          -0.64|          249|               80| DEN     | European Tour           |
|    62| Thomas Pieters       |          -0.63|          247|               86| BEL     | European Tour           |
|    63| Shane Lowry          |          -0.60|          253|               93| IRL     | European Tour           |
|    64| Siwoo Kim            |          -0.59|          280|              104| KOR     | PGA Tour                |
|    65| Andrew Putnam        |          -0.59|          270|               94| USA     | PGA Tour                |
|    66| Abraham Ancer        |          -0.58|          283|              102| MEX     | PGA Tour                |
|    67| J.B. Holmes          |          -0.58|          242|               81| USA     | PGA Tour                |
|    68| Sungjae Im           |          -0.58|          323|              128| KOR     | Web.com Tour            |
|    69| Scott Piercy         |          -0.57|          239|               88| USA     | PGA Tour                |
|    70| Kevin Chappell       |          -0.56|          244|               58| USA     | PGA Tour                |
|    71| Graham Delaet        |          -0.50|          119|                0| CAN     | NA                      |
|    72| Victor Dubuisson     |          -0.48|           96|               16| FRA     | European Tour           |
|    73| Beau Hossler         |          -0.47|          217|               98| USA     | PGA Tour                |
|    74| Brandt Snedeker      |          -0.46|          247|              100| USA     | PGA Tour                |
|    75| Talor Gooch          |          -0.46|          227|               71| USA     | PGA Tour                |
|    76| Russell Henley       |          -0.46|          252|               78| USA     | PGA Tour                |
|    77| C.T. Pan             |          -0.45|          296|               99| TPE     | PGA Tour                |
|    78| Kiradech Aphibarnrat |          -0.45|          296|               98| THA     | European Tour           |
|    79| Dylan Frittelli      |          -0.44|          329|              101| RSA     | PGA Tour                |
|    80| Charley Hoffman      |          -0.43|          281|               84| USA     | PGA Tour                |
|    81| Kevin Tway           |          -0.43|          297|              102| USA     | PGA Tour                |
|    82| Brian Gay            |          -0.43|          251|              108| USA     | PGA Tour                |
|    83| Aaron Baddeley       |          -0.43|          241|               87| AUS     | PGA Tour                |
|    84| Cameron Champ        |          -0.43|          132|              106| USA     | Web.com Tour            |
|    85| Pat Perez            |          -0.42|          203|               69| USA     | PGA Tour                |
|    86| Keith Mitchell       |          -0.42|          270|               98| USA     | PGA Tour                |
|    87| Harold Varner III    |          -0.41|          303|               94| USA     | PGA Tour                |
|    88| Jhonattan Vegas      |          -0.40|          286|               83| VEN     | PGA Tour                |
|    89| Ryan Palmer          |          -0.40|          202|               77| USA     | PGA Tour                |
|    90| Mike Lorenzo-Vera    |          -0.40|          234|               77| FRA     | European Tour           |
|    91| Steve Stricker       |          -0.38|          133|               40| USA     | PGA Tour                |
|    92| Fabrizio Zanotti     |          -0.38|          231|               58| PAR     | European Tour           |
|    93| Chesson Hadley       |          -0.38|          270|               95| USA     | PGA Tour                |
|    94| Shugo Imahira        |          -0.37|          282|               91| JPN     | Japan Golf Tour         |
|    95| Stewart Cink         |          -0.37|          235|               79| USA     | PGA Tour                |
|    96| Denny McCarthy       |          -0.36|          257|               87| USA     | PGA Tour                |
|    97| Alexander Bjork      |          -0.35|          286|               79| SWE     | European Tour           |
|    98| Sam Ryder            |          -0.35|          258|               90| USA     | PGA Tour                |
|    99| Tyler McCumber       |          -0.35|          175|               74| USA     | PGA Tour Canada         |
|   100| Julian Suri          |          -0.34|          208|               76| USA     | European Tour           |
|   101| Roberto Castro       |          -0.33|          232|               81| USA     | Web.com Tour            |
|   102| Nick Watney          |          -0.33|          196|               99| USA     | PGA Tour                |
|   103| Joaquin Niemann      |          -0.33|          100|               80| CHI     | PGA Tour                |
|   104| Austin Cook          |          -0.32|          284|               90| USA     | PGA Tour                |
|   105| JT Poston            |          -0.31|          275|               90| USA     | PGA Tour                |
|   106| Tom Lewis            |          -0.28|          214|               98| ENG     | European Tour           |
|   107| Jamie Lovemark       |          -0.27|          261|               76| USA     | PGA Tour                |
|   108| Danny Lee            |          -0.27|          276|               90| NZL     | PGA Tour                |
|   109| Cameron Percy        |          -0.26|          229|               84| AUS     | Web.com Tour            |
|   110| Kyle Stanley         |          -0.26|          268|               84| USA     | PGA Tour                |
|   111| Mark Anderson        |          -0.23|          216|               82| USA     | Web.com Tour            |
|   112| Ryan Armour          |          -0.23|          282|              104| USA     | PGA Tour                |
|   113| Trey Mullinax        |          -0.22|          262|               82| USA     | PGA Tour                |
|   114| Lucas Bjerregaard    |          -0.22|          271|               94| DEN     | European Tour           |
|   115| Charl Schwartzel     |          -0.22|          243|               81| RSA     | PGA Tour                |
|   116| Johnson Wagner       |          -0.22|          236|               79| USA     | PGA Tour                |
|   117| Adam Schenk          |          -0.21|          294|              106| USA     | PGA Tour                |
|   118| Chris Kirk           |          -0.20|          279|               97| USA     | PGA Tour                |
|   119| Martin Laird         |          -0.20|          227|               74| SCO     | PGA Tour                |
|   120| Vaughn Taylor        |          -0.19|          258|               76| USA     | PGA Tour                |
|   121| Kevin Streelman      |          -0.19|          267|               85| USA     | PGA Tour                |
|   122| Patrick Rodgers      |          -0.18|          258|               91| USA     | PGA Tour                |
|   123| Ryan Fox             |          -0.18|          293|               99| NZL     | European Tour           |
|   124| J.J Spaun            |          -0.17|          278|               85| USA     | PGA Tour                |
|   125| Peter Uihlein        |          -0.16|          222|               83| USA     | PGA Tour                |
|   126| Jordan L Smith       |          -0.15|          297|               90| ENG     | European Tour           |
|   127| Peter Malnati        |          -0.14|          261|               95| USA     | PGA Tour                |
|   128| Nick Taylor          |          -0.14|          269|               93| CAN     | PGA Tour                |
|   129| Thomas Detry         |          -0.14|          262|               84| BEL     | European Tour           |
|   130| Will Wilcox          |          -0.14|          148|               69| USA     | Web.com Tour            |
|   131| John Oda             |          -0.13|           62|               46| USA     | Web.com Tour            |
|   132| Justin Harding       |          -0.13|          235|               95| RSA     | Asian Tour              |
|   133| Eddie Pepperell      |          -0.13|          209|               68| ENG     | European Tour           |
|   134| Joel Dahmen          |          -0.13|          250|               88| USA     | PGA Tour                |
|   135| Sunghoon Kang        |          -0.12|          284|               87| KOR     | PGA Tour                |
|   136| Scott Stallings      |          -0.11|          250|               80| USA     | PGA Tour                |
|   137| Rory Sabbatini       |          -0.10|          219|               85| RSA     | PGA Tour                |
|   138| Troy Merritt         |          -0.10|          257|               76| USA     | PGA Tour                |
|   139| Martin Kaymer        |          -0.09|          264|               87| GER     | European Tour           |
|   140| Graeme McDowell      |          -0.09|          257|               84| NIR     | PGA Tour                |
|   141| Patton Kizzire       |          -0.09|          249|               84| USA     | PGA Tour                |
|   142| Carlos Ortiz         |          -0.07|          265|              106| MEX     | Web.com Tour            |
|   143| Andy Sullivan        |          -0.07|          270|               86| ENG     | European Tour           |
|   144| Nate Lashley         |          -0.05|          254|               66| USA     | PGA Tour                |
|   145| D.J. Trahan          |          -0.05|          106|               34| USA     | PGA Tour                |
|   146| Jazz Janewattananond |          -0.05|          245|              100| THA     | Asian Tour              |
|   147| Brian Stuard         |          -0.05|          283|              103| USA     | PGA Tour                |
|   148| Bronson Burgoon      |          -0.05|          173|               69| USA     | PGA Tour                |
|   149| Alexander Levy       |          -0.04|          240|               78| FRA     | European Tour           |
|   150| Danny Willett        |          -0.04|          206|               79| ENG     | European Tour           |
|   151| Jason Scrivener      |          -0.03|          257|               97| AUS     | European Tour           |
|   152| Steve Marino         |          -0.03|          139|               50| USA     | PGA Tour                |
|   153| Sam Saunders         |          -0.02|          234|               76| USA     | PGA Tour                |
|   154| Ross Fisher          |          -0.02|          255|               84| ENG     | European Tour           |
|   155| Mikko Korhonen       |          -0.02|          227|               77| FIN     | European Tour           |
|   156| Jorge Campillo       |          -0.01|          275|               87| ESP     | European Tour           |
|   157| Matt Jones           |          -0.01|          239|               83| AUS     | PGA Tour                |
|   158| Hudson Swafford      |           0.00|          260|               68| USA     | PGA Tour                |
|   159| Richard Sterne       |           0.00|          249|               83| RSA     | European Tour           |
|   160| Doug Ghim            |           0.01|           48|               48| USA     | PGA Tour                |
|   161| James Hahn           |           0.01|          266|               80| USA     | PGA Tour                |
|   162| Wyndham Clark        |           0.01|          133|              103| USA     | Web.com Tour            |
|   163| Seungyul Noh         |           0.03|          134|                0| KOR     | NA                      |
|   164| Brice Garnett        |           0.03|          251|               94| USA     | PGA Tour                |
|   165| Ernie Els            |           0.03|          230|               88| RSA     | PGA Tour                |
|   166| Chris Paisley        |           0.03|          248|               66| ENG     | European Tour           |
|   167| Juan Sebastian Munoz |           0.04|          254|              111| COL     | Web.com Tour            |
|   168| Sam Burns            |           0.04|          131|               97| USA     | PGA Tour                |
|   169| Steve LeBrun         |           0.05|           95|               16| USA     | Web.com Tour            |
|   170| Billy Kennerly       |           0.06|          144|               72| USA     | Web.com Tour            |
|   171| Joseph Bramlett      |           0.06|           99|               89| USA     | Web.com Tour            |
|   172| Anders Albertson     |           0.06|          259|              106| USA     | Web.com Tour            |
|   173| Jonathan Byrd        |           0.06|          247|               74| USA     | PGA Tour                |
|   174| Gaganjeet Bhullar    |           0.06|          218|               86| IND     | Asian Tour              |
|   175| Bradley Dredge       |           0.08|          225|               80| WAL     | European Tour           |
|   176| Scott Brown          |           0.09|          275|               95| USA     | PGA Tour                |
|   177| Adam Long            |           0.09|          260|              100| USA     | Web.com Tour            |
|   178| Maximilian Kieffer   |           0.09|          238|               78| GER     | European Tour           |
|   179| Scott Langley        |           0.09|          244|               98| USA     | Web.com Tour            |
|   180| Maverick McNealy     |           0.09|          125|               93| USA     | Web.com Tour            |
|   181| Erik van Rooyen      |           0.11|          241|               83| RSA     | European Tour           |
|   182| Andrea Pavan         |           0.11|          238|               90| ITA     | European Tour           |
|   183| Robert Rock          |           0.12|          230|               77| ENG     | European Tour           |
|   184| Matthias Schwab      |           0.12|          173|              100| AUT     | European Tour           |
|   185| Jimmy Stanger        |           0.13|           81|               63| USA     | Web.com Tour            |
|   186| William McGirt       |           0.14|          224|               50| USA     | PGA Tour                |
|   187| Adrian Otaegui       |           0.14|          281|               88| ESP     | European Tour           |
|   188| Roger Sloan          |           0.14|          248|              105| CAN     | Web.com Tour            |
|   189| Cameron Davis        |           0.14|          167|               94| AUS     | Web.com Tour            |
|   190| Scott Jamieson       |           0.14|          253|               78| SCO     | European Tour           |
|   191| Harris English       |           0.15|          256|               86| USA     | PGA Tour                |
|   192| Anirban Lahiri       |           0.15|          273|               87| IND     | PGA Tour                |
|   193| Fabian Gomez         |           0.15|          240|               98| ARG     | PGA Tour                |
|   194| Jimmy Walker         |           0.15|          233|               83| USA     | PGA Tour                |
|   195| Shawn Stefani        |           0.16|          255|               91| USA     | PGA Tour                |
|   196| Brendan Steele       |           0.16|          237|               65| USA     | PGA Tour                |
|   197| Corey Conners        |           0.16|          297|               92| CAN     | PGA Tour                |
|   198| Jeff Winther         |           0.16|          219|               69| DEN     | European Tour           |
|   199| Adria Arnaus         |           0.17|          161|              106| ESP     | European Challenge Tour |
|   200| Lucas Herbert        |           0.17|          155|               79| AUS     | European Tour           |
