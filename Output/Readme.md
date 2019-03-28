Current Golf Ratings
================
DSMok1
March 28, 2019

Summary
-------

This is a super-simple golf rating system. It's just a straight regression over the past 3 years of golf results, with the most recent results weighted far more heavily. An exponential weighting system of 0.97 to the "weeks ago" power was used--in other words, results from 1 year ago are weighted at 0.97^52, or 20% as much as this week's results. The previous years get less and less weight, but are there to provide some stability to the regression for portions of the dataset with more tenuous connections.

The Player Rating is denominated in strokes per round more or less than the average golfer playing on the PGA and European tours. Players with a minimum of 40 rounds were included and tournament rounds with a minimum of 15 ranked players were included.

Data
----

The full output is located at <https://github.com/DSMok1/Golf_Ratings_R_V2/blob/master/Output/Recent_Ratings.csv>

|  Rank| Player\_Name         |  Player\_Value|  Num\_Rounds|  Num\_Rounds\_Yr| Country | Tour\_Yr                |
|-----:|:---------------------|--------------:|------------:|----------------:|:--------|:------------------------|
|     1| Dustin Johnson       |          -2.59|          258|               90| USA     | PGA Tour                |
|     2| Rory McIlroy         |          -2.31|          229|               88| NIR     | PGA Tour                |
|     3| Justin Thomas        |          -2.21|          269|               94| USA     | PGA Tour                |
|     4| Justin Rose          |          -2.09|          252|               88| ENG     | PGA Tour                |
|     5| Jon Rahm             |          -2.05|          249|               90| ESP     | PGA Tour                |
|     6| Jason Day            |          -1.92|          215|               76| AUS     | PGA Tour                |
|     7| Tiger Woods          |          -1.91|           98|               70| USA     | PGA Tour                |
|     8| Rickie Fowler        |          -1.85|          261|               90| USA     | PGA Tour                |
|     9| Tony Finau           |          -1.83|          300|              104| USA     | PGA Tour                |
|    10| Paul Casey           |          -1.74|          258|               84| ENG     | PGA Tour                |
|    11| Tommy Fleetwood      |          -1.73|          305|              112| ENG     | PGA Tour                |
|    12| Patrick Cantlay      |          -1.72|          160|               84| USA     | PGA Tour                |
|    13| Bryson DeChambeau    |          -1.72|          270|              102| USA     | PGA Tour                |
|    14| Xander Schauffele    |          -1.59|          300|              101| USA     | PGA Tour                |
|    15| Webb Simpson         |          -1.54|          265|               88| USA     | PGA Tour                |
|    16| Sergio Garcia        |          -1.48|          246|               77| ESP     | European Tour           |
|    17| Gary Woodland        |          -1.46|          286|               97| USA     | PGA Tour                |
|    18| Brooks Koepka        |          -1.45|          244|               96| USA     | PGA Tour                |
|    19| Francesco Molinari   |          -1.45|          258|               84| ITA     | PGA Tour                |
|    20| Marc Leishman        |          -1.43|          283|               94| AUS     | PGA Tour                |
|    21| Hideki Matsuyama     |          -1.42|          264|              100| JPN     | PGA Tour                |
|    22| Charles Howell III   |          -1.34|          269|              102| USA     | PGA Tour                |
|    23| Louis Oosthuizen     |          -1.34|          234|               80| RSA     | PGA Tour                |
|    24| Matt Kuchar          |          -1.33|          306|               98| USA     | PGA Tour                |
|    25| Adam Scott           |          -1.20|          235|               82| AUS     | PGA Tour                |
|    26| Jim Furyk            |          -1.19|          179|               62| USA     | PGA Tour                |
|    27| Ian Poulter          |          -1.19|          270|              104| ENG     | PGA Tour                |
|    28| Phil Mickelson       |          -1.15|          249|               84| USA     | PGA Tour                |
|    29| Lucas Glover         |          -1.14|          242|               69| USA     | PGA Tour                |
|    30| Rafael Cabrera Bello |          -1.14|          318|              102| ESP     | PGA Tour                |
|    31| Joost Luiten         |          -1.13|          226|               43| NED     | European Tour           |
|    32| Henrik Stenson       |          -1.12|          228|               74| SWE     | PGA Tour                |
|    33| Bubba Watson         |          -1.08|          237|               78| USA     | PGA Tour                |
|    34| Patrick Reed         |          -1.07|          342|              104| USA     | PGA Tour                |
|    35| Billy Horschel       |          -1.06|          254|              100| USA     | PGA Tour                |
|    36| Matthew Fitzpatrick  |          -1.05|          277|              100| ENG     | European Tour           |
|    37| Cameron Smith        |          -1.03|          270|               94| AUS     | PGA Tour                |
|    38| Byeong Hun An        |          -1.03|          288|              108| KOR     | PGA Tour                |
|    39| Jason Kokrak         |          -1.03|          286|               95| USA     | PGA Tour                |
|    40| Tyrrell Hatton       |          -1.00|          266|               90| ENG     | PGA Tour                |
|    41| Keegan Bradley       |          -0.99|          299|              105| USA     | PGA Tour                |
|    42| Jordan Spieth        |          -0.96|          250|               78| USA     | PGA Tour                |
|    43| Emiliano Grillo      |          -0.90|          301|              102| ARG     | PGA Tour                |
|    44| Luke List            |          -0.89|          275|               85| USA     | PGA Tour                |
|    45| Zach Johnson         |          -0.86|          256|               81| USA     | PGA Tour                |
|    46| Kevin Kisner         |          -0.85|          276|               85| USA     | PGA Tour                |
|    47| Ryan Moore           |          -0.81|          242|               84| USA     | PGA Tour                |
|    48| Daniel Berger        |          -0.79|          243|               68| USA     | PGA Tour                |
|    49| Haotong Li           |          -0.77|          267|               92| CHN     | European Tour           |
|    50| Russell Knox         |          -0.77|          298|              104| SCO     | PGA Tour                |
|    51| Abraham Ancer        |          -0.75|          281|              104| MEX     | PGA Tour                |
|    52| Alex Noren           |          -0.74|          246|               74| SWE     | PGA Tour                |
|    53| Lee Westwood         |          -0.74|          236|               70| ENG     | European Tour           |
|    54| Matt Wallace         |          -0.73|          261|              108| ENG     | European Tour           |
|    55| Adam Hadwin          |          -0.71|          282|               89| CAN     | PGA Tour                |
|    56| Aaron Wise           |          -0.71|          225|               75| USA     | PGA Tour                |
|    57| Brandt Snedeker      |          -0.70|          251|              102| USA     | PGA Tour                |
|    58| Thorbjorn Olesen     |          -0.68|          253|               86| DEN     | European Tour           |
|    59| Sungjae Im           |          -0.68|          329|              132| KOR     | Web.com Tour            |
|    60| Chez Reavie          |          -0.67|          269|               84| USA     | PGA Tour                |
|    61| Bud Cauley           |          -0.66|          213|               53| USA     | PGA Tour                |
|    62| Kevin Na             |          -0.65|          259|               87| USA     | PGA Tour                |
|    63| Jhonattan Vegas      |          -0.65|          282|               91| VEN     | PGA Tour                |
|    64| Michael Thompson     |          -0.62|          202|               90| USA     | PGA Tour                |
|    65| Siwoo Kim            |          -0.61|          280|              104| KOR     | PGA Tour                |
|    66| Branden Grace        |          -0.60|          289|               96| RSA     | PGA Tour                |
|    67| Scott Piercy         |          -0.59|          243|               94| USA     | PGA Tour                |
|    68| Thomas Pieters       |          -0.57|          247|               88| BEL     | European Tour           |
|    69| Kevin Chappell       |          -0.57|          240|               54| USA     | PGA Tour                |
|    70| J.B. Holmes          |          -0.55|          244|               77| USA     | PGA Tour                |
|    71| Denny McCarthy       |          -0.55|          261|               91| USA     | PGA Tour                |
|    72| Shane Lowry          |          -0.54|          255|               91| IRL     | European Tour           |
|    73| Graham Delaet        |          -0.51|          115|                0| CAN     | NA                      |
|    74| Victor Dubuisson     |          -0.49|           96|               16| FRA     | European Tour           |
|    75| Fabrizio Zanotti     |          -0.49|          233|               62| PAR     | European Tour           |
|    76| Dylan Frittelli      |          -0.47|          329|              101| RSA     | PGA Tour                |
|    77| Keith Mitchell       |          -0.47|          274|              106| USA     | PGA Tour                |
|    78| Andrew Putnam        |          -0.46|          268|               94| USA     | PGA Tour                |
|    79| Brian Gay            |          -0.45|          259|              108| USA     | PGA Tour                |
|    80| Russell Henley       |          -0.45|          256|               80| USA     | PGA Tour                |
|    81| Cameron Champ        |          -0.45|          132|              106| USA     | Web.com Tour            |
|    82| Pat Perez            |          -0.43|          203|               73| USA     | PGA Tour                |
|    83| Eddie Pepperell      |          -0.42|          213|               76| ENG     | European Tour           |
|    84| JT Poston            |          -0.41|          281|               98| USA     | PGA Tour                |
|    85| Austin Cook          |          -0.40|          290|               86| USA     | PGA Tour                |
|    86| Talor Gooch          |          -0.40|          229|               67| USA     | PGA Tour                |
|    87| Joel Dahmen          |          -0.40|          254|               94| USA     | PGA Tour                |
|    88| C.T. Pan             |          -0.40|          300|               99| TPE     | PGA Tour                |
|    89| Beau Hossler         |          -0.39|          221|               98| USA     | PGA Tour                |
|    90| Julian Suri          |          -0.39|          212|               74| USA     | European Tour           |
|    91| Nick Taylor          |          -0.39|          273|               93| CAN     | PGA Tour                |
|    92| Joaquin Niemann      |          -0.39|          104|               84| CHI     | PGA Tour                |
|    93| Ryan Palmer          |          -0.38|          200|               75| USA     | PGA Tour                |
|    94| Steve Stricker       |          -0.38|          135|               40| USA     | PGA Tour                |
|    95| Vaughn Taylor        |          -0.37|          264|               82| USA     | PGA Tour                |
|    96| Charley Hoffman      |          -0.37|          287|               82| USA     | PGA Tour                |
|    97| Shugo Imahira        |          -0.37|          282|               91| JPN     | Japan Golf Tour         |
|    98| Aaron Baddeley       |          -0.36|          237|               89| AUS     | PGA Tour                |
|    99| Kevin Tway           |          -0.36|          297|               98| USA     | PGA Tour                |
|   100| Nick Watney          |          -0.36|          202|               97| USA     | PGA Tour                |
|   101| Ryan Armour          |          -0.34|          284|              100| USA     | PGA Tour                |
|   102| Mike Lorenzo-Vera    |          -0.34|          238|               81| FRA     | European Tour           |
|   103| Sam Ryder            |          -0.34|          262|               92| USA     | PGA Tour                |
|   104| Rory Sabbatini       |          -0.32|          221|               85| RSA     | PGA Tour                |
|   105| Lucas Bjerregaard    |          -0.32|          275|               98| DEN     | European Tour           |
|   106| Steve Marino         |          -0.31|          139|               50| USA     | PGA Tour                |
|   107| Kiradech Aphibarnrat |          -0.30|          294|               98| THA     | PGA Tour                |
|   108| Chesson Hadley       |          -0.30|          274|               95| USA     | PGA Tour                |
|   109| Stewart Cink         |          -0.30|          237|               75| USA     | PGA Tour                |
|   110| Justin Harding       |          -0.29|          239|               99| RSA     | Asian Tour              |
|   111| Alexander Bjork      |          -0.29|          288|               83| SWE     | European Tour           |
|   112| Jamie Lovemark       |          -0.29|          257|               68| USA     | PGA Tour                |
|   113| Tom Lewis            |          -0.29|          214|              100| ENG     | European Tour           |
|   114| Cameron Percy        |          -0.28|          229|               80| AUS     | Web.com Tour            |
|   115| Sunghoon Kang        |          -0.28|          290|               87| KOR     | PGA Tour                |
|   116| Tyler McCumber       |          -0.27|          177|               70| USA     | PGA Tour Canada         |
|   117| Scott Stallings      |          -0.27|          254|               80| USA     | PGA Tour                |
|   118| Harold Varner III    |          -0.26|          307|               94| USA     | PGA Tour                |
|   119| Kyle Stanley         |          -0.26|          268|               84| USA     | PGA Tour                |
|   120| Mark Anderson        |          -0.25|          216|               80| USA     | Web.com Tour            |
|   121| Jordan L Smith       |          -0.25|          297|               94| ENG     | European Tour           |
|   122| Johnson Wagner       |          -0.24|          234|               83| USA     | PGA Tour                |
|   123| Adam Schenk          |          -0.23|          294|              106| USA     | PGA Tour                |
|   124| Trey Mullinax        |          -0.22|          266|               80| USA     | PGA Tour                |
|   125| Roberto Castro       |          -0.22|          232|               77| USA     | Web.com Tour            |
|   126| Jazz Janewattananond |          -0.21|          245|               98| THA     | Asian Tour              |
|   127| Chris Kirk           |          -0.20|          281|               97| USA     | PGA Tour                |
|   128| J.J Spaun            |          -0.19|          274|               89| USA     | PGA Tour                |
|   129| Ryan Fox             |          -0.17|          297|               99| NZL     | European Tour           |
|   130| Andy Sullivan        |          -0.17|          270|               90| ENG     | European Tour           |
|   131| Martin Laird         |          -0.17|          225|               72| SCO     | PGA Tour                |
|   132| Matt Jones           |          -0.16|          241|               83| AUS     | PGA Tour                |
|   133| Kevin Streelman      |          -0.14|          269|               85| USA     | PGA Tour                |
|   134| Peter Malnati        |          -0.14|          261|               93| USA     | PGA Tour                |
|   135| Brian Stuard         |          -0.13|          287|               99| USA     | PGA Tour                |
|   136| Danny Lee            |          -0.12|          280|               90| NZL     | PGA Tour                |
|   137| Graeme McDowell      |          -0.12|          259|               80| NIR     | PGA Tour                |
|   138| Ross Fisher          |          -0.12|          259|               86| ENG     | European Tour           |
|   139| Troy Merritt         |          -0.11|          255|               76| USA     | PGA Tour                |
|   140| Doug Ghim            |          -0.11|           52|               48| USA     | PGA Tour                |
|   141| Charl Schwartzel     |          -0.11|          247|               77| RSA     | PGA Tour                |
|   142| Ernie Els            |          -0.10|          230|               82| RSA     | PGA Tour                |
|   143| Patrick Rodgers      |          -0.09|          255|               90| USA     | PGA Tour                |
|   144| Thomas Detry         |          -0.08|          266|               88| BEL     | European Tour           |
|   145| Nate Lashley         |          -0.07|          254|               68| USA     | PGA Tour                |
|   146| D.J. Trahan          |          -0.07|          102|               34| USA     | PGA Tour                |
|   147| Peter Uihlein        |          -0.07|          224|               81| USA     | PGA Tour                |
|   148| Wyndham Clark        |          -0.07|          137|              101| USA     | Web.com Tour            |
|   149| Jorge Campillo       |          -0.07|          275|               91| ESP     | European Tour           |
|   150| Sam Burns            |          -0.06|          135|               93| USA     | Web.com Tour            |
|   151| Gaganjeet Bhullar    |          -0.06|          226|               92| IND     | Asian Tour              |
|   152| Maximilian Kieffer   |          -0.06|          238|               82| GER     | European Tour           |
|   153| Martin Kaymer        |          -0.05|          268|               95| GER     | European Tour           |
|   154| Alexander Levy       |          -0.05|          240|               78| FRA     | European Tour           |
|   155| Joseph Bramlett      |          -0.04|          103|               85| USA     | Web.com Tour            |
|   156| Fabian Gomez         |          -0.03|          242|               94| ARG     | PGA Tour                |
|   157| Carlos Ortiz         |          -0.03|          265|              106| MEX     | Web.com Tour            |
|   158| Danny Willett        |          -0.02|          212|               83| ENG     | European Tour           |
|   159| Patton Kizzire       |          -0.01|          256|               85| USA     | PGA Tour                |
|   160| James Hahn           |          -0.01|          264|               76| USA     | PGA Tour                |
|   161| Richard Sterne       |           0.00|          249|               83| RSA     | European Tour           |
|   162| Seungyul Noh         |           0.00|          132|                0| KOR     | NA                      |
|   163| Will Wilcox          |           0.00|          150|               65| USA     | Web.com Tour            |
|   164| Sam Saunders         |           0.01|          234|               76| USA     | PGA Tour                |
|   165| John Oda             |           0.01|           64|               46| USA     | Web.com Tour            |
|   166| Anders Albertson     |           0.03|          257|              104| USA     | Web.com Tour            |
|   167| Jimmy Stanger        |           0.04|           85|               61| USA     | Web.com Tour            |
|   168| Jonathan Byrd        |           0.04|          239|               74| USA     | PGA Tour                |
|   169| Andrew Landry        |           0.05|          240|               84| USA     | PGA Tour                |
|   170| Corey Conners        |           0.05|          297|               94| CAN     | PGA Tour                |
|   171| Jason Scrivener      |           0.05|          257|               93| AUS     | European Tour           |
|   172| Shawn Stefani        |           0.05|          257|               91| USA     | PGA Tour                |
|   173| Bronson Burgoon      |           0.05|          171|               73| USA     | PGA Tour                |
|   174| Anirban Lahiri       |           0.05|          276|               86| IND     | PGA Tour                |
|   175| Brian Harman         |           0.05|          291|               91| USA     | PGA Tour                |
|   176| Luke Donald          |           0.05|          162|                9| ENG     | European Tour           |
|   177| Mikko Korhonen       |           0.05|          225|               81| FIN     | European Tour           |
|   178| Hudson Swafford      |           0.06|          258|               66| USA     | PGA Tour                |
|   179| Richy Werenski       |           0.07|          265|               96| USA     | PGA Tour                |
|   180| Brice Garnett        |           0.07|          253|               96| USA     | PGA Tour                |
|   181| Bradley Dredge       |           0.07|          225|               84| WAL     | European Tour           |
|   182| Adria Arnaus         |           0.07|          167|              114| ESP     | European Challenge Tour |
|   183| David Lipsky         |           0.08|          276|               88| USA     | European Tour           |
|   184| Billy Kennerly       |           0.08|          148|               68| USA     | Web.com Tour            |
|   185| Bill Haas            |           0.08|          250|               80| USA     | PGA Tour                |
|   186| Matthias Schwab      |           0.09|          177|              100| AUT     | European Tour           |
|   187| Jimmy Walker         |           0.10|          237|               83| USA     | PGA Tour                |
|   188| Chris Paisley        |           0.10|          248|               70| ENG     | European Tour           |
|   189| Erik van Rooyen      |           0.10|          243|               87| RSA     | European Tour           |
|   190| Zhang Xinjun         |           0.10|          241|               76| CHN     | PGA Tour                |
|   191| Lucas Herbert        |           0.11|          155|               83| AUS     | European Tour           |
|   192| Nacho Elvira         |           0.11|          266|               84| ESP     | European Tour           |
|   193| William McGirt       |           0.11|          218|               42| USA     | PGA Tour                |
|   194| Ben Kohles           |           0.12|          218|               81| USA     | Web.com Tour            |
|   195| Adam Long            |           0.12|          261|              103| USA     | Web.com Tour            |
|   196| Roger Sloan          |           0.13|          252|              107| CAN     | Web.com Tour            |
|   197| Darren Fichardt      |           0.13|          228|               83| RSA     | European Tour           |
|   198| Scott Jamieson       |           0.13|          249|               80| SCO     | European Tour           |
|   199| Harris English       |           0.14|          260|               86| USA     | PGA Tour                |
|   200| Juan Sebastian Munoz |           0.14|          252|              107| COL     | Web.com Tour            |
