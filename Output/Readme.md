Current Golf Ratings
================
DSMok1
June 10, 2019

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
|    1 | Dustin Johnson       |        \-2.66 |         254 |              90 | USA     |        1 |
|    2 | Rory McIlroy         |        \-2.46 |         227 |              84 | NIR     |        1 |
|    3 | Patrick Cantlay      |        \-2.36 |         176 |              84 | USA     |        1 |
|    4 | Tiger Woods          |        \-2.10 |         108 |              64 | USA     |        1 |
|    5 | Justin Thomas        |        \-2.01 |         263 |              84 | USA     |        1 |
|    6 | Justin Rose          |        \-1.97 |         256 |              86 | ENG     |        1 |
|    7 | Rickie Fowler        |        \-1.95 |         266 |              90 | USA     |        1 |
|    8 | Jon Rahm             |        \-1.92 |         257 |              86 | ESP     |        1 |
|    9 | Webb Simpson         |        \-1.87 |         267 |              88 | USA     |        1 |
|   10 | Brooks Koepka        |        \-1.87 |         244 |              96 | USA     |        1 |
|   11 | Jason Day            |        \-1.86 |         210 |              76 | AUS     |        1 |
|   12 | Adam Scott           |        \-1.73 |         231 |              69 | AUS     |        1 |
|   13 | Matt Kuchar          |        \-1.69 |         300 |              86 | USA     |        1 |
|   14 | Paul Casey           |        \-1.68 |         252 |              84 | ENG     |        1 |
|   15 | Tommy Fleetwood      |        \-1.67 |         305 |             110 | ENG     |        1 |
|   16 | Xander Schauffele    |        \-1.63 |         299 |              96 | USA     |        1 |
|   17 | Hideki Matsuyama     |        \-1.59 |         270 |             103 | JPN     |        1 |
|   18 | Tony Finau           |        \-1.58 |         298 |             106 | USA     |        1 |
|   19 | Bryson DeChambeau    |        \-1.54 |         264 |              92 | USA     |        1 |
|   20 | Gary Woodland        |        \-1.49 |         275 |             101 | USA     |        1 |
|   21 | Jordan Spieth        |        \-1.38 |         256 |              84 | USA     |        1 |
|   22 | Sergio Garcia        |        \-1.36 |         237 |              79 | ESP     |        1 |
|   23 | Marc Leishman        |        \-1.36 |         274 |              90 | AUS     |        1 |
|   24 | Francesco Molinari   |        \-1.35 |         250 |              76 | ITA     |        1 |
|   25 | Henrik Stenson       |        \-1.25 |         236 |              82 | SWE     |        1 |
|   26 | Louis Oosthuizen     |        \-1.23 |         232 |              80 | RSA     |        1 |
|   27 | Jim Furyk            |        \-1.17 |         187 |              66 | USA     |        1 |
|   28 | Lucas Glover         |        \-1.16 |         237 |              74 | USA     |        1 |
|   29 | Ian Poulter          |        \-1.15 |         264 |              94 | ENG     |        1 |
|   30 | Charles Howell III   |        \-1.09 |         260 |              92 | USA     |        1 |
|   31 | Rafael Cabrera Bello |        \-1.08 |         312 |             106 | ESP     |        1 |
|   32 | Billy Horschel       |        \-1.07 |         257 |             102 | USA     |        1 |
|   33 | Emiliano Grillo      |        \-1.07 |         303 |              94 | ARG     |        1 |
|   34 | Jason Kokrak         |        \-1.03 |         288 |              98 | USA     |        1 |
|   35 | Kevin Na             |        \-1.03 |         259 |              87 | USA     |        1 |
|   36 | Shane Lowry          |        \-1.03 |         251 |              81 | IRL     |        1 |
|   37 | Bubba Watson         |        \-1.00 |         231 |              76 | USA     |        1 |
|   38 | Tyrrell Hatton       |        \-1.00 |         266 |              96 | ENG     |        1 |
|   39 | Patrick Reed         |        \-0.99 |         330 |             104 | USA     |        1 |
|   40 | Scott Piercy         |        \-0.98 |         239 |              88 | USA     |        1 |
|   41 | Brandt Snedeker      |        \-0.95 |         251 |             101 | USA     |        1 |
|   42 | Chez Reavie          |        \-0.93 |         261 |              88 | USA     |        1 |
|   43 | Matthew Fitzpatrick  |        \-0.92 |         279 |             100 | ENG     |        1 |
|   44 | Keegan Bradley       |        \-0.92 |         291 |             100 | USA     |        1 |
|   45 | Phil Mickelson       |        \-0.92 |         243 |              78 | USA     |        1 |
|   46 | Adam Hadwin          |        \-0.91 |         273 |              88 | CAN     |        1 |
|   47 | Haotong Li           |        \-0.90 |         265 |              94 | CHN     |        1 |
|   48 | Rory Sabbatini       |        \-0.89 |         245 |              85 | RSA     |        1 |
|   49 | Byeong Hun An        |        \-0.89 |         287 |             100 | KOR     |        1 |
|   50 | Scottie Scheffler    |        \-0.86 |          68 |              60 | USA     |        1 |
|   51 | Russell Knox         |        \-0.86 |         294 |             102 | SCO     |        1 |
|   52 | Joost Luiten         |        \-0.84 |         228 |              53 | NED     |        1 |
|   53 | Ryan Moore           |        \-0.82 |         250 |              82 | USA     |        1 |
|   54 | Kevin Streelman      |        \-0.80 |         267 |              83 | USA     |        1 |
|   55 | Matt Wallace         |        \-0.80 |         259 |             108 | ENG     |        1 |
|   56 | Bud Cauley           |        \-0.79 |         225 |              59 | USA     |        1 |
|   57 | Aaron Wise           |        \-0.79 |         245 |              75 | USA     |        1 |
|   58 | Charley Hoffman      |        \-0.77 |         280 |              88 | USA     |        1 |
|   59 | Thomas Pieters       |        \-0.74 |         249 |              88 | BEL     |        1 |
|   60 | Cameron Smith        |        \-0.73 |         270 |              92 | AUS     |        1 |
|   61 | Andrew Putnam        |        \-0.73 |         264 |              89 | USA     |        1 |
|   62 | Zach Johnson         |        \-0.71 |         254 |              80 | USA     |        1 |
|   63 | Kevin Kisner         |        \-0.71 |         274 |              86 | USA     |        1 |
|   64 | C.T. Pan             |        \-0.70 |         292 |              96 | TPE     |        1 |
|   65 | Julian Suri          |        \-0.70 |         226 |              72 | USA     |        1 |
|   66 | Sungjae Im           |        \-0.69 |         338 |             132 | KOR     |        1 |
|   67 | Daniel Berger        |        \-0.67 |         246 |              74 | USA     |        1 |
|   68 | Luke List            |        \-0.67 |         273 |              81 | USA     |        1 |
|   69 | Siwoo Kim            |        \-0.64 |         273 |              98 | KOR     |        1 |
|   70 | Lee Westwood         |        \-0.63 |         228 |              69 | ENG     |        1 |
|   71 | Pat Perez            |        \-0.63 |         219 |              75 | USA     |        1 |
|   72 | Abraham Ancer        |        \-0.63 |         287 |             100 | MEX     |        1 |
|   73 | Jhonattan Vegas      |        \-0.63 |         277 |              86 | VEN     |        1 |
|   74 | Michael Thompson     |        \-0.62 |         210 |              84 | USA     |        1 |
|   75 | Steve Stricker       |        \-0.61 |         132 |              38 | USA     |        1 |
|   76 | Kevin Chappell       |        \-0.61 |         216 |              42 | USA     |        1 |
|   77 | Thorbjorn Olesen     |        \-0.59 |         245 |              80 | DEN     |        1 |
|   78 | Mike Lorenzo-Vera    |        \-0.59 |         234 |              77 | FRA     |        1 |
|   79 | Graham Delaet        |        \-0.59 |          99 |               0 | CAN     |       NA |
|   80 | Alex Noren           |        \-0.59 |         252 |              78 | SWE     |        1 |
|   81 | Aaron Baddeley       |        \-0.58 |         232 |              89 | AUS     |        1 |
|   82 | Eddie Pepperell      |        \-0.57 |         215 |              74 | ENG     |        1 |
|   83 | Kiradech Aphibarnrat |        \-0.56 |         296 |              96 | THA     |        1 |
|   84 | Sunghoon Kang        |        \-0.55 |         285 |              89 | KOR     |        1 |
|   85 | Keith Mitchell       |        \-0.55 |         283 |              97 | USA     |        1 |
|   86 | Joel Dahmen          |        \-0.54 |         257 |             102 | USA     |        1 |
|   87 | Denny McCarthy       |        \-0.54 |         261 |              95 | USA     |        1 |
|   88 | Graeme McDowell      |        \-0.53 |         267 |              80 | NIR     |        1 |
|   89 | Ryan Palmer          |        \-0.53 |         198 |              75 | USA     |        1 |
|   90 | Victor Dubuisson     |        \-0.52 |         106 |              34 | FRA     |        1 |
|   91 | Sam Burns            |        \-0.50 |         158 |              98 | USA     |        1 |
|   92 | Kyle Stanley         |        \-0.50 |         262 |              86 | USA     |        1 |
|   93 | Vaughn Taylor        |        \-0.49 |         263 |              87 | USA     |        1 |
|   94 | Matt Jones           |        \-0.49 |         243 |              95 | AUS     |        1 |
|   95 | Shugo Imahira        |        \-0.49 |         288 |              91 | JPN     |        1 |
|   96 | Peter Malnati        |        \-0.48 |         268 |             100 | USA     |        1 |
|   97 | Nick Watney          |        \-0.48 |         222 |              93 | USA     |        1 |
|   98 | Dylan Frittelli      |        \-0.48 |         337 |             103 | RSA     |        1 |
|   99 | Justin Harding       |        \-0.46 |         240 |             102 | RSA     |        1 |
|  100 | Jordan L Smith       |        \-0.46 |         288 |              96 | ENG     |        1 |
|  101 | Martin Kaymer        |        \-0.45 |         268 |              95 | GER     |        1 |
|  102 | Troy Merritt         |        \-0.45 |         252 |              70 | USA     |        1 |
|  103 | Joaquin Niemann      |        \-0.45 |         130 |              92 | CHI     |        1 |
|  104 | Kevin Tway           |        \-0.44 |         294 |              84 | USA     |        1 |
|  105 | Erik van Rooyen      |        \-0.43 |         252 |              91 | RSA     |        1 |
|  106 | Cameron Percy        |        \-0.43 |         225 |              74 | AUS     |        1 |
|  107 | Brian Stuard         |        \-0.41 |         292 |             101 | USA     |        1 |
|  108 | Russell Henley       |        \-0.40 |         249 |              76 | USA     |        1 |
|  109 | JT Poston            |        \-0.37 |         288 |             100 | USA     |        1 |
|  110 | Jazz Janewattananond |        \-0.37 |         271 |             112 | THA     |        1 |
|  111 | Sam Ryder            |        \-0.36 |         251 |              84 | USA     |        1 |
|  112 | Branden Grace        |        \-0.36 |         295 |              98 | RSA     |        1 |
|  113 | Talor Gooch          |        \-0.36 |         235 |              65 | USA     |        1 |
|  114 | Jorge Campillo       |        \-0.35 |         271 |              93 | ESP     |        1 |
|  115 | Jimmy Walker         |        \-0.34 |         243 |              85 | USA     |        1 |
|  116 | Jamie Lovemark       |        \-0.33 |         232 |              50 | USA     |        1 |
|  117 | Nick Taylor          |        \-0.32 |         271 |              96 | CAN     |        1 |
|  118 | Austin Cook          |        \-0.32 |         286 |              82 | USA     |        1 |
|  119 | Peter Uihlein        |        \-0.32 |         242 |              89 | USA     |        1 |
|  120 | Danny Lee            |        \-0.32 |         275 |              90 | NZL     |        1 |
|  121 | Harold Varner III    |        \-0.30 |         300 |              92 | USA     |        1 |
|  122 | Brian Gay            |        \-0.30 |         271 |             112 | USA     |        1 |
|  123 | Martin Laird         |        \-0.30 |         235 |              70 | SCO     |        1 |
|  124 | Ryan Armour          |        \-0.29 |         282 |              98 | USA     |        1 |
|  125 | Danny Willett        |        \-0.29 |         216 |              89 | ENG     |        1 |
|  126 | Zhang Xinjun         |        \-0.28 |         254 |              88 | CHN     |        1 |
|  127 | Juan Sebastian Munoz |        \-0.28 |         252 |              96 | COL     |        1 |
|  128 | Thomas Detry         |        \-0.28 |         282 |              92 | BEL     |        1 |
|  129 | J.J Spaun            |        \-0.28 |         271 |              89 | USA     |        1 |
|  130 | Stewart Cink         |        \-0.27 |         233 |              63 | USA     |        1 |
|  131 | Tom Lewis            |        \-0.27 |         214 |              96 | ENG     |        1 |
|  132 | Jonas Blixt          |        \-0.26 |         221 |              82 | SWE     |        1 |
|  133 | David Lipsky         |        \-0.26 |         278 |              94 | USA     |        1 |
|  134 | Mikko Korhonen       |        \-0.25 |         225 |              81 | FIN     |        1 |
|  135 | Cameron Champ        |        \-0.24 |         146 |              97 | USA     |        1 |
|  136 | Alexander Bjork      |        \-0.23 |         289 |              81 | SWE     |        1 |
|  137 | Fabrizio Zanotti     |        \-0.23 |         225 |              62 | PAR     |        1 |
|  138 | Lucas Bjerregaard    |        \-0.23 |         275 |              94 | DEN     |        1 |
|  139 | Chan Kim             |        \-0.22 |         143 |              20 | USA     |        1 |
|  140 | Beau Hossler         |        \-0.20 |         245 |              92 | USA     |        1 |
|  141 | Chase Seiffert       |        \-0.20 |          75 |              64 | USA     |        1 |
|  142 | Adam Schenk          |        \-0.20 |         297 |             110 | USA     |        1 |
|  143 | Ross Fisher          |        \-0.20 |         247 |              82 | ENG     |        1 |
|  144 | Max Homa             |        \-0.18 |         219 |             103 | USA     |        1 |
|  145 | J.B. Holmes          |        \-0.18 |         239 |              68 | USA     |        1 |
|  146 | Corey Conners        |        \-0.18 |         299 |              94 | CAN     |        1 |
|  147 | Mackenzie Hughes     |        \-0.17 |         278 |              78 | CAN     |        1 |
|  148 | Sean Crocker         |        \-0.17 |         130 |              86 | USA     |        1 |
|  149 | Matthias Schwab      |        \-0.16 |         195 |             100 | AUT     |        1 |
|  150 | Chris Kirk           |        \-0.16 |         266 |              81 | USA     |        1 |
|  151 | Scott Stallings      |        \-0.14 |         255 |              89 | USA     |        1 |
|  152 | Patrick Rodgers      |        \-0.14 |         238 |              68 | USA     |        1 |
|  153 | Trey Mullinax        |        \-0.13 |         265 |              87 | USA     |        1 |
|  154 | Andy Sullivan        |        \-0.12 |         266 |              84 | ENG     |        1 |
|  155 | Jason Dufner         |        \-0.12 |         238 |              72 | USA     |        1 |
|  156 | Tyler McCumber       |        \-0.11 |         194 |              84 | USA     |        1 |
|  157 | Joseph Bramlett      |        \-0.08 |         125 |              86 | USA     |        1 |
|  158 | Chesson Hadley       |        \-0.07 |         267 |              85 | USA     |        1 |
|  159 | Charlie Danielson    |        \-0.07 |          82 |               8 | USA     |        1 |
|  160 | George Cunningham    |        \-0.06 |          95 |              91 | USA     |        1 |
|  161 | Seungyul Noh         |        \-0.06 |         114 |               0 | KOR     |       NA |
|  162 | Ernie Els            |        \-0.06 |         216 |              80 | RSA     |        1 |
|  163 | Harris English       |        \-0.06 |         260 |              86 | USA     |        1 |
|  164 | James Hahn           |        \-0.05 |         244 |              62 | USA     |        1 |
|  165 | Doug Ghim            |        \-0.05 |          78 |              74 | USA     |        1 |
|  166 | Kyounghoon Lee       |        \-0.04 |         325 |             107 | KOR     |        1 |
|  167 | Adrian Otaegui       |        \-0.04 |         271 |              92 | ESP     |        1 |
|  168 | Paul Waring          |        \-0.03 |         204 |              67 | ENG     |        1 |
|  169 | Richard Sterne       |        \-0.03 |         249 |              79 | RSA     |        1 |
|  170 | Andrea Pavan         |        \-0.03 |         239 |              92 | ITA     |        1 |
|  171 | Brian Harman         |        \-0.02 |         285 |              95 | USA     |        1 |
|  172 | Chris Paisley        |          0.01 |         240 |              76 | ENG     |        1 |
|  173 | Nate Lashley         |          0.01 |         260 |              66 | USA     |        1 |
|  174 | Shawn Stefani        |          0.02 |         251 |              89 | USA     |        1 |
|  175 | Johnson Wagner       |          0.02 |         215 |              71 | USA     |        1 |
|  176 | Ryan Fox             |          0.03 |         289 |              93 | NZL     |        1 |
|  177 | Sanghyun Park        |          0.03 |         263 |              86 | KOR     |        1 |
|  178 | Scott Brown          |          0.03 |         271 |              92 | USA     |        1 |
|  179 | Doc Redman           |          0.03 |          48 |              36 | USA     |        1 |
|  180 | Benjamin Hebert      |          0.03 |         245 |              76 | FRA     |        1 |
|  181 | Mark Anderson        |          0.03 |         219 |              72 | USA     |        1 |
|  182 | Patton Kizzire       |          0.04 |         247 |              88 | USA     |        1 |
|  183 | Lanto Griffin        |          0.04 |         248 |              88 | USA     |        1 |
|  184 | Carlos Ortiz         |          0.04 |         265 |             104 | MEX     |        1 |
|  185 | Will Zalatoris       |          0.04 |          43 |              22 | USA     |        1 |
|  186 | Robby Shelton IV     |          0.05 |         199 |              84 | USA     |        1 |
|  187 | Bronson Burgoon      |          0.05 |         161 |              67 | USA     |        1 |
|  188 | Henrik Norlander     |          0.06 |         232 |              88 | SWE     |        1 |
|  189 | Nacho Elvira         |          0.06 |         260 |              86 | ESP     |        1 |
|  190 | Charl Schwartzel     |          0.06 |         237 |              73 | RSA     |        1 |
|  191 | Adam Long            |          0.07 |         256 |              98 | USA     |        1 |
|  192 | Kramer Hickok        |          0.08 |         214 |              97 | USA     |        1 |
|  193 | Jimmy Stanger        |          0.08 |         109 |              66 | USA     |        1 |
|  194 | Pablo Larrazabal     |          0.08 |         244 |              79 | ESP     |        1 |
|  195 | Richy Werenski       |          0.09 |         259 |              89 | USA     |        1 |
|  196 | Bill Haas            |          0.09 |         246 |              74 | USA     |        1 |
|  197 | William McGirt       |          0.09 |         192 |              26 | USA     |        1 |
|  198 | Romain Langasque     |          0.09 |         265 |              98 | FRA     |        1 |
|  199 | D.J. Trahan          |          0.09 |         107 |              36 | USA     |        1 |
|  200 | Cameron Tringale     |          0.09 |         240 |              72 | USA     |        1 |

Current Golf Ratings
