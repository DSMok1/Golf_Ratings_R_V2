Current Golf Ratings
================
DSMok1
June 25, 2019

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
minimum of 40 rounds were included and tournament rounds with a minimum
of 15 ranked players were included.

## Data

The full output is located at
<https://github.com/DSMok1/Golf_Ratings_R_V2/blob/master/Output/Recent_Ratings.csv>

| Rank | Player\_Name         | Player\_Value | Num\_Rounds | Num\_Rounds\_Yr | Country | Tour\_Yr |
| ---: | :------------------- | ------------: | ----------: | --------------: | :------ | -------: |
|    1 | Dustin Johnson       |        \-2.55 |         250 |              90 | USA     |        1 |
|    2 | Rory McIlroy         |        \-2.47 |         229 |              90 | NIR     |        1 |
|    3 | Patrick Cantlay      |        \-2.30 |         184 |              84 | USA     |        1 |
|    4 | Tiger Woods          |        \-2.09 |         112 |              66 | USA     |        1 |
|    5 | Justin Rose          |        \-2.05 |         258 |              86 | ENG     |        1 |
|    6 | Jon Rahm             |        \-2.01 |         257 |              88 | ESP     |        1 |
|    7 | Jason Day            |        \-1.92 |         214 |              78 | AUS     |        1 |
|    8 | Webb Simpson         |        \-1.89 |         269 |              92 | USA     |        1 |
|    9 | Brooks Koepka        |        \-1.87 |         244 |              96 | USA     |        1 |
|   10 | Rickie Fowler        |        \-1.87 |         268 |              90 | USA     |        1 |
|   11 | Justin Thomas        |        \-1.84 |         265 |              86 | USA     |        1 |
|   12 | Adam Scott           |        \-1.83 |         231 |              71 | AUS     |        1 |
|   13 | Paul Casey           |        \-1.78 |         258 |              84 | ENG     |        1 |
|   14 | Xander Schauffele    |        \-1.73 |         297 |              96 | USA     |        1 |
|   15 | Matt Kuchar          |        \-1.71 |         300 |              92 | USA     |        1 |
|   16 | Gary Woodland        |        \-1.71 |         277 |             101 | USA     |        1 |
|   17 | Hideki Matsuyama     |        \-1.61 |         272 |             103 | JPN     |        1 |
|   18 | Tommy Fleetwood      |        \-1.59 |         313 |             110 | ENG     |        1 |
|   19 | Bryson DeChambeau    |        \-1.57 |         268 |              92 | USA     |        1 |
|   20 | Tony Finau           |        \-1.41 |         300 |             102 | USA     |        1 |
|   21 | Marc Leishman        |        \-1.35 |         278 |              90 | AUS     |        1 |
|   22 | Henrik Stenson       |        \-1.34 |         240 |              82 | SWE     |        1 |
|   23 | Louis Oosthuizen     |        \-1.33 |         236 |              80 | RSA     |        1 |
|   24 | Chez Reavie          |        \-1.31 |         269 |              86 | USA     |        1 |
|   25 | Francesco Molinari   |        \-1.30 |         254 |              76 | ITA     |        1 |
|   26 | Jim Furyk            |        \-1.20 |         187 |              70 | USA     |        1 |
|   27 | Sergio Garcia        |        \-1.20 |         239 |              83 | ESP     |        1 |
|   28 | Jordan Spieth        |        \-1.19 |         258 |              86 | USA     |        1 |
|   29 | Matthew Fitzpatrick  |        \-1.09 |         283 |             100 | ENG     |        1 |
|   30 | Billy Horschel       |        \-1.09 |         257 |             102 | USA     |        1 |
|   31 | Ian Poulter          |        \-1.08 |         266 |              92 | ENG     |        1 |
|   32 | Shane Lowry          |        \-1.07 |         251 |              83 | IRL     |        1 |
|   33 | Rafael Cabrera Bello |        \-1.05 |         316 |             106 | ESP     |        1 |
|   34 | Tyrrell Hatton       |        \-1.05 |         270 |              96 | ENG     |        1 |
|   35 | Charles Howell III   |        \-1.04 |         260 |              88 | USA     |        1 |
|   36 | Patrick Reed         |        \-1.03 |         336 |             104 | USA     |        1 |
|   37 | Lucas Glover         |        \-1.03 |         239 |              74 | USA     |        1 |
|   38 | Keegan Bradley       |        \-0.97 |         295 |             104 | USA     |        1 |
|   39 | Kevin Na             |        \-0.94 |         261 |              89 | USA     |        1 |
|   40 | Matt Wallace         |        \-0.94 |         265 |             110 | ENG     |        1 |
|   41 | Scott Piercy         |        \-0.94 |         239 |              90 | USA     |        1 |
|   42 | Emiliano Grillo      |        \-0.93 |         307 |              96 | ARG     |        1 |
|   43 | Rory Sabbatini       |        \-0.89 |         249 |              89 | RSA     |        1 |
|   44 | Ryan Moore           |        \-0.89 |         250 |              82 | USA     |        1 |
|   45 | Russell Knox         |        \-0.88 |         294 |              98 | SCO     |        1 |
|   46 | Byeong Hun An        |        \-0.87 |         289 |              98 | KOR     |        1 |
|   47 | Kevin Streelman      |        \-0.86 |         267 |              83 | USA     |        1 |
|   48 | Haotong Li           |        \-0.85 |         269 |              94 | CHN     |        1 |
|   49 | Adam Hadwin          |        \-0.85 |         275 |              90 | CAN     |        1 |
|   50 | Jason Kokrak         |        \-0.82 |         286 |              98 | USA     |        1 |
|   51 | Aaron Wise           |        \-0.81 |         247 |              79 | USA     |        1 |
|   52 | Bubba Watson         |        \-0.81 |         233 |              80 | USA     |        1 |
|   53 | Brandt Snedeker      |        \-0.80 |         257 |             101 | USA     |        1 |
|   54 | Scottie Scheffler    |        \-0.80 |          72 |              58 | USA     |        1 |
|   55 | Kevin Kisner         |        \-0.79 |         278 |              88 | USA     |        1 |
|   56 | Phil Mickelson       |        \-0.76 |         243 |              74 | USA     |        1 |
|   57 | Abraham Ancer        |        \-0.73 |         287 |             102 | MEX     |        1 |
|   58 | Sungjae Im           |        \-0.71 |         342 |             130 | KOR     |        1 |
|   59 | Lee Westwood         |        \-0.69 |         228 |              69 | ENG     |        1 |
|   60 | Joost Luiten         |        \-0.69 |         226 |              53 | NED     |        1 |
|   61 | Andrew Putnam        |        \-0.69 |         264 |              89 | USA     |        1 |
|   62 | Charley Hoffman      |        \-0.68 |         278 |              84 | USA     |        1 |
|   63 | Zach Johnson         |        \-0.67 |         254 |              84 | USA     |        1 |
|   64 | Vaughn Taylor        |        \-0.65 |         263 |              83 | USA     |        1 |
|   65 | Bud Cauley           |        \-0.64 |         225 |              61 | USA     |        1 |
|   66 | Graeme McDowell      |        \-0.64 |         265 |              86 | NIR     |        1 |
|   67 | Luke List            |        \-0.61 |         271 |              77 | USA     |        1 |
|   68 | Pat Perez            |        \-0.60 |         219 |              71 | USA     |        1 |
|   69 | Michael Thompson     |        \-0.60 |         208 |              84 | USA     |        1 |
|   70 | Daniel Berger        |        \-0.59 |         244 |              76 | USA     |        1 |
|   71 | Julian Suri          |        \-0.59 |         228 |              72 | USA     |        1 |
|   72 | Joaquin Niemann      |        \-0.59 |         134 |              94 | CHI     |        1 |
|   73 | Steve Stricker       |        \-0.59 |         128 |              30 | USA     |        1 |
|   74 | Kevin Tway           |        \-0.58 |         294 |              86 | USA     |        1 |
|   75 | Thorbjorn Olesen     |        \-0.58 |         251 |              80 | DEN     |        1 |
|   76 | Kevin Chappell       |        \-0.58 |         214 |              36 | USA     |        1 |
|   77 | C.T. Pan             |        \-0.57 |         294 |              94 | TPE     |        1 |
|   78 | Graham Delaet        |        \-0.56 |          99 |               0 | CAN     |       NA |
|   79 | Mike Lorenzo-Vera    |        \-0.56 |         232 |              77 | FRA     |        1 |
|   80 | Thomas Pieters       |        \-0.55 |         251 |              90 | BEL     |        1 |
|   81 | Eddie Pepperell      |        \-0.53 |         215 |              74 | ENG     |        1 |
|   82 | Cameron Smith        |        \-0.53 |         270 |              94 | AUS     |        1 |
|   83 | Martin Kaymer        |        \-0.53 |         272 |              97 | GER     |        1 |
|   84 | Jordan L Smith       |        \-0.52 |         290 |              96 | ENG     |        1 |
|   85 | Peter Malnati        |        \-0.51 |         270 |             100 | USA     |        1 |
|   86 | Nick Watney          |        \-0.51 |         226 |              95 | USA     |        1 |
|   87 | Alex Noren           |        \-0.51 |         256 |              80 | SWE     |        1 |
|   88 | Ryan Palmer          |        \-0.51 |         194 |              75 | USA     |        1 |
|   89 | Siwoo Kim            |        \-0.50 |         275 |              98 | KOR     |        1 |
|   90 | Keith Mitchell       |        \-0.50 |         279 |              95 | USA     |        1 |
|   91 | Joel Dahmen          |        \-0.50 |         255 |             102 | USA     |        1 |
|   92 | Sam Burns            |        \-0.49 |         160 |              94 | USA     |        1 |
|   93 | Kyle Stanley         |        \-0.49 |         268 |              88 | USA     |        1 |
|   94 | Denny McCarthy       |        \-0.49 |         257 |              93 | USA     |        1 |
|   95 | Erik van Rooyen      |        \-0.49 |         260 |              99 | RSA     |        1 |
|   96 | Sunghoon Kang        |        \-0.47 |         282 |              87 | KOR     |        1 |
|   97 | Jazz Janewattananond |        \-0.45 |         271 |             112 | THA     |        1 |
|   98 | Jhonattan Vegas      |        \-0.44 |         281 |              84 | VEN     |        1 |
|   99 | Aaron Baddeley       |        \-0.44 |         234 |              83 | AUS     |        1 |
|  100 | Danny Willett        |        \-0.43 |         216 |              95 | ENG     |        1 |
|  101 | Matt Jones           |        \-0.43 |         244 |              91 | AUS     |        1 |
|  102 | Dylan Frittelli      |        \-0.42 |         335 |             105 | RSA     |        1 |
|  103 | Cameron Percy        |        \-0.40 |         221 |              70 | AUS     |        1 |
|  104 | Justin Harding       |        \-0.40 |         242 |             101 | RSA     |        1 |
|  105 | Troy Merritt         |        \-0.39 |         251 |              66 | USA     |        1 |
|  106 | Victor Dubuisson     |        \-0.39 |         108 |              34 | FRA     |        1 |
|  107 | Kiradech Aphibarnrat |        \-0.38 |         298 |              92 | THA     |        1 |
|  108 | Shugo Imahira        |        \-0.38 |         290 |              97 | JPN     |        1 |
|  109 | Martin Laird         |        \-0.38 |         237 |              74 | SCO     |        1 |
|  110 | Harold Varner III    |        \-0.36 |         300 |              90 | USA     |        1 |
|  111 | Sam Ryder            |        \-0.36 |         253 |              82 | USA     |        1 |
|  112 | Zhang Xinjun         |        \-0.34 |         255 |              93 | CHN     |        1 |
|  113 | Talor Gooch          |        \-0.34 |         231 |              67 | USA     |        1 |
|  114 | Nick Taylor          |        \-0.33 |         278 |             100 | CAN     |        1 |
|  115 | J.J Spaun            |        \-0.33 |         269 |              93 | USA     |        1 |
|  116 | Branden Grace        |        \-0.31 |         293 |              96 | RSA     |        1 |
|  117 | Jorge Campillo       |        \-0.31 |         271 |              93 | ESP     |        1 |
|  118 | JT Poston            |        \-0.31 |         286 |              96 | USA     |        1 |
|  119 | Jamie Lovemark       |        \-0.31 |         232 |              50 | USA     |        1 |
|  120 | Jimmy Walker         |        \-0.30 |         243 |              87 | USA     |        1 |
|  121 | Brian Stuard         |        \-0.29 |         294 |             101 | USA     |        1 |
|  122 | Ryan Armour          |        \-0.27 |         280 |             100 | USA     |        1 |
|  123 | Matthias Schwab      |        \-0.25 |         199 |              96 | AUT     |        1 |
|  124 | Stewart Cink         |        \-0.25 |         229 |              59 | USA     |        1 |
|  125 | Brian Gay            |        \-0.24 |         269 |             108 | USA     |        1 |
|  126 | Russell Henley       |        \-0.24 |         247 |              74 | USA     |        1 |
|  127 | Danny Lee            |        \-0.23 |         273 |              92 | NZL     |        1 |
|  128 | David Lipsky         |        \-0.23 |         280 |              94 | USA     |        1 |
|  129 | Chan Kim             |        \-0.22 |         149 |              26 | USA     |        1 |
|  130 | Thomas Detry         |        \-0.21 |         276 |              92 | BEL     |        1 |
|  131 | Chesson Hadley       |        \-0.21 |         271 |              87 | USA     |        1 |
|  132 | Juan Sebastian Munoz |        \-0.20 |         248 |              94 | COL     |        1 |
|  133 | Alexander Bjork      |        \-0.20 |         285 |              81 | SWE     |        1 |
|  134 | Jason Dufner         |        \-0.20 |         238 |              72 | USA     |        1 |
|  135 | Austin Cook          |        \-0.19 |         282 |              80 | USA     |        1 |
|  136 | Tom Lewis            |        \-0.19 |         212 |              90 | ENG     |        1 |
|  137 | Mackenzie Hughes     |        \-0.18 |         278 |              78 | CAN     |        1 |
|  138 | Peter Uihlein        |        \-0.17 |         244 |              85 | USA     |        1 |
|  139 | Andrea Pavan         |        \-0.16 |         235 |              88 | ITA     |        1 |
|  140 | Corey Conners        |        \-0.16 |         299 |              92 | CAN     |        1 |
|  141 | Brian Harman         |        \-0.16 |         289 |              95 | USA     |        1 |
|  142 | Max Homa             |        \-0.16 |         215 |             101 | USA     |        1 |
|  143 | Beau Hossler         |        \-0.15 |         248 |              92 | USA     |        1 |
|  144 | Adam Schenk          |        \-0.15 |         295 |             112 | USA     |        1 |
|  145 | Cameron Champ        |        \-0.15 |         148 |              93 | USA     |        1 |
|  146 | Mikko Korhonen       |        \-0.14 |         227 |              77 | FIN     |        1 |
|  147 | Jonas Blixt          |        \-0.14 |         223 |              86 | SWE     |        1 |
|  148 | Chris Kirk           |        \-0.14 |         264 |              77 | USA     |        1 |
|  149 | Nate Lashley         |        \-0.14 |         258 |              68 | USA     |        1 |
|  150 | Charlie Danielson    |        \-0.13 |          84 |              12 | USA     |        1 |
|  151 | Chase Seiffert       |        \-0.13 |          83 |              68 | USA     |        1 |
|  152 | Patrick Rodgers      |        \-0.12 |         234 |              64 | USA     |        1 |
|  153 | Trey Mullinax        |        \-0.11 |         263 |              83 | USA     |        1 |
|  154 | Andy Sullivan        |        \-0.11 |         266 |              84 | ENG     |        1 |
|  155 | Kyounghoon Lee       |        \-0.08 |         327 |             105 | KOR     |        1 |
|  156 | Tyler McCumber       |        \-0.07 |         192 |              79 | USA     |        1 |
|  157 | Ross Fisher          |        \-0.06 |         249 |              78 | ENG     |        1 |
|  158 | Scott Stallings      |        \-0.06 |         253 |              85 | USA     |        1 |
|  159 | Harris English       |        \-0.05 |         259 |              92 | USA     |        1 |
|  160 | Fabrizio Zanotti     |        \-0.05 |         229 |              62 | PAR     |        1 |
|  161 | Doug Ghim            |        \-0.04 |          84 |              74 | USA     |        1 |
|  162 | James Hahn           |        \-0.03 |         240 |              58 | USA     |        1 |
|  163 | Lucas Bjerregaard    |        \-0.03 |         275 |              98 | DEN     |        1 |
|  164 | Adam Long            |        \-0.02 |         256 |              94 | USA     |        1 |
|  165 | Seungyul Noh         |        \-0.02 |         110 |               0 | KOR     |       NA |
|  166 | Henrik Norlander     |        \-0.01 |         232 |              88 | SWE     |        1 |
|  167 | Wyndham Clark        |          0.00 |         159 |              91 | USA     |        1 |
|  168 | Paul Waring          |          0.00 |         204 |              65 | ENG     |        1 |
|  169 | Adrian Otaegui       |          0.00 |         267 |              92 | ESP     |        1 |
|  170 | Richard Sterne       |          0.01 |         247 |              79 | RSA     |        1 |
|  171 | Sean Crocker         |          0.01 |         132 |              84 | USA     |        1 |
|  172 | Carlos Ortiz         |          0.01 |         267 |             110 | MEX     |        1 |
|  173 | Alex Prugh           |          0.02 |         270 |              96 | USA     |        1 |
|  174 | Robby Shelton IV     |          0.02 |         201 |              86 | USA     |        1 |
|  175 | Ernie Els            |          0.02 |         214 |              80 | RSA     |        1 |
|  176 | Sanghyun Park        |          0.03 |         271 |              90 | KOR     |        1 |
|  177 | Johnson Wagner       |          0.04 |         211 |              71 | USA     |        1 |
|  178 | J.B. Holmes          |          0.04 |         241 |              68 | USA     |        1 |
|  179 | Shawn Stefani        |          0.04 |         250 |              89 | USA     |        1 |
|  180 | Roberto Diaz         |          0.05 |         262 |              85 | MEX     |        1 |
|  181 | Andrew Landry        |          0.05 |         235 |              84 | USA     |        1 |
|  182 | Scott Brown          |          0.06 |         275 |              94 | USA     |        1 |
|  183 | Lanto Griffin        |          0.07 |         248 |              87 | USA     |        1 |
|  184 | Benjamin Hebert      |          0.07 |         245 |              76 | FRA     |        1 |
|  185 | Hank Lebioda         |          0.08 |         246 |              89 | USA     |        1 |
|  186 | Bronson Burgoon      |          0.09 |         161 |              65 | USA     |        1 |
|  187 | Charl Schwartzel     |          0.09 |         233 |              67 | RSA     |        1 |
|  188 | Ryan Fox             |          0.09 |         285 |              91 | NZL     |        1 |
|  189 | Bernd Wiesberger     |          0.10 |         219 |              44 | AUT     |        1 |
|  190 | Vincent Whaley       |          0.10 |          54 |              52 | USA     |        1 |
|  191 | Brendan Steele       |          0.10 |         231 |              74 | USA     |        1 |
|  192 | D.J. Trahan          |          0.10 |         103 |              38 | USA     |        1 |
|  193 | Nacho Elvira         |          0.10 |         260 |              86 | ESP     |        1 |
|  194 | Bill Haas            |          0.11 |         242 |              72 | USA     |        1 |
|  195 | Cameron Tringale     |          0.11 |         241 |              74 | USA     |        1 |
|  196 | William McGirt       |          0.11 |         190 |              22 | USA     |        1 |
|  197 | Richy Werenski       |          0.11 |         257 |              85 | USA     |        1 |
|  198 | Kramer Hickok        |          0.11 |         216 |              97 | USA     |        1 |
|  199 | Brice Garnett        |          0.11 |         263 |              85 | USA     |        1 |
|  200 | Zack Sucher          |          0.12 |         130 |              40 | USA     |        1 |

Current Golf Ratings
