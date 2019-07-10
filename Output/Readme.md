Current Golf Ratings
================
DSMok1
July 10, 2019

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
|    1 | Rory McIlroy            |        \-2.46 |         225 |              86 | NIR     |        1 |
|    2 | Dustin Johnson          |        \-2.42 |         248 |              92 | USA     |        1 |
|    3 | Patrick Cantlay         |        \-2.30 |         184 |              84 | USA     |        1 |
|    4 | Jon Rahm                |        \-2.12 |         261 |              88 | ESP     |        1 |
|    5 | Tiger Woods             |        \-2.08 |         112 |              62 | USA     |        1 |
|    6 | Justin Rose             |        \-2.05 |         254 |              86 | ENG     |        1 |
|    7 | Webb Simpson            |        \-1.88 |         265 |              90 | USA     |        1 |
|    8 | Justin Thomas           |        \-1.84 |         257 |              82 | USA     |        1 |
|    9 | Adam Scott              |        \-1.83 |         227 |              71 | AUS     |        1 |
|   10 | Paul Casey              |        \-1.77 |         254 |              84 | ENG     |        1 |
|   11 | Rickie Fowler           |        \-1.77 |         264 |              90 | USA     |        1 |
|   12 | Brooks Koepka           |        \-1.73 |         248 |              96 | USA     |        1 |
|   13 | Jason Day               |        \-1.73 |         214 |              78 | AUS     |        1 |
|   14 | Xander Schauffele       |        \-1.72 |         291 |              94 | USA     |        1 |
|   15 | Matt Kuchar             |        \-1.70 |         296 |              92 | USA     |        1 |
|   16 | Bryson DeChambeau       |        \-1.68 |         268 |              92 | USA     |        1 |
|   17 | Hideki Matsuyama        |        \-1.66 |         276 |             107 | JPN     |        1 |
|   18 | Gary Woodland           |        \-1.60 |         275 |              99 | USA     |        1 |
|   19 | Tommy Fleetwood         |        \-1.57 |         309 |             108 | ENG     |        1 |
|   20 | Tony Finau              |        \-1.41 |         300 |             104 | USA     |        1 |
|   21 | Marc Leishman           |        \-1.35 |         270 |              88 | AUS     |        1 |
|   22 | Henrik Stenson          |        \-1.33 |         232 |              82 | SWE     |        1 |
|   23 | Francesco Molinari      |        \-1.30 |         246 |              76 | ITA     |        1 |
|   24 | Sergio Garcia           |        \-1.26 |         239 |              81 | ESP     |        1 |
|   25 | Louis Oosthuizen        |        \-1.22 |         236 |              84 | RSA     |        1 |
|   26 | Chez Reavie             |        \-1.21 |         267 |              90 | USA     |        1 |
|   27 | Jim Furyk               |        \-1.20 |         179 |              68 | USA     |        1 |
|   28 | Jordan Spieth           |        \-1.18 |         254 |              84 | USA     |        1 |
|   29 | Rafael Cabrera Bello    |        \-1.14 |         312 |             108 | ESP     |        1 |
|   30 | Patrick Reed            |        \-1.13 |         332 |             110 | USA     |        1 |
|   31 | Lucas Glover            |        \-1.12 |         239 |              76 | USA     |        1 |
|   32 | Billy Horschel          |        \-1.11 |         261 |             100 | USA     |        1 |
|   33 | Charles Howell III      |        \-1.06 |         264 |              88 | USA     |        1 |
|   34 | Matthew Fitzpatrick     |        \-1.04 |         281 |             102 | ENG     |        1 |
|   35 | Shane Lowry             |        \-1.02 |         249 |              79 | IRL     |        1 |
|   36 | Ian Poulter             |        \-1.01 |         270 |              88 | ENG     |        1 |
|   37 | Scott Piercy            |        \-0.99 |         239 |              90 | USA     |        1 |
|   38 | Adam Hadwin             |        \-0.98 |         277 |              84 | CAN     |        1 |
|   39 | Tyrrell Hatton          |        \-0.97 |         262 |              92 | ENG     |        1 |
|   40 | Keegan Bradley          |        \-0.95 |         295 |             104 | USA     |        1 |
|   41 | Kevin Na                |        \-0.94 |         257 |              85 | USA     |        1 |
|   42 | Byeong Hun An           |        \-0.92 |         285 |             100 | KOR     |        1 |
|   43 | Emiliano Grillo         |        \-0.92 |         299 |              96 | ARG     |        1 |
|   44 | Haotong Li              |        \-0.91 |         267 |              90 | CHN     |        1 |
|   45 | Brandt Snedeker         |        \-0.89 |         257 |             107 | USA     |        1 |
|   46 | Kevin Streelman         |        \-0.89 |         271 |              83 | USA     |        1 |
|   47 | Russell Knox            |        \-0.86 |         290 |              94 | SCO     |        1 |
|   48 | Rory Sabbatini          |        \-0.86 |         253 |              89 | RSA     |        1 |
|   49 | Matt Wallace            |        \-0.86 |         264 |             108 | ENG     |        1 |
|   50 | Jason Kokrak            |        \-0.83 |         286 |             100 | USA     |        1 |
|   51 | Mike Lorenzo-Vera       |        \-0.82 |         230 |              75 | FRA     |        1 |
|   52 | Aaron Wise              |        \-0.81 |         251 |              83 | USA     |        1 |
|   53 | Sungjae Im              |        \-0.80 |         342 |             134 | KOR     |        1 |
|   54 | Abraham Ancer           |        \-0.77 |         287 |             100 | MEX     |        1 |
|   55 | Joaquin Niemann         |        \-0.77 |         142 |              98 | CHI     |        1 |
|   56 | Kevin Kisner            |        \-0.76 |         278 |              96 | USA     |        1 |
|   57 | Lee Westwood            |        \-0.75 |         228 |              73 | ENG     |        1 |
|   58 | Eddie Pepperell         |        \-0.73 |         209 |              74 | ENG     |        1 |
|   59 | Bubba Watson            |        \-0.71 |         231 |              82 | USA     |        1 |
|   60 | Andrew Putnam           |        \-0.69 |         260 |              89 | USA     |        1 |
|   61 | Scottie Scheffler       |        \-0.69 |          76 |              66 | USA     |        1 |
|   62 | Daniel Berger           |        \-0.68 |         248 |              74 | USA     |        1 |
|   63 | Ryan Moore              |        \-0.67 |         254 |              86 | USA     |        1 |
|   64 | Thorbjorn Olesen        |        \-0.67 |         249 |              78 | DEN     |        1 |
|   65 | Zach Johnson            |        \-0.67 |         250 |              80 | USA     |        1 |
|   66 | Bud Cauley              |        \-0.63 |         233 |              67 | USA     |        1 |
|   67 | Martin Kaymer           |        \-0.63 |         268 |              95 | GER     |        1 |
|   68 | Vaughn Taylor           |        \-0.62 |         261 |              87 | USA     |        1 |
|   69 | Sam Burns               |        \-0.62 |         168 |              94 | USA     |        1 |
|   70 | Denny McCarthy          |        \-0.62 |         257 |              93 | USA     |        1 |
|   71 | Pat Perez               |        \-0.59 |         223 |              69 | USA     |        1 |
|   72 | Steve Stricker          |        \-0.58 |         124 |              30 | USA     |        1 |
|   73 | Charlie Danielson       |        \-0.57 |          88 |              12 | USA     |        1 |
|   74 | Kevin Chappell          |        \-0.57 |         206 |              36 | USA     |        1 |
|   75 | Peter Malnati           |        \-0.57 |         276 |             102 | USA     |        1 |
|   76 | Cameron Smith           |        \-0.57 |         272 |             100 | AUS     |        1 |
|   77 | Charley Hoffman         |        \-0.56 |         274 |              84 | USA     |        1 |
|   78 | Graham Delaet           |        \-0.56 |          99 |               0 | CAN     |       NA |
|   79 | Kevin Tway              |        \-0.56 |         288 |              84 | USA     |        1 |
|   80 | C.T. Pan                |        \-0.56 |         286 |              92 | TPE     |        1 |
|   81 | Phil Mickelson          |        \-0.56 |         237 |              76 | USA     |        1 |
|   82 | Joost Luiten            |        \-0.56 |         222 |              59 | NED     |        1 |
|   83 | Kyle Stanley            |        \-0.54 |         268 |              88 | USA     |        1 |
|   84 | Graeme McDowell         |        \-0.54 |         261 |              80 | NIR     |        1 |
|   85 | Julian Suri             |        \-0.53 |         226 |              70 | USA     |        1 |
|   86 | Jorge Campillo          |        \-0.53 |         269 |              89 | ESP     |        1 |
|   87 | Alex Noren              |        \-0.50 |         248 |              80 | SWE     |        1 |
|   88 | Ryan Palmer             |        \-0.50 |         192 |              69 | USA     |        1 |
|   89 | Joel Dahmen             |        \-0.50 |         247 |             100 | USA     |        1 |
|   90 | Thomas Pieters          |        \-0.47 |         245 |              82 | BEL     |        1 |
|   91 | Erik van Rooyen         |        \-0.46 |         262 |             101 | RSA     |        1 |
|   92 | Troy Merritt            |        \-0.46 |         251 |              65 | USA     |        1 |
|   93 | Dylan Frittelli         |        \-0.45 |         335 |             107 | RSA     |        1 |
|   94 | Jhonattan Vegas         |        \-0.44 |         277 |              84 | VEN     |        1 |
|   95 | Aaron Baddeley          |        \-0.44 |         230 |              81 | AUS     |        1 |
|   96 | Shugo Imahira           |        \-0.43 |         287 |              96 | JPN     |        1 |
|   97 | Jazz Janewattananond    |        \-0.43 |         274 |             111 | THA     |        1 |
|   98 | Jordan L Smith          |        \-0.42 |         280 |              96 | ENG     |        1 |
|   99 | JT Poston               |        \-0.42 |         284 |              96 | USA     |        1 |
|  100 | Luke List               |        \-0.42 |         273 |              77 | USA     |        1 |
|  101 | Sam Ryder               |        \-0.42 |         253 |              80 | USA     |        1 |
|  102 | Nate Lashley            |        \-0.42 |         256 |              72 | USA     |        1 |
|  103 | Andy Sullivan           |        \-0.42 |         262 |              84 | ENG     |        1 |
|  104 | Brian Stuard            |        \-0.41 |         292 |             103 | USA     |        1 |
|  105 | Michael Thompson        |        \-0.40 |         211 |              84 | USA     |        1 |
|  106 | Justin Harding          |        \-0.39 |         244 |             101 | RSA     |        1 |
|  107 | Martin Laird            |        \-0.39 |         239 |              74 | SCO     |        1 |
|  108 | Keith Mitchell          |        \-0.39 |         279 |              91 | USA     |        1 |
|  109 | Thomas Detry            |        \-0.39 |         272 |              90 | BEL     |        1 |
|  110 | Nick Taylor             |        \-0.39 |         282 |             103 | CAN     |        1 |
|  111 | Victor Dubuisson        |        \-0.38 |         106 |              40 | FRA     |        1 |
|  112 | Kiradech Aphibarnrat    |        \-0.38 |         288 |              90 | THA     |        1 |
|  113 | Danny Willett           |        \-0.38 |         214 |              93 | ENG     |        1 |
|  114 | J.J Spaun               |        \-0.37 |         269 |              93 | USA     |        1 |
|  115 | Zhang Xinjun            |        \-0.36 |         255 |              87 | CHN     |        1 |
|  116 | Jimmy Walker            |        \-0.34 |         246 |              87 | USA     |        1 |
|  117 | Nick Watney             |        \-0.34 |         232 |              97 | USA     |        1 |
|  118 | Talor Gooch             |        \-0.34 |         235 |              67 | USA     |        1 |
|  119 | Matt Jones              |        \-0.33 |         242 |              90 | AUS     |        1 |
|  120 | Ryan Armour             |        \-0.32 |         282 |             100 | USA     |        1 |
|  121 | Harold Varner III       |        \-0.31 |         298 |              90 | USA     |        1 |
|  122 | Branden Grace           |        \-0.31 |         285 |              96 | RSA     |        1 |
|  123 | Jamie Lovemark          |        \-0.30 |         226 |              42 | USA     |        1 |
|  124 | Siwoo Kim               |        \-0.30 |         277 |              96 | KOR     |        1 |
|  125 | Wyndham Clark           |        \-0.29 |         167 |              91 | USA     |        1 |
|  126 | Brian Harman            |        \-0.28 |         291 |              97 | USA     |        1 |
|  127 | Sunghoon Kang           |        \-0.28 |         284 |              86 | KOR     |        1 |
|  128 | Danny Lee               |        \-0.27 |         271 |              92 | NZL     |        1 |
|  129 | Chase Seiffert          |        \-0.25 |          87 |              68 | USA     |        1 |
|  130 | Brian Gay               |        \-0.23 |         275 |             108 | USA     |        1 |
|  131 | Mackenzie Hughes        |        \-0.21 |         280 |              82 | CAN     |        1 |
|  132 | Bernd Wiesberger        |        \-0.20 |         215 |              48 | AUT     |        1 |
|  133 | Beau Hossler            |        \-0.20 |         254 |              89 | USA     |        1 |
|  134 | Chan Kim                |        \-0.18 |         146 |              33 | USA     |        1 |
|  135 | Alexander Bjork         |        \-0.16 |         277 |              73 | SWE     |        1 |
|  136 | Corey Conners           |        \-0.16 |         297 |              88 | CAN     |        1 |
|  137 | Cameron Tringale        |        \-0.16 |         247 |              77 | USA     |        1 |
|  138 | Max Homa                |        \-0.16 |         218 |             101 | USA     |        1 |
|  139 | Carlos Ortiz            |        \-0.16 |         273 |             108 | MEX     |        1 |
|  140 | Cameron Percy           |        \-0.16 |         223 |              62 | AUS     |        1 |
|  141 | Matthias Schwab         |        \-0.15 |         203 |              94 | AUT     |        1 |
|  142 | Shawn Stefani           |        \-0.15 |         254 |              92 | USA     |        1 |
|  143 | Russell Henley          |        \-0.14 |         249 |              74 | USA     |        1 |
|  144 | Mikko Korhonen          |        \-0.14 |         223 |              77 | FIN     |        1 |
|  145 | Peter Uihlein           |        \-0.14 |         248 |              89 | USA     |        1 |
|  146 | Jason Dufner            |        \-0.14 |         240 |              74 | USA     |        1 |
|  147 | Chris Kirk              |        \-0.14 |         256 |              77 | USA     |        1 |
|  148 | Rikuya Hoshino          |        \-0.12 |         217 |              76 | JPN     |        1 |
|  149 | Johnson Wagner          |        \-0.12 |         215 |              67 | USA     |        1 |
|  150 | Adam Schenk             |        \-0.12 |         295 |             112 | USA     |        1 |
|  151 | Andrea Pavan            |        \-0.12 |         235 |              86 | ITA     |        1 |
|  152 | Bronson Burgoon         |        \-0.12 |         167 |              67 | USA     |        1 |
|  153 | Stewart Cink            |        \-0.12 |         233 |              55 | USA     |        1 |
|  154 | Juan Sebastian Munoz    |        \-0.12 |         250 |              96 | COL     |        1 |
|  155 | Patrick Rodgers         |        \-0.12 |         230 |              56 | USA     |        1 |
|  156 | Austin Cook             |        \-0.10 |         278 |              82 | USA     |        1 |
|  157 | Brice Garnett           |        \-0.10 |         267 |              89 | USA     |        1 |
|  158 | Tom Lewis               |        \-0.09 |         212 |              88 | ENG     |        1 |
|  159 | Paul Waring             |        \-0.09 |         210 |              65 | ENG     |        1 |
|  160 | Jonas Blixt             |        \-0.09 |         229 |              86 | SWE     |        1 |
|  161 | Richard Sterne          |        \-0.08 |         247 |              75 | RSA     |        1 |
|  162 | J.B. Holmes             |        \-0.07 |         239 |              68 | USA     |        1 |
|  163 | Scott Brown             |        \-0.06 |         281 |              92 | USA     |        1 |
|  164 | Tyler McCumber          |        \-0.06 |         192 |              83 | USA     |        1 |
|  165 | Robby Shelton IV        |        \-0.05 |         201 |              84 | USA     |        1 |
|  166 | Fabrizio Zanotti        |        \-0.05 |         223 |              66 | PAR     |        1 |
|  167 | Seungyul Noh            |        \-0.04 |         108 |               0 | KOR     |       NA |
|  168 | Lanto Griffin           |        \-0.03 |         256 |              83 | USA     |        1 |
|  169 | Harris English          |        \-0.03 |         261 |              95 | USA     |        1 |
|  170 | Robert Rock             |        \-0.03 |         238 |              81 | ENG     |        1 |
|  171 | James Hahn              |        \-0.03 |         232 |              50 | USA     |        1 |
|  172 | Trey Mullinax           |        \-0.02 |         263 |              81 | USA     |        1 |
|  173 | Henrik Norlander        |        \-0.02 |         238 |              90 | SWE     |        1 |
|  174 | Scott Stallings         |        \-0.01 |         258 |              85 | USA     |        1 |
|  175 | Hank Lebioda            |        \-0.01 |         244 |              89 | USA     |        1 |
|  176 | Will Zalatoris          |          0.00 |          49 |              25 | USA     |        1 |
|  177 | Adria Arnaus            |          0.00 |         191 |             102 | ESP     |        1 |
|  178 | David Lipsky            |          0.01 |         278 |              96 | USA     |        1 |
|  179 | Adrian Otaegui          |          0.02 |         263 |              86 | ESP     |        1 |
|  180 | Cameron Champ           |          0.03 |         154 |              91 | USA     |        1 |
|  181 | Lucas Bjerregaard       |          0.03 |         267 |              90 | DEN     |        1 |
|  182 | Adam Long               |          0.04 |         252 |              92 | USA     |        1 |
|  183 | Brendan Steele          |          0.04 |         235 |              80 | USA     |        1 |
|  184 | Kyounghoon Lee          |          0.04 |         329 |             103 | KOR     |        1 |
|  185 | Chris Paisley           |          0.06 |         236 |              76 | ENG     |        1 |
|  186 | Sanghyun Park           |          0.06 |         263 |              86 | KOR     |        1 |
|  187 | Kramer Hickok           |          0.07 |         222 |              97 | USA     |        1 |
|  188 | Andrew Landry           |          0.07 |         241 |              86 | USA     |        1 |
|  189 | Christiaan Bezuidenhout |          0.08 |         260 |             101 | RSA     |        1 |
|  190 | Patton Kizzire          |          0.08 |         251 |              92 | USA     |        1 |
|  191 | Sean Crocker            |          0.09 |         138 |              82 | USA     |        1 |
|  192 | Junggon Hwang           |          0.09 |         285 |              80 | KOR     |        1 |
|  193 | Charl Schwartzel        |          0.10 |         225 |              67 | RSA     |        1 |
|  194 | D.J. Trahan             |          0.10 |         103 |              38 | USA     |        1 |
|  195 | Alex Prugh              |          0.10 |         266 |              96 | USA     |        1 |
|  196 | Luke Donald             |          0.11 |         152 |              33 | ENG     |        1 |
|  197 | Chesson Hadley          |          0.11 |         271 |              85 | USA     |        1 |
|  198 | Joseph Bramlett         |          0.11 |         135 |              84 | USA     |        1 |
|  199 | Bill Haas               |          0.11 |         237 |              66 | USA     |        1 |
|  200 | William McGirt          |          0.12 |         186 |              20 | USA     |        1 |

Current Golf Ratings
