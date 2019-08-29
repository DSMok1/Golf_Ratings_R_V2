Current Golf Ratings
================
DSMok1
August 29, 2019

## Summary

This is a super-simple golf rating system. It’s just a straight
regression over the past 3 years of golf results, with the most recent
results weighted far more heavily. An exponential weighting system of
0.97 to the “weeks ago” power was used–in other words, results from 1
year ago are weighted at 0.97^52, or 20% as much as this week’s results.
The previous years get less and less weight, but are there to provide
some stability to the regression for portions of the dataset with more
tenuous connections.

The Player Rating is denominated in strokes per round more or less than
the average golfer playing on the PGA and European tours. Players with a
minimum of 24 rounds were included and tournament rounds with a minimum
of 15 ranked players were included.

## Data

The full output is located at
<https://github.com/DSMok1/Golf_Ratings_R_V2/blob/master/Output/Recent_Ratings.csv>

| Rank | Player\_Name         | Player\_Value | Num\_Rounds | Num\_Rounds\_Yr | Country | Tour\_Yr                |
| ---: | :------------------- | ------------: | ----------: | --------------: | :------ | :---------------------- |
|    1 | Rory McIlroy         |        \-2.42 |         237 |              88 | NIR     | PGA Tour                |
|    2 | Jon Rahm             |        \-2.21 |         263 |              94 | ESP     | PGA Tour                |
|    3 | Patrick Cantlay      |        \-2.08 |         204 |              88 | USA     | PGA Tour                |
|    4 | Justin Thomas        |        \-2.08 |         263 |              92 | USA     | PGA Tour                |
|    5 | Brooks Koepka        |        \-1.93 |         256 |             102 | USA     | PGA Tour                |
|    6 | Webb Simpson         |        \-1.92 |         269 |              90 | USA     | PGA Tour                |
|    7 | Justin Rose          |        \-1.77 |         258 |              90 | ENG     | PGA Tour                |
|    8 | Dustin Johnson       |        \-1.76 |         254 |              94 | USA     | PGA Tour                |
|    9 | Adam Scott           |        \-1.74 |         233 |              73 | AUS     | PGA Tour                |
|   10 | Tommy Fleetwood      |        \-1.70 |         323 |             112 | ENG     | PGA Tour                |
|   11 | Paul Casey           |        \-1.69 |         260 |              86 | ENG     | PGA Tour                |
|   12 | Xander Schauffele    |        \-1.66 |         283 |              92 | USA     | PGA Tour                |
|   13 | Tiger Woods          |        \-1.65 |         118 |              56 | USA     | PGA Tour                |
|   14 | Tony Finau           |        \-1.60 |         302 |             104 | USA     | PGA Tour                |
|   15 | Rickie Fowler        |        \-1.60 |         260 |              86 | USA     | PGA Tour                |
|   16 | Hideki Matsuyama     |        \-1.57 |         284 |             111 | JPN     | PGA Tour                |
|   17 | Viktor Hovland       |        \-1.55 |          50 |              44 | NOR     | PGA Tour                |
|   18 | Bryson DeChambeau    |        \-1.42 |         280 |              96 | USA     | PGA Tour                |
|   19 | Louis Oosthuizen     |        \-1.39 |         242 |              96 | RSA     | PGA Tour                |
|   20 | Collin Morikawa      |        \-1.38 |          38 |              32 | USA     | PGA Tour                |
|   21 | Henrik Stenson       |        \-1.36 |         236 |              80 | SWE     | PGA Tour                |
|   22 | Patrick Reed         |        \-1.35 |         332 |             116 | USA     | PGA Tour                |
|   23 | Jason Day            |        \-1.31 |         210 |              82 | AUS     | PGA Tour                |
|   24 | Matthew Fitzpatrick  |        \-1.28 |         283 |              96 | ENG     | European Tour           |
|   25 | Matt Kuchar          |        \-1.28 |         296 |              96 | USA     | PGA Tour                |
|   26 | Gary Woodland        |        \-1.21 |         277 |              97 | USA     | PGA Tour                |
|   27 | Marc Leishman        |        \-1.17 |         272 |              88 | AUS     | PGA Tour                |
|   28 | Jordan Spieth        |        \-1.17 |         261 |              91 | USA     | PGA Tour                |
|   29 | Shane Lowry          |        \-1.17 |         247 |              79 | IRL     | European Tour           |
|   30 | Billy Horschel       |        \-1.14 |         265 |             104 | USA     | PGA Tour                |
|   31 | Ian Poulter          |        \-1.09 |         288 |              92 | ENG     | PGA Tour                |
|   32 | Jason Kokrak         |        \-1.09 |         292 |              98 | USA     | PGA Tour                |
|   33 | Chez Reavie          |        \-1.08 |         275 |              98 | USA     | PGA Tour                |
|   34 | Byeong Hun An        |        \-1.05 |         291 |             100 | KOR     | PGA Tour                |
|   35 | Brandt Snedeker      |        \-1.02 |         259 |             107 | USA     | PGA Tour                |
|   36 | Rory Sabbatini       |        \-1.01 |         253 |              95 | RSA     | PGA Tour                |
|   37 | Lucas Glover         |        \-1.00 |         255 |             100 | USA     | PGA Tour                |
|   38 | Tyrrell Hatton       |        \-0.99 |         264 |              94 | ENG     | PGA Tour                |
|   39 | Rafael Cabrera Bello |        \-0.98 |         310 |             106 | ESP     | PGA Tour                |
|   40 | Kevin Kisner         |        \-0.96 |         280 |              96 | USA     | PGA Tour                |
|   41 | Francesco Molinari   |        \-0.95 |         244 |              72 | ITA     | PGA Tour                |
|   42 | Charles Howell III   |        \-0.95 |         280 |              96 | USA     | PGA Tour                |
|   43 | Sergio Garcia        |        \-0.95 |         239 |              77 | ESP     | European Tour           |
|   44 | Jim Furyk            |        \-0.92 |         171 |              68 | USA     | PGA Tour                |
|   45 | Matt Wallace         |        \-0.88 |         264 |             114 | ENG     | European Tour           |
|   46 | Andrew Putnam        |        \-0.87 |         258 |              96 | USA     | PGA Tour                |
|   47 | Matthew Wolff        |        \-0.85 |          29 |              29 | USA     | PGA Tour                |
|   48 | Scott Piercy         |        \-0.84 |         239 |              94 | USA     | PGA Tour                |
|   49 | Joaquin Niemann      |        \-0.83 |         160 |             100 | CHI     | PGA Tour                |
|   50 | Abraham Ancer        |        \-0.83 |         289 |             102 | MEX     | PGA Tour                |
|   51 | Sungjae Im           |        \-0.83 |         356 |             130 | KOR     | PGA Tour                |
|   52 | Haotong Li           |        \-0.81 |         267 |              88 | CHN     | European Tour           |
|   53 | Adam Hadwin          |        \-0.79 |         273 |              94 | CAN     | PGA Tour                |
|   54 | Vaughn Taylor        |        \-0.78 |         261 |              93 | USA     | PGA Tour                |
|   55 | Erik van Rooyen      |        \-0.78 |         270 |             103 | RSA     | European Tour           |
|   56 | Ryan Moore           |        \-0.76 |         242 |              80 | USA     | PGA Tour                |
|   57 | Aaron Wise           |        \-0.75 |         244 |              85 | USA     | PGA Tour                |
|   58 | Lee Westwood         |        \-0.70 |         226 |              75 | ENG     | European Tour           |
|   59 | Kevin Streelman      |        \-0.69 |         269 |              87 | USA     | PGA Tour                |
|   60 | Kevin Na             |        \-0.67 |         247 |              77 | USA     | PGA Tour                |
|   61 | Bud Cauley           |        \-0.67 |         221 |              79 | USA     | PGA Tour                |
|   62 | Thorbjorn Olesen     |        \-0.66 |         247 |              70 | DEN     | European Tour           |
|   63 | Mike Lorenzo-Vera    |        \-0.66 |         232 |              73 | FRA     | European Tour           |
|   64 | Bubba Watson         |        \-0.65 |         221 |              78 | USA     | PGA Tour                |
|   65 | Emiliano Grillo      |        \-0.65 |         287 |              94 | ARG     | PGA Tour                |
|   66 | Thomas Pieters       |        \-0.64 |         237 |              80 | BEL     | European Tour           |
|   67 | Scottie Scheffler    |        \-0.63 |          94 |              78 | USA     | Web.com Tour            |
|   68 | Cameron Smith        |        \-0.62 |         272 |              98 | AUS     | PGA Tour                |
|   69 | Daniel Berger        |        \-0.62 |         244 |              74 | USA     | PGA Tour                |
|   70 | Russell Knox         |        \-0.62 |         286 |              92 | SCO     | PGA Tour                |
|   71 | Kyle Stanley         |        \-0.60 |         264 |              92 | USA     | PGA Tour                |
|   72 | Keegan Bradley       |        \-0.60 |         285 |             106 | USA     | PGA Tour                |
|   73 | Alex Noren           |        \-0.57 |         256 |              82 | SWE     | PGA Tour                |
|   74 | JT Poston            |        \-0.57 |         276 |              98 | USA     | PGA Tour                |
|   75 | Danny Willett        |        \-0.56 |         214 |              93 | ENG     | PGA Tour                |
|   76 | Graham Delaet        |        \-0.55 |          83 |               0 | CAN     | NA                      |
|   77 | Denny McCarthy       |        \-0.54 |         249 |              97 | USA     | PGA Tour                |
|   78 | Joost Luiten         |        \-0.53 |         222 |              67 | NED     | European Tour           |
|   79 | Martin Kaymer        |        \-0.53 |         258 |              93 | GER     | European Tour           |
|   80 | Dylan Frittelli      |        \-0.53 |         325 |             115 | RSA     | PGA Tour                |
|   81 | Zach Johnson         |        \-0.52 |         240 |              74 | USA     | PGA Tour                |
|   82 | Steve Stricker       |        \-0.49 |         108 |              20 | USA     | PGA Tour                |
|   83 | Bernd Wiesberger     |        \-0.44 |         219 |              64 | AUT     | European Tour           |
|   84 | Corey Conners        |        \-0.44 |         300 |              94 | CAN     | PGA Tour                |
|   85 | Pat Perez            |        \-0.43 |         231 |              67 | USA     | PGA Tour                |
|   86 | C.T. Pan             |        \-0.40 |         278 |              96 | TPE     | PGA Tour                |
|   87 | Thomas Detry         |        \-0.39 |         260 |              84 | BEL     | European Tour           |
|   88 | Brian Harman         |        \-0.39 |         287 |             101 | USA     | PGA Tour                |
|   89 | Eddie Pepperell      |        \-0.38 |         215 |              78 | ENG     | European Tour           |
|   90 | Justin Harding       |        \-0.37 |         251 |              99 | RSA     | Asian Tour              |
|   91 | Sam Burns            |        \-0.36 |         170 |              82 | USA     | PGA Tour                |
|   92 | Russell Henley       |        \-0.36 |         243 |              76 | USA     | PGA Tour                |
|   93 | Matt Jones           |        \-0.35 |         236 |              92 | AUS     | PGA Tour                |
|   94 | Aaron Baddeley       |        \-0.35 |         216 |              69 | AUS     | PGA Tour                |
|   95 | Jhonattan Vegas      |        \-0.35 |         269 |              80 | VEN     | PGA Tour                |
|   96 | Jorge Campillo       |        \-0.35 |         274 |              86 | ESP     | European Tour           |
|   97 | Andrea Pavan         |        \-0.35 |         231 |              88 | ITA     | European Tour           |
|   98 | Nick Taylor          |        \-0.34 |         282 |              99 | CAN     | PGA Tour                |
|   99 | Andy Sullivan        |        \-0.33 |         260 |              84 | ENG     | European Tour           |
|  100 | Branden Grace        |        \-0.33 |         287 |             100 | RSA     | PGA Tour                |
|  101 | Harold Varner III    |        \-0.32 |         300 |              90 | USA     | PGA Tour                |
|  102 | Keith Mitchell       |        \-0.31 |         267 |              93 | USA     | PGA Tour                |
|  103 | Troy Merritt         |        \-0.30 |         243 |              69 | USA     | PGA Tour                |
|  104 | Sam Ryder            |        \-0.29 |         241 |              76 | USA     | PGA Tour                |
|  105 | Jordan L Smith       |        \-0.28 |         270 |              86 | ENG     | European Tour           |
|  106 | Kevin Tway           |        \-0.28 |         282 |              88 | USA     | PGA Tour                |
|  107 | Ryan Palmer          |        \-0.27 |         190 |              76 | USA     | PGA Tour                |
|  108 | Nick Watney          |        \-0.27 |         242 |              91 | USA     | PGA Tour                |
|  109 | Joel Dahmen          |        \-0.27 |         245 |             100 | USA     | PGA Tour                |
|  110 | Charley Hoffman      |        \-0.27 |         270 |              78 | USA     | PGA Tour                |
|  111 | Wyndham Clark        |        \-0.26 |         181 |              97 | USA     | PGA Tour                |
|  112 | Graeme McDowell      |        \-0.26 |         259 |              78 | NIR     | PGA Tour                |
|  113 | Nate Lashley         |        \-0.26 |         248 |              84 | USA     | PGA Tour                |
|  114 | Shugo Imahira        |        \-0.26 |         291 |             101 | JPN     | Japan Golf Tour         |
|  115 | Martin Laird         |        \-0.25 |         233 |              84 | SCO     | PGA Tour                |
|  116 | Andrew Landry        |        \-0.25 |         239 |              86 | USA     | PGA Tour                |
|  117 | Jazz Janewattananond |        \-0.25 |         280 |             105 | THA     | Asian Tour              |
|  118 | Ryan Armour          |        \-0.25 |         276 |             104 | USA     | PGA Tour                |
|  119 | Adam Schenk          |        \-0.24 |         289 |             116 | USA     | PGA Tour                |
|  120 | Juan Sebastian Munoz |        \-0.24 |         252 |              98 | COL     | PGA Tour                |
|  121 | Brian Stuard         |        \-0.23 |         286 |             102 | USA     | PGA Tour                |
|  122 | Cameron Percy        |        \-0.22 |         219 |              56 | AUS     | Web.com Tour            |
|  123 | Michael Thompson     |        \-0.22 |         207 |              83 | USA     | PGA Tour                |
|  124 | Matthias Schwab      |        \-0.21 |         209 |              92 | AUT     | European Tour           |
|  125 | Victor Dubuisson     |        \-0.21 |         108 |              48 | FRA     | European Tour           |
|  126 | Bronson Burgoon      |        \-0.21 |         167 |              67 | USA     | PGA Tour                |
|  127 | Kiradech Aphibarnrat |        \-0.20 |         293 |              89 | THA     | PGA Tour                |
|  128 | Peter Malnati        |        \-0.20 |         267 |              99 | USA     | PGA Tour                |
|  129 | Siwoo Kim            |        \-0.19 |         273 |              96 | KOR     | PGA Tour                |
|  130 | Mackenzie Hughes     |        \-0.19 |         268 |              76 | CAN     | PGA Tour                |
|  131 | Tom Lewis            |        \-0.18 |         212 |              82 | ENG     | European Tour           |
|  132 | Julian Suri          |        \-0.18 |         222 |              60 | USA     | European Tour           |
|  133 | Brice Garnett        |        \-0.17 |         269 |              95 | USA     | PGA Tour                |
|  134 | Calum Hill(Nov1994)  |        \-0.17 |          98 |              74 | SCO     | European Challenge Tour |
|  135 | Cameron Tringale     |        \-0.16 |         237 |              77 | USA     | PGA Tour                |
|  136 | Beau Hossler         |        \-0.15 |         270 |              99 | USA     | PGA Tour                |
|  137 | Phil Mickelson       |        \-0.14 |         239 |              76 | USA     | PGA Tour                |
|  138 | Paul Waring          |        \-0.14 |         226 |              71 | ENG     | European Tour           |
|  139 | J.J Spaun            |        \-0.13 |         253 |              93 | USA     | PGA Tour                |
|  140 | Chan Kim             |        \-0.13 |         144 |              35 | USA     | Japan Golf Tour         |
|  141 | Kevin Chappell       |        \-0.12 |         202 |              22 | USA     | PGA Tour                |
|  142 | Zhang Xinjun         |        \-0.12 |         275 |              89 | CHN     | Web.com Tour            |
|  143 | Alexander Bjork      |        \-0.11 |         273 |              69 | SWE     | European Tour           |
|  144 | Talor Gooch          |        \-0.10 |         232 |              72 | USA     | PGA Tour                |
|  145 | Luke List            |        \-0.10 |         263 |              73 | USA     | PGA Tour                |
|  146 | Mikko Korhonen       |        \-0.10 |         231 |              85 | FIN     | European Tour           |
|  147 | Bill Haas            |        \-0.09 |         235 |              68 | USA     | PGA Tour                |
|  148 | Harry Higgs          |        \-0.08 |         132 |             103 | USA     | Web.com Tour            |
|  149 | Jason Dufner         |        \-0.07 |         232 |              76 | USA     | PGA Tour                |
|  150 | Johnson Wagner       |        \-0.06 |         212 |              66 | USA     | PGA Tour                |
|  151 | Carlos Ortiz         |        \-0.06 |         267 |              98 | MEX     | PGA Tour                |
|  152 | Austin Cook          |        \-0.06 |         264 |              76 | USA     | PGA Tour                |
|  153 | Joseph Bramlett      |        \-0.06 |         157 |              80 | USA     | Web.com Tour            |
|  154 | Chris Kirk           |        \-0.05 |         242 |              57 | USA     | PGA Tour                |
|  155 | Brendon Todd         |        \-0.05 |          72 |              37 | USA     | PGA Tour                |
|  156 | Benjamin Hebert      |        \-0.03 |         247 |              76 | FRA     | European Tour           |
|  157 | Shawn Stefani        |        \-0.03 |         250 |              96 | USA     | PGA Tour                |
|  158 | Sanghyun Park        |        \-0.03 |         271 |              85 | KOR     | Asian Tour              |
|  159 | Fabrizio Zanotti     |        \-0.01 |         223 |              66 | PAR     | European Tour           |
|  160 | Victor Perez         |          0.00 |         215 |              78 | FRA     | European Tour           |
|  161 | Scott Stallings      |          0.00 |         256 |              86 | USA     | PGA Tour                |
|  162 | Rikuya Hoshino       |          0.01 |         215 |              77 | JPN     | Japan Golf Tour         |
|  163 | D.J. Trahan          |          0.01 |         107 |              41 | USA     | PGA Tour                |
|  164 | Lucas Bjerregaard    |          0.02 |         273 |              96 | DEN     | European Tour           |
|  165 | Kramer Hickok        |          0.02 |         234 |              95 | USA     | PGA Tour                |
|  166 | Harris English       |          0.02 |         259 |              97 | USA     | PGA Tour                |
|  167 | Seungyul Noh         |          0.03 |          94 |               0 | KOR     | NA                      |
|  168 | Jimmy Walker         |          0.03 |         238 |              84 | USA     | PGA Tour                |
|  169 | Sepp Straka          |          0.03 |         257 |              86 | AUT     | PGA Tour                |
|  170 | Roger Sloan          |          0.03 |         243 |              98 | CAN     | PGA Tour                |
|  171 | Adria Arnaus         |          0.04 |         199 |              98 | ESP     | European Tour           |
|  172 | Danny Lee            |          0.04 |         261 |              88 | NZL     | PGA Tour                |
|  173 | Henrik Norlander     |          0.04 |         232 |              84 | SWE     | Web.com Tour            |
|  174 | Romain Langasque     |          0.04 |         249 |              82 | FRA     | European Tour           |
|  175 | Peter Uihlein        |          0.04 |         262 |              91 | USA     | PGA Tour                |
|  176 | Robert MacIntyre     |          0.05 |         160 |              93 | SCO     | European Tour           |
|  177 | Andrew Johnston      |          0.05 |         203 |              65 | ENG     | European Tour           |
|  178 | Patton Kizzire       |          0.05 |         241 |              90 | USA     | PGA Tour                |
|  179 | Kristoffer Ventura   |          0.05 |          65 |              37 | NOR     | Korn Ferry Tour KGT     |
|  180 | Max Homa             |          0.06 |         216 |              94 | USA     | PGA Tour                |
|  181 | James Hahn           |          0.06 |         220 |              40 | USA     | PGA Tour                |
|  182 | Sam Horsfield        |          0.07 |         155 |              71 | ENG     | European Tour           |
|  183 | Grayson Murray       |          0.08 |         218 |              46 | USA     | PGA Tour                |
|  184 | Chesson Hadley       |          0.08 |         263 |              84 | USA     | PGA Tour                |
|  185 | Lanto Griffin        |          0.08 |         268 |              79 | USA     | Web.com Tour            |
|  186 | Josh Teater          |          0.08 |         269 |              85 | USA     | PGA Tour                |
|  187 | Jonas Blixt          |          0.08 |         219 |              80 | SWE     | PGA Tour                |
|  188 | Cameron Davis        |          0.09 |         205 |              96 | AUS     | PGA Tour                |
|  189 | Ryan Brehm           |          0.09 |         235 |              65 | USA     | Web.com Tour            |
|  190 | Sean Crocker         |          0.09 |         142 |              74 | USA     | European Tour           |
|  191 | Junggon Hwang        |          0.09 |         285 |              81 | KOR     | Japan Golf Tour         |
|  192 | Mark Hubbard         |          0.09 |         251 |              87 | USA     | Web.com Tour            |
|  193 | J.B. Holmes          |          0.10 |         241 |              76 | USA     | PGA Tour                |
|  194 | Zac Blair            |          0.10 |         290 |              98 | USA     | Web.com Tour            |
|  195 | Cormac Sharvin       |          0.10 |         176 |              64 | NIR     | European Challenge Tour |
|  196 | Stewart Cink         |          0.10 |         235 |              53 | USA     | PGA Tour                |
|  197 | Sunghoon Kang        |          0.10 |         276 |              88 | KOR     | PGA Tour                |
|  198 | Scott Brown          |          0.10 |         275 |              84 | USA     | PGA Tour                |
|  199 | Bo Hoag              |          0.11 |         217 |              95 | USA     | Web.com Tour            |
|  200 | Brian Gay            |          0.12 |         275 |             100 | USA     | PGA Tour                |

Current Golf Ratings
