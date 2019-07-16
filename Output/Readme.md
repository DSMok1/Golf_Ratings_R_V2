Current Golf Ratings
================
DSMok1
July 16, 2019

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

| Rank | Player\_Name            | Player\_Value | Num\_Rounds | Num\_Rounds\_Yr | Country | Tour\_Yr |
| ---: | :---------------------- | ------------: | ----------: | --------------: | :------ | -------: |
|    1 | Dustin Johnson          |        \-2.41 |         248 |              92 | USA     |        1 |
|    2 | Rory McIlroy            |        \-2.32 |         229 |              82 | NIR     |        1 |
|    3 | Patrick Cantlay         |        \-2.29 |         184 |              84 | USA     |        1 |
|    4 | Jon Rahm                |        \-2.12 |         261 |              88 | ESP     |        1 |
|    5 | Tiger Woods             |        \-2.07 |         112 |              62 | USA     |        1 |
|    6 | Justin Rose             |        \-2.04 |         254 |              86 | ENG     |        1 |
|    7 | Webb Simpson            |        \-1.88 |         265 |              86 | USA     |        1 |
|    8 | Justin Thomas           |        \-1.83 |         261 |              82 | USA     |        1 |
|    9 | Adam Scott              |        \-1.82 |         227 |              71 | AUS     |        1 |
|   10 | Paul Casey              |        \-1.77 |         254 |              84 | ENG     |        1 |
|   11 | Brooks Koepka           |        \-1.73 |         248 |             100 | USA     |        1 |
|   12 | Jason Day               |        \-1.72 |         214 |              82 | AUS     |        1 |
|   13 | Xander Schauffele       |        \-1.71 |         291 |              90 | USA     |        1 |
|   14 | Rickie Fowler           |        \-1.68 |         266 |              90 | USA     |        1 |
|   15 | Bryson DeChambeau       |        \-1.67 |         268 |              96 | USA     |        1 |
|   16 | Matt Kuchar             |        \-1.67 |         300 |              92 | USA     |        1 |
|   17 | Hideki Matsuyama        |        \-1.66 |         276 |             111 | JPN     |        1 |
|   18 | Gary Woodland           |        \-1.59 |         275 |              99 | USA     |        1 |
|   19 | Tommy Fleetwood         |        \-1.57 |         309 |             112 | ENG     |        1 |
|   20 | Tony Finau              |        \-1.40 |         300 |             104 | USA     |        1 |
|   21 | Henrik Stenson          |        \-1.39 |         236 |              82 | SWE     |        1 |
|   22 | Marc Leishman           |        \-1.34 |         270 |              88 | AUS     |        1 |
|   23 | Francesco Molinari      |        \-1.29 |         246 |              76 | ITA     |        1 |
|   24 | Sergio Garcia           |        \-1.27 |         239 |              81 | ESP     |        1 |
|   25 | Louis Oosthuizen        |        \-1.22 |         236 |              88 | RSA     |        1 |
|   26 | Chez Reavie             |        \-1.20 |         267 |              90 | USA     |        1 |
|   27 | Jim Furyk               |        \-1.19 |         179 |              64 | USA     |        1 |
|   28 | Rafael Cabrera Bello    |        \-1.18 |         316 |             110 | ESP     |        1 |
|   29 | Jordan Spieth           |        \-1.17 |         254 |              84 | USA     |        1 |
|   30 | Lucas Glover            |        \-1.17 |         243 |              80 | USA     |        1 |
|   31 | Patrick Reed            |        \-1.12 |         332 |             114 | USA     |        1 |
|   32 | Charles Howell III      |        \-1.12 |         268 |              88 | USA     |        1 |
|   33 | Billy Horschel          |        \-1.10 |         261 |             100 | USA     |        1 |
|   34 | Matthew Fitzpatrick     |        \-1.08 |         285 |             100 | ENG     |        1 |
|   35 | Ian Poulter             |        \-1.05 |         274 |              92 | ENG     |        1 |
|   36 | Shane Lowry             |        \-1.02 |         249 |              79 | IRL     |        1 |
|   37 | Tyrrell Hatton          |        \-1.01 |         266 |              94 | ENG     |        1 |
|   38 | Scott Piercy            |        \-0.98 |         239 |              90 | USA     |        1 |
|   39 | Adam Hadwin             |        \-0.97 |         277 |              88 | CAN     |        1 |
|   40 | Keegan Bradley          |        \-0.94 |         295 |             104 | USA     |        1 |
|   41 | Kevin Na                |        \-0.93 |         257 |              81 | USA     |        1 |
|   42 | Byeong Hun An           |        \-0.92 |         285 |             100 | KOR     |        1 |
|   43 | Matt Wallace            |        \-0.92 |         268 |             110 | ENG     |        1 |
|   44 | Emiliano Grillo         |        \-0.91 |         299 |              96 | ARG     |        1 |
|   45 | Brandt Snedeker         |        \-0.88 |         257 |             103 | USA     |        1 |
|   46 | Kevin Streelman         |        \-0.88 |         271 |              85 | USA     |        1 |
|   47 | Haotong Li              |        \-0.86 |         269 |              92 | CHN     |        1 |
|   48 | Rory Sabbatini          |        \-0.85 |         253 |              87 | RSA     |        1 |
|   49 | Mike Lorenzo-Vera       |        \-0.84 |         234 |              77 | FRA     |        1 |
|   50 | Joaquin Niemann         |        \-0.83 |         146 |              98 | CHI     |        1 |
|   51 | Jason Kokrak            |        \-0.82 |         286 |              96 | USA     |        1 |
|   52 | Sungjae Im              |        \-0.81 |         346 |             134 | KOR     |        1 |
|   53 | Aaron Wise              |        \-0.80 |         251 |              81 | USA     |        1 |
|   54 | Russell Knox            |        \-0.78 |         292 |              94 | SCO     |        1 |
|   55 | Andrew Putnam           |        \-0.78 |         264 |              87 | USA     |        1 |
|   56 | Abraham Ancer           |        \-0.76 |         287 |             100 | MEX     |        1 |
|   57 | Ryan Moore              |        \-0.72 |         258 |              84 | USA     |        1 |
|   58 | Vaughn Taylor           |        \-0.72 |         265 |              85 | USA     |        1 |
|   59 | Eddie Pepperell         |        \-0.71 |         213 |              76 | ENG     |        1 |
|   60 | Bubba Watson            |        \-0.70 |         231 |              78 | USA     |        1 |
|   61 | Lee Westwood            |        \-0.69 |         232 |              73 | ENG     |        1 |
|   62 | Daniel Berger           |        \-0.68 |         252 |              78 | USA     |        1 |
|   63 | Thorbjorn Olesen        |        \-0.68 |         249 |              78 | DEN     |        1 |
|   64 | Bud Cauley              |        \-0.68 |         237 |              71 | USA     |        1 |
|   65 | Martin Kaymer           |        \-0.68 |         272 |              99 | GER     |        1 |
|   66 | Zach Johnson            |        \-0.66 |         254 |              80 | USA     |        1 |
|   67 | Kevin Kisner            |        \-0.65 |         280 |              92 | USA     |        1 |
|   68 | Dylan Frittelli         |        \-0.62 |         339 |             107 | RSA     |        1 |
|   69 | Scottie Scheffler       |        \-0.62 |          80 |              66 | USA     |        1 |
|   70 | Kyle Stanley            |        \-0.60 |         272 |              88 | USA     |        1 |
|   71 | Pat Perez               |        \-0.60 |         227 |              73 | USA     |        1 |
|   72 | Ryan Palmer             |        \-0.57 |         196 |              69 | USA     |        1 |
|   73 | Steve Stricker          |        \-0.57 |         124 |              30 | USA     |        1 |
|   74 | Kevin Chappell          |        \-0.56 |         206 |              32 | USA     |        1 |
|   75 | Denny McCarthy          |        \-0.56 |         259 |              93 | USA     |        1 |
|   76 | Cameron Smith           |        \-0.56 |         272 |             100 | AUS     |        1 |
|   77 | Charley Hoffman         |        \-0.55 |         274 |              86 | USA     |        1 |
|   78 | Phil Mickelson          |        \-0.55 |         237 |              74 | USA     |        1 |
|   79 | Graham Delaet           |        \-0.55 |          99 |               0 | CAN     |       NA |
|   80 | Erik van Rooyen         |        \-0.55 |         266 |              99 | RSA     |        1 |
|   81 | Thomas Pieters          |        \-0.55 |         249 |              80 | BEL     |        1 |
|   82 | Peter Malnati           |        \-0.52 |         280 |             102 | USA     |        1 |
|   83 | Joost Luiten            |        \-0.52 |         224 |              61 | NED     |        1 |
|   84 | Kevin Tway              |        \-0.51 |         290 |              84 | USA     |        1 |
|   85 | Alex Noren              |        \-0.50 |         248 |              80 | SWE     |        1 |
|   86 | Julian Suri             |        \-0.49 |         230 |              68 | USA     |        1 |
|   87 | Jorge Campillo          |        \-0.48 |         272 |              89 | ESP     |        1 |
|   88 | Sam Ryder               |        \-0.48 |         257 |              82 | USA     |        1 |
|   89 | C.T. Pan                |        \-0.47 |         288 |              88 | TPE     |        1 |
|   90 | Andy Sullivan           |        \-0.47 |         266 |              84 | ENG     |        1 |
|   91 | Nate Lashley            |        \-0.46 |         260 |              74 | USA     |        1 |
|   92 | Bernd Wiesberger        |        \-0.45 |         219 |              52 | AUT     |        1 |
|   93 | Jhonattan Vegas         |        \-0.45 |         281 |              84 | VEN     |        1 |
|   94 | Nick Watney             |        \-0.45 |         236 |              95 | USA     |        1 |
|   95 | Jazz Janewattananond    |        \-0.44 |         274 |             111 | THA     |        1 |
|   96 | Shugo Imahira           |        \-0.44 |         287 |              97 | JPN     |        1 |
|   97 | Sam Burns               |        \-0.44 |         170 |              98 | USA     |        1 |
|   98 | Aaron Baddeley          |        \-0.43 |         230 |              81 | AUS     |        1 |
|   99 | Graeme McDowell         |        \-0.42 |         263 |              78 | NIR     |        1 |
|  100 | Nick Taylor             |        \-0.41 |         286 |             103 | CAN     |        1 |
|  101 | Luke List               |        \-0.41 |         273 |              79 | USA     |        1 |
|  102 | Zhang Xinjun            |        \-0.41 |         259 |              85 | CHN     |        1 |
|  103 | Thomas Detry            |        \-0.41 |         276 |              92 | BEL     |        1 |
|  104 | Michael Thompson        |        \-0.41 |         215 |              85 | USA     |        1 |
|  105 | Martin Laird            |        \-0.40 |         243 |              78 | SCO     |        1 |
|  106 | Jordan L Smith          |        \-0.40 |         282 |              96 | ENG     |        1 |
|  107 | Keith Mitchell          |        \-0.38 |         279 |              91 | USA     |        1 |
|  108 | Danny Willett           |        \-0.38 |         214 |              91 | ENG     |        1 |
|  109 | J.J Spaun               |        \-0.36 |         269 |              93 | USA     |        1 |
|  110 | Russell Henley          |        \-0.35 |         253 |              72 | USA     |        1 |
|  111 | JT Poston               |        \-0.34 |         286 |              92 | USA     |        1 |
|  112 | Joel Dahmen             |        \-0.33 |         249 |              96 | USA     |        1 |
|  113 | Troy Merritt            |        \-0.33 |         253 |              69 | USA     |        1 |
|  114 | Brian Harman            |        \-0.32 |         295 |              97 | USA     |        1 |
|  115 | Victor Dubuisson        |        \-0.31 |         108 |              42 | FRA     |        1 |
|  116 | Justin Harding          |        \-0.31 |         246 |             103 | RSA     |        1 |
|  117 | Brian Stuard            |        \-0.30 |         294 |             103 | USA     |        1 |
|  118 | Harold Varner III       |        \-0.30 |         302 |              86 | USA     |        1 |
|  119 | Jamie Lovemark          |        \-0.29 |         226 |              38 | USA     |        1 |
|  120 | Andrea Pavan            |        \-0.28 |         239 |              86 | ITA     |        1 |
|  121 | Sunghoon Kang           |        \-0.27 |         284 |              88 | KOR     |        1 |
|  122 | Matt Jones              |        \-0.26 |         244 |              90 | AUS     |        1 |
|  123 | Cameron Tringale        |        \-0.26 |         251 |              79 | USA     |        1 |
|  124 | Branden Grace           |        \-0.25 |         287 |              96 | RSA     |        1 |
|  125 | Ryan Armour             |        \-0.25 |         284 |             100 | USA     |        1 |
|  126 | Beau Hossler            |        \-0.25 |         258 |              93 | USA     |        1 |
|  127 | Talor Gooch             |        \-0.25 |         238 |              67 | USA     |        1 |
|  128 | Kiradech Aphibarnrat    |        \-0.24 |         291 |              88 | THA     |        1 |
|  129 | Siwoo Kim               |        \-0.23 |         279 |              98 | KOR     |        1 |
|  130 | Adam Schenk             |        \-0.22 |         299 |             112 | USA     |        1 |
|  131 | Brian Gay               |        \-0.22 |         275 |             108 | USA     |        1 |
|  132 | Wyndham Clark           |        \-0.22 |         170 |              95 | USA     |        1 |
|  133 | Chase Seiffert          |        \-0.21 |          91 |              70 | USA     |        1 |
|  134 | Jimmy Walker            |        \-0.20 |         248 |              88 | USA     |        1 |
|  135 | Danny Lee               |        \-0.19 |         273 |              92 | NZL     |        1 |
|  136 | Shawn Stefani           |        \-0.19 |         258 |              94 | USA     |        1 |
|  137 | Chan Kim                |        \-0.18 |         146 |              33 | USA     |        1 |
|  138 | Mackenzie Hughes        |        \-0.17 |         282 |              82 | CAN     |        1 |
|  139 | Johnson Wagner          |        \-0.16 |         219 |              67 | USA     |        1 |
|  140 | Mikko Korhonen          |        \-0.16 |         227 |              75 | FIN     |        1 |
|  141 | Corey Conners           |        \-0.15 |         297 |              88 | CAN     |        1 |
|  142 | Max Homa                |        \-0.14 |         218 |             100 | USA     |        1 |
|  143 | Matthias Schwab         |        \-0.14 |         205 |              94 | AUT     |        1 |
|  144 | Alexander Bjork         |        \-0.14 |         281 |              73 | SWE     |        1 |
|  145 | Juan Sebastian Munoz    |        \-0.14 |         254 |              96 | COL     |        1 |
|  146 | Bronson Burgoon         |        \-0.13 |         171 |              67 | USA     |        1 |
|  147 | Peter Uihlein           |        \-0.13 |         248 |              87 | USA     |        1 |
|  148 | Tom Lewis               |        \-0.13 |         216 |              88 | ENG     |        1 |
|  149 | Rikuya Hoshino          |        \-0.13 |         217 |              77 | JPN     |        1 |
|  150 | Brice Garnett           |        \-0.13 |         271 |              91 | USA     |        1 |
|  151 | Chris Kirk              |        \-0.12 |         256 |              77 | USA     |        1 |
|  152 | Paul Waring             |        \-0.12 |         214 |              65 | ENG     |        1 |
|  153 | Andrew Landry           |        \-0.11 |         245 |              88 | USA     |        1 |
|  154 | Patrick Rodgers         |        \-0.11 |         230 |              54 | USA     |        1 |
|  155 | Adrian Otaegui          |        \-0.10 |         267 |              84 | ESP     |        1 |
|  156 | Scott Stallings         |        \-0.10 |         262 |              84 | USA     |        1 |
|  157 | Jason Dufner            |        \-0.10 |         242 |              78 | USA     |        1 |
|  158 | Carlos Ortiz            |        \-0.09 |         275 |             108 | MEX     |        1 |
|  159 | Charlie Danielson       |        \-0.09 |          92 |              16 | USA     |        1 |
|  160 | Benjamin Hebert         |        \-0.08 |         245 |              76 | FRA     |        1 |
|  161 | Jonas Blixt             |        \-0.08 |         229 |              86 | SWE     |        1 |
|  162 | J.B. Holmes             |        \-0.06 |         239 |              66 | USA     |        1 |
|  163 | Cameron Percy           |        \-0.06 |         227 |              62 | AUS     |        1 |
|  164 | Fabrizio Zanotti        |        \-0.05 |         227 |              66 | PAR     |        1 |
|  165 | Richard Sterne          |        \-0.04 |         249 |              75 | RSA     |        1 |
|  166 | Bill Haas               |        \-0.04 |         241 |              67 | USA     |        1 |
|  167 | Tyler McCumber          |        \-0.04 |         192 |              79 | USA     |        1 |
|  168 | Stewart Cink            |        \-0.04 |         237 |              55 | USA     |        1 |
|  169 | Adria Arnaus            |        \-0.03 |         191 |             102 | ESP     |        1 |
|  170 | Seungyul Noh            |        \-0.02 |         108 |               0 | KOR     |       NA |
|  171 | Romain Langasque        |        \-0.02 |         257 |              92 | FRA     |        1 |
|  172 | Harris English          |        \-0.02 |         261 |              95 | USA     |        1 |
|  173 | James Hahn              |        \-0.01 |         232 |              48 | USA     |        1 |
|  174 | Chris Paisley           |        \-0.01 |         240 |              78 | ENG     |        1 |
|  175 | Paul Barjon             |        \-0.01 |         160 |              52 | FRA     |        1 |
|  176 | Austin Cook             |        \-0.01 |         282 |              80 | USA     |        1 |
|  177 | Scott Brown             |        \-0.01 |         283 |              92 | USA     |        1 |
|  178 | Henrik Norlander        |          0.00 |         238 |              90 | SWE     |        1 |
|  179 | Christiaan Bezuidenhout |          0.01 |         264 |              99 | RSA     |        1 |
|  180 | Wes Roach               |          0.01 |         250 |              89 | USA     |        1 |
|  181 | Adam Long               |          0.03 |         256 |              90 | USA     |        1 |
|  182 | David Lipsky            |          0.03 |         280 |              96 | USA     |        1 |
|  183 | Roger Sloan             |          0.03 |         249 |             104 | CAN     |        1 |
|  184 | Robert Rock             |          0.04 |         240 |              81 | ENG     |        1 |
|  185 | Lucas Bjerregaard       |          0.04 |         269 |              90 | DEN     |        1 |
|  186 | Brendan Steele          |          0.05 |         235 |              84 | USA     |        1 |
|  187 | Hank Lebioda            |          0.06 |         246 |              89 | USA     |        1 |
|  188 | Lanto Griffin           |          0.06 |         258 |              83 | USA     |        1 |
|  189 | Sam Saunders            |          0.06 |         246 |              78 | USA     |        1 |
|  190 | Trey Mullinax           |          0.07 |         265 |              79 | USA     |        1 |
|  191 | Sean Crocker            |          0.07 |         142 |              84 | USA     |        1 |
|  192 | George Coetzee          |          0.07 |         277 |              90 | RSA     |        1 |
|  193 | Davis Riley             |          0.08 |          41 |              37 | USA     |        1 |
|  194 | Will Zalatoris          |          0.08 |          53 |              29 | USA     |        1 |
|  195 | Sanghyun Park           |          0.08 |         265 |              85 | KOR     |        1 |
|  196 | Joseph Bramlett         |          0.08 |         139 |              82 | USA     |        1 |
|  197 | Junggon Hwang           |          0.09 |         285 |              81 | KOR     |        1 |
|  198 | Robby Shelton IV        |          0.09 |         203 |              84 | USA     |        1 |
|  199 | Patton Kizzire          |          0.09 |         251 |              94 | USA     |        1 |
|  200 | Charl Schwartzel        |          0.10 |         225 |              67 | RSA     |        1 |

Current Golf Ratings
