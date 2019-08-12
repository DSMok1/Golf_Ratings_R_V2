Current Golf Ratings
================
DSMok1
August 12, 2019

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
|    1 | Rory McIlroy            |        \-2.30 |         233 |              84 | NIR     | PGA Tour                |
|    2 | Jon Rahm                |        \-2.21 |         261 |              90 | ESP     | PGA Tour                |
|    3 | Dustin Johnson          |        \-2.16 |         250 |              90 | USA     | PGA Tour                |
|    4 | Patrick Cantlay         |        \-2.12 |         196 |              84 | USA     | PGA Tour                |
|    5 | Webb Simpson            |        \-2.03 |         269 |              90 | USA     | PGA Tour                |
|    6 | Justin Rose             |        \-2.02 |         258 |              86 | ENG     | PGA Tour                |
|    7 | Brooks Koepka           |        \-1.88 |         252 |              98 | USA     | PGA Tour                |
|    8 | Justin Thomas           |        \-1.85 |         261 |              88 | USA     | PGA Tour                |
|    9 | Tiger Woods             |        \-1.77 |         114 |              56 | USA     | PGA Tour                |
|   10 | Tommy Fleetwood         |        \-1.69 |         319 |             108 | ENG     | PGA Tour                |
|   11 | Rickie Fowler           |        \-1.60 |         264 |              84 | USA     | PGA Tour                |
|   12 | Paul Casey              |        \-1.59 |         256 |              84 | ENG     | PGA Tour                |
|   13 | Adam Scott              |        \-1.58 |         229 |              69 | AUS     | PGA Tour                |
|   14 | Collin Morikawa         |        \-1.58 |          34 |              24 | USA     | PGA Tour                |
|   15 | Xander Schauffele       |        \-1.48 |         287 |              90 | USA     | PGA Tour                |
|   16 | Viktor Hovland          |        \-1.43 |          42 |              40 | NOR     | PGA Tour                |
|   17 | Bryson DeChambeau       |        \-1.43 |         272 |              90 | USA     | PGA Tour                |
|   18 | Tony Finau              |        \-1.42 |         298 |             100 | USA     | PGA Tour                |
|   19 | Jason Day               |        \-1.42 |         210 |              80 | AUS     | PGA Tour                |
|   20 | Matt Kuchar             |        \-1.41 |         296 |              92 | USA     | PGA Tour                |
|   21 | Hideki Matsuyama        |        \-1.40 |         282 |             111 | JPN     | PGA Tour                |
|   22 | Louis Oosthuizen        |        \-1.35 |         238 |              88 | RSA     | PGA Tour                |
|   23 | Patrick Reed            |        \-1.34 |         336 |             110 | USA     | PGA Tour                |
|   24 | Henrik Stenson          |        \-1.33 |         236 |              86 | SWE     | PGA Tour                |
|   25 | Shane Lowry             |        \-1.25 |         251 |              77 | IRL     | European Tour           |
|   26 | Gary Woodland           |        \-1.23 |         275 |              93 | USA     | PGA Tour                |
|   27 | Jordan Spieth           |        \-1.20 |         261 |              87 | USA     | PGA Tour                |
|   28 | Matthew Fitzpatrick     |        \-1.19 |         285 |             102 | ENG     | European Tour           |
|   29 | Billy Horschel          |        \-1.17 |         269 |             104 | USA     | PGA Tour                |
|   30 | Marc Leishman           |        \-1.16 |         266 |              86 | AUS     | PGA Tour                |
|   31 | Ian Poulter             |        \-1.11 |         284 |              88 | ENG     | PGA Tour                |
|   32 | Rafael Cabrera Bello    |        \-1.08 |         314 |             110 | ESP     | PGA Tour                |
|   33 | Francesco Molinari      |        \-1.08 |         242 |              68 | ITA     | PGA Tour                |
|   34 | Chez Reavie             |        \-1.05 |         273 |              94 | USA     | PGA Tour                |
|   35 | Byeong Hun An           |        \-1.04 |         291 |              96 | KOR     | PGA Tour                |
|   36 | Jim Furyk               |        \-1.02 |         175 |              68 | USA     | PGA Tour                |
|   37 | Lucas Glover            |        \-1.01 |         255 |              92 | USA     | PGA Tour                |
|   38 | Charles Howell III      |        \-1.00 |         274 |              94 | USA     | PGA Tour                |
|   39 | Tyrrell Hatton          |        \-0.99 |         266 |              94 | ENG     | PGA Tour                |
|   40 | Jason Kokrak            |        \-0.97 |         290 |              98 | USA     | PGA Tour                |
|   41 | Sergio Garcia           |        \-0.94 |         243 |              81 | ESP     | PGA Tour                |
|   42 | Rory Sabbatini          |        \-0.94 |         257 |              91 | RSA     | PGA Tour                |
|   43 | Brandt Snedeker         |        \-0.93 |         259 |             107 | USA     | PGA Tour                |
|   44 | Andrew Putnam           |        \-0.89 |         260 |              92 | USA     | PGA Tour                |
|   45 | Matt Wallace            |        \-0.88 |         268 |             118 | ENG     | European Tour           |
|   46 | Lee Westwood            |        \-0.85 |         228 |              73 | ENG     | European Tour           |
|   47 | Matthew Wolff           |        \-0.85 |          29 |              25 | USA     | PGA Tour                |
|   48 | Scott Piercy            |        \-0.84 |         243 |              92 | USA     | PGA Tour                |
|   49 | Abraham Ancer           |        \-0.83 |         287 |              98 | MEX     | PGA Tour                |
|   50 | Haotong Li              |        \-0.81 |         275 |              88 | CHN     | European Tour           |
|   51 | Joaquin Niemann         |        \-0.81 |         156 |             100 | CHI     | PGA Tour                |
|   52 | Adam Hadwin             |        \-0.81 |         281 |              88 | CAN     | PGA Tour                |
|   53 | Kevin Kisner            |        \-0.78 |         280 |              92 | USA     | PGA Tour                |
|   54 | Ryan Moore              |        \-0.76 |         250 |              80 | USA     | PGA Tour                |
|   55 | Aaron Wise              |        \-0.75 |         252 |              83 | USA     | PGA Tour                |
|   56 | Sungjae Im              |        \-0.73 |         352 |             130 | KOR     | PGA Tour                |
|   57 | Vaughn Taylor           |        \-0.70 |         261 |              87 | USA     | PGA Tour                |
|   58 | Kevin Streelman         |        \-0.68 |         273 |              87 | USA     | PGA Tour                |
|   59 | Mike Lorenzo-Vera       |        \-0.67 |         236 |              77 | FRA     | European Tour           |
|   60 | Kevin Na                |        \-0.67 |         257 |              77 | USA     | PGA Tour                |
|   61 | Thorbjorn Olesen        |        \-0.66 |         253 |              78 | DEN     | European Tour           |
|   62 | Bud Cauley              |        \-0.66 |         229 |              79 | USA     | PGA Tour                |
|   63 | Bubba Watson            |        \-0.65 |         229 |              78 | USA     | PGA Tour                |
|   64 | Emiliano Grillo         |        \-0.63 |         291 |              92 | ARG     | PGA Tour                |
|   65 | Cameron Smith           |        \-0.62 |         278 |              98 | AUS     | PGA Tour                |
|   66 | Alex Noren              |        \-0.61 |         252 |              84 | SWE     | PGA Tour                |
|   67 | Russell Knox            |        \-0.61 |         290 |              94 | SCO     | PGA Tour                |
|   68 | Daniel Berger           |        \-0.61 |         248 |              80 | USA     | PGA Tour                |
|   69 | Keegan Bradley          |        \-0.60 |         293 |             102 | USA     | PGA Tour                |
|   70 | Kyle Stanley            |        \-0.59 |         276 |              90 | USA     | PGA Tour                |
|   71 | Erik van Rooyen         |        \-0.59 |         267 |             101 | RSA     | European Tour           |
|   72 | Danny Willett           |        \-0.56 |         218 |              91 | ENG     | PGA Tour                |
|   73 | Dylan Frittelli         |        \-0.56 |         333 |             111 | RSA     | PGA Tour                |
|   74 | Joost Luiten            |        \-0.54 |         222 |              67 | NED     | European Tour           |
|   75 | Denny McCarthy          |        \-0.53 |         257 |              99 | USA     | PGA Tour                |
|   76 | Martin Kaymer           |        \-0.53 |         266 |             101 | GER     | European Tour           |
|   77 | Zach Johnson            |        \-0.51 |         248 |              78 | USA     | PGA Tour                |
|   78 | Bernd Wiesberger        |        \-0.49 |         219 |              60 | AUT     | European Tour           |
|   79 | Kevin Chappell          |        \-0.49 |         198 |              22 | USA     | PGA Tour                |
|   80 | Eddie Pepperell         |        \-0.48 |         217 |              80 | ENG     | European Tour           |
|   81 | Steve Stricker          |        \-0.48 |         116 |              22 | USA     | PGA Tour                |
|   82 | JT Poston               |        \-0.48 |         284 |              92 | USA     | PGA Tour                |
|   83 | Thomas Pieters          |        \-0.47 |         245 |              80 | BEL     | European Tour           |
|   84 | Graham Delaet           |        \-0.47 |          93 |               0 | CAN     | NA                      |
|   85 | Julian Suri             |        \-0.44 |         222 |              66 | USA     | European Tour           |
|   86 | Pat Perez               |        \-0.42 |         231 |              69 | USA     | PGA Tour                |
|   87 | Harold Varner III       |        \-0.42 |         302 |              86 | USA     | PGA Tour                |
|   88 | Nate Lashley            |        \-0.41 |         254 |              82 | USA     | PGA Tour                |
|   89 | Scottie Scheffler       |        \-0.41 |          86 |              72 | USA     | Web.com Tour            |
|   90 | Brian Harman            |        \-0.38 |         295 |             101 | USA     | PGA Tour                |
|   91 | Thomas Detry            |        \-0.37 |         268 |              88 | BEL     | European Tour           |
|   92 | Jordan L Smith          |        \-0.37 |         276 |              88 | ENG     | European Tour           |
|   93 | Jorge Campillo          |        \-0.36 |         274 |              88 | ESP     | European Tour           |
|   94 | Russell Henley          |        \-0.35 |         251 |              78 | USA     | PGA Tour                |
|   95 | Sam Burns               |        \-0.35 |         170 |              84 | USA     | PGA Tour                |
|   96 | C.T. Pan                |        \-0.35 |         282 |              92 | TPE     | PGA Tour                |
|   97 | Matt Jones              |        \-0.34 |         242 |              90 | AUS     | PGA Tour                |
|   98 | Jhonattan Vegas         |        \-0.34 |         277 |              82 | VEN     | PGA Tour                |
|   99 | Aaron Baddeley          |        \-0.34 |         218 |              73 | AUS     | PGA Tour                |
|  100 | Nick Taylor             |        \-0.33 |         286 |             101 | CAN     | PGA Tour                |
|  101 | Keith Mitchell          |        \-0.33 |         273 |              89 | USA     | PGA Tour                |
|  102 | Jazz Janewattananond    |        \-0.33 |         272 |             105 | THA     | Asian Tour              |
|  103 | Branden Grace           |        \-0.32 |         289 |             100 | RSA     | PGA Tour                |
|  104 | Justin Harding          |        \-0.32 |         248 |              97 | RSA     | Asian Tour              |
|  105 | Andy Sullivan           |        \-0.31 |         260 |              86 | ENG     | European Tour           |
|  106 | Graeme McDowell         |        \-0.30 |         261 |              76 | NIR     | PGA Tour                |
|  107 | Shugo Imahira           |        \-0.30 |         291 |             103 | JPN     | Japan Golf Tour         |
|  108 | Victor Dubuisson        |        \-0.28 |         104 |              44 | FRA     | European Tour           |
|  109 | Troy Merritt            |        \-0.28 |         249 |              63 | USA     | PGA Tour                |
|  110 | Corey Conners           |        \-0.28 |         296 |              90 | CAN     | PGA Tour                |
|  111 | Sam Ryder               |        \-0.28 |         253 |              78 | USA     | PGA Tour                |
|  112 | Tom Lewis               |        \-0.28 |         216 |              86 | ENG     | European Tour           |
|  113 | Charley Hoffman         |        \-0.26 |         274 |              76 | USA     | PGA Tour                |
|  114 | Nick Watney             |        \-0.26 |         242 |              93 | USA     | PGA Tour                |
|  115 | Ryan Palmer             |        \-0.25 |         190 |              68 | USA     | PGA Tour                |
|  116 | Andrew Landry           |        \-0.25 |         247 |              86 | USA     | PGA Tour                |
|  117 | Martin Laird            |        \-0.25 |         241 |              84 | SCO     | PGA Tour                |
|  118 | Ryan Armour             |        \-0.24 |         284 |             106 | USA     | PGA Tour                |
|  119 | Adam Schenk             |        \-0.23 |         299 |             114 | USA     | PGA Tour                |
|  120 | Juan Sebastian Munoz    |        \-0.23 |         258 |              98 | COL     | PGA Tour                |
|  121 | Brian Stuard            |        \-0.22 |         294 |             100 | USA     | PGA Tour                |
|  122 | Michael Thompson        |        \-0.21 |         211 |              85 | USA     | PGA Tour                |
|  123 | Wyndham Clark           |        \-0.21 |         177 |              91 | USA     | PGA Tour                |
|  124 | Kiradech Aphibarnrat    |        \-0.20 |         297 |              87 | THA     | PGA Tour                |
|  125 | Peter Malnati           |        \-0.19 |         279 |             101 | USA     | PGA Tour                |
|  126 | Joel Dahmen             |        \-0.18 |         245 |              92 | USA     | PGA Tour                |
|  127 | Mackenzie Hughes        |        \-0.18 |         276 |              76 | CAN     | PGA Tour                |
|  128 | Andrea Pavan            |        \-0.17 |         231 |              88 | ITA     | European Tour           |
|  129 | Shawn Stefani           |        \-0.17 |         256 |              96 | USA     | PGA Tour                |
|  130 | Brice Garnett           |        \-0.16 |         275 |             101 | USA     | PGA Tour                |
|  131 | Cameron Tringale        |        \-0.15 |         241 |              77 | USA     | PGA Tour                |
|  132 | Kevin Tway              |        \-0.14 |         288 |              84 | USA     | PGA Tour                |
|  133 | Mikko Korhonen          |        \-0.14 |         231 |              83 | FIN     | European Tour           |
|  134 | Phil Mickelson          |        \-0.13 |         239 |              70 | USA     | PGA Tour                |
|  135 | J.J Spaun               |        \-0.13 |         265 |              95 | USA     | PGA Tour                |
|  136 | Siwoo Kim               |        \-0.13 |         275 |              92 | KOR     | PGA Tour                |
|  137 | Benjamin Hebert         |        \-0.12 |         249 |              80 | FRA     | European Tour           |
|  138 | Matthias Schwab         |        \-0.12 |         205 |              90 | AUT     | European Tour           |
|  139 | Zhang Xinjun            |        \-0.10 |         267 |              85 | CHN     | Web.com Tour            |
|  140 | Paul Waring             |        \-0.10 |         218 |              71 | ENG     | European Tour           |
|  141 | Talor Gooch             |        \-0.09 |         236 |              70 | USA     | PGA Tour                |
|  142 | Luke List               |        \-0.09 |         271 |              71 | USA     | PGA Tour                |
|  143 | Bill Haas               |        \-0.08 |         241 |              74 | USA     | PGA Tour                |
|  144 | Rikuya Hoshino          |        \-0.07 |         213 |              77 | JPN     | Japan Golf Tour         |
|  145 | Jamie Lovemark          |        \-0.07 |         222 |              36 | USA     | PGA Tour                |
|  146 | Jason Dufner            |        \-0.07 |         240 |              82 | USA     | PGA Tour                |
|  147 | Adrian Otaegui          |        \-0.05 |         269 |              84 | ESP     | European Tour           |
|  148 | Austin Cook             |        \-0.05 |         276 |              80 | USA     | PGA Tour                |
|  149 | Carlos Ortiz            |        \-0.05 |         273 |             102 | MEX     | PGA Tour                |
|  150 | Alexander Bjork         |        \-0.05 |         277 |              69 | SWE     | European Tour           |
|  151 | Chris Kirk              |        \-0.04 |         248 |              65 | USA     | PGA Tour                |
|  152 | Romain Langasque        |        \-0.03 |         255 |              90 | FRA     | European Tour           |
|  153 | Kristoffer Ventura      |        \-0.03 |          59 |              35 | NOR     | Korn Ferry Tour KGT     |
|  154 | Johnson Wagner          |        \-0.02 |         218 |              66 | USA     | PGA Tour                |
|  155 | Fabrizio Zanotti        |        \-0.02 |         227 |              66 | PAR     | European Tour           |
|  156 | D.J. Trahan             |        \-0.02 |         105 |              37 | USA     | PGA Tour                |
|  157 | Josh Teater             |        \-0.02 |         277 |              91 | USA     | PGA Tour                |
|  158 | Calum Hill(Nov1994)     |        \-0.01 |          90 |              72 | SCO     | European Challenge Tour |
|  159 | Sanghyun Park           |        \-0.01 |         269 |              89 | KOR     | Asian Tour              |
|  160 | Harris English          |        \-0.01 |         261 |              97 | USA     | PGA Tour                |
|  161 | Scott Stallings         |          0.01 |         262 |              86 | USA     | PGA Tour                |
|  162 | Lucas Bjerregaard       |          0.02 |         279 |              96 | DEN     | European Tour           |
|  163 | Robert MacIntyre        |          0.02 |         154 |              95 | SCO     | European Tour           |
|  164 | Cameron Percy           |          0.02 |         217 |              56 | AUS     | Web.com Tour            |
|  165 | Chris Paisley           |          0.02 |         240 |              80 | ENG     | European Tour           |
|  166 | Beau Hossler            |          0.02 |         262 |              97 | USA     | PGA Tour                |
|  167 | J.B. Holmes             |          0.02 |         243 |              70 | USA     | PGA Tour                |
|  168 | Chan Kim                |          0.03 |         144 |              35 | USA     | Japan Golf Tour         |
|  169 | Max Homa                |          0.03 |         218 |              94 | USA     | PGA Tour                |
|  170 | Bronson Burgoon         |          0.03 |         165 |              65 | USA     | PGA Tour                |
|  171 | Peter Uihlein           |          0.04 |         256 |              91 | USA     | PGA Tour                |
|  172 | Jimmy Walker            |          0.04 |         242 |              88 | USA     | PGA Tour                |
|  173 | Christiaan Bezuidenhout |          0.04 |         261 |              99 | RSA     | European Tour           |
|  174 | Joseph Bramlett         |          0.04 |         149 |              82 | USA     | Web.com Tour            |
|  175 | Sepp Straka             |          0.04 |         259 |              92 | AUT     | PGA Tour                |
|  176 | Roger Sloan             |          0.05 |         249 |              96 | CAN     | PGA Tour                |
|  177 | Danny Lee               |          0.05 |         269 |              88 | NZL     | PGA Tour                |
|  178 | Seungyul Noh            |          0.05 |          98 |               0 | KOR     | NA                      |
|  179 | Harry Higgs             |          0.05 |         126 |              97 | USA     | Web.com Tour            |
|  180 | Henrik Norlander        |          0.05 |         232 |              84 | SWE     | Web.com Tour            |
|  181 | Sunghoon Kang           |          0.06 |         284 |              86 | KOR     | PGA Tour                |
|  182 | Patton Kizzire          |          0.06 |         247 |              90 | USA     | PGA Tour                |
|  183 | Stewart Cink            |          0.06 |         241 |              57 | USA     | PGA Tour                |
|  184 | Bo Hoag                 |          0.06 |         213 |              91 | USA     | Web.com Tour            |
|  185 | James Hahn              |          0.07 |         222 |              42 | USA     | PGA Tour                |
|  186 | Adria Arnaus            |          0.08 |         193 |              94 | ESP     | European Tour           |
|  187 | Sean Crocker            |          0.09 |         142 |              76 | USA     | European Tour           |
|  188 | Chesson Hadley          |          0.09 |         269 |              86 | USA     | PGA Tour                |
|  189 | Jonas Blixt             |          0.09 |         227 |              82 | SWE     | PGA Tour                |
|  190 | George Coetzee          |          0.10 |         267 |              90 | RSA     | European Tour           |
|  191 | Wes Roach               |          0.10 |         251 |              89 | USA     | PGA Tour                |
|  192 | David Lipsky            |          0.10 |         278 |              94 | USA     | European Tour           |
|  193 | Robert Rock             |          0.11 |         240 |              81 | ENG     | European Tour           |
|  194 | Lanto Griffin           |          0.11 |         264 |              77 | USA     | Web.com Tour            |
|  195 | Victor Perez            |          0.11 |         213 |              82 | FRA     | European Tour           |
|  196 | Cameron Davis           |          0.11 |         197 |             100 | AUS     | PGA Tour                |
|  197 | Scott Brown             |          0.12 |         285 |              88 | USA     | PGA Tour                |
|  198 | Charlie Danielson       |          0.12 |          84 |              22 | USA     | PGA Tour Canada         |
|  199 | Richard Sterne          |          0.13 |         247 |              71 | RSA     | European Tour           |
|  200 | Brian Gay               |          0.13 |         277 |             106 | USA     | PGA Tour                |

Current Golf Ratings
