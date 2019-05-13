Current Golf Ratings
================
DSMok1
May 13, 2019

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
|    1 | Dustin Johnson       |        \-2.60 |         258 |              94 | USA     |        1 |
|    2 | Rory McIlroy         |        \-2.30 |         229 |              88 | NIR     |        1 |
|    3 | Justin Thomas        |        \-2.26 |         263 |              90 | USA     |        1 |
|    4 | Jon Rahm             |        \-2.14 |         253 |              90 | ESP     |        1 |
|    5 | Tiger Woods          |        \-2.13 |         102 |              66 | USA     |        1 |
|    6 | Justin Rose          |        \-2.10 |         248 |              86 | ENG     |        1 |
|    7 | Jason Day            |        \-2.02 |         212 |              78 | AUS     |        1 |
|    8 | Rickie Fowler        |        \-2.01 |         260 |              90 | USA     |        1 |
|    9 | Patrick Cantlay      |        \-1.95 |         168 |              86 | USA     |        1 |
|   10 | Brooks Koepka        |        \-1.75 |         244 |              96 | USA     |        1 |
|   11 | Webb Simpson         |        \-1.73 |         267 |              90 | USA     |        1 |
|   12 | Tommy Fleetwood      |        \-1.69 |         307 |             114 | ENG     |        1 |
|   13 | Tony Finau           |        \-1.69 |         302 |             104 | USA     |        1 |
|   14 | Bryson DeChambeau    |        \-1.67 |         264 |              96 | USA     |        1 |
|   15 | Paul Casey           |        \-1.65 |         254 |              84 | ENG     |        1 |
|   16 | Matt Kuchar          |        \-1.59 |         306 |              94 | USA     |        1 |
|   17 | Xander Schauffele    |        \-1.58 |         298 |              94 | USA     |        1 |
|   18 | Sergio Garcia        |        \-1.53 |         241 |              83 | ESP     |        1 |
|   19 | Francesco Molinari   |        \-1.48 |         252 |              78 | ITA     |        1 |
|   20 | Gary Woodland        |        \-1.47 |         279 |              99 | USA     |        1 |
|   21 | Hideki Matsuyama     |        \-1.41 |         268 |             101 | JPN     |        1 |
|   22 | Louis Oosthuizen     |        \-1.38 |         232 |              82 | RSA     |        1 |
|   23 | Ian Poulter          |        \-1.36 |         266 |             100 | ENG     |        1 |
|   24 | Adam Scott           |        \-1.29 |         231 |              77 | AUS     |        1 |
|   25 | Marc Leishman        |        \-1.26 |         282 |              96 | AUS     |        1 |
|   26 | Bubba Watson         |        \-1.21 |         233 |              82 | USA     |        1 |
|   27 | Charles Howell III   |        \-1.19 |         264 |              98 | USA     |        1 |
|   28 | Henrik Stenson       |        \-1.18 |         230 |              78 | SWE     |        1 |
|   29 | Rafael Cabrera Bello |        \-1.14 |         318 |             106 | ESP     |        1 |
|   30 | Phil Mickelson       |        \-1.12 |         243 |              78 | USA     |        1 |
|   31 | Matthew Fitzpatrick  |        \-1.11 |         279 |             100 | ENG     |        1 |
|   32 | Lucas Glover         |        \-1.11 |         237 |              73 | USA     |        1 |
|   33 | Jim Furyk            |        \-1.07 |         183 |              62 | USA     |        1 |
|   34 | Patrick Reed         |        \-1.03 |         338 |             106 | USA     |        1 |
|   35 | Jason Kokrak         |        \-1.02 |         286 |             100 | USA     |        1 |
|   36 | Scott Piercy         |        \-1.00 |         243 |              84 | USA     |        1 |
|   37 | Joost Luiten         |        \-0.99 |         226 |              43 | NED     |        1 |
|   38 | Byeong Hun An        |        \-0.98 |         287 |             102 | KOR     |        1 |
|   39 | Jordan Spieth        |        \-0.97 |         258 |              82 | USA     |        1 |
|   40 | Keegan Bradley       |        \-0.97 |         293 |             102 | USA     |        1 |
|   41 | Kevin Kisner         |        \-0.92 |         274 |              87 | USA     |        1 |
|   42 | Aaron Wise           |        \-0.90 |         237 |              73 | USA     |        1 |
|   43 | Cameron Smith        |        \-0.89 |         266 |              92 | AUS     |        1 |
|   44 | Ryan Moore           |        \-0.88 |         250 |              80 | USA     |        1 |
|   45 | Tyrrell Hatton       |        \-0.85 |         266 |              86 | ENG     |        1 |
|   46 | Chez Reavie          |        \-0.84 |         265 |              88 | USA     |        1 |
|   47 | Haotong Li           |        \-0.82 |         269 |              96 | CHN     |        1 |
|   48 | Zach Johnson         |        \-0.81 |         256 |              83 | USA     |        1 |
|   49 | Billy Horschel       |        \-0.81 |         249 |             100 | USA     |        1 |
|   50 | Jhonattan Vegas      |        \-0.80 |         281 |              90 | VEN     |        1 |
|   51 | Emiliano Grillo      |        \-0.79 |         301 |              94 | ARG     |        1 |
|   52 | Scottie Scheffler    |        \-0.79 |          62 |              50 | USA     |        1 |
|   53 | Kevin Na             |        \-0.78 |         263 |              91 | USA     |        1 |
|   54 | Pat Perez            |        \-0.76 |         211 |              73 | USA     |        1 |
|   55 | Siwoo Kim            |        \-0.75 |         275 |             102 | KOR     |        1 |
|   56 | Daniel Berger        |        \-0.75 |         242 |              66 | USA     |        1 |
|   57 | Bud Cauley           |        \-0.73 |         225 |              53 | USA     |        1 |
|   58 | Victor Dubuisson     |        \-0.73 |         108 |              26 | FRA     |        1 |
|   59 | Adam Hadwin          |        \-0.72 |         277 |              91 | CAN     |        1 |
|   60 | Julian Suri          |        \-0.72 |         224 |              78 | USA     |        1 |
|   61 | Russell Knox         |        \-0.71 |         298 |             102 | SCO     |        1 |
|   62 | Thorbjorn Olesen     |        \-0.71 |         247 |              82 | DEN     |        1 |
|   63 | Eddie Pepperell      |        \-0.70 |         221 |              80 | ENG     |        1 |
|   64 | Rory Sabbatini       |        \-0.70 |         237 |              89 | RSA     |        1 |
|   65 | Lee Westwood         |        \-0.69 |         234 |              67 | ENG     |        1 |
|   66 | Charley Hoffman      |        \-0.69 |         280 |              86 | USA     |        1 |
|   67 | Joel Dahmen          |        \-0.67 |         258 |             100 | USA     |        1 |
|   68 | Alex Noren           |        \-0.66 |         250 |              78 | SWE     |        1 |
|   69 | Matt Wallace         |        \-0.65 |         258 |             104 | ENG     |        1 |
|   70 | Thomas Pieters       |        \-0.65 |         247 |              82 | BEL     |        1 |
|   71 | Michael Thompson     |        \-0.65 |         206 |              82 | USA     |        1 |
|   72 | Sungjae Im           |        \-0.65 |         334 |             137 | KOR     |        1 |
|   73 | Shane Lowry          |        \-0.64 |         253 |              89 | IRL     |        1 |
|   74 | Luke List            |        \-0.63 |         269 |              81 | USA     |        1 |
|   75 | Abraham Ancer        |        \-0.62 |         281 |              96 | MEX     |        1 |
|   76 | Brandt Snedeker      |        \-0.62 |         247 |             101 | USA     |        1 |
|   77 | C.T. Pan             |        \-0.60 |         298 |              98 | TPE     |        1 |
|   78 | Denny McCarthy       |        \-0.60 |         265 |              93 | USA     |        1 |
|   79 | Kevin Chappell       |        \-0.59 |         226 |              46 | USA     |        1 |
|   80 | Jorge Campillo       |        \-0.56 |         277 |              95 | ESP     |        1 |
|   81 | Graham Delaet        |        \-0.54 |         103 |               0 | CAN     |       NA |
|   82 | Keith Mitchell       |        \-0.54 |         282 |              96 | USA     |        1 |
|   83 | Kyle Stanley         |        \-0.54 |         264 |              88 | USA     |        1 |
|   84 | Kevin Streelman      |        \-0.53 |         269 |              85 | USA     |        1 |
|   85 | Dylan Frittelli      |        \-0.52 |         333 |             103 | RSA     |        1 |
|   86 | Sunghoon Kang        |        \-0.51 |         285 |              91 | KOR     |        1 |
|   87 | Vaughn Taylor        |        \-0.51 |         263 |              85 | USA     |        1 |
|   88 | Jordan L Smith       |        \-0.50 |         297 |              96 | ENG     |        1 |
|   89 | Matt Jones           |        \-0.48 |         247 |              89 | AUS     |        1 |
|   90 | Ryan Palmer          |        \-0.47 |         198 |              73 | USA     |        1 |
|   91 | Andrew Putnam        |        \-0.47 |         262 |              85 | USA     |        1 |
|   92 | Kiradech Aphibarnrat |        \-0.47 |         294 |              94 | THA     |        1 |
|   93 | Aaron Baddeley       |        \-0.46 |         234 |              85 | AUS     |        1 |
|   94 | Graeme McDowell      |        \-0.46 |         267 |              82 | NIR     |        1 |
|   95 | Mike Lorenzo-Vera    |        \-0.44 |         238 |              85 | FRA     |        1 |
|   96 | Justin Harding       |        \-0.44 |         245 |              97 | RSA     |        1 |
|   97 | Branden Grace        |        \-0.43 |         291 |             102 | RSA     |        1 |
|   98 | Alexander Bjork      |        \-0.42 |         292 |              81 | SWE     |        1 |
|   99 | Talor Gooch          |        \-0.41 |         229 |              59 | USA     |        1 |
|  100 | Russell Henley       |        \-0.40 |         255 |              82 | USA     |        1 |
|  101 | JT Poston            |        \-0.40 |         289 |              96 | USA     |        1 |
|  102 | Steve Stricker       |        \-0.39 |         130 |              40 | USA     |        1 |
|  103 | Cameron Percy        |        \-0.39 |         228 |              78 | AUS     |        1 |
|  104 | Kevin Tway           |        \-0.37 |         291 |              88 | USA     |        1 |
|  105 | Brian Stuard         |        \-0.37 |         290 |             101 | USA     |        1 |
|  106 | Adam Schenk          |        \-0.37 |         296 |             108 | USA     |        1 |
|  107 | Sam Ryder            |        \-0.36 |         254 |              84 | USA     |        1 |
|  108 | Sam Burns            |        \-0.34 |         150 |              94 | USA     |        1 |
|  109 | Troy Merritt         |        \-0.33 |         254 |              64 | USA     |        1 |
|  110 | J.B. Holmes          |        \-0.32 |         239 |              74 | USA     |        1 |
|  111 | Shugo Imahira        |        \-0.32 |         284 |              89 | JPN     |        1 |
|  112 | Mikko Korhonen       |        \-0.31 |         227 |              89 | FIN     |        1 |
|  113 | Tom Lewis            |        \-0.31 |         216 |              96 | ENG     |        1 |
|  114 | Cameron Champ        |        \-0.31 |         136 |              99 | USA     |        1 |
|  115 | Jamie Lovemark       |        \-0.30 |         244 |              58 | USA     |        1 |
|  116 | Martin Laird         |        \-0.30 |         231 |              74 | SCO     |        1 |
|  117 | Brian Gay            |        \-0.29 |         263 |             113 | USA     |        1 |
|  118 | Joaquin Niemann      |        \-0.29 |         116 |              92 | CHI     |        1 |
|  119 | Peter Malnati        |        \-0.28 |         264 |              93 | USA     |        1 |
|  120 | Thomas Detry         |        \-0.27 |         278 |              92 | BEL     |        1 |
|  121 | Nick Taylor          |        \-0.25 |         271 |             101 | CAN     |        1 |
|  122 | Ryan Armour          |        \-0.25 |         280 |             104 | USA     |        1 |
|  123 | Zhang Xinjun         |        \-0.25 |         257 |              84 | CHN     |        1 |
|  124 | Harold Varner III    |        \-0.24 |         298 |              92 | USA     |        1 |
|  125 | David Lipsky         |        \-0.24 |         280 |              94 | USA     |        1 |
|  126 | Scott Stallings      |        \-0.24 |         253 |              85 | USA     |        1 |
|  127 | Stewart Cink         |        \-0.24 |         235 |              71 | USA     |        1 |
|  128 | Erik van Rooyen      |        \-0.23 |         247 |              93 | RSA     |        1 |
|  129 | Nick Watney          |        \-0.23 |         212 |              93 | USA     |        1 |
|  130 | J.J Spaun            |        \-0.23 |         270 |              89 | USA     |        1 |
|  131 | Fabrizio Zanotti     |        \-0.22 |         235 |              66 | PAR     |        1 |
|  132 | Peter Uihlein        |        \-0.22 |         232 |              87 | USA     |        1 |
|  133 | Lucas Bjerregaard    |        \-0.21 |         275 |              98 | DEN     |        1 |
|  134 | Sean Crocker         |        \-0.21 |         128 |              80 | USA     |        1 |
|  135 | Patton Kizzire       |        \-0.20 |         251 |              91 | USA     |        1 |
|  136 | Shawn Stefani        |        \-0.17 |         259 |              91 | USA     |        1 |
|  137 | Danny Lee            |        \-0.17 |         277 |              90 | NZL     |        1 |
|  138 | Ross Fisher          |        \-0.16 |         253 |              84 | ENG     |        1 |
|  139 | Corey Conners        |        \-0.16 |         297 |              90 | CAN     |        1 |
|  140 | Martin Kaymer        |        \-0.15 |         270 |              89 | GER     |        1 |
|  141 | Nate Lashley         |        \-0.15 |         262 |              62 | USA     |        1 |
|  142 | Tyler McCumber       |        \-0.14 |         189 |              80 | USA     |        1 |
|  143 | Beau Hossler         |        \-0.14 |         235 |              94 | USA     |        1 |
|  144 | Ryan Fox             |        \-0.14 |         289 |              93 | NZL     |        1 |
|  145 | Chris Kirk           |        \-0.13 |         272 |              93 | USA     |        1 |
|  146 | Chesson Hadley       |        \-0.12 |         265 |              89 | USA     |        1 |
|  147 | Johnson Wagner       |        \-0.12 |         227 |              71 | USA     |        1 |
|  148 | Carlos Ortiz         |        \-0.11 |         265 |             103 | MEX     |        1 |
|  149 | Patrick Rodgers      |        \-0.11 |         246 |              80 | USA     |        1 |
|  150 | Trey Mullinax        |        \-0.11 |         271 |              89 | USA     |        1 |
|  151 | Austin Cook          |        \-0.10 |         286 |              80 | USA     |        1 |
|  152 | Andy Sullivan        |        \-0.09 |         270 |              90 | ENG     |        1 |
|  153 | Jazz Janewattananond |        \-0.09 |         259 |             106 | THA     |        1 |
|  154 | Richard Sterne       |        \-0.08 |         253 |              79 | RSA     |        1 |
|  155 | Andrew Landry        |        \-0.06 |         240 |              90 | USA     |        1 |
|  156 | Jimmy Walker         |        \-0.06 |         241 |              87 | USA     |        1 |
|  157 | Matthias Schwab      |        \-0.06 |         191 |             104 | AUT     |        1 |
|  158 | Jimmy Stanger        |        \-0.05 |         101 |              74 | USA     |        1 |
|  159 | Ernie Els            |        \-0.04 |         224 |              84 | RSA     |        1 |
|  160 | Kramer Hickok        |        \-0.03 |         214 |             105 | USA     |        1 |
|  161 | Wyndham Clark        |        \-0.03 |         149 |             102 | USA     |        1 |
|  162 | Seungyul Noh         |        \-0.03 |         120 |               0 | KOR     |       NA |
|  163 | James Hahn           |        \-0.02 |         252 |              68 | USA     |        1 |
|  164 | Juan Sebastian Munoz |        \-0.02 |         254 |             104 | COL     |        1 |
|  165 | Jonas Blixt          |        \-0.02 |         229 |              78 | SWE     |        1 |
|  166 | D.J. Trahan          |        \-0.01 |         105 |              38 | USA     |        1 |
|  167 | Benjamin Hebert      |        \-0.01 |         249 |              78 | FRA     |        1 |
|  168 | Gaganjeet Bhullar    |        \-0.01 |         234 |              92 | IND     |        1 |
|  169 | Robert Rock          |        \-0.01 |         236 |              77 | ENG     |        1 |
|  170 | Joseph Bramlett      |        \-0.01 |         117 |              86 | USA     |        1 |
|  171 | Daehyun Kim          |          0.00 |          46 |              12 | KOR     |        1 |
|  172 | Robby Shelton IV     |          0.00 |         193 |              94 | USA     |        1 |
|  173 | Doug Ghim            |          0.00 |          68 |              60 | USA     |        1 |
|  174 | Bill Haas            |          0.00 |         248 |              76 | USA     |        1 |
|  175 | Mark Anderson        |          0.01 |         218 |              73 | USA     |        1 |
|  176 | Richy Werenski       |          0.01 |         265 |              95 | USA     |        1 |
|  177 | Sanghyun Park        |          0.02 |         263 |              88 | KOR     |        1 |
|  178 | Nacho Elvira         |          0.02 |         266 |              86 | ESP     |        1 |
|  179 | Max Homa             |          0.02 |         215 |             101 | USA     |        1 |
|  180 | Andrea Pavan         |          0.02 |         246 |              94 | ITA     |        1 |
|  181 | Brian Harman         |          0.03 |         285 |              89 | USA     |        1 |
|  182 | Bronson Burgoon      |          0.04 |         159 |              63 | USA     |        1 |
|  183 | Kyounghoon Lee       |          0.04 |         328 |             108 | KOR     |        1 |
|  184 | George Cunningham    |          0.05 |          85 |              81 | USA     |        1 |
|  185 | Adrian Otaegui       |          0.05 |         277 |              90 | ESP     |        1 |
|  186 | Chase Seiffert       |          0.05 |          63 |              56 | USA     |        1 |
|  187 | Paul Waring          |          0.05 |         200 |              69 | ENG     |        1 |
|  188 | Lucas Herbert        |          0.07 |         159 |              85 | AUS     |        1 |
|  189 | Harris English       |          0.07 |         266 |              90 | USA     |        1 |
|  190 | Henrik Norlander     |          0.07 |         224 |              90 | SWE     |        1 |
|  191 | Maximilian Kieffer   |          0.08 |         238 |              82 | GER     |        1 |
|  192 | Charl Schwartzel     |          0.09 |         249 |              79 | RSA     |        1 |
|  193 | Steve Marino         |          0.09 |         138 |              44 | USA     |        1 |
|  194 | Brice Garnett        |          0.09 |         257 |              91 | USA     |        1 |
|  195 | Ollie Schniederjans  |          0.10 |         274 |              89 | USA     |        1 |
|  196 | Lanto Griffin        |          0.10 |         249 |              84 | USA     |        1 |
|  197 | Victor Perez         |          0.10 |         221 |              92 | FRA     |        1 |
|  198 | William McGirt       |          0.11 |         204 |              34 | USA     |        1 |
|  199 | Luke Donald          |          0.12 |         158 |              17 | ENG     |        1 |
|  200 | Danny Willett        |          0.12 |         214 |              89 | ENG     |        1 |

Current Golf Ratings
