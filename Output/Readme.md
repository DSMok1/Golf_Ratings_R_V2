Current Golf Ratings
================
DSMok1
September 23, 2019

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
|    1 | Rory McIlroy            |        \-2.46 |         237 |              88 | NIR     | PGA Tour                |
|    2 | Jon Rahm                |        \-2.37 |         267 |              88 | ESP     | PGA Tour                |
|    3 | Justin Thomas           |        \-2.10 |         257 |              84 | USA     | PGA Tour                |
|    4 | Patrick Cantlay         |        \-2.10 |         204 |              80 | USA     | PGA Tour                |
|    5 | Brooks Koepka           |        \-1.95 |         248 |              94 | USA     | PGA Tour                |
|    6 | Webb Simpson            |        \-1.94 |         267 |              82 | USA     | PGA Tour                |
|    7 | Justin Rose             |        \-1.88 |         254 |              84 | ENG     | PGA Tour                |
|    8 | Paul Casey              |        \-1.88 |         260 |              86 | ENG     | PGA Tour                |
|    9 | Dustin Johnson          |        \-1.77 |         246 |              86 | USA     | PGA Tour                |
|   10 | Adam Scott              |        \-1.75 |         225 |              65 | AUS     | PGA Tour                |
|   11 | Viktor Hovland          |        \-1.72 |          58 |              52 | NOR     | PGA Tour                |
|   12 | Tiger Woods             |        \-1.67 |         118 |              44 | USA     | PGA Tour                |
|   13 | Rickie Fowler           |        \-1.62 |         252 |              86 | USA     | PGA Tour                |
|   14 | Tommy Fleetwood         |        \-1.60 |         319 |             108 | ENG     | PGA Tour                |
|   15 | Hideki Matsuyama        |        \-1.59 |         276 |             103 | JPN     | PGA Tour                |
|   16 | Xander Schauffele       |        \-1.53 |         279 |              90 | USA     | PGA Tour                |
|   17 | Tony Finau              |        \-1.51 |         298 |              96 | USA     | PGA Tour                |
|   18 | Henrik Stenson          |        \-1.43 |         236 |              76 | SWE     | PGA Tour                |
|   19 | Louis Oosthuizen        |        \-1.41 |         234 |              88 | RSA     | PGA Tour                |
|   20 | Collin Morikawa         |        \-1.40 |          38 |              32 | USA     | PGA Tour                |
|   21 | Patrick Reed            |        \-1.39 |         336 |             116 | USA     | PGA Tour                |
|   22 | Bryson DeChambeau       |        \-1.39 |         274 |              90 | USA     | PGA Tour                |
|   23 | Billy Horschel          |        \-1.33 |         263 |              96 | USA     | PGA Tour                |
|   24 | Jason Day               |        \-1.33 |         206 |              72 | AUS     | PGA Tour                |
|   25 | Shane Lowry             |        \-1.30 |         251 |              79 | IRL     | European Tour           |
|   26 | Gary Woodland           |        \-1.23 |         269 |              89 | USA     | PGA Tour                |
|   27 | Matt Kuchar             |        \-1.22 |         290 |              94 | USA     | PGA Tour                |
|   28 | Marc Leishman           |        \-1.19 |         264 |              80 | AUS     | PGA Tour                |
|   29 | Jordan Spieth           |        \-1.19 |         253 |              79 | USA     | PGA Tour                |
|   30 | Rafael Cabrera Bello    |        \-1.14 |         310 |              94 | ESP     | PGA Tour                |
|   31 | Sergio Garcia           |        \-1.14 |         239 |              85 | ESP     | European Tour           |
|   32 | Byeong Hun An           |        \-1.13 |         295 |              88 | KOR     | PGA Tour                |
|   33 | Chez Reavie             |        \-1.10 |         273 |              92 | USA     | PGA Tour                |
|   34 | Matthew Fitzpatrick     |        \-1.09 |         283 |              96 | ENG     | European Tour           |
|   35 | Francesco Molinari      |        \-1.09 |         244 |              66 | ITA     | PGA Tour                |
|   36 | Jason Kokrak            |        \-1.07 |         286 |              92 | USA     | PGA Tour                |
|   37 | Ian Poulter             |        \-0.99 |         292 |              82 | ENG     | PGA Tour                |
|   38 | Brandt Snedeker         |        \-0.98 |         255 |             103 | USA     | PGA Tour                |
|   39 | Kevin Kisner            |        \-0.98 |         272 |              88 | USA     | PGA Tour                |
|   40 | Charles Howell III      |        \-0.97 |         272 |              90 | USA     | PGA Tour                |
|   41 | Lucas Glover            |        \-0.97 |         257 |              94 | USA     | PGA Tour                |
|   42 | Sungjae Im              |        \-0.97 |         360 |             126 | KOR     | PGA Tour                |
|   43 | Joaquin Niemann         |        \-0.97 |         168 |             104 | CHI     | PGA Tour                |
|   44 | Andrew Putnam           |        \-0.96 |         254 |              84 | USA     | PGA Tour                |
|   45 | Erik van Rooyen         |        \-0.94 |         275 |              99 | RSA     | European Tour           |
|   46 | Jim Furyk               |        \-0.94 |         167 |              68 | USA     | PGA Tour                |
|   47 | Scott Piercy            |        \-0.89 |         235 |              90 | USA     | PGA Tour                |
|   48 | Danny Willett           |        \-0.88 |         212 |              85 | ENG     | PGA Tour                |
|   49 | Scottie Scheffler       |        \-0.88 |         106 |              90 | USA     | Web.com Tour            |
|   50 | Matthew Wolff           |        \-0.87 |          29 |              29 | USA     | PGA Tour                |
|   51 | Tyrrell Hatton          |        \-0.85 |         260 |              82 | ENG     | PGA Tour                |
|   52 | Abraham Ancer           |        \-0.85 |         283 |              96 | MEX     | PGA Tour                |
|   53 | Matt Wallace            |        \-0.84 |         270 |             108 | ENG     | European Tour           |
|   54 | Rory Sabbatini          |        \-0.83 |         255 |             101 | RSA     | PGA Tour                |
|   55 | Kevin Streelman         |        \-0.82 |         267 |              83 | USA     | PGA Tour                |
|   56 | Mike Lorenzo-Vera       |        \-0.82 |         232 |              75 | FRA     | European Tour           |
|   57 | Adam Hadwin             |        \-0.81 |         269 |              82 | CAN     | PGA Tour                |
|   58 | Ryan Moore              |        \-0.78 |         234 |              74 | USA     | PGA Tour                |
|   59 | Haotong Li              |        \-0.76 |         259 |              82 | CHN     | European Tour           |
|   60 | Kevin Na                |        \-0.76 |         247 |              71 | USA     | PGA Tour                |
|   61 | Bud Cauley              |        \-0.75 |         225 |              83 | USA     | PGA Tour                |
|   62 | Vaughn Taylor           |        \-0.75 |         255 |              91 | USA     | PGA Tour                |
|   63 | Thomas Pieters          |        \-0.74 |         253 |              82 | BEL     | European Tour           |
|   64 | Aaron Wise              |        \-0.74 |         236 |              73 | USA     | PGA Tour                |
|   65 | Bernd Wiesberger        |        \-0.73 |         221 |              70 | AUT     | European Tour           |
|   66 | JT Poston               |        \-0.69 |         274 |              96 | USA     | PGA Tour                |
|   67 | Thorbjorn Olesen        |        \-0.68 |         245 |              66 | DEN     | European Tour           |
|   68 | Joost Luiten            |        \-0.66 |         226 |              79 | NED     | European Tour           |
|   69 | Dylan Frittelli         |        \-0.65 |         329 |             103 | RSA     | PGA Tour                |
|   70 | Emiliano Grillo         |        \-0.65 |         283 |              82 | ARG     | PGA Tour                |
|   71 | Bubba Watson            |        \-0.64 |         219 |              70 | USA     | PGA Tour                |
|   72 | Keegan Bradley          |        \-0.64 |         289 |              98 | USA     | PGA Tour                |
|   73 | Cameron Smith           |        \-0.63 |         272 |              90 | AUS     | PGA Tour                |
|   74 | Denny McCarthy          |        \-0.63 |         251 |              89 | USA     | PGA Tour                |
|   75 | Brian Harman            |        \-0.62 |         287 |              93 | USA     | PGA Tour                |
|   76 | Zach Johnson            |        \-0.60 |         238 |              66 | USA     | PGA Tour                |
|   77 | Daniel Berger           |        \-0.59 |         240 |              70 | USA     | PGA Tour                |
|   78 | Matthias Schwab         |        \-0.59 |         221 |              90 | AUT     | European Tour           |
|   79 | Alex Noren              |        \-0.58 |         254 |              78 | SWE     | PGA Tour                |
|   80 | Kyle Stanley            |        \-0.57 |         266 |              80 | USA     | PGA Tour                |
|   81 | Graham Delaet           |        \-0.55 |          83 |               0 | CAN     | NA                      |
|   82 | Juan Sebastian Munoz    |        \-0.55 |         256 |              94 | COL     | PGA Tour                |
|   83 | Russell Knox            |        \-0.53 |         284 |              88 | SCO     | PGA Tour                |
|   84 | Steve Stricker          |        \-0.51 |         104 |              20 | USA     | PGA Tour                |
|   85 | Lee Westwood            |        \-0.49 |         228 |              65 | ENG     | European Tour           |
|   86 | Matt Jones              |        \-0.49 |         236 |              88 | AUS     | PGA Tour                |
|   87 | Bronson Burgoon         |        \-0.47 |         175 |              67 | USA     | PGA Tour                |
|   88 | Pat Perez               |        \-0.45 |         231 |              59 | USA     | PGA Tour                |
|   89 | Nate Lashley            |        \-0.45 |         244 |              76 | USA     | PGA Tour                |
|   90 | Tom Lewis               |        \-0.44 |         218 |              76 | ENG     | European Tour           |
|   91 | Andrea Pavan            |        \-0.43 |         231 |              86 | ITA     | European Tour           |
|   92 | Martin Kaymer           |        \-0.43 |         260 |              87 | GER     | European Tour           |
|   93 | Corey Conners           |        \-0.41 |         292 |              88 | CAN     | PGA Tour                |
|   94 | C.T. Pan                |        \-0.41 |         272 |              84 | TPE     | PGA Tour                |
|   95 | Shugo Imahira           |        \-0.41 |         299 |             109 | JPN     | Japan Golf Tour         |
|   96 | Thomas Detry            |        \-0.40 |         268 |              86 | BEL     | European Tour           |
|   97 | Harold Varner III       |        \-0.40 |         300 |              90 | USA     | PGA Tour                |
|   98 | Aaron Baddeley          |        \-0.37 |         208 |              57 | AUS     | PGA Tour                |
|   99 | Jhonattan Vegas         |        \-0.36 |         261 |              74 | VEN     | PGA Tour                |
|  100 | Chan Kim                |        \-0.36 |         152 |              49 | USA     | Japan Golf Tour         |
|  101 | Charley Hoffman         |        \-0.35 |         268 |              70 | USA     | PGA Tour                |
|  102 | Andrew Johnston         |        \-0.34 |         199 |              65 | ENG     | European Tour           |
|  103 | Keith Mitchell          |        \-0.33 |         261 |              83 | USA     | PGA Tour                |
|  104 | Sam Burns               |        \-0.32 |         176 |              78 | USA     | PGA Tour                |
|  105 | Sam Ryder               |        \-0.32 |         241 |              76 | USA     | PGA Tour                |
|  106 | Nick Taylor             |        \-0.31 |         288 |             101 | CAN     | PGA Tour                |
|  107 | Cameron Tringale        |        \-0.31 |         245 |              73 | USA     | PGA Tour                |
|  108 | Joel Dahmen             |        \-0.30 |         249 |             100 | USA     | PGA Tour                |
|  109 | Harris English          |        \-0.30 |         263 |             105 | USA     | PGA Tour                |
|  110 | Russell Henley          |        \-0.29 |         249 |              74 | USA     | PGA Tour                |
|  111 | Kevin Tway              |        \-0.29 |         276 |              80 | USA     | PGA Tour                |
|  112 | Ryan Palmer             |        \-0.29 |         182 |              66 | USA     | PGA Tour                |
|  113 | Paul Waring             |        \-0.29 |         230 |              73 | ENG     | European Tour           |
|  114 | Graeme McDowell         |        \-0.28 |         253 |              78 | NIR     | PGA Tour                |
|  115 | Nick Watney             |        \-0.28 |         244 |              85 | USA     | PGA Tour                |
|  116 | Lanto Griffin           |        \-0.28 |         268 |              79 | USA     | Web.com Tour            |
|  117 | Christiaan Bezuidenhout |        \-0.28 |         263 |              89 | RSA     | European Tour           |
|  118 | Adam Schenk             |        \-0.27 |         287 |             106 | USA     | PGA Tour                |
|  119 | Jordan L Smith          |        \-0.25 |         270 |              80 | ENG     | European Tour           |
|  120 | Wyndham Clark           |        \-0.24 |         183 |              89 | USA     | PGA Tour                |
|  121 | Robert MacIntyre        |        \-0.24 |         168 |              91 | SCO     | European Tour           |
|  122 | Brian Stuard            |        \-0.23 |         284 |              96 | USA     | PGA Tour                |
|  123 | Cameron Percy           |        \-0.23 |         221 |              56 | AUS     | Web.com Tour            |
|  124 | D.J. Trahan             |        \-0.22 |         117 |              51 | USA     | PGA Tour                |
|  125 | Victor Dubuisson        |        \-0.22 |         112 |              52 | FRA     | European Tour           |
|  126 | Ryan Armour             |        \-0.21 |         276 |              94 | USA     | PGA Tour                |
|  127 | Troy Merritt            |        \-0.21 |         255 |              77 | USA     | PGA Tour                |
|  128 | Carlos Ortiz            |        \-0.21 |         269 |              88 | MEX     | PGA Tour                |
|  129 | Peter Malnati           |        \-0.21 |         271 |              87 | USA     | PGA Tour                |
|  130 | Kiradech Aphibarnrat    |        \-0.20 |         293 |              83 | THA     | PGA Tour                |
|  131 | Richy Werenski          |        \-0.20 |         269 |              97 | USA     | PGA Tour                |
|  132 | Michael Thompson        |        \-0.19 |         201 |              75 | USA     | PGA Tour                |
|  133 | Justin Harding          |        \-0.19 |         252 |              98 | RSA     | Asian Tour              |
|  134 | Branden Grace           |        \-0.18 |         285 |              96 | RSA     | PGA Tour                |
|  135 | Brice Garnett           |        \-0.18 |         269 |              89 | USA     | PGA Tour                |
|  136 | J.J Spaun               |        \-0.18 |         257 |              85 | USA     | PGA Tour                |
|  137 | Alexander Bjork         |        \-0.17 |         281 |              81 | SWE     | European Tour           |
|  138 | Eddie Pepperell         |        \-0.17 |         217 |              70 | ENG     | European Tour           |
|  139 | Phil Mickelson          |        \-0.16 |         233 |              64 | USA     | PGA Tour                |
|  140 | Kevin Chappell          |        \-0.16 |         198 |              24 | USA     | PGA Tour                |
|  141 | Romain Langasque        |        \-0.16 |         253 |              80 | FRA     | European Tour           |
|  142 | Peter Uihlein           |        \-0.15 |         272 |              89 | USA     | PGA Tour                |
|  143 | Austin Cook             |        \-0.15 |         264 |              68 | USA     | PGA Tour                |
|  144 | Martin Laird            |        \-0.14 |         237 |              84 | SCO     | PGA Tour                |
|  145 | Siwoo Kim               |        \-0.14 |         269 |              84 | KOR     | PGA Tour                |
|  146 | Ryo Ishikawa            |        \-0.13 |         212 |              69 | JPN     | Japan Golf Tour         |
|  147 | Andrew Landry           |        \-0.13 |         237 |              76 | USA     | PGA Tour                |
|  148 | Harry Higgs             |        \-0.12 |         138 |             109 | USA     | Web.com Tour            |
|  149 | Talor Gooch             |        \-0.11 |         222 |              64 | USA     | PGA Tour                |
|  150 | Mackenzie Hughes        |        \-0.08 |         262 |              78 | CAN     | PGA Tour                |
|  151 | Jazz Janewattananond    |        \-0.08 |         290 |             107 | THA     | Asian Tour              |
|  152 | Scott Stallings         |        \-0.08 |         254 |              80 | USA     | PGA Tour                |
|  153 | Rikuya Hoshino          |        \-0.07 |         231 |              87 | JPN     | Japan Golf Tour         |
|  154 | Benjamin Hebert         |        \-0.07 |         243 |              68 | FRA     | European Tour           |
|  155 | Sam Horsfield           |        \-0.07 |         171 |              77 | ENG     | European Tour           |
|  156 | Chris Kirk              |        \-0.06 |         234 |              45 | USA     | PGA Tour                |
|  157 | Joseph Bramlett         |        \-0.06 |         167 |              84 | USA     | Web.com Tour            |
|  158 | Mikko Korhonen          |        \-0.05 |         233 |              83 | FIN     | European Tour           |
|  159 | Jason Dufner            |        \-0.05 |         230 |              76 | USA     | PGA Tour                |
|  160 | Sunghoon Kang           |        \-0.04 |         282 |              88 | KOR     | PGA Tour                |
|  161 | Stewart Cink            |        \-0.03 |         239 |              53 | USA     | PGA Tour                |
|  162 | Kramer Hickok           |        \-0.02 |         242 |              95 | USA     | PGA Tour                |
|  163 | Danny Lee               |        \-0.02 |         263 |              84 | NZL     | PGA Tour                |
|  164 | Tom Hoge                |        \-0.02 |         271 |             102 | USA     | PGA Tour                |
|  165 | Adria Arnaus            |        \-0.02 |         205 |              90 | ESP     | European Tour           |
|  166 | Beau Hossler            |        \-0.02 |         274 |              95 | USA     | PGA Tour                |
|  167 | Zhang Xinjun            |        \-0.02 |         273 |              93 | CHN     | Web.com Tour            |
|  168 | Luke List               |        \-0.01 |         265 |              63 | USA     | PGA Tour                |
|  169 | Andy Sullivan           |        \-0.01 |         264 |              86 | ENG     | European Tour           |
|  170 | Callum Shinkwin         |          0.00 |         176 |              54 | ENG     | European Tour           |
|  171 | Richard Sterne          |          0.00 |         247 |              71 | RSA     | European Tour           |
|  172 | Scott Brown             |          0.00 |         279 |              86 | USA     | PGA Tour                |
|  173 | Grayson Murray          |          0.01 |         224 |              58 | USA     | PGA Tour                |
|  174 | Bill Haas               |          0.01 |         233 |              70 | USA     | PGA Tour                |
|  175 | Calum Hill(Nov1994)     |          0.02 |         100 |              68 | SCO     | European Challenge Tour |
|  176 | Sanghyun Park           |          0.02 |         275 |              93 | KOR     | Japan Golf Tour         |
|  177 | Fabian Gomez            |          0.02 |         258 |              96 | ARG     | PGA Tour                |
|  178 | Lucas Bjerregaard       |          0.02 |         269 |              90 | DEN     | European Tour           |
|  179 | Cameron Davis           |          0.03 |         215 |              96 | AUS     | PGA Tour                |
|  180 | Mark Hubbard            |          0.04 |         257 |              85 | USA     | Web.com Tour            |
|  181 | Max Homa                |          0.04 |         210 |              82 | USA     | PGA Tour                |
|  182 | Junggon Hwang           |          0.04 |         291 |              87 | KOR     | Japan Golf Tour         |
|  183 | Doc Redman              |          0.04 |          80 |              48 | USA     | PGA Tour                |
|  184 | Jorge Campillo          |          0.04 |         274 |              86 | ESP     | European Tour           |
|  185 | Adam Svensson           |          0.04 |         228 |              83 | CAN     | PGA Tour                |
|  186 | Julian Suri             |          0.04 |         226 |              54 | USA     | European Tour           |
|  187 | Sean Crocker            |          0.05 |         152 |              80 | USA     | European Tour           |
|  188 | James Hahn              |          0.05 |         212 |              34 | USA     | PGA Tour                |
|  189 | Adam Long               |          0.06 |         250 |              82 | USA     | PGA Tour                |
|  190 | Aaron Rai               |          0.06 |         260 |              87 | ENG     | European Tour           |
|  191 | Jonas Blixt             |          0.07 |         219 |              76 | SWE     | PGA Tour                |
|  192 | J.B. Holmes             |          0.08 |         235 |              72 | USA     | PGA Tour                |
|  193 | Ashley Chesters         |          0.08 |         252 |              92 | ENG     | European Tour           |
|  194 | Robby Shelton IV        |          0.09 |         213 |              84 | USA     | Web.com Tour            |
|  195 | Henrik Norlander        |          0.09 |         232 |              82 | SWE     | Web.com Tour            |
|  196 | Victor Perez            |          0.09 |         213 |              74 | FRA     | European Tour           |
|  197 | Sepp Straka             |          0.10 |         255 |              80 | AUT     | PGA Tour                |
|  198 | Roger Sloan             |          0.10 |         239 |              90 | CAN     | PGA Tour                |
|  199 | Ross Fisher             |          0.10 |         239 |              72 | ENG     | European Tour           |
|  200 | Cormac Sharvin          |          0.10 |         178 |              62 | NIR     | European Challenge Tour |

Current Golf Ratings
