Current Golf Ratings
================
DSMok1
August 21, 2019

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

| Rank | Player\_Name            | Player\_Value | Num\_Rounds | Num\_Rounds\_Yr | Country | Tour\_Yr                |
| ---: | :---------------------- | ------------: | ----------: | --------------: | :------ | :---------------------- |
|    1 | Patrick Cantlay         |        \-2.29 |         200 |              84 | USA     | PGA Tour                |
|    2 | Jon Rahm                |        \-2.26 |         259 |              90 | ESP     | PGA Tour                |
|    3 | Rory McIlroy            |        \-2.26 |         237 |              84 | NIR     | PGA Tour                |
|    4 | Justin Thomas           |        \-2.07 |         263 |              88 | USA     | PGA Tour                |
|    5 | Webb Simpson            |        \-2.00 |         269 |              90 | USA     | PGA Tour                |
|    6 | Dustin Johnson          |        \-2.00 |         254 |              90 | USA     | PGA Tour                |
|    7 | Justin Rose             |        \-1.88 |         258 |              86 | ENG     | PGA Tour                |
|    8 | Brooks Koepka           |        \-1.86 |         256 |              98 | USA     | PGA Tour                |
|    9 | Tommy Fleetwood         |        \-1.72 |         319 |             108 | ENG     | PGA Tour                |
|   10 | Adam Scott              |        \-1.65 |         233 |              69 | AUS     | PGA Tour                |
|   11 | Tiger Woods             |        \-1.65 |         118 |              52 | USA     | PGA Tour                |
|   12 | Rickie Fowler           |        \-1.64 |         260 |              82 | USA     | PGA Tour                |
|   13 | Paul Casey              |        \-1.58 |         260 |              82 | ENG     | PGA Tour                |
|   14 | Hideki Matsuyama        |        \-1.55 |         282 |             111 | JPN     | PGA Tour                |
|   15 | Tony Finau              |        \-1.55 |         302 |             100 | USA     | PGA Tour                |
|   16 | Xander Schauffele       |        \-1.50 |         283 |              88 | USA     | PGA Tour                |
|   17 | Viktor Hovland          |        \-1.45 |          46 |              40 | NOR     | PGA Tour                |
|   18 | Louis Oosthuizen        |        \-1.40 |         242 |              92 | RSA     | PGA Tour                |
|   19 | Collin Morikawa         |        \-1.38 |          38 |              28 | USA     | PGA Tour                |
|   20 | Patrick Reed            |        \-1.36 |         332 |             112 | USA     | PGA Tour                |
|   21 | Bryson DeChambeau       |        \-1.36 |         276 |              92 | USA     | PGA Tour                |
|   22 | Henrik Stenson          |        \-1.33 |         232 |              84 | SWE     | PGA Tour                |
|   23 | Matt Kuchar             |        \-1.32 |         296 |              92 | USA     | PGA Tour                |
|   24 | Jason Day               |        \-1.31 |         214 |              78 | AUS     | PGA Tour                |
|   25 | Gary Woodland           |        \-1.21 |         277 |              93 | USA     | PGA Tour                |
|   26 | Marc Leishman           |        \-1.20 |         270 |              84 | AUS     | PGA Tour                |
|   27 | Matthew Fitzpatrick     |        \-1.19 |         281 |             100 | ENG     | European Tour           |
|   28 | Jordan Spieth           |        \-1.17 |         265 |              87 | USA     | PGA Tour                |
|   29 | Shane Lowry             |        \-1.17 |         251 |              77 | IRL     | European Tour           |
|   30 | Billy Horschel          |        \-1.14 |         269 |             104 | USA     | PGA Tour                |
|   31 | Lucas Glover            |        \-1.13 |         255 |              96 | USA     | PGA Tour                |
|   32 | Ian Poulter             |        \-1.10 |         288 |              88 | ENG     | PGA Tour                |
|   33 | Byeong Hun An           |        \-1.05 |         291 |              96 | KOR     | PGA Tour                |
|   34 | Brandt Snedeker         |        \-1.05 |         259 |             107 | USA     | PGA Tour                |
|   35 | Jason Kokrak            |        \-1.02 |         292 |              98 | USA     | PGA Tour                |
|   36 | Rory Sabbatini          |        \-1.01 |         253 |              95 | RSA     | PGA Tour                |
|   37 | Tyrrell Hatton          |        \-0.99 |         264 |              94 | ENG     | PGA Tour                |
|   38 | Charles Howell III      |        \-0.98 |         278 |              92 | USA     | PGA Tour                |
|   39 | Rafael Cabrera Bello    |        \-0.98 |         310 |             106 | ESP     | PGA Tour                |
|   40 | Chez Reavie             |        \-0.97 |         275 |              94 | USA     | PGA Tour                |
|   41 | Francesco Molinari      |        \-0.95 |         246 |              68 | ITA     | PGA Tour                |
|   42 | Sergio Garcia           |        \-0.95 |         239 |              81 | ESP     | PGA Tour                |
|   43 | Jim Furyk               |        \-0.92 |         175 |              68 | USA     | PGA Tour                |
|   44 | Matt Wallace            |        \-0.88 |         268 |             114 | ENG     | European Tour           |
|   45 | Kevin Kisner            |        \-0.88 |         280 |              92 | USA     | PGA Tour                |
|   46 | Andrew Putnam           |        \-0.87 |         262 |              92 | USA     | PGA Tour                |
|   47 | Abraham Ancer           |        \-0.86 |         285 |             102 | MEX     | PGA Tour                |
|   48 | Matthew Wolff           |        \-0.86 |          29 |              29 | USA     | PGA Tour                |
|   49 | Scott Piercy            |        \-0.84 |         243 |              94 | USA     | PGA Tour                |
|   50 | Joaquin Niemann         |        \-0.83 |         160 |             100 | CHI     | PGA Tour                |
|   51 | Haotong Li              |        \-0.81 |         271 |              88 | CHN     | European Tour           |
|   52 | Sungjae Im              |        \-0.81 |         356 |             130 | KOR     | PGA Tour                |
|   53 | Adam Hadwin             |        \-0.79 |         277 |              90 | CAN     | PGA Tour                |
|   54 | Vaughn Taylor           |        \-0.78 |         263 |              91 | USA     | PGA Tour                |
|   55 | Ryan Moore              |        \-0.76 |         246 |              80 | USA     | PGA Tour                |
|   56 | Aaron Wise              |        \-0.76 |         244 |              85 | USA     | PGA Tour                |
|   57 | Lee Westwood            |        \-0.70 |         226 |              73 | ENG     | European Tour           |
|   58 | Kevin Streelman         |        \-0.69 |         273 |              87 | USA     | PGA Tour                |
|   59 | Kevin Na                |        \-0.67 |         249 |              77 | USA     | PGA Tour                |
|   60 | Bud Cauley              |        \-0.67 |         221 |              79 | USA     | PGA Tour                |
|   61 | Mike Lorenzo-Vera       |        \-0.67 |         234 |              73 | FRA     | European Tour           |
|   62 | Thorbjorn Olesen        |        \-0.66 |         249 |              74 | DEN     | European Tour           |
|   63 | Bubba Watson            |        \-0.66 |         225 |              78 | USA     | PGA Tour                |
|   64 | Emiliano Grillo         |        \-0.66 |         291 |              90 | ARG     | PGA Tour                |
|   65 | Erik van Rooyen         |        \-0.64 |         269 |              99 | RSA     | European Tour           |
|   66 | Thomas Pieters          |        \-0.64 |         241 |              76 | BEL     | European Tour           |
|   67 | Cameron Smith           |        \-0.62 |         272 |              98 | AUS     | PGA Tour                |
|   68 | Daniel Berger           |        \-0.62 |         248 |              76 | USA     | PGA Tour                |
|   69 | Alex Noren              |        \-0.62 |         252 |              82 | SWE     | PGA Tour                |
|   70 | Russell Knox            |        \-0.62 |         290 |              92 | SCO     | PGA Tour                |
|   71 | Kyle Stanley            |        \-0.60 |         268 |              92 | USA     | PGA Tour                |
|   72 | Scottie Scheffler       |        \-0.60 |          90 |              74 | USA     | Web.com Tour            |
|   73 | Keegan Bradley          |        \-0.60 |         289 |             102 | USA     | PGA Tour                |
|   74 | JT Poston               |        \-0.57 |         280 |              96 | USA     | PGA Tour                |
|   75 | Danny Willett           |        \-0.56 |         214 |              93 | ENG     | PGA Tour                |
|   76 | Denny McCarthy          |        \-0.55 |         253 |             101 | USA     | PGA Tour                |
|   77 | Joost Luiten            |        \-0.54 |         218 |              67 | NED     | European Tour           |
|   78 | Martin Kaymer           |        \-0.53 |         262 |              97 | GER     | European Tour           |
|   79 | Dylan Frittelli         |        \-0.53 |         329 |             111 | RSA     | PGA Tour                |
|   80 | Zach Johnson            |        \-0.52 |         244 |              74 | USA     | PGA Tour                |
|   81 | Graham Delaet           |        \-0.51 |          87 |               0 | CAN     | NA                      |
|   82 | Steve Stricker          |        \-0.49 |         112 |              22 | USA     | PGA Tour                |
|   83 | Bernd Wiesberger        |        \-0.45 |         219 |              60 | AUT     | European Tour           |
|   84 | Corey Conners           |        \-0.43 |         296 |              94 | CAN     | PGA Tour                |
|   85 | Pat Perez               |        \-0.43 |         231 |              67 | USA     | PGA Tour                |
|   86 | Justin Harding          |        \-0.42 |         249 |              95 | RSA     | Asian Tour              |
|   87 | C.T. Pan                |        \-0.40 |         282 |              96 | TPE     | PGA Tour                |
|   88 | Brian Harman            |        \-0.39 |         291 |             101 | USA     | PGA Tour                |
|   89 | Eddie Pepperell         |        \-0.38 |         217 |              76 | ENG     | European Tour           |
|   90 | Thomas Detry            |        \-0.37 |         260 |              88 | BEL     | European Tour           |
|   91 | Julian Suri             |        \-0.37 |         224 |              62 | USA     | European Tour           |
|   92 | Jordan L Smith          |        \-0.37 |         272 |              86 | ENG     | European Tour           |
|   93 | Russell Henley          |        \-0.36 |         247 |              78 | USA     | PGA Tour                |
|   94 | Sam Burns               |        \-0.36 |         170 |              84 | USA     | PGA Tour                |
|   95 | Matt Jones              |        \-0.36 |         236 |              94 | AUS     | PGA Tour                |
|   96 | Jorge Campillo          |        \-0.35 |         274 |              86 | ESP     | European Tour           |
|   97 | Jhonattan Vegas         |        \-0.35 |         273 |              82 | VEN     | PGA Tour                |
|   98 | Aaron Baddeley          |        \-0.35 |         218 |              73 | AUS     | PGA Tour                |
|   99 | Nick Taylor             |        \-0.34 |         282 |             103 | CAN     | PGA Tour                |
|  100 | Jazz Janewattananond    |        \-0.34 |         276 |             105 | THA     | Asian Tour              |
|  101 | Branden Grace           |        \-0.33 |         289 |             100 | RSA     | PGA Tour                |
|  102 | Harold Varner III       |        \-0.32 |         304 |              90 | USA     | PGA Tour                |
|  103 | Keith Mitchell          |        \-0.31 |         269 |              93 | USA     | PGA Tour                |
|  104 | Andy Sullivan           |        \-0.30 |         258 |              84 | ENG     | European Tour           |
|  105 | Troy Merritt            |        \-0.30 |         245 |              65 | USA     | PGA Tour                |
|  106 | Andrea Pavan            |        \-0.30 |         227 |              88 | ITA     | European Tour           |
|  107 | Shugo Imahira           |        \-0.29 |         291 |             101 | JPN     | Japan Golf Tour         |
|  108 | Sam Ryder               |        \-0.29 |         245 |              80 | USA     | PGA Tour                |
|  109 | Kevin Tway              |        \-0.28 |         284 |              88 | USA     | PGA Tour                |
|  110 | Tom Lewis               |        \-0.28 |         212 |              86 | ENG     | European Tour           |
|  111 | Ryan Palmer             |        \-0.27 |         194 |              72 | USA     | PGA Tour                |
|  112 | Nick Watney             |        \-0.27 |         242 |              93 | USA     | PGA Tour                |
|  113 | Charley Hoffman         |        \-0.27 |         274 |              78 | USA     | PGA Tour                |
|  114 | Joel Dahmen             |        \-0.27 |         247 |              96 | USA     | PGA Tour                |
|  115 | Graeme McDowell         |        \-0.26 |         261 |              78 | NIR     | PGA Tour                |
|  116 | Wyndham Clark           |        \-0.26 |         181 |              95 | USA     | PGA Tour                |
|  117 | Nate Lashley            |        \-0.26 |         250 |              80 | USA     | PGA Tour                |
|  118 | Martin Laird            |        \-0.26 |         237 |              88 | SCO     | PGA Tour                |
|  119 | Andrew Landry           |        \-0.25 |         239 |              86 | USA     | PGA Tour                |
|  120 | Ryan Armour             |        \-0.25 |         280 |             108 | USA     | PGA Tour                |
|  121 | Adam Schenk             |        \-0.24 |         293 |             118 | USA     | PGA Tour                |
|  122 | Kevin Chappell          |        \-0.24 |         202 |              18 | USA     | PGA Tour                |
|  123 | Juan Sebastian Munoz    |        \-0.24 |         254 |             102 | COL     | PGA Tour                |
|  124 | Brian Stuard            |        \-0.23 |         290 |             104 | USA     | PGA Tour                |
|  125 | Michael Thompson        |        \-0.22 |         207 |              87 | USA     | PGA Tour                |
|  126 | Matthias Schwab         |        \-0.22 |         209 |              90 | AUT     | European Tour           |
|  127 | Victor Dubuisson        |        \-0.22 |         108 |              44 | FRA     | European Tour           |
|  128 | Kiradech Aphibarnrat    |        \-0.21 |         293 |              89 | THA     | PGA Tour                |
|  129 | Peter Malnati           |        \-0.20 |         271 |             103 | USA     | PGA Tour                |
|  130 | Siwoo Kim               |        \-0.20 |         275 |              94 | KOR     | PGA Tour                |
|  131 | Mackenzie Hughes        |        \-0.18 |         272 |              80 | CAN     | PGA Tour                |
|  132 | Shawn Stefani           |        \-0.18 |         252 |              96 | USA     | PGA Tour                |
|  133 | Brice Garnett           |        \-0.17 |         269 |              99 | USA     | PGA Tour                |
|  134 | Cameron Tringale        |        \-0.16 |         239 |              79 | USA     | PGA Tour                |
|  135 | Phil Mickelson          |        \-0.14 |         243 |              72 | USA     | PGA Tour                |
|  136 | Cameron Percy           |        \-0.14 |         215 |              56 | AUS     | Web.com Tour            |
|  137 | J.J Spaun               |        \-0.13 |         257 |              93 | USA     | PGA Tour                |
|  138 | Johnson Wagner          |        \-0.13 |         214 |              66 | USA     | PGA Tour                |
|  139 | Beau Hossler            |        \-0.12 |         266 |              95 | USA     | PGA Tour                |
|  140 | Benjamin Hebert         |        \-0.12 |         249 |              80 | FRA     | European Tour           |
|  141 | Adria Arnaus            |        \-0.11 |         197 |              94 | ESP     | European Tour           |
|  142 | Mikko Korhonen          |        \-0.10 |         231 |              81 | FIN     | European Tour           |
|  143 | Zhang Xinjun            |        \-0.10 |         271 |              89 | CHN     | Web.com Tour            |
|  144 | Talor Gooch             |        \-0.10 |         232 |              74 | USA     | PGA Tour                |
|  145 | Luke List               |        \-0.10 |         265 |              73 | USA     | PGA Tour                |
|  146 | Bill Haas               |        \-0.09 |         237 |              72 | USA     | PGA Tour                |
|  147 | Calum Hill(Nov1994)     |        \-0.09 |          94 |              74 | SCO     | European Challenge Tour |
|  148 | Harris English          |        \-0.09 |         261 |              97 | USA     | PGA Tour                |
|  149 | Paul Waring             |        \-0.09 |         222 |              71 | ENG     | European Tour           |
|  150 | Jason Dufner            |        \-0.08 |         236 |              80 | USA     | PGA Tour                |
|  151 | Rikuya Hoshino          |        \-0.07 |         213 |              77 | JPN     | Japan Golf Tour         |
|  152 | Bronson Burgoon         |        \-0.07 |         163 |              65 | USA     | PGA Tour                |
|  153 | D.J. Trahan             |        \-0.06 |         105 |              37 | USA     | PGA Tour                |
|  154 | Carlos Ortiz            |        \-0.06 |         267 |             102 | MEX     | PGA Tour                |
|  155 | Alexander Bjork         |        \-0.06 |         273 |              67 | SWE     | European Tour           |
|  156 | Austin Cook             |        \-0.06 |         268 |              76 | USA     | PGA Tour                |
|  157 | Chris Kirk              |        \-0.05 |         244 |              61 | USA     | PGA Tour                |
|  158 | Romain Langasque        |        \-0.04 |         247 |              86 | FRA     | European Tour           |
|  159 | Joseph Bramlett         |        \-0.02 |         153 |              80 | USA     | Web.com Tour            |
|  160 | Fabrizio Zanotti        |        \-0.02 |         223 |              66 | PAR     | European Tour           |
|  161 | Harry Higgs             |        \-0.01 |         128 |              99 | USA     | Web.com Tour            |
|  162 | Henrik Norlander        |        \-0.01 |         230 |              84 | SWE     | Web.com Tour            |
|  163 | Kristoffer Ventura      |        \-0.01 |          63 |              35 | NOR     | Korn Ferry Tour KGT     |
|  164 | Robert MacIntyre        |        \-0.01 |         158 |              91 | SCO     | European Tour           |
|  165 | Sanghyun Park           |          0.00 |         269 |              89 | KOR     | Asian Tour              |
|  166 | Scott Stallings         |          0.00 |         256 |              88 | USA     | PGA Tour                |
|  167 | Josh Teater             |          0.00 |         271 |              87 | USA     | PGA Tour                |
|  168 | Peter Uihlein           |          0.01 |         260 |              89 | USA     | PGA Tour                |
|  169 | Lucas Bjerregaard       |          0.02 |         277 |              96 | DEN     | European Tour           |
|  170 | Chris Paisley           |          0.02 |         238 |              80 | ENG     | European Tour           |
|  171 | Chan Kim                |          0.03 |         144 |              35 | USA     | Japan Golf Tour         |
|  172 | Jimmy Walker            |          0.03 |         240 |              84 | USA     | PGA Tour                |
|  173 | Sepp Straka             |          0.03 |         257 |              90 | AUT     | PGA Tour                |
|  174 | Roger Sloan             |          0.03 |         247 |             100 | CAN     | PGA Tour                |
|  175 | Danny Lee               |          0.04 |         263 |              92 | NZL     | PGA Tour                |
|  176 | Seungyul Noh            |          0.04 |          96 |               0 | KOR     | NA                      |
|  177 | Christiaan Bezuidenhout |          0.04 |         256 |              99 | RSA     | European Tour           |
|  178 | Patton Kizzire          |          0.05 |         243 |              90 | USA     | PGA Tour                |
|  179 | Stewart Cink            |          0.05 |         233 |              53 | USA     | PGA Tour                |
|  180 | Max Homa                |          0.06 |         218 |              94 | USA     | PGA Tour                |
|  181 | James Hahn              |          0.06 |         222 |              40 | USA     | PGA Tour                |
|  182 | Adam Svensson           |          0.06 |         228 |              83 | CAN     | PGA Tour                |
|  183 | Brendon Todd            |          0.07 |          68 |              33 | USA     | PGA Tour                |
|  184 | Adrian Otaegui          |          0.07 |         269 |              80 | ESP     | European Tour           |
|  185 | Chesson Hadley          |          0.08 |         263 |              88 | USA     | PGA Tour                |
|  186 | Lanto Griffin           |          0.08 |         268 |              79 | USA     | Web.com Tour            |
|  187 | Sean Crocker            |          0.08 |         142 |              74 | USA     | European Tour           |
|  188 | Jonas Blixt             |          0.08 |         223 |              84 | SWE     | PGA Tour                |
|  189 | Chase Seiffert          |          0.09 |          99 |              78 | USA     | Web.com Tour            |
|  190 | J.B. Holmes             |          0.10 |         245 |              72 | USA     | PGA Tour                |
|  191 | Sunghoon Kang           |          0.10 |         280 |              88 | KOR     | PGA Tour                |
|  192 | Scott Brown             |          0.11 |         277 |              88 | USA     | PGA Tour                |
|  193 | Victor Perez            |          0.11 |         213 |              82 | FRA     | European Tour           |
|  194 | Bo Hoag                 |          0.11 |         217 |              93 | USA     | Web.com Tour            |
|  195 | Robert Rock             |          0.11 |         236 |              81 | ENG     | European Tour           |
|  196 | Richy Werenski          |          0.12 |         265 |              89 | USA     | PGA Tour                |
|  197 | Brian Gay               |          0.12 |         275 |             104 | USA     | PGA Tour                |
|  198 | Charlie Danielson       |          0.12 |          80 |              22 | USA     | PGA Tour Canada         |
|  199 | Richard Sterne          |          0.13 |         245 |              71 | RSA     | European Tour           |
|  200 | Scott Harrington        |          0.13 |         198 |              67 | USA     | Web.com Tour            |

Current Golf Ratings
