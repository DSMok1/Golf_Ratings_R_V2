Current Golf Ratings
================
DSMok1
March 18, 2019

Summary
-------

This is a super-simple golf rating system. It's just a straight regression over the past 3 years of golf results, with the most recent results weighted far more heavily. An exponential weighting system of 0.97 to the "weeks ago" power was used--in other words, results from 1 year ago are weighted at 0.97^52, or 20% as much as this week's results. The previous years get less and less weight, but are there to provide some stability to the regression for portions of the dataset with more tenuous connections.

The Player Rating is denominated in strokes per round more or less than the average golfer playing on the PGA and European tours. Players with a minimum of 40 rounds were included and tournament rounds with a minimum of 15 ranked players were included.

Data
----

The full output is located at <https://github.com/DSMok1/Golf_Ratings_R_V2/blob/master/Output/Recent_Ratings.csv>

|  Rank| Player\_Name         |  Player\_Value|  Num\_Rounds|  Num\_Rounds\_Yr| Country | Tour\_Yr                |
|-----:|:---------------------|--------------:|------------:|----------------:|:--------|:------------------------|
|     1| Dustin Johnson       |          -2.59|          254|               86| USA     | PGA Tour                |
|     2| Rory McIlroy         |          -2.29|          233|               88| NIR     | PGA Tour                |
|     3| Justin Thomas        |          -2.18|          269|               90| USA     | PGA Tour                |
|     4| Justin Rose          |          -2.07|          256|               88| ENG     | PGA Tour                |
|     5| Jon Rahm             |          -2.02|          245|               86| ESP     | PGA Tour                |
|     6| Jason Day            |          -2.00|          217|               76| AUS     | PGA Tour                |
|     7| Tiger Woods          |          -1.89|           98|               70| USA     | PGA Tour                |
|     8| Rickie Fowler        |          -1.83|          261|               90| USA     | PGA Tour                |
|     9| Tony Finau           |          -1.80|          308|              100| USA     | PGA Tour                |
|    10| Tommy Fleetwood      |          -1.70|          309|              112| ENG     | PGA Tour                |
|    11| Patrick Cantlay      |          -1.70|          160|               82| USA     | PGA Tour                |
|    12| Bryson DeChambeau    |          -1.70|          274|              102| USA     | PGA Tour                |
|    13| Webb Simpson         |          -1.64|          267|               84| USA     | PGA Tour                |
|    14| Paul Casey           |          -1.62|          258|               82| ENG     | PGA Tour                |
|    15| Sergio Garcia        |          -1.57|          242|               73| ESP     | European Tour           |
|    16| Xander Schauffele    |          -1.56|          302|               99| USA     | PGA Tour                |
|    17| Gary Woodland        |          -1.50|          286|               93| USA     | PGA Tour                |
|    18| Brooks Koepka        |          -1.43|          244|               92| USA     | PGA Tour                |
|    19| Francesco Molinari   |          -1.43|          262|               84| ITA     | PGA Tour                |
|    20| Marc Leishman        |          -1.41|          287|               96| AUS     | PGA Tour                |
|    21| Hideki Matsuyama     |          -1.40|          268|              100| JPN     | PGA Tour                |
|    22| Charles Howell III   |          -1.32|          273|              102| USA     | PGA Tour                |
|    23| Matt Kuchar          |          -1.30|          308|               94| USA     | PGA Tour                |
|    24| Louis Oosthuizen     |          -1.20|          230|               78| RSA     | PGA Tour                |
|    25| Patrick Reed         |          -1.19|          340|              104| USA     | PGA Tour                |
|    26| Adam Scott           |          -1.17|          239|               82| AUS     | PGA Tour                |
|    27| Ian Poulter          |          -1.17|          278|              104| ENG     | PGA Tour                |
|    28| Phil Mickelson       |          -1.13|          249|               82| USA     | PGA Tour                |
|    29| Jim Furyk            |          -1.12|          175|               58| USA     | PGA Tour                |
|    30| Rafael Cabrera Bello |          -1.12|          314|              100| ESP     | PGA Tour                |
|    31| Tyrrell Hatton       |          -1.12|          264|               92| ENG     | PGA Tour                |
|    32| Joost Luiten         |          -1.11|          228|               43| NED     | European Tour           |
|    33| Henrik Stenson       |          -1.09|          228|               76| SWE     | PGA Tour                |
|    34| Lucas Glover         |          -1.05|          242|               71| USA     | PGA Tour                |
|    35| Billy Horschel       |          -1.03|          258|              100| USA     | PGA Tour                |
|    36| Matthew Fitzpatrick  |          -1.03|          281|               98| ENG     | European Tour           |
|    37| Keegan Bradley       |          -1.01|          301|              105| USA     | PGA Tour                |
|    38| Cameron Smith        |          -1.01|          274|               92| AUS     | PGA Tour                |
|    39| Byeong Hun An        |          -1.00|          292|              108| KOR     | PGA Tour                |
|    40| Bubba Watson         |          -0.94|          233|               78| USA     | PGA Tour                |
|    41| Jordan Spieth        |          -0.93|          250|               76| USA     | PGA Tour                |
|    42| Jason Kokrak         |          -0.88|          286|               93| USA     | PGA Tour                |
|    43| Emiliano Grillo      |          -0.87|          305|              102| ARG     | PGA Tour                |
|    44| Luke List            |          -0.86|          279|               85| USA     | PGA Tour                |
|    45| Ryan Moore           |          -0.81|          244|               84| USA     | PGA Tour                |
|    46| Zach Johnson         |          -0.79|          256|               83| USA     | PGA Tour                |
|    47| Kevin Kisner         |          -0.79|          274|               83| USA     | PGA Tour                |
|    48| Daniel Berger        |          -0.77|          243|               64| USA     | PGA Tour                |
|    49| Haotong Li           |          -0.75|          273|               94| CHN     | European Tour           |
|    50| Alex Noren           |          -0.72|          246|               76| SWE     | PGA Tour                |
|    51| Lee Westwood         |          -0.72|          236|               70| ENG     | European Tour           |
|    52| Matt Wallace         |          -0.72|          261|              104| ENG     | European Tour           |
|    53| Abraham Ancer        |          -0.72|          287|              100| MEX     | PGA Tour                |
|    54| Russell Knox         |          -0.71|          294|              104| SCO     | PGA Tour                |
|    55| Adam Hadwin          |          -0.71|          284|               87| CAN     | PGA Tour                |
|    56| Aaron Wise           |          -0.68|          225|               77| USA     | PGA Tour                |
|    57| Chez Reavie          |          -0.68|          271|               82| USA     | PGA Tour                |
|    58| Thorbjorn Olesen     |          -0.66|          253|               82| DEN     | European Tour           |
|    59| Bud Cauley           |          -0.66|          211|               53| USA     | PGA Tour                |
|    60| Brandt Snedeker      |          -0.65|          251|              100| USA     | PGA Tour                |
|    61| Branden Grace        |          -0.63|          287|               92| RSA     | PGA Tour                |
|    62| Kevin Na             |          -0.63|          259|               88| USA     | PGA Tour                |
|    63| Jhonattan Vegas      |          -0.62|          290|               87| VEN     | PGA Tour                |
|    64| Thomas Pieters       |          -0.62|          247|               88| BEL     | European Tour           |
|    65| Michael Thompson     |          -0.62|          204|               86| USA     | PGA Tour                |
|    66| Siwoo Kim            |          -0.58|          284|              102| KOR     | PGA Tour                |
|    67| Scott Piercy         |          -0.57|          243|               92| USA     | PGA Tour                |
|    68| Sungjae Im           |          -0.55|          325|              130| KOR     | Web.com Tour            |
|    69| Kevin Chappell       |          -0.54|          244|               58| USA     | PGA Tour                |
|    70| J.B. Holmes          |          -0.53|          244|               79| USA     | PGA Tour                |
|    71| Shane Lowry          |          -0.52|          255|               91| IRL     | European Tour           |
|    72| Graham Delaet        |          -0.48|          119|                0| CAN     | NA                      |
|    73| Victor Dubuisson     |          -0.48|           96|               16| FRA     | European Tour           |
|    74| Beau Hossler         |          -0.44|          219|              100| USA     | PGA Tour                |
|    75| Keith Mitchell       |          -0.44|          274|              102| USA     | PGA Tour                |
|    76| Andrew Putnam        |          -0.43|          272|               92| USA     | PGA Tour                |
|    77| Brian Gay            |          -0.43|          255|              108| USA     | PGA Tour                |
|    78| Dylan Frittelli      |          -0.43|          329|              101| RSA     | PGA Tour                |
|    79| JT Poston            |          -0.43|          279|               94| USA     | PGA Tour                |
|    80| Cameron Champ        |          -0.42|          132|              106| USA     | Web.com Tour            |
|    81| Russell Henley       |          -0.41|          254|               78| USA     | PGA Tour                |
|    82| Denny McCarthy       |          -0.41|          261|               87| USA     | PGA Tour                |
|    83| Eddie Pepperell      |          -0.40|          213|               72| ENG     | European Tour           |
|    84| Pat Perez            |          -0.40|          203|               73| USA     | PGA Tour                |
|    85| Mike Lorenzo-Vera    |          -0.39|          234|               81| FRA     | European Tour           |
|    86| Fabrizio Zanotti     |          -0.38|          231|               62| PAR     | European Tour           |
|    87| Steve Stricker       |          -0.37|          133|               40| USA     | PGA Tour                |
|    88| Talor Gooch          |          -0.37|          229|               69| USA     | PGA Tour                |
|    89| C.T. Pan             |          -0.36|          300|               99| TPE     | PGA Tour                |
|    90| Ryan Palmer          |          -0.35|          204|               73| USA     | PGA Tour                |
|    91| Shugo Imahira        |          -0.35|          282|               91| JPN     | Japan Golf Tour         |
|    92| Tyler McCumber       |          -0.34|          175|               74| USA     | PGA Tour Canada         |
|    93| Alexander Bjork      |          -0.34|          286|               83| SWE     | European Tour           |
|    94| Kevin Tway           |          -0.34|          299|              100| USA     | PGA Tour                |
|    95| Aaron Baddeley       |          -0.33|          243|               87| AUS     | PGA Tour                |
|    96| Julian Suri          |          -0.33|          208|               74| USA     | European Tour           |
|    97| Roberto Castro       |          -0.32|          232|               77| USA     | Web.com Tour            |
|    98| Chesson Hadley       |          -0.32|          272|               97| USA     | PGA Tour                |
|    99| Joel Dahmen          |          -0.32|          254|               90| USA     | PGA Tour                |
|   100| Joaquin Niemann      |          -0.32|          100|               84| CHI     | PGA Tour                |
|   101| Sam Ryder            |          -0.31|          260|               90| USA     | PGA Tour                |
|   102| Lucas Bjerregaard    |          -0.30|          275|               94| DEN     | European Tour           |
|   103| Nick Taylor          |          -0.30|          273|               91| CAN     | PGA Tour                |
|   104| Nick Watney          |          -0.29|          198|               95| USA     | PGA Tour                |
|   105| Harold Varner III    |          -0.29|          305|               92| USA     | PGA Tour                |
|   106| Kiradech Aphibarnrat |          -0.28|          298|               98| THA     | PGA Tour                |
|   107| Stewart Cink         |          -0.28|          237|               77| USA     | PGA Tour                |
|   108| Tom Lewis            |          -0.27|          214|              100| ENG     | European Tour           |
|   109| Justin Harding       |          -0.27|          239|               99| RSA     | Asian Tour              |
|   110| Jamie Lovemark       |          -0.26|          261|               72| USA     | PGA Tour                |
|   111| Cameron Percy        |          -0.25|          229|               80| AUS     | Web.com Tour            |
|   112| Vaughn Taylor        |          -0.25|          262|               78| USA     | PGA Tour                |
|   113| Charley Hoffman      |          -0.25|          283|               84| USA     | PGA Tour                |
|   114| Austin Cook          |          -0.24|          286|               88| USA     | PGA Tour                |
|   115| Kyle Stanley         |          -0.23|          270|               86| USA     | PGA Tour                |
|   116| Mark Anderson        |          -0.23|          216|               80| USA     | Web.com Tour            |
|   117| Chris Kirk           |          -0.22|          283|               97| USA     | PGA Tour                |
|   118| Johnson Wagner       |          -0.21|          236|               83| USA     | PGA Tour                |
|   119| Trey Mullinax        |          -0.21|          264|               78| USA     | PGA Tour                |
|   120| Adam Schenk          |          -0.20|          294|              106| USA     | PGA Tour                |
|   121| Rory Sabbatini       |          -0.19|          223|               81| RSA     | PGA Tour                |
|   122| Ryan Armour          |          -0.18|          284|              102| USA     | PGA Tour                |
|   123| Kevin Streelman      |          -0.17|          269|               87| USA     | PGA Tour                |
|   124| Ryan Fox             |          -0.17|          293|               99| NZL     | European Tour           |
|   125| Sunghoon Kang        |          -0.16|          288|               87| KOR     | PGA Tour                |
|   126| J.J Spaun            |          -0.16|          278|               89| USA     | PGA Tour                |
|   127| Jordan L Smith       |          -0.14|          297|               94| ENG     | European Tour           |
|   128| Martin Laird         |          -0.14|          229|               74| SCO     | PGA Tour                |
|   129| Patrick Rodgers      |          -0.14|          261|               91| USA     | PGA Tour                |
|   130| Peter Malnati        |          -0.13|          261|               93| USA     | PGA Tour                |
|   131| Thomas Detry         |          -0.13|          262|               88| BEL     | European Tour           |
|   132| Will Wilcox          |          -0.13|          148|               65| USA     | Web.com Tour            |
|   133| John Oda             |          -0.13|           62|               46| USA     | Web.com Tour            |
|   134| Scott Stallings      |          -0.10|          252|               80| USA     | PGA Tour                |
|   135| Charl Schwartzel     |          -0.10|          245|               77| RSA     | PGA Tour                |
|   136| Danny Lee            |          -0.10|          278|               90| NZL     | PGA Tour                |
|   137| Peter Uihlein        |          -0.09|          224|               83| USA     | PGA Tour                |
|   138| Troy Merritt         |          -0.09|          259|               74| USA     | PGA Tour                |
|   139| Graeme McDowell      |          -0.08|          257|               84| NIR     | PGA Tour                |
|   140| Gaganjeet Bhullar    |          -0.08|          222|               88| IND     | Asian Tour              |
|   141| Carlos Ortiz         |          -0.06|          265|              106| MEX     | Web.com Tour            |
|   142| Andy Sullivan        |          -0.06|          270|               90| ENG     | European Tour           |
|   143| Brice Garnett        |          -0.05|          255|               92| USA     | PGA Tour                |
|   144| Nate Lashley         |          -0.05|          254|               68| USA     | PGA Tour                |
|   145| Jazz Janewattananond |          -0.05|          245|               98| THA     | Asian Tour              |
|   146| D.J. Trahan          |          -0.04|          106|               34| USA     | PGA Tour                |
|   147| Alexander Levy       |          -0.03|          240|               78| FRA     | European Tour           |
|   148| Martin Kaymer        |          -0.03|          268|               91| GER     | European Tour           |
|   149| Jason Scrivener      |          -0.02|          257|               93| AUS     | European Tour           |
|   150| Steve Marino         |          -0.02|          139|               50| USA     | PGA Tour                |
|   151| Ross Fisher          |          -0.01|          255|               86| ENG     | European Tour           |
|   152| Mikko Korhonen       |          -0.01|          227|               81| FIN     | European Tour           |
|   153| Brian Stuard         |          -0.01|          285|              101| USA     | PGA Tour                |
|   154| Matt Jones           |           0.00|          239|               83| AUS     | PGA Tour                |
|   155| Patton Kizzire       |           0.00|          252|               84| USA     | PGA Tour                |
|   156| Jorge Campillo       |           0.00|          275|               91| ESP     | European Tour           |
|   157| Hudson Swafford      |           0.01|          260|               70| USA     | PGA Tour                |
|   158| Richard Sterne       |           0.01|          249|               83| RSA     | European Tour           |
|   159| Adria Arnaus         |           0.01|          165|              110| ESP     | European Challenge Tour |
|   160| Doug Ghim            |           0.01|           48|               48| USA     | PGA Tour                |
|   161| Wyndham Clark        |           0.02|          133|              101| USA     | Web.com Tour            |
|   162| James Hahn           |           0.02|          266|               80| USA     | PGA Tour                |
|   163| Ernie Els            |           0.04|          230|               86| RSA     | PGA Tour                |
|   164| Chris Paisley        |           0.04|          248|               70| ENG     | European Tour           |
|   165| Seungyul Noh         |           0.04|          134|                0| KOR     | NA                      |
|   166| Juan Sebastian Munoz |           0.04|          254|              107| COL     | Web.com Tour            |
|   167| Sam Burns            |           0.05|          131|               97| USA     | PGA Tour                |
|   168| Brian Harman         |           0.05|          293|               91| USA     | PGA Tour                |
|   169| Danny Willett        |           0.05|          208|               81| ENG     | European Tour           |
|   170| Sam Saunders         |           0.06|          236|               76| USA     | PGA Tour                |
|   171| Steve LeBrun         |           0.06|           95|               16| USA     | Web.com Tour            |
|   172| Billy Kennerly       |           0.06|          144|               68| USA     | Web.com Tour            |
|   173| Scott Langley        |           0.06|          248|               96| USA     | Web.com Tour            |
|   174| Joseph Bramlett      |           0.07|           99|               85| USA     | Web.com Tour            |
|   175| Anders Albertson     |           0.07|          259|              104| USA     | Web.com Tour            |
|   176| Jonathan Byrd        |           0.07|          247|               74| USA     | PGA Tour                |
|   177| Corey Conners        |           0.08|          301|               90| CAN     | PGA Tour                |
|   178| Bronson Burgoon      |           0.08|          175|               71| USA     | PGA Tour                |
|   179| Bradley Dredge       |           0.08|          225|               84| WAL     | European Tour           |
|   180| Maximilian Kieffer   |           0.10|          238|               82| GER     | European Tour           |
|   181| Maverick McNealy     |           0.10|          125|               89| USA     | Web.com Tour            |
|   182| Andrew Landry        |           0.10|          242|               80| USA     | PGA Tour                |
|   183| Richy Werenski       |           0.11|          265|               92| USA     | PGA Tour                |
|   184| Jimmy Walker         |           0.12|          237|               83| USA     | PGA Tour                |
|   185| Andrea Pavan         |           0.13|          238|               92| ITA     | European Tour           |
|   186| Robert Rock          |           0.13|          230|               77| ENG     | European Tour           |
|   187| Matthias Schwab      |           0.13|          173|              100| AUT     | European Tour           |
|   188| Jimmy Stanger        |           0.14|           81|               61| USA     | Web.com Tour            |
|   189| Roger Sloan          |           0.15|          248|              107| CAN     | Web.com Tour            |
|   190| William McGirt       |           0.15|          224|               46| USA     | PGA Tour                |
|   191| Cameron Davis        |           0.15|          167|               94| AUS     | Web.com Tour            |
|   192| Scott Jamieson       |           0.15|          253|               80| SCO     | European Tour           |
|   193| Adrian Otaegui       |           0.15|          281|               92| ESP     | European Tour           |
|   194| Scott Brown          |           0.15|          277|               93| USA     | PGA Tour                |
|   195| Adam Long            |           0.15|          263|              100| USA     | Web.com Tour            |
|   196| Fabian Gomez         |           0.16|          240|               94| ARG     | PGA Tour                |
|   197| Brendan Steele       |           0.16|          239|               69| USA     | PGA Tour                |
|   198| Anirban Lahiri       |           0.16|          276|               87| IND     | PGA Tour                |
|   199| Shawn Stefani        |           0.17|          255|               91| USA     | PGA Tour                |
|   200| Lucas Herbert        |           0.18|          155|               83| AUS     | European Tour           |
