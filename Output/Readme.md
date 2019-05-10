Current Golf Ratings
================
DSMok1
May 10, 2019

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
|    1 | Dustin Johnson       |        \-2.57 |         258 |              94 | USA     |        1 |
|    2 | Rory McIlroy         |        \-2.27 |         229 |              88 | NIR     |        1 |
|    3 | Justin Thomas        |        \-2.23 |         263 |              94 | USA     |        1 |
|    4 | Jon Rahm             |        \-2.11 |         253 |              90 | ESP     |        1 |
|    5 | Tiger Woods          |        \-2.10 |         102 |              70 | USA     |        1 |
|    6 | Justin Rose          |        \-2.07 |         248 |              82 | ENG     |        1 |
|    7 | Jason Day            |        \-2.00 |         212 |              78 | AUS     |        1 |
|    8 | Rickie Fowler        |        \-1.99 |         260 |              90 | USA     |        1 |
|    9 | Patrick Cantlay      |        \-1.93 |         168 |              86 | USA     |        1 |
|   10 | Webb Simpson         |        \-1.71 |         267 |              90 | USA     |        1 |
|   11 | Tommy Fleetwood      |        \-1.68 |         303 |             116 | ENG     |        1 |
|   12 | Tony Finau           |        \-1.66 |         302 |             104 | USA     |        1 |
|   13 | Bryson DeChambeau    |        \-1.64 |         264 |             100 | USA     |        1 |
|   14 | Paul Casey           |        \-1.62 |         254 |              84 | ENG     |        1 |
|   15 | Brooks Koepka        |        \-1.59 |         240 |             100 | USA     |        1 |
|   16 | Matt Kuchar          |        \-1.57 |         306 |              94 | USA     |        1 |
|   17 | Xander Schauffele    |        \-1.55 |         298 |              98 | USA     |        1 |
|   18 | Sergio Garcia        |        \-1.50 |         241 |              79 | ESP     |        1 |
|   19 | Francesco Molinari   |        \-1.45 |         252 |              82 | ITA     |        1 |
|   20 | Gary Woodland        |        \-1.44 |         279 |             101 | USA     |        1 |
|   21 | Hideki Matsuyama     |        \-1.38 |         264 |             100 | JPN     |        1 |
|   22 | Louis Oosthuizen     |        \-1.35 |         232 |              84 | RSA     |        1 |
|   23 | Ian Poulter          |        \-1.33 |         266 |             100 | ENG     |        1 |
|   24 | Adam Scott           |        \-1.26 |         231 |              80 | AUS     |        1 |
|   25 | Marc Leishman        |        \-1.24 |         282 |              96 | AUS     |        1 |
|   26 | Bubba Watson         |        \-1.18 |         233 |              82 | USA     |        1 |
|   27 | Rafael Cabrera Bello |        \-1.17 |         314 |             106 | ESP     |        1 |
|   28 | Charles Howell III   |        \-1.16 |         264 |             100 | USA     |        1 |
|   29 | Henrik Stenson       |        \-1.12 |         226 |              74 | SWE     |        1 |
|   30 | Phil Mickelson       |        \-1.09 |         243 |              80 | USA     |        1 |
|   31 | Lucas Glover         |        \-1.08 |         237 |              71 | USA     |        1 |
|   32 | Matthew Fitzpatrick  |        \-1.08 |         279 |             100 | ENG     |        1 |
|   33 | Patrick Reed         |        \-1.08 |         334 |             106 | USA     |        1 |
|   34 | Jim Furyk            |        \-1.05 |         183 |              62 | USA     |        1 |
|   35 | Jason Kokrak         |        \-1.00 |         286 |              98 | USA     |        1 |
|   36 | Ryan Moore           |        \-1.00 |         246 |              82 | USA     |        1 |
|   37 | Byeong Hun An        |        \-0.96 |         287 |             106 | KOR     |        1 |
|   38 | Jordan Spieth        |        \-0.94 |         254 |              82 | USA     |        1 |
|   39 | Keegan Bradley       |        \-0.94 |         293 |             103 | USA     |        1 |
|   40 | Joost Luiten         |        \-0.92 |         222 |              43 | NED     |        1 |
|   41 | Aaron Wise           |        \-0.91 |         233 |              73 | USA     |        1 |
|   42 | Kevin Kisner         |        \-0.90 |         274 |              89 | USA     |        1 |
|   43 | Tyrrell Hatton       |        \-0.88 |         262 |              90 | ENG     |        1 |
|   44 | Cameron Smith        |        \-0.87 |         266 |              92 | AUS     |        1 |
|   45 | Chez Reavie          |        \-0.81 |         265 |              84 | USA     |        1 |
|   46 | Haotong Li           |        \-0.79 |         269 |              92 | CHN     |        1 |
|   47 | Zach Johnson         |        \-0.79 |         256 |              81 | USA     |        1 |
|   48 | Billy Horschel       |        \-0.78 |         249 |             100 | USA     |        1 |
|   49 | Jhonattan Vegas      |        \-0.77 |         281 |              90 | VEN     |        1 |
|   50 | Scott Piercy         |        \-0.77 |         239 |              84 | USA     |        1 |
|   51 | Emiliano Grillo      |        \-0.76 |         301 |              98 | ARG     |        1 |
|   52 | Scottie Scheffler    |        \-0.76 |          58 |              46 | USA     |        1 |
|   53 | Kevin Na             |        \-0.76 |         259 |              91 | USA     |        1 |
|   54 | Thorbjorn Olesen     |        \-0.75 |         245 |              82 | DEN     |        1 |
|   55 | Bud Cauley           |        \-0.73 |         221 |              53 | USA     |        1 |
|   56 | Siwoo Kim            |        \-0.73 |         275 |             102 | KOR     |        1 |
|   57 | Lee Westwood         |        \-0.72 |         230 |              67 | ENG     |        1 |
|   58 | Sungjae Im           |        \-0.71 |         331 |             133 | KOR     |        1 |
|   59 | Adam Hadwin          |        \-0.70 |         277 |              91 | CAN     |        1 |
|   60 | Russell Knox         |        \-0.70 |         294 |             102 | SCO     |        1 |
|   61 | Julian Suri          |        \-0.69 |         224 |              74 | USA     |        1 |
|   62 | Daniel Berger        |        \-0.68 |         238 |              66 | USA     |        1 |
|   63 | Victor Dubuisson     |        \-0.68 |         104 |              22 | FRA     |        1 |
|   64 | Charley Hoffman      |        \-0.67 |         280 |              86 | USA     |        1 |
|   65 | Michael Thompson     |        \-0.66 |         202 |              84 | USA     |        1 |
|   66 | Joel Dahmen          |        \-0.64 |         258 |             100 | USA     |        1 |
|   67 | Abraham Ancer        |        \-0.64 |         277 |              98 | MEX     |        1 |
|   68 | Alex Noren           |        \-0.62 |         246 |              80 | SWE     |        1 |
|   69 | Pat Perez            |        \-0.61 |         207 |              69 | USA     |        1 |
|   70 | Luke List            |        \-0.61 |         269 |              81 | USA     |        1 |
|   71 | Shane Lowry          |        \-0.60 |         253 |              93 | IRL     |        1 |
|   72 | Brandt Snedeker      |        \-0.59 |         247 |             101 | USA     |        1 |
|   73 | C.T. Pan             |        \-0.56 |         294 |             101 | TPE     |        1 |
|   74 | Kevin Chappell       |        \-0.56 |         226 |              46 | USA     |        1 |
|   75 | Thomas Pieters       |        \-0.56 |         243 |              82 | BEL     |        1 |
|   76 | Dylan Frittelli      |        \-0.56 |         329 |             101 | RSA     |        1 |
|   77 | Keith Mitchell       |        \-0.55 |         278 |              96 | USA     |        1 |
|   78 | Rory Sabbatini       |        \-0.55 |         233 |              89 | RSA     |        1 |
|   79 | Denny McCarthy       |        \-0.53 |         261 |              93 | USA     |        1 |
|   80 | Jorge Campillo       |        \-0.52 |         277 |              91 | ESP     |        1 |
|   81 | Kyle Stanley         |        \-0.51 |         264 |              88 | USA     |        1 |
|   82 | Graham Delaet        |        \-0.51 |         103 |               0 | CAN     |       NA |
|   83 | Eddie Pepperell      |        \-0.51 |         217 |              80 | ENG     |        1 |
|   84 | Kevin Streelman      |        \-0.50 |         269 |              83 | USA     |        1 |
|   85 | Matt Wallace         |        \-0.49 |         254 |             104 | ENG     |        1 |
|   86 | Branden Grace        |        \-0.45 |         287 |             102 | RSA     |        1 |
|   87 | Ryan Palmer          |        \-0.44 |         194 |              73 | USA     |        1 |
|   88 | Andrew Putnam        |        \-0.44 |         262 |              88 | USA     |        1 |
|   89 | Aaron Baddeley       |        \-0.44 |         234 |              87 | AUS     |        1 |
|   90 | Graeme McDowell      |        \-0.43 |         267 |              86 | NIR     |        1 |
|   91 | Mike Lorenzo-Vera    |        \-0.40 |         238 |              81 | FRA     |        1 |
|   92 | JT Poston            |        \-0.40 |         287 |              96 | USA     |        1 |
|   93 | Adam Schenk          |        \-0.39 |         294 |             106 | USA     |        1 |
|   94 | Vaughn Taylor        |        \-0.39 |         259 |              85 | USA     |        1 |
|   95 | Talor Gooch          |        \-0.38 |         229 |              63 | USA     |        1 |
|   96 | Jordan L Smith       |        \-0.38 |         293 |              92 | ENG     |        1 |
|   97 | Alexander Bjork      |        \-0.38 |         292 |              77 | SWE     |        1 |
|   98 | Brian Stuard         |        \-0.37 |         286 |             103 | USA     |        1 |
|   99 | Steve Stricker       |        \-0.37 |         130 |              40 | USA     |        1 |
|  100 | Sam Burns            |        \-0.37 |         147 |              98 | USA     |        1 |
|  101 | Cameron Percy        |        \-0.36 |         228 |              78 | AUS     |        1 |
|  102 | Kevin Tway           |        \-0.36 |         287 |              90 | USA     |        1 |
|  103 | Russell Henley       |        \-0.35 |         251 |              82 | USA     |        1 |
|  104 | Sam Ryder            |        \-0.34 |         254 |              86 | USA     |        1 |
|  105 | Brian Gay            |        \-0.33 |         259 |             113 | USA     |        1 |
|  106 | Tom Lewis            |        \-0.33 |         212 |              96 | ENG     |        1 |
|  107 | Nick Taylor          |        \-0.32 |         269 |              99 | CAN     |        1 |
|  108 | Troy Merritt         |        \-0.31 |         250 |              68 | USA     |        1 |
|  109 | Matt Jones           |        \-0.30 |         243 |              85 | AUS     |        1 |
|  110 | Peter Malnati        |        \-0.30 |         261 |              95 | USA     |        1 |
|  111 | J.B. Holmes          |        \-0.30 |         239 |              78 | USA     |        1 |
|  112 | Kiradech Aphibarnrat |        \-0.29 |         290 |              94 | THA     |        1 |
|  113 | Cameron Champ        |        \-0.28 |         136 |              97 | USA     |        1 |
|  114 | Jamie Lovemark       |        \-0.28 |         244 |              60 | USA     |        1 |
|  115 | Mikko Korhonen       |        \-0.27 |         227 |              85 | FIN     |        1 |
|  116 | Joaquin Niemann      |        \-0.26 |         116 |              90 | CHI     |        1 |
|  117 | Justin Harding       |        \-0.26 |         241 |              97 | RSA     |        1 |
|  118 | Shugo Imahira        |        \-0.26 |         280 |              85 | JPN     |        1 |
|  119 | Nick Watney          |        \-0.25 |         210 |              93 | USA     |        1 |
|  120 | Scott Stallings      |        \-0.24 |         251 |              85 | USA     |        1 |
|  121 | Fabrizio Zanotti     |        \-0.24 |         231 |              62 | PAR     |        1 |
|  122 | Sunghoon Kang        |        \-0.24 |         281 |              91 | KOR     |        1 |
|  123 | Martin Laird         |        \-0.23 |         227 |              70 | SCO     |        1 |
|  124 | Austin Cook          |        \-0.23 |         284 |              84 | USA     |        1 |
|  125 | Lucas Bjerregaard    |        \-0.22 |         273 |              98 | DEN     |        1 |
|  126 | Ryan Armour          |        \-0.22 |         280 |             102 | USA     |        1 |
|  127 | J.J Spaun            |        \-0.22 |         266 |              89 | USA     |        1 |
|  128 | Harold Varner III    |        \-0.22 |         298 |              94 | USA     |        1 |
|  129 | Andy Sullivan        |        \-0.22 |         268 |              90 | ENG     |        1 |
|  130 | Trey Mullinax        |        \-0.21 |         269 |              87 | USA     |        1 |
|  131 | Stewart Cink         |        \-0.21 |         235 |              75 | USA     |        1 |
|  132 | David Lipsky         |        \-0.20 |         280 |              90 | USA     |        1 |
|  133 | Sean Crocker         |        \-0.20 |         124 |              76 | USA     |        1 |
|  134 | Erik van Rooyen      |        \-0.19 |         247 |              89 | RSA     |        1 |
|  135 | Zhang Xinjun         |        \-0.19 |         253 |              84 | CHN     |        1 |
|  136 | Patton Kizzire       |        \-0.17 |         251 |              93 | USA     |        1 |
|  137 | Thomas Detry         |        \-0.17 |         274 |              92 | BEL     |        1 |
|  138 | Ryan Fox             |        \-0.16 |         287 |              93 | NZL     |        1 |
|  139 | Danny Lee            |        \-0.15 |         277 |              90 | NZL     |        1 |
|  140 | Corey Conners        |        \-0.13 |         297 |              94 | CAN     |        1 |
|  141 | Roberto Castro       |        \-0.13 |         219 |              72 | USA     |        1 |
|  142 | Chris Kirk           |        \-0.11 |         272 |              93 | USA     |        1 |
|  143 | Tyler McCumber       |        \-0.11 |         189 |              78 | USA     |        1 |
|  144 | Richard Sterne       |        \-0.11 |         249 |              79 | RSA     |        1 |
|  145 | Mark Anderson        |        \-0.11 |         214 |              69 | USA     |        1 |
|  146 | Luke Donald          |        \-0.11 |         156 |              17 | ENG     |        1 |
|  147 | Chesson Hadley       |        \-0.10 |         265 |              91 | USA     |        1 |
|  148 | Jimmy Walker         |        \-0.09 |         239 |              83 | USA     |        1 |
|  149 | Beau Hossler         |        \-0.09 |         231 |              94 | USA     |        1 |
|  150 | Patrick Rodgers      |        \-0.09 |         246 |              84 | USA     |        1 |
|  151 | Steve Marino         |        \-0.07 |         134 |              44 | USA     |        1 |
|  152 | Johnson Wagner       |        \-0.06 |         223 |              73 | USA     |        1 |
|  153 | Jazz Janewattananond |        \-0.05 |         259 |             106 | THA     |        1 |
|  154 | Shawn Stefani        |        \-0.05 |         255 |              91 | USA     |        1 |
|  155 | Ross Fisher          |        \-0.05 |         249 |              86 | ENG     |        1 |
|  156 | Wyndham Clark        |        \-0.05 |         147 |             100 | USA     |        1 |
|  157 | Ernie Els            |        \-0.04 |         222 |              84 | RSA     |        1 |
|  158 | Andrew Landry        |        \-0.04 |         240 |              90 | USA     |        1 |
|  159 | Martin Kaymer        |        \-0.04 |         266 |              93 | GER     |        1 |
|  160 | Nate Lashley         |        \-0.03 |         258 |              60 | USA     |        1 |
|  161 | Matthias Schwab      |        \-0.03 |         187 |             102 | AUT     |        1 |
|  162 | Robby Shelton IV     |        \-0.03 |         191 |              90 | USA     |        1 |
|  163 | Jimmy Stanger        |        \-0.02 |         101 |              70 | USA     |        1 |
|  164 | Benjamin Hebert      |        \-0.01 |         247 |              74 | FRA     |        1 |
|  165 | Peter Uihlein        |        \-0.01 |         228 |              89 | USA     |        1 |
|  166 | James Hahn           |          0.00 |         252 |              70 | USA     |        1 |
|  167 | Seungyul Noh         |          0.00 |         120 |               0 | KOR     |       NA |
|  168 | Brian Harman         |          0.01 |         283 |              89 | USA     |        1 |
|  169 | D.J. Trahan          |          0.01 |         105 |              38 | USA     |        1 |
|  170 | Richy Werenski       |          0.03 |         265 |              93 | USA     |        1 |
|  171 | Kyounghoon Lee       |          0.04 |         325 |             104 | KOR     |        1 |
|  172 | Nacho Elvira         |          0.05 |         262 |              82 | ESP     |        1 |
|  173 | Carlos Ortiz         |          0.05 |         261 |             101 | MEX     |        1 |
|  174 | Max Homa             |          0.05 |         215 |              97 | USA     |        1 |
|  175 | Adrian Otaegui       |          0.05 |         275 |              90 | ESP     |        1 |
|  176 | Bill Haas            |          0.05 |         244 |              74 | USA     |        1 |
|  177 | Bronson Burgoon      |          0.06 |         159 |              65 | USA     |        1 |
|  178 | Maximilian Kieffer   |          0.07 |         234 |              82 | GER     |        1 |
|  179 | Ollie Schniederjans  |          0.07 |         270 |              89 | USA     |        1 |
|  180 | Gaganjeet Bhullar    |          0.08 |         230 |              94 | IND     |        1 |
|  181 | Joseph Bramlett      |          0.08 |         113 |              82 | USA     |        1 |
|  182 | Robert Rock          |          0.08 |         232 |              77 | ENG     |        1 |
|  183 | Chase Seiffert       |          0.09 |          63 |              52 | USA     |        1 |
|  184 | Sam Saunders         |          0.09 |         236 |              80 | USA     |        1 |
|  185 | Chris Paisley        |          0.10 |         242 |              76 | ENG     |        1 |
|  186 | Kramer Hickok        |          0.11 |         210 |             101 | USA     |        1 |
|  187 | Sanghyun Park        |          0.12 |         259 |              88 | KOR     |        1 |
|  188 | George Cunningham    |          0.12 |          81 |              77 | USA     |        1 |
|  189 | Brice Garnett        |          0.12 |         257 |              91 | USA     |        1 |
|  190 | Charl Schwartzel     |          0.12 |         249 |              83 | RSA     |        1 |
|  191 | Masahiro Kawamura    |          0.12 |         282 |              95 | JPN     |        1 |
|  192 | Lucas Herbert        |          0.13 |         155 |              85 | AUS     |        1 |
|  193 | Jonas Blixt          |          0.13 |         225 |              80 | SWE     |        1 |
|  194 | William McGirt       |          0.13 |         204 |              34 | USA     |        1 |
|  195 | Harris English       |          0.14 |         262 |              86 | USA     |        1 |
|  196 | Andrea Pavan         |          0.15 |         242 |              92 | ITA     |        1 |
|  197 | Danny Willett        |          0.15 |         214 |              87 | ENG     |        1 |
|  198 | Brendan Steele       |          0.15 |         233 |              71 | USA     |        1 |
|  199 | Scott Brown          |          0.16 |         269 |              94 | USA     |        1 |
|  200 | Steven Alker         |          0.16 |         209 |              62 | NZL     |        1 |

Current Golf Ratings
