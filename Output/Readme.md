Current Golf Ratings
================
DSMok1
July 29, 2019

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

| Rank | Player\_Name            | Player\_Value | Num\_Rounds | Num\_Rounds\_Yr | Country | Tour\_Yr                |
| ---: | :---------------------- | ------------: | ----------: | --------------: | :------ | :---------------------- |
|    1 | Rory McIlroy            |        \-2.26 |         231 |              84 | NIR     | PGA Tour                |
|    2 | Dustin Johnson          |        \-2.21 |         248 |              94 | USA     | PGA Tour                |
|    3 | Jon Rahm                |        \-2.14 |         261 |              90 | ESP     | PGA Tour                |
|    4 | Patrick Cantlay         |        \-2.11 |         192 |              84 | USA     | PGA Tour                |
|    5 | Justin Rose             |        \-1.98 |         258 |              82 | ENG     | PGA Tour                |
|    6 | Brooks Koepka           |        \-1.93 |         256 |             100 | USA     | PGA Tour                |
|    7 | Webb Simpson            |        \-1.93 |         269 |              86 | USA     | PGA Tour                |
|    8 | Justin Thomas           |        \-1.82 |         265 |              88 | USA     | PGA Tour                |
|    9 | Tiger Woods             |        \-1.80 |         114 |              60 | USA     | PGA Tour                |
|   10 | Tommy Fleetwood         |        \-1.75 |         315 |             112 | ENG     | PGA Tour                |
|   11 | Rickie Fowler           |        \-1.70 |         266 |              88 | USA     | PGA Tour                |
|   12 | Paul Casey              |        \-1.58 |         260 |              84 | ENG     | PGA Tour                |
|   13 | Xander Schauffele       |        \-1.58 |         291 |              90 | USA     | PGA Tour                |
|   14 | Jason Day               |        \-1.53 |         212 |              80 | AUS     | PGA Tour                |
|   15 | Matt Kuchar             |        \-1.51 |         300 |              94 | USA     | PGA Tour                |
|   16 | Hideki Matsuyama        |        \-1.47 |         280 |             109 | JPN     | PGA Tour                |
|   17 | Tony Finau              |        \-1.45 |         300 |             104 | USA     | PGA Tour                |
|   18 | Adam Scott              |        \-1.44 |         229 |              69 | AUS     | PGA Tour                |
|   19 | Bryson DeChambeau       |        \-1.43 |         272 |              94 | USA     | PGA Tour                |
|   20 | Henrik Stenson          |        \-1.35 |         240 |              86 | SWE     | PGA Tour                |
|   21 | Francesco Molinari      |        \-1.33 |         246 |              72 | ITA     | PGA Tour                |
|   22 | Shane Lowry             |        \-1.30 |         251 |              81 | IRL     | European Tour           |
|   23 | Marc Leishman           |        \-1.29 |         272 |              86 | AUS     | PGA Tour                |
|   24 | Gary Woodland           |        \-1.28 |         277 |              97 | USA     | PGA Tour                |
|   25 | Louis Oosthuizen        |        \-1.24 |         242 |              88 | RSA     | PGA Tour                |
|   26 | Jordan Spieth           |        \-1.21 |         258 |              84 | USA     | PGA Tour                |
|   27 | Matthew Fitzpatrick     |        \-1.20 |         289 |             102 | ENG     | European Tour           |
|   28 | Patrick Reed            |        \-1.19 |         336 |             110 | USA     | PGA Tour                |
|   29 | Lucas Glover            |        \-1.16 |         247 |              88 | USA     | PGA Tour                |
|   30 | Rafael Cabrera Bello    |        \-1.10 |         318 |             110 | ESP     | PGA Tour                |
|   31 | Chez Reavie             |        \-1.10 |         269 |              88 | USA     | PGA Tour                |
|   32 | Sergio Garcia           |        \-1.09 |         243 |              83 | ESP     | PGA Tour                |
|   33 | Jim Furyk               |        \-1.07 |         179 |              68 | USA     | PGA Tour                |
|   34 | Charles Howell III      |        \-1.06 |         268 |              90 | USA     | PGA Tour                |
|   35 | Billy Horschel          |        \-1.06 |         265 |              98 | USA     | PGA Tour                |
|   36 | Tyrrell Hatton          |        \-1.04 |         270 |              94 | ENG     | PGA Tour                |
|   37 | Ian Poulter             |        \-1.01 |         280 |              92 | ENG     | PGA Tour                |
|   38 | Scott Piercy            |        \-0.93 |         237 |              88 | USA     | PGA Tour                |
|   39 | Byeong Hun An           |        \-0.89 |         285 |             100 | KOR     | PGA Tour                |
|   40 | Matt Wallace            |        \-0.89 |         268 |             114 | ENG     | European Tour           |
|   41 | Adam Hadwin             |        \-0.89 |         277 |              88 | CAN     | PGA Tour                |
|   42 | Rory Sabbatini          |        \-0.88 |         253 |              91 | RSA     | PGA Tour                |
|   43 | Lee Westwood            |        \-0.85 |         232 |              73 | ENG     | European Tour           |
|   44 | Kevin Na                |        \-0.83 |         257 |              77 | USA     | PGA Tour                |
|   45 | Brandt Snedeker         |        \-0.82 |         255 |             103 | USA     | PGA Tour                |
|   46 | Haotong Li              |        \-0.82 |         275 |              88 | CHN     | European Tour           |
|   47 | Kevin Streelman         |        \-0.80 |         273 |              85 | USA     | PGA Tour                |
|   48 | Andrew Putnam           |        \-0.80 |         264 |              92 | USA     | PGA Tour                |
|   49 | Jason Kokrak            |        \-0.80 |         290 |              98 | USA     | PGA Tour                |
|   50 | Bubba Watson            |        \-0.78 |         235 |              80 | USA     | PGA Tour                |
|   51 | Aaron Wise              |        \-0.77 |         251 |              83 | USA     | PGA Tour                |
|   52 | Russell Knox            |        \-0.74 |         292 |              94 | SCO     | PGA Tour                |
|   53 | Joaquin Niemann         |        \-0.71 |         148 |             100 | CHI     | PGA Tour                |
|   54 | Emiliano Grillo         |        \-0.70 |         293 |              96 | ARG     | PGA Tour                |
|   55 | Abraham Ancer           |        \-0.69 |         285 |             100 | MEX     | PGA Tour                |
|   56 | Kevin Kisner            |        \-0.69 |         280 |              94 | USA     | PGA Tour                |
|   57 | Cameron Smith           |        \-0.68 |         276 |              96 | AUS     | PGA Tour                |
|   58 | Alex Noren              |        \-0.68 |         252 |              80 | SWE     | PGA Tour                |
|   59 | Thorbjorn Olesen        |        \-0.67 |         255 |              78 | DEN     | European Tour           |
|   60 | Mike Lorenzo-Vera       |        \-0.67 |         236 |              81 | FRA     | European Tour           |
|   61 | Ryan Moore              |        \-0.66 |         254 |              80 | USA     | PGA Tour                |
|   62 | Vaughn Taylor           |        \-0.66 |         261 |              85 | USA     | PGA Tour                |
|   63 | Sungjae Im              |        \-0.66 |         344 |             134 | KOR     | PGA Tour                |
|   64 | Keegan Bradley          |        \-0.65 |         297 |             102 | USA     | PGA Tour                |
|   65 | Martin Kaymer           |        \-0.63 |         268 |              99 | GER     | European Tour           |
|   66 | Daniel Berger           |        \-0.63 |         252 |              80 | USA     | PGA Tour                |
|   67 | Bud Cauley              |        \-0.62 |         229 |              75 | USA     | PGA Tour                |
|   68 | Dylan Frittelli         |        \-0.61 |         335 |             109 | RSA     | PGA Tour                |
|   69 | Erik van Rooyen         |        \-0.59 |         270 |             101 | RSA     | European Tour           |
|   70 | Kyle Stanley            |        \-0.58 |         270 |              90 | USA     | PGA Tour                |
|   71 | Denny McCarthy          |        \-0.57 |         259 |              95 | USA     | PGA Tour                |
|   72 | Zach Johnson            |        \-0.55 |         252 |              78 | USA     | PGA Tour                |
|   73 | Joost Luiten            |        \-0.54 |         226 |              67 | NED     | European Tour           |
|   74 | Pat Perez               |        \-0.54 |         227 |              73 | USA     | PGA Tour                |
|   75 | Scottie Scheffler       |        \-0.53 |          84 |              72 | USA     | Web.com Tour            |
|   76 | Charley Hoffman         |        \-0.52 |         274 |              82 | USA     | PGA Tour                |
|   77 | Steve Stricker          |        \-0.51 |         120 |              26 | USA     | PGA Tour                |
|   78 | Kevin Chappell          |        \-0.50 |         202 |              26 | USA     | PGA Tour                |
|   79 | Graham Delaet           |        \-0.50 |          93 |               0 | CAN     | NA                      |
|   80 | Nate Lashley            |        \-0.50 |         260 |              78 | USA     | PGA Tour                |
|   81 | Bernd Wiesberger        |        \-0.49 |         221 |              60 | AUT     | European Tour           |
|   82 | Eddie Pepperell         |        \-0.49 |         221 |              76 | ENG     | European Tour           |
|   83 | Danny Willett           |        \-0.49 |         218 |              87 | ENG     | PGA Tour                |
|   84 | Thomas Pieters          |        \-0.47 |         249 |              80 | BEL     | European Tour           |
|   85 | Martin Laird            |        \-0.46 |         239 |              84 | SCO     | PGA Tour                |
|   86 | Julian Suri             |        \-0.44 |         222 |              66 | USA     | European Tour           |
|   87 | Sam Ryder               |        \-0.42 |         253 |              78 | USA     | PGA Tour                |
|   88 | Nick Taylor             |        \-0.40 |         286 |             103 | CAN     | PGA Tour                |
|   89 | Ryan Palmer             |        \-0.40 |         190 |              72 | USA     | PGA Tour                |
|   90 | Nick Watney             |        \-0.39 |         236 |              95 | USA     | PGA Tour                |
|   91 | Graeme McDowell         |        \-0.38 |         261 |              80 | NIR     | PGA Tour                |
|   92 | Sam Burns               |        \-0.38 |         170 |              92 | USA     | PGA Tour                |
|   93 | Thomas Detry            |        \-0.37 |         272 |              92 | BEL     | European Tour           |
|   94 | Aaron Baddeley          |        \-0.37 |         226 |              77 | AUS     | PGA Tour                |
|   95 | Jordan L Smith          |        \-0.37 |         280 |              92 | ENG     | European Tour           |
|   96 | Peter Malnati           |        \-0.36 |         279 |             103 | USA     | PGA Tour                |
|   97 | Keith Mitchell          |        \-0.36 |         277 |              89 | USA     | PGA Tour                |
|   98 | Jorge Campillo          |        \-0.35 |         274 |              88 | ESP     | European Tour           |
|   99 | Michael Thompson        |        \-0.35 |         207 |              83 | USA     | PGA Tour                |
|  100 | Matt Jones              |        \-0.34 |         244 |              90 | AUS     | PGA Tour                |
|  101 | Jazz Janewattananond    |        \-0.33 |         276 |             111 | THA     | Asian Tour              |
|  102 | Justin Harding          |        \-0.32 |         254 |             101 | RSA     | Asian Tour              |
|  103 | J.J Spaun               |        \-0.31 |         261 |              93 | USA     | PGA Tour                |
|  104 | Andy Sullivan           |        \-0.30 |         264 |              86 | ENG     | European Tour           |
|  105 | Jhonattan Vegas         |        \-0.30 |         277 |              90 | VEN     | PGA Tour                |
|  106 | Shugo Imahira           |        \-0.30 |         291 |              99 | JPN     | Japan Golf Tour         |
|  107 | Russell Henley          |        \-0.29 |         251 |              74 | USA     | PGA Tour                |
|  108 | JT Poston               |        \-0.28 |         284 |              90 | USA     | PGA Tour                |
|  109 | C.T. Pan                |        \-0.28 |         286 |              88 | TPE     | PGA Tour                |
|  110 | Victor Dubuisson        |        \-0.27 |         106 |              44 | FRA     | European Tour           |
|  111 | Tom Lewis               |        \-0.27 |         220 |              92 | ENG     | European Tour           |
|  112 | Brian Harman            |        \-0.27 |         289 |             101 | USA     | PGA Tour                |
|  113 | Kiradech Aphibarnrat    |        \-0.26 |         293 |              87 | THA     | PGA Tour                |
|  114 | Luke List               |        \-0.25 |         267 |              73 | USA     | PGA Tour                |
|  115 | Branden Grace           |        \-0.25 |         287 |             100 | RSA     | PGA Tour                |
|  116 | Harold Varner III       |        \-0.24 |         296 |              86 | USA     | PGA Tour                |
|  117 | Jamie Lovemark          |        \-0.24 |         224 |              38 | USA     | PGA Tour                |
|  118 | Adam Schenk             |        \-0.22 |         297 |             116 | USA     | PGA Tour                |
|  119 | Joel Dahmen             |        \-0.21 |         243 |              92 | USA     | PGA Tour                |
|  120 | Cameron Tringale        |        \-0.21 |         243 |              79 | USA     | PGA Tour                |
|  121 | Talor Gooch             |        \-0.19 |         236 |              70 | USA     | PGA Tour                |
|  122 | Phil Mickelson          |        \-0.19 |         239 |              70 | USA     | PGA Tour                |
|  123 | Juan Sebastian Munoz    |        \-0.19 |         256 |              96 | COL     | PGA Tour                |
|  124 | Zhang Xinjun            |        \-0.17 |         263 |              85 | CHN     | Web.com Tour            |
|  125 | Wyndham Clark           |        \-0.17 |         170 |              94 | USA     | PGA Tour                |
|  126 | Andrea Pavan            |        \-0.16 |         239 |              88 | ITA     | European Tour           |
|  127 | Stewart Cink            |        \-0.16 |         239 |              59 | USA     | PGA Tour                |
|  128 | Siwoo Kim               |        \-0.15 |         273 |              96 | KOR     | PGA Tour                |
|  129 | Troy Merritt            |        \-0.15 |         247 |              65 | USA     | PGA Tour                |
|  130 | Kevin Tway              |        \-0.15 |         288 |              82 | USA     | PGA Tour                |
|  131 | Brian Stuard            |        \-0.15 |         294 |             100 | USA     | PGA Tour                |
|  132 | Ryan Armour             |        \-0.14 |         282 |             104 | USA     | PGA Tour                |
|  133 | Mikko Korhonen          |        \-0.14 |         231 |              83 | FIN     | European Tour           |
|  134 | Brice Garnett           |        \-0.13 |         271 |              97 | USA     | PGA Tour                |
|  135 | Mackenzie Hughes        |        \-0.12 |         274 |              76 | CAN     | PGA Tour                |
|  136 | Benjamin Hebert         |        \-0.12 |         249 |              80 | FRA     | European Tour           |
|  137 | Brian Gay               |        \-0.11 |         275 |             104 | USA     | PGA Tour                |
|  138 | Austin Cook             |        \-0.11 |         278 |              80 | USA     | PGA Tour                |
|  139 | Matthias Schwab         |        \-0.11 |         205 |              94 | AUT     | European Tour           |
|  140 | Jason Dufner            |        \-0.11 |         242 |              80 | USA     | PGA Tour                |
|  141 | Shawn Stefani           |        \-0.11 |         256 |              96 | USA     | PGA Tour                |
|  142 | Corey Conners           |        \-0.10 |         295 |              84 | CAN     | PGA Tour                |
|  143 | Paul Waring             |        \-0.10 |         218 |              71 | ENG     | European Tour           |
|  144 | Bill Haas               |        \-0.10 |         241 |              72 | USA     | PGA Tour                |
|  145 | Jimmy Walker            |        \-0.09 |         244 |              90 | USA     | PGA Tour                |
|  146 | Bronson Burgoon         |        \-0.08 |         165 |              65 | USA     | PGA Tour                |
|  147 | Danny Lee               |        \-0.07 |         269 |              92 | NZL     | PGA Tour                |
|  148 | Chris Kirk              |        \-0.07 |         250 |              69 | USA     | PGA Tour                |
|  149 | Rikuya Hoshino          |        \-0.06 |         213 |              77 | JPN     | Japan Golf Tour         |
|  150 | Beau Hossler            |        \-0.06 |         260 |              95 | USA     | PGA Tour                |
|  151 | Andrew Landry           |        \-0.05 |         241 |              86 | USA     | PGA Tour                |
|  152 | Harry Higgs             |        \-0.05 |         128 |              93 | USA     | Web.com Tour            |
|  153 | Adrian Otaegui          |        \-0.05 |         269 |              88 | ESP     | European Tour           |
|  154 | D.J. Trahan             |        \-0.05 |         105 |              37 | USA     | PGA Tour                |
|  155 | Alexander Bjork         |        \-0.05 |         279 |              73 | SWE     | European Tour           |
|  156 | Scott Stallings         |        \-0.04 |         258 |              86 | USA     | PGA Tour                |
|  157 | Carlos Ortiz            |        \-0.04 |         269 |             106 | MEX     | PGA Tour                |
|  158 | Peter Uihlein           |        \-0.02 |         252 |              87 | USA     | PGA Tour                |
|  159 | Jonas Blixt             |        \-0.02 |         227 |              82 | SWE     | PGA Tour                |
|  160 | Lucas Bjerregaard       |        \-0.02 |         277 |              94 | DEN     | European Tour           |
|  161 | Romain Langasque        |        \-0.02 |         259 |              94 | FRA     | European Challenge Tour |
|  162 | Lanto Griffin           |        \-0.02 |         262 |              81 | USA     | Web.com Tour            |
|  163 | Fabrizio Zanotti        |        \-0.01 |         227 |              66 | PAR     | European Tour           |
|  164 | Doc Redman              |        \-0.01 |          70 |              52 | USA     | PGA Tour                |
|  165 | Charlie Danielson       |        \-0.01 |          86 |              20 | USA     | PGA Tour Canada         |
|  166 | Sanghyun Park           |        \-0.01 |         269 |              89 | KOR     | Asian Tour              |
|  167 | Henrik Norlander        |        \-0.01 |         234 |              84 | SWE     | Web.com Tour            |
|  168 | Joseph Bramlett         |        \-0.01 |         143 |              82 | USA     | Web.com Tour            |
|  169 | Adam Long               |        \-0.01 |         252 |              88 | USA     | PGA Tour                |
|  170 | Sunghoon Kang           |          0.00 |         286 |              84 | KOR     | PGA Tour                |
|  171 | Cameron Percy           |          0.00 |         221 |              60 | AUS     | Web.com Tour            |
|  172 | Sepp Straka             |          0.00 |         257 |              94 | AUT     | PGA Tour                |
|  173 | Seungyul Noh            |          0.01 |         102 |               0 | KOR     | NA                      |
|  174 | Harris English          |          0.02 |         261 |              95 | USA     | PGA Tour                |
|  175 | Chris Paisley           |          0.03 |         240 |              80 | ENG     | European Tour           |
|  176 | Chan Kim                |          0.03 |         144 |              35 | USA     | Japan Golf Tour         |
|  177 | Robert MacIntyre        |          0.03 |         154 |             101 | SCO     | European Challenge Tour |
|  178 | James Hahn              |          0.04 |         228 |              46 | USA     | PGA Tour                |
|  179 | Scott Brown             |          0.05 |         281 |              86 | USA     | PGA Tour                |
|  180 | Christiaan Bezuidenhout |          0.05 |         266 |             101 | RSA     | European Tour           |
|  181 | Paul Barjon             |          0.06 |         160 |              54 | FRA     | PGA Tour Canada         |
|  182 | J.B. Holmes             |          0.07 |         243 |              70 | USA     | PGA Tour                |
|  183 | Chase Seiffert          |          0.07 |          93 |              76 | USA     | Web.com Tour            |
|  184 | Roger Sloan             |          0.09 |         247 |             100 | CAN     | PGA Tour                |
|  185 | Wes Roach               |          0.09 |         249 |              89 | USA     | PGA Tour                |
|  186 | Max Homa                |          0.10 |         218 |              96 | USA     | PGA Tour                |
|  187 | David Lipsky            |          0.10 |         282 |              98 | USA     | European Tour           |
|  188 | Adria Arnaus            |          0.10 |         193 |              98 | ESP     | European Tour           |
|  189 | Sean Crocker            |          0.10 |         142 |              84 | USA     | European Tour           |
|  190 | Patrick Rodgers         |          0.10 |         226 |              52 | USA     | PGA Tour                |
|  191 | Brendan Steele          |          0.11 |         233 |              80 | USA     | PGA Tour                |
|  192 | Josh Teater             |          0.11 |         281 |              95 | USA     | PGA Tour                |
|  193 | George Coetzee          |          0.11 |         271 |              90 | RSA     | European Tour           |
|  194 | Robert Rock             |          0.12 |         240 |              81 | ENG     | European Tour           |
|  195 | Davis Riley             |          0.12 |          49 |              45 | USA     | Korn Ferry Tour KGT     |
|  196 | Ryan Blaum              |          0.12 |         277 |              90 | USA     | PGA Tour                |
|  197 | Richard Sterne          |          0.13 |         247 |              75 | RSA     | European Tour           |
|  198 | Victor Perez            |          0.13 |         213 |              88 | FRA     | European Tour           |
|  199 | Johnson Wagner          |          0.13 |         216 |              66 | USA     | PGA Tour                |
|  200 | Ernie Els               |          0.14 |         210 |              80 | RSA     | PGA Tour                |

Current Golf Ratings
