Current Golf Ratings
================
DSMok1
May 21, 2019

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
|    1 | Dustin Johnson       |        \-2.74 |         258 |              90 | USA     |        1 |
|    2 | Rory McIlroy         |        \-2.33 |         229 |              86 | NIR     |        1 |
|    3 | Justin Thomas        |        \-2.26 |         259 |              86 | USA     |        1 |
|    4 | Patrick Cantlay      |        \-2.08 |         172 |              82 | USA     |        1 |
|    5 | Justin Rose          |        \-2.07 |         248 |              82 | ENG     |        1 |
|    6 | Jon Rahm             |        \-2.05 |         255 |              86 | ESP     |        1 |
|    7 | Jason Day            |        \-2.02 |         212 |              74 | AUS     |        1 |
|    8 | Tiger Woods          |        \-2.00 |         104 |              62 | USA     |        1 |
|    9 | Brooks Koepka        |        \-1.98 |         244 |              96 | USA     |        1 |
|   10 | Rickie Fowler        |        \-1.98 |         262 |              88 | USA     |        1 |
|   11 | Webb Simpson         |        \-1.73 |         271 |              86 | USA     |        1 |
|   12 | Matt Kuchar          |        \-1.67 |         306 |              90 | USA     |        1 |
|   13 | Paul Casey           |        \-1.66 |         254 |              84 | ENG     |        1 |
|   14 | Tommy Fleetwood      |        \-1.65 |         311 |             114 | ENG     |        1 |
|   15 | Xander Schauffele    |        \-1.63 |         298 |              90 | USA     |        1 |
|   16 | Tony Finau           |        \-1.60 |         304 |             100 | USA     |        1 |
|   17 | Bryson DeChambeau    |        \-1.58 |         266 |              92 | USA     |        1 |
|   18 | Gary Woodland        |        \-1.56 |         279 |              97 | USA     |        1 |
|   19 | Sergio Garcia        |        \-1.46 |         239 |              79 | ESP     |        1 |
|   20 | Hideki Matsuyama     |        \-1.46 |         268 |             103 | JPN     |        1 |
|   21 | Francesco Molinari   |        \-1.44 |         252 |              76 | ITA     |        1 |
|   22 | Adam Scott           |        \-1.42 |         231 |              73 | AUS     |        1 |
|   23 | Louis Oosthuizen     |        \-1.31 |         232 |              80 | RSA     |        1 |
|   24 | Ian Poulter          |        \-1.30 |         264 |              96 | ENG     |        1 |
|   25 | Charles Howell III   |        \-1.20 |         266 |              94 | USA     |        1 |
|   26 | Lucas Glover         |        \-1.20 |         241 |              70 | USA     |        1 |
|   27 | Henrik Stenson       |        \-1.17 |         232 |              78 | SWE     |        1 |
|   28 | Marc Leishman        |        \-1.16 |         280 |              92 | AUS     |        1 |
|   29 | Jordan Spieth        |        \-1.16 |         260 |              82 | USA     |        1 |
|   30 | Bubba Watson         |        \-1.15 |         231 |              78 | USA     |        1 |
|   31 | Matthew Fitzpatrick  |        \-1.12 |         281 |              96 | ENG     |        1 |
|   32 | Jason Kokrak         |        \-1.09 |         290 |              96 | USA     |        1 |
|   33 | Rafael Cabrera Bello |        \-1.08 |         320 |             106 | ESP     |        1 |
|   34 | Phil Mickelson       |        \-1.03 |         245 |              76 | USA     |        1 |
|   35 | Scott Piercy         |        \-1.02 |         243 |              86 | USA     |        1 |
|   36 | Keegan Bradley       |        \-1.02 |         293 |              98 | USA     |        1 |
|   37 | Jim Furyk            |        \-1.01 |         181 |              62 | USA     |        1 |
|   38 | Patrick Reed         |        \-0.98 |         338 |             106 | USA     |        1 |
|   39 | Chez Reavie          |        \-0.96 |         267 |              84 | USA     |        1 |
|   40 | Aaron Wise           |        \-0.93 |         241 |              77 | USA     |        1 |
|   41 | Joost Luiten         |        \-0.92 |         230 |              47 | NED     |        1 |
|   42 | Byeong Hun An        |        \-0.89 |         287 |              98 | KOR     |        1 |
|   43 | Billy Horschel       |        \-0.89 |         249 |              96 | USA     |        1 |
|   44 | Emiliano Grillo      |        \-0.87 |         303 |              90 | ARG     |        1 |
|   45 | Haotong Li           |        \-0.87 |         271 |              94 | CHN     |        1 |
|   46 | Tyrrell Hatton       |        \-0.86 |         270 |              88 | ENG     |        1 |
|   47 | Cameron Smith        |        \-0.85 |         270 |              90 | AUS     |        1 |
|   48 | Matt Wallace         |        \-0.83 |         262 |             108 | ENG     |        1 |
|   49 | Luke List            |        \-0.83 |         273 |              79 | USA     |        1 |
|   50 | Zach Johnson         |        \-0.81 |         256 |              80 | USA     |        1 |
|   51 | Shane Lowry          |        \-0.80 |         253 |              85 | IRL     |        1 |
|   52 | Adam Hadwin          |        \-0.80 |         277 |              87 | CAN     |        1 |
|   53 | Scottie Scheffler    |        \-0.79 |          62 |              54 | USA     |        1 |
|   54 | Thomas Pieters       |        \-0.75 |         251 |              86 | BEL     |        1 |
|   55 | Ryan Moore           |        \-0.75 |         250 |              80 | USA     |        1 |
|   56 | Kevin Na             |        \-0.75 |         263 |              91 | USA     |        1 |
|   57 | Kevin Kisner         |        \-0.74 |         274 |              85 | USA     |        1 |
|   58 | Bud Cauley           |        \-0.73 |         225 |              55 | USA     |        1 |
|   59 | Brandt Snedeker      |        \-0.73 |         249 |              99 | USA     |        1 |
|   60 | Victor Dubuisson     |        \-0.73 |         108 |              30 | FRA     |        1 |
|   61 | Abraham Ancer        |        \-0.73 |         283 |             100 | MEX     |        1 |
|   62 | Siwoo Kim            |        \-0.71 |         273 |              98 | KOR     |        1 |
|   63 | Rory Sabbatini       |        \-0.70 |         237 |              89 | RSA     |        1 |
|   64 | Charley Hoffman      |        \-0.70 |         282 |              84 | USA     |        1 |
|   65 | Daniel Berger        |        \-0.69 |         242 |              66 | USA     |        1 |
|   66 | Julian Suri          |        \-0.68 |         226 |              78 | USA     |        1 |
|   67 | Russell Knox         |        \-0.68 |         296 |             104 | SCO     |        1 |
|   68 | Sunghoon Kang        |        \-0.67 |         289 |              93 | KOR     |        1 |
|   69 | Thorbjorn Olesen     |        \-0.67 |         251 |              82 | DEN     |        1 |
|   70 | Alex Noren           |        \-0.67 |         254 |              78 | SWE     |        1 |
|   71 | Pat Perez            |        \-0.66 |         215 |              75 | USA     |        1 |
|   72 | Sungjae Im           |        \-0.63 |         336 |             136 | KOR     |        1 |
|   73 | Joel Dahmen          |        \-0.63 |         258 |             100 | USA     |        1 |
|   74 | Jhonattan Vegas      |        \-0.62 |         279 |              86 | VEN     |        1 |
|   75 | Denny McCarthy       |        \-0.60 |         261 |              97 | USA     |        1 |
|   76 | Lee Westwood         |        \-0.60 |         236 |              71 | ENG     |        1 |
|   77 | Kevin Chappell       |        \-0.58 |         222 |              44 | USA     |        1 |
|   78 | Mike Lorenzo-Vera    |        \-0.58 |         242 |              81 | FRA     |        1 |
|   79 | Graeme McDowell      |        \-0.55 |         267 |              82 | NIR     |        1 |
|   80 | Graham Delaet        |        \-0.55 |         101 |               0 | CAN     |       NA |
|   81 | Eddie Pepperell      |        \-0.55 |         223 |              80 | ENG     |        1 |
|   82 | Michael Thompson     |        \-0.55 |         208 |              84 | USA     |        1 |
|   83 | Kevin Streelman      |        \-0.53 |         265 |              83 | USA     |        1 |
|   84 | Kiradech Aphibarnrat |        \-0.52 |         296 |              94 | THA     |        1 |
|   85 | Keith Mitchell       |        \-0.52 |         284 |              97 | USA     |        1 |
|   86 | Kyle Stanley         |        \-0.51 |         266 |              86 | USA     |        1 |
|   87 | C.T. Pan             |        \-0.51 |         296 |              98 | TPE     |        1 |
|   88 | Vaughn Taylor        |        \-0.51 |         261 |              87 | USA     |        1 |
|   89 | Dylan Frittelli      |        \-0.51 |         333 |             107 | RSA     |        1 |
|   90 | Jordan L Smith       |        \-0.49 |         294 |             100 | ENG     |        1 |
|   91 | Matt Jones           |        \-0.49 |         245 |              93 | AUS     |        1 |
|   92 | Aaron Baddeley       |        \-0.47 |         232 |              85 | AUS     |        1 |
|   93 | Justin Harding       |        \-0.45 |         247 |             101 | RSA     |        1 |
|   94 | Jorge Campillo       |        \-0.45 |         279 |              95 | ESP     |        1 |
|   95 | Sam Burns            |        \-0.44 |         154 |              95 | USA     |        1 |
|   96 | Talor Gooch          |        \-0.41 |         233 |              59 | USA     |        1 |
|   97 | JT Poston            |        \-0.40 |         289 |              98 | USA     |        1 |
|   98 | Russell Henley       |        \-0.40 |         253 |              84 | USA     |        1 |
|   99 | Erik van Rooyen      |        \-0.40 |         249 |              93 | RSA     |        1 |
|  100 | Branden Grace        |        \-0.40 |         289 |             102 | RSA     |        1 |
|  101 | Andrew Putnam        |        \-0.39 |         262 |              85 | USA     |        1 |
|  102 | Cameron Percy        |        \-0.39 |         224 |              78 | AUS     |        1 |
|  103 | Brian Stuard         |        \-0.37 |         288 |             105 | USA     |        1 |
|  104 | Adam Schenk          |        \-0.37 |         294 |             110 | USA     |        1 |
|  105 | Sam Ryder            |        \-0.36 |         254 |              84 | USA     |        1 |
|  106 | Lucas Bjerregaard    |        \-0.36 |         279 |              96 | DEN     |        1 |
|  107 | Steve Stricker       |        \-0.35 |         132 |              36 | USA     |        1 |
|  108 | Cameron Champ        |        \-0.35 |         140 |              95 | USA     |        1 |
|  109 | Kevin Tway           |        \-0.33 |         293 |              88 | USA     |        1 |
|  110 | Harold Varner III    |        \-0.33 |         298 |              88 | USA     |        1 |
|  111 | Zhang Xinjun         |        \-0.32 |         257 |              88 | CHN     |        1 |
|  112 | Jamie Lovemark       |        \-0.30 |         240 |              54 | USA     |        1 |
|  113 | Martin Laird         |        \-0.30 |         229 |              74 | SCO     |        1 |
|  114 | Brian Gay            |        \-0.29 |         263 |             114 | USA     |        1 |
|  115 | Ryan Palmer          |        \-0.29 |         196 |              73 | USA     |        1 |
|  116 | Peter Malnati        |        \-0.28 |         262 |              96 | USA     |        1 |
|  117 | Danny Lee            |        \-0.27 |         277 |              86 | NZL     |        1 |
|  118 | Troy Merritt         |        \-0.27 |         254 |              68 | USA     |        1 |
|  119 | J.J Spaun            |        \-0.26 |         270 |              91 | USA     |        1 |
|  120 | Thomas Detry         |        \-0.26 |         278 |              96 | BEL     |        1 |
|  121 | Nick Taylor          |        \-0.26 |         269 |             100 | CAN     |        1 |
|  122 | Tom Lewis            |        \-0.25 |         216 |              96 | ENG     |        1 |
|  123 | Joaquin Niemann      |        \-0.25 |         118 |              92 | CHI     |        1 |
|  124 | Scott Stallings      |        \-0.24 |         253 |              85 | USA     |        1 |
|  125 | J.B. Holmes          |        \-0.24 |         239 |              72 | USA     |        1 |
|  126 | Shugo Imahira        |        \-0.24 |         286 |              91 | JPN     |        1 |
|  127 | Ryan Armour          |        \-0.24 |         280 |             102 | USA     |        1 |
|  128 | Stewart Cink         |        \-0.24 |         235 |              69 | USA     |        1 |
|  129 | Mikko Korhonen       |        \-0.23 |         229 |              85 | FIN     |        1 |
|  130 | Nick Watney          |        \-0.23 |         212 |              91 | USA     |        1 |
|  131 | Jazz Janewattananond |        \-0.23 |         259 |             104 | THA     |        1 |
|  132 | Beau Hossler         |        \-0.23 |         239 |              94 | USA     |        1 |
|  133 | David Lipsky         |        \-0.23 |         284 |              94 | USA     |        1 |
|  134 | Fabrizio Zanotti     |        \-0.22 |         235 |              70 | PAR     |        1 |
|  135 | Peter Uihlein        |        \-0.22 |         232 |              91 | USA     |        1 |
|  136 | Sean Crocker         |        \-0.21 |         128 |              84 | USA     |        1 |
|  137 | Jimmy Walker         |        \-0.20 |         243 |              85 | USA     |        1 |
|  138 | Alexander Bjork      |        \-0.20 |         291 |              81 | SWE     |        1 |
|  139 | Patton Kizzire       |        \-0.19 |         249 |              89 | USA     |        1 |
|  140 | Ross Fisher          |        \-0.19 |         257 |              84 | ENG     |        1 |
|  141 | Shawn Stefani        |        \-0.18 |         255 |              95 | USA     |        1 |
|  142 | Corey Conners        |        \-0.17 |         297 |              90 | CAN     |        1 |
|  143 | Nate Lashley         |        \-0.15 |         262 |              66 | USA     |        1 |
|  144 | Mark Anderson        |        \-0.15 |         222 |              73 | USA     |        1 |
|  145 | Martin Kaymer        |        \-0.14 |         268 |              91 | GER     |        1 |
|  146 | Robby Shelton IV     |        \-0.14 |         197 |              92 | USA     |        1 |
|  147 | Chris Kirk           |        \-0.14 |         272 |              89 | USA     |        1 |
|  148 | Johnson Wagner       |        \-0.12 |         223 |              75 | USA     |        1 |
|  149 | Carlos Ortiz         |        \-0.12 |         263 |             105 | MEX     |        1 |
|  150 | Tyler McCumber       |        \-0.12 |         187 |              80 | USA     |        1 |
|  151 | Patrick Rodgers      |        \-0.11 |         244 |              78 | USA     |        1 |
|  152 | Trey Mullinax        |        \-0.11 |         267 |              89 | USA     |        1 |
|  153 | Austin Cook          |        \-0.10 |         284 |              78 | USA     |        1 |
|  154 | Andy Sullivan        |        \-0.09 |         268 |              88 | ENG     |        1 |
|  155 | Bronson Burgoon      |        \-0.08 |         163 |              63 | USA     |        1 |
|  156 | Ryan Fox             |        \-0.07 |         287 |              95 | NZL     |        1 |
|  157 | Andrew Landry        |        \-0.07 |         238 |              86 | USA     |        1 |
|  158 | Chase Seiffert       |        \-0.06 |          67 |              56 | USA     |        1 |
|  159 | Matthias Schwab      |        \-0.05 |         191 |             104 | AUT     |        1 |
|  160 | Jimmy Stanger        |        \-0.05 |         101 |              72 | USA     |        1 |
|  161 | Joseph Bramlett      |        \-0.05 |         121 |              86 | USA     |        1 |
|  162 | Chesson Hadley       |        \-0.04 |         265 |              85 | USA     |        1 |
|  163 | Wyndham Clark        |        \-0.04 |         149 |             100 | USA     |        1 |
|  164 | Ernie Els            |        \-0.04 |         220 |              86 | RSA     |        1 |
|  165 | Kramer Hickok        |        \-0.04 |         214 |             107 | USA     |        1 |
|  166 | Juan Sebastian Munoz |        \-0.03 |         252 |             104 | COL     |        1 |
|  167 | James Hahn           |        \-0.03 |         248 |              66 | USA     |        1 |
|  168 | George Cunningham    |        \-0.02 |          89 |              85 | USA     |        1 |
|  169 | Seungyul Noh         |        \-0.02 |         120 |               0 | KOR     |       NA |
|  170 | Vincent Whaley       |        \-0.02 |          42 |              38 | USA     |        1 |
|  171 | Jonas Blixt          |        \-0.02 |         225 |              80 | SWE     |        1 |
|  172 | D.J. Trahan          |        \-0.02 |         105 |              38 | USA     |        1 |
|  173 | Richard Sterne       |        \-0.01 |         255 |              83 | RSA     |        1 |
|  174 | Benjamin Hebert      |        \-0.01 |         249 |              80 | FRA     |        1 |
|  175 | Robert Rock          |        \-0.01 |         236 |              81 | ENG     |        1 |
|  176 | Max Homa             |          0.00 |         219 |              99 | USA     |        1 |
|  177 | Gaganjeet Bhullar    |          0.00 |         232 |              96 | IND     |        1 |
|  178 | Bill Haas            |          0.00 |         244 |              78 | USA     |        1 |
|  179 | Danny Willett        |          0.01 |         216 |              87 | ENG     |        1 |
|  180 | Nacho Elvira         |          0.02 |         266 |              90 | ESP     |        1 |
|  181 | Andrea Pavan         |          0.03 |         243 |              94 | ITA     |        1 |
|  182 | Richy Werenski       |          0.03 |         263 |              91 | USA     |        1 |
|  183 | Henrik Norlander     |          0.03 |         228 |              90 | SWE     |        1 |
|  184 | Kyounghoon Lee       |          0.03 |         324 |             109 | KOR     |        1 |
|  185 | Sanghyun Park        |          0.05 |         263 |              88 | KOR     |        1 |
|  186 | Adrian Otaegui       |          0.05 |         275 |              92 | ESP     |        1 |
|  187 | Paul Waring          |          0.06 |         200 |              69 | ENG     |        1 |
|  188 | Adam Long            |          0.07 |         255 |             100 | USA     |        1 |
|  189 | Lucas Herbert        |          0.07 |         163 |              85 | AUS     |        1 |
|  190 | Harris English       |          0.07 |         264 |              92 | USA     |        1 |
|  191 | Doug Ghim            |          0.07 |          72 |              64 | USA     |        1 |
|  192 | Maximilian Kieffer   |          0.08 |         238 |              86 | GER     |        1 |
|  193 | Billy Kennerly       |          0.08 |         160 |              68 | USA     |        1 |
|  194 | Charl Schwartzel     |          0.09 |         249 |              75 | RSA     |        1 |
|  195 | Brice Garnett        |          0.09 |         257 |              87 | USA     |        1 |
|  196 | Lanto Griffin        |          0.10 |         245 |              88 | USA     |        1 |
|  197 | Ollie Schniederjans  |          0.10 |         270 |              90 | USA     |        1 |
|  198 | Victor Perez         |          0.10 |         221 |              92 | FRA     |        1 |
|  199 | William McGirt       |          0.11 |         200 |              32 | USA     |        1 |
|  200 | Luke Donald          |          0.12 |         156 |              19 | ENG     |        1 |

Current Golf Ratings
