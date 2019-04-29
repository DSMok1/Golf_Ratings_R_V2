Current Golf Ratings
================
DSMok1
April 29, 2019

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
|     1| Dustin Johnson       |          -2.57|          258|               94| USA     |         1|
|     2| Rory McIlroy         |          -2.25|          229|               88| NIR     |         1|
|     3| Justin Thomas        |          -2.22|          265|               94| USA     |         1|
|     4| Jon Rahm             |          -2.11|          253|               90| ESP     |         1|
|     5| Tiger Woods          |          -2.10|          102|               70| USA     |         1|
|     6| Jason Day            |          -2.03|          211|               78| AUS     |         1|
|     7| Justin Rose          |          -1.96|          250|               82| ENG     |         1|
|     8| Patrick Cantlay      |          -1.92|          168|               86| USA     |         1|
|     9| Rickie Fowler        |          -1.92|          263|               90| USA     |         1|
|    10| Tony Finau           |          -1.78|          302|              104| USA     |         1|
|    11| Webb Simpson         |          -1.69|          265|               90| USA     |         1|
|    12| Tommy Fleetwood      |          -1.68|          305|              116| ENG     |         1|
|    13| Bryson DeChambeau    |          -1.63|          266|              100| USA     |         1|
|    14| Brooks Koepka        |          -1.59|          240|              100| USA     |         1|
|    15| Matt Kuchar          |          -1.57|          306|               94| USA     |         1|
|    16| Xander Schauffele    |          -1.55|          300|               98| USA     |         1|
|    17| Paul Casey           |          -1.51|          254|               84| ENG     |         1|
|    18| Francesco Molinari   |          -1.45|          256|               82| ITA     |         1|
|    19| Gary Woodland        |          -1.44|          286|              101| USA     |         1|
|    20| Hideki Matsuyama     |          -1.40|          264|              100| JPN     |         1|
|    21| Sergio Garcia        |          -1.38|          237|               79| ESP     |         1|
|    22| Louis Oosthuizen     |          -1.34|          232|               84| RSA     |         1|
|    23| Ian Poulter          |          -1.33|          270|              100| ENG     |         1|
|    24| Adam Scott           |          -1.25|          235|               80| AUS     |         1|
|    25| Charles Howell III   |          -1.24|          267|              100| USA     |         1|
|    26| Marc Leishman        |          -1.24|          285|               96| AUS     |         1|
|    27| Phil Mickelson       |          -1.21|          245|               80| USA     |         1|
|    28| Bubba Watson         |          -1.18|          233|               82| USA     |         1|
|    29| Rafael Cabrera Bello |          -1.17|          314|              106| ESP     |         1|
|    30| Jason Kokrak         |          -1.16|          284|               98| USA     |         1|
|    31| Henrik Stenson       |          -1.09|          224|               74| SWE     |         1|
|    32| Lucas Glover         |          -1.08|          240|               71| USA     |         1|
|    33| Matthew Fitzpatrick  |          -1.07|          279|              100| ENG     |         1|
|    34| Patrick Reed         |          -1.05|          334|              106| USA     |         1|
|    35| Jim Furyk            |          -1.05|          185|               62| USA     |         1|
|    36| Ryan Moore           |          -1.00|          248|               82| USA     |         1|
|    37| Keegan Bradley       |          -0.97|          293|              103| USA     |         1|
|    38| Byeong Hun An        |          -0.95|          292|              106| KOR     |         1|
|    39| Jordan Spieth        |          -0.94|          254|               82| USA     |         1|
|    40| Joost Luiten         |          -0.91|          226|               43| NED     |         1|
|    41| Kevin Kisner         |          -0.90|          276|               89| USA     |         1|
|    42| Tyrrell Hatton       |          -0.87|          266|               90| ENG     |         1|
|    43| Cameron Smith        |          -0.86|          268|               92| AUS     |         1|
|    44| Aaron Wise           |          -0.82|          229|               73| USA     |         1|
|    45| Zach Johnson         |          -0.82|          254|               81| USA     |         1|
|    46| Billy Horschel       |          -0.78|          252|              100| USA     |         1|
|    47| Scott Piercy         |          -0.77|          239|               84| USA     |         1|
|    48| Emiliano Grillo      |          -0.76|          305|               98| ARG     |         1|
|    49| Kevin Na             |          -0.75|          259|               91| USA     |         1|
|    50| Michael Thompson     |          -0.75|          204|               84| USA     |         1|
|    51| Thorbjorn Olesen     |          -0.74|          249|               86| DEN     |         1|
|    52| Daniel Berger        |          -0.73|          241|               66| USA     |         1|
|    53| Chez Reavie          |          -0.73|          263|               84| USA     |         1|
|    54| Siwoo Kim            |          -0.73|          280|              102| KOR     |         1|
|    55| Lee Westwood         |          -0.71|          230|               67| ENG     |         1|
|    56| Haotong Li           |          -0.71|          269|               96| CHN     |         1|
|    57| Julian Suri          |          -0.71|          220|               74| USA     |         1|
|    58| Luke List            |          -0.71|          269|               81| USA     |         1|
|    59| Russell Knox         |          -0.70|          294|              102| SCO     |         1|
|    60| Sungjae Im           |          -0.69|          331|              135| KOR     |         1|
|    61| Adam Hadwin          |          -0.68|          280|               91| CAN     |         1|
|    62| Charley Hoffman      |          -0.66|          283|               86| USA     |         1|
|    63| Jhonattan Vegas      |          -0.65|          284|               90| VEN     |         1|
|    64| Bud Cauley           |          -0.64|          219|               53| USA     |         1|
|    65| Abraham Ancer        |          -0.64|          279|               98| MEX     |         1|
|    66| Alex Noren           |          -0.62|          250|               80| SWE     |         1|
|    67| Victor Dubuisson     |          -0.61|          100|               18| FRA     |         1|
|    68| Shane Lowry          |          -0.60|          255|               93| IRL     |         1|
|    69| Brandt Snedeker      |          -0.59|          247|              101| USA     |         1|
|    70| Scottie Scheffler    |          -0.57|           54|               42| USA     |         1|
|    71| C.T. Pan             |          -0.57|          296|              101| TPE     |         1|
|    72| Kevin Chappell       |          -0.56|          230|               46| USA     |         1|
|    73| Denny McCarthy       |          -0.56|          261|               93| USA     |         1|
|    74| Thomas Pieters       |          -0.55|          243|               82| BEL     |         1|
|    75| Graham Delaet        |          -0.50|          107|                0| CAN     |        NA|
|    76| Kevin Streelman      |          -0.50|          267|               83| USA     |         1|
|    77| Eddie Pepperell      |          -0.50|          217|               80| ENG     |         1|
|    78| Dylan Frittelli      |          -0.48|          329|              101| RSA     |         1|
|    79| Matt Wallace         |          -0.48|          261|              108| ENG     |         1|
|    80| JT Poston            |          -0.47|          289|               96| USA     |         1|
|    81| Rory Sabbatini       |          -0.46|          229|               89| RSA     |         1|
|    82| Ryan Palmer          |          -0.45|          194|               73| USA     |         1|
|    83| Andrew Putnam        |          -0.45|          264|               88| USA     |         1|
|    84| Aaron Baddeley       |          -0.44|          237|               87| AUS     |         1|
|    85| Joel Dahmen          |          -0.44|          258|              100| USA     |         1|
|    86| Branden Grace        |          -0.44|          287|              102| RSA     |         1|
|    87| Graeme McDowell      |          -0.43|          267|               86| NIR     |         1|
|    88| Pat Perez            |          -0.42|          203|               69| USA     |         1|
|    89| Keith Mitchell       |          -0.42|          276|               96| USA     |         1|
|    90| Russell Henley       |          -0.41|          252|               82| USA     |         1|
|    91| Talor Gooch          |          -0.39|          229|               63| USA     |         1|
|    92| Jorge Campillo       |          -0.38|          277|               91| ESP     |         1|
|    93| Cameron Percy        |          -0.38|          231|               78| AUS     |         1|
|    94| Sam Burns            |          -0.38|          147|               98| USA     |         1|
|    95| Brian Stuard         |          -0.38|          291|              103| USA     |         1|
|    96| Steve Stricker       |          -0.37|          133|               40| USA     |         1|
|    97| Alexander Bjork      |          -0.36|          292|               77| SWE     |         1|
|    98| Kevin Tway           |          -0.36|          291|               90| USA     |         1|
|    99| Kyle Stanley         |          -0.36|          264|               88| USA     |         1|
|   100| Sam Ryder            |          -0.34|          256|               86| USA     |         1|
|   101| Peter Malnati        |          -0.34|          261|               95| USA     |         1|
|   102| Scott Stallings      |          -0.34|          256|               85| USA     |         1|
|   103| Nick Taylor          |          -0.34|          270|               99| CAN     |         1|
|   104| Brian Gay            |          -0.34|          262|              113| USA     |         1|
|   105| Cameron Champ        |          -0.33|          134|               99| USA     |         1|
|   106| Troy Merritt         |          -0.32|          253|               68| USA     |         1|
|   107| Tom Lewis            |          -0.32|          218|               96| ENG     |         1|
|   108| Danny Lee            |          -0.31|          282|               90| NZL     |         1|
|   109| Fabrizio Zanotti     |          -0.30|          231|               58| PAR     |         1|
|   110| Mike Lorenzo-Vera    |          -0.30|          238|               77| FRA     |         1|
|   111| J.B. Holmes          |          -0.30|          243|               78| USA     |         1|
|   112| Adam Schenk          |          -0.30|          294|              106| USA     |         1|
|   113| Jordan L Smith       |          -0.29|          297|               92| ENG     |         1|
|   114| Harold Varner III    |          -0.29|          303|               94| USA     |         1|
|   115| Beau Hossler         |          -0.29|          227|               94| USA     |         1|
|   116| Sunghoon Kang        |          -0.28|          284|               91| KOR     |         1|
|   117| Jamie Lovemark       |          -0.28|          251|               60| USA     |         1|
|   118| Kiradech Aphibarnrat |          -0.28|          290|               98| THA     |         1|
|   119| Matt Jones           |          -0.27|          241|               85| AUS     |         1|
|   120| Tyler McCumber       |          -0.26|          187|               76| USA     |         1|
|   121| Vaughn Taylor        |          -0.26|          261|               85| USA     |         1|
|   122| Justin Harding       |          -0.26|          241|              101| RSA     |         1|
|   123| Ryan Armour          |          -0.25|          280|              102| USA     |         1|
|   124| Austin Cook          |          -0.23|          286|               84| USA     |         1|
|   125| J.J Spaun            |          -0.22|          270|               89| USA     |         1|
|   126| Lucas Bjerregaard    |          -0.22|          277|              102| DEN     |         1|
|   127| Joaquin Niemann      |          -0.21|          112|               90| CHI     |         1|
|   128| Stewart Cink         |          -0.21|          235|               75| USA     |         1|
|   129| Andy Sullivan        |          -0.21|          268|               86| ENG     |         1|
|   130| Trey Mullinax        |          -0.20|          269|               87| USA     |         1|
|   131| Nick Watney          |          -0.19|          206|               93| USA     |         1|
|   132| Erik van Rooyen      |          -0.18|          243|               87| RSA     |         1|
|   133| Roberto Castro       |          -0.18|          224|               76| USA     |         1|
|   134| Shugo Imahira        |          -0.18|          280|               89| JPN     |         1|
|   135| Johnson Wagner       |          -0.17|          225|               73| USA     |         1|
|   136| Patton Kizzire       |          -0.17|          258|               93| USA     |         1|
|   137| Zhang Xinjun         |          -0.17|          251|               80| CHN     |         1|
|   138| Chesson Hadley       |          -0.17|          270|               91| USA     |         1|
|   139| Thomas Detry         |          -0.16|          274|               90| BEL     |         1|
|   140| Wyndham Clark        |          -0.16|          145|              104| USA     |         1|
|   141| Ryan Fox             |          -0.15|          295|               97| NZL     |         1|
|   142| Martin Laird         |          -0.15|          227|               70| SCO     |         1|
|   143| Corey Conners        |          -0.14|          301|               94| CAN     |         1|
|   144| Chris Kirk           |          -0.12|          275|               93| USA     |         1|
|   145| Luke Donald          |          -0.11|          160|               17| ENG     |         1|
|   146| Richard Sterne       |          -0.10|          249|               75| RSA     |         1|
|   147| David Lipsky         |          -0.10|          280|               90| USA     |         1|
|   148| Ross Fisher          |          -0.10|          251|               86| ENG     |         1|
|   149| Patrick Rodgers      |          -0.09|          251|               84| USA     |         1|
|   150| Sean Crocker         |          -0.09|          120|               72| USA     |         1|
|   151| Steve Marino         |          -0.09|          136|               42| USA     |         1|
|   152| Matthias Schwab      |          -0.07|          185|               98| AUT     |         1|
|   153| Ernie Els            |          -0.07|          224|               84| RSA     |         1|
|   154| Mark Anderson        |          -0.07|          214|               71| USA     |         1|
|   155| Mikko Korhonen       |          -0.06|          229|               81| FIN     |         1|
|   156| Peter Uihlein        |          -0.05|          226|               89| USA     |         1|
|   157| Jimmy Walker         |          -0.05|          235|               83| USA     |         1|
|   158| Andrew Landry        |          -0.04|          242|               90| USA     |         1|
|   159| Jonathan Byrd        |          -0.03|          241|               71| USA     |         1|
|   160| Martin Kaymer        |          -0.03|          270|               93| GER     |         1|
|   161| Jazz Janewattananond |          -0.02|          255|              106| THA     |         1|
|   162| Seungyul Noh         |          -0.01|          123|                0| KOR     |        NA|
|   163| James Hahn           |          -0.01|          258|               70| USA     |         1|
|   164| Gaganjeet Bhullar    |           0.00|          228|               98| IND     |         1|
|   165| D.J. Trahan          |           0.00|          107|               38| USA     |         1|
|   166| Nate Lashley         |           0.01|          256|               60| USA     |         1|
|   167| Sam Saunders         |           0.02|          238|               80| USA     |         1|
|   168| Carlos Ortiz         |           0.02|          265|              103| MEX     |         1|
|   169| Kyounghoon Lee       |           0.03|          323|              108| KOR     |         1|
|   170| Jimmy Stanger        |           0.03|           97|               68| USA     |         1|
|   171| Joseph Bramlett      |           0.04|          109|               84| USA     |         1|
|   172| Nacho Elvira         |           0.05|          264|               84| ESP     |         1|
|   173| Bronson Burgoon      |           0.06|          164|               65| USA     |         1|
|   174| George Cunningham    |           0.06|           77|               73| USA     |         1|
|   175| Adrian Otaegui       |           0.06|          281|               90| ESP     |         1|
|   176| Mackenzie Hughes     |           0.06|          279|               84| CAN     |         1|
|   177| Alexander Levy       |           0.06|          234|               74| FRA     |         1|
|   178| Jonas Blixt          |           0.07|          228|               80| SWE     |         1|
|   179| Danny Willett        |           0.07|          212|               87| ENG     |         1|
|   180| Maximilian Kieffer   |           0.08|          238|               80| GER     |         1|
|   181| Chris Stroud         |           0.08|          210|               67| USA     |         1|
|   182| Robert Rock          |           0.09|          236|               77| ENG     |         1|
|   183| Bill Haas            |           0.09|          242|               74| USA     |         1|
|   184| Andrea Pavan         |           0.09|          248|               92| ITA     |         1|
|   185| Richy Werenski       |           0.09|          265|               93| USA     |         1|
|   186| Hudson Swafford      |           0.10|          260|               71| USA     |         1|
|   187| Scott Brown          |           0.10|          269|               94| USA     |         1|
|   188| Kramer Hickok        |           0.11|          206|              105| USA     |         1|
|   189| Shawn Stefani        |           0.11|          253|               91| USA     |         1|
|   190| Chris Paisley        |           0.11|          248|               72| ENG     |         1|
|   191| Brice Garnett        |           0.12|          255|               91| USA     |         1|
|   192| William McGirt       |           0.12|          208|               34| USA     |         1|
|   193| Masahiro Kawamura    |           0.12|          286|               95| JPN     |         1|
|   194| Charl Schwartzel     |           0.12|          249|               83| RSA     |         1|
|   195| Lucas Herbert        |           0.13|          155|               87| AUS     |         1|
|   196| Brian Harman         |           0.13|          285|               89| USA     |         1|
|   197| Steven Alker         |           0.15|          211|               62| NZL     |         1|
|   198| Harris English       |           0.15|          262|               86| USA     |         1|
|   199| Robby Shelton IV     |           0.15|          187|               90| USA     |         1|
|   200| Brett Stegmaier      |           0.17|          227|               58| USA     |         1|
