Current Golf Ratings
================
DSMok1
February 05, 2020

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

    ## Warning: package 'knitr' was built under R version 3.6.2

| Rank | Player\_Name            | Player\_Value | Num\_Rounds | Num\_Rounds\_Yr | Country | Tour\_Yr               |
| ---: | :---------------------- | ------------: | ----------: | --------------: | :------ | :--------------------- |
|    1 | Rory McIlroy            |        \-2.23 |         241 |              88 | NIR     | PGA Tour               |
|    2 | Jon Rahm                |        \-2.16 |         270 |              87 | ESP     | PGA Tour               |
|    3 | Justin Thomas           |        \-1.93 |         253 |              82 | USA     | PGA Tour               |
|    4 | Webb Simpson            |        \-1.85 |         261 |              82 | USA     | PGA Tour               |
|    5 | Tiger Woods             |        \-1.83 |         124 |              44 | USA     | PGA Tour               |
|    6 | Dustin Johnson          |        \-1.51 |         232 |              70 | USA     | PGA Tour               |
|    7 | Patrick Cantlay         |        \-1.47 |         224 |              74 | USA     | PGA Tour               |
|    8 | Xander Schauffele       |        \-1.45 |         272 |              76 | USA     | PGA Tour               |
|    9 | Tommy Fleetwood         |        \-1.44 |         312 |             108 | ENG     | PGA Tour               |
|   10 | Hideki Matsuyama        |        \-1.36 |         269 |             101 | JPN     | PGA Tour               |
|   11 | Justin Rose             |        \-1.31 |         272 |              86 | ENG     | PGA Tour               |
|   12 | Louis Oosthuizen        |        \-1.29 |         238 |              92 | RSA     | PGA Tour               |
|   13 | Brooks Koepka           |        \-1.27 |         236 |              72 | USA     | PGA Tour               |
|   14 | Rickie Fowler           |        \-1.27 |         252 |              80 | USA     | PGA Tour               |
|   15 | Adam Scott              |        \-1.17 |         225 |              73 | AUS     | PGA Tour               |
|   16 | Patrick Reed            |        \-1.16 |         336 |             118 | USA     | PGA Tour               |
|   17 | Collin Morikawa         |        \-1.15 |          71 |              63 | USA     | PGA Tour               |
|   18 | Tony Finau              |        \-1.11 |         308 |             106 | USA     | PGA Tour               |
|   19 | Paul Casey              |        \-1.06 |         260 |              90 | ENG     | PGA Tour               |
|   20 | Gary Woodland           |        \-1.00 |         272 |              79 | USA     | PGA Tour               |
|   21 | Matt Kuchar             |        \-0.94 |         294 |              90 | USA     | PGA Tour               |
|   22 | Marc Leishman           |        \-0.86 |         264 |              76 | AUS     | PGA Tour               |
|   23 | Sungjae Im              |        \-0.85 |         364 |             126 | KOR     | PGA Tour               |
|   24 | Matthew Fitzpatrick     |        \-0.84 |         290 |             101 | ENG     | European Tour(3)       |
|   25 | Viktor Hovland          |        \-0.82 |          76 |              64 | NOR     | PGA Tour               |
|   26 | Bryson DeChambeau       |        \-0.82 |         273 |              84 | USA     | PGA Tour               |
|   27 | Jason Day               |        \-0.79 |         214 |              62 | AUS     | PGA Tour               |
|   28 | Henrik Stenson          |        \-0.74 |         242 |              90 | SWE     | PGA Tour               |
|   29 | Shane Lowry             |        \-0.73 |         263 |              81 | IRL     | PGA Tour               |
|   30 | Brandt Snedeker         |        \-0.72 |         243 |              91 | USA     | PGA Tour               |
|   31 | Abraham Ancer           |        \-0.69 |         303 |              98 | MEX     | PGA Tour               |
|   32 | Billy Horschel          |        \-0.68 |         270 |              97 | USA     | PGA Tour               |
|   33 | Tyrrell Hatton          |        \-0.67 |         252 |              86 | ENG     | PGA Tour               |
|   34 | Scottie Scheffler       |        \-0.66 |         134 |             110 | USA     | PGA Tour               |
|   35 | Byeong Hun An           |        \-0.65 |         290 |              93 | KOR     | PGA Tour               |
|   36 | Sergio Garcia           |        \-0.64 |         253 |              88 | ESP     | PGA Tour               |
|   37 | Charles Howell III      |        \-0.61 |         275 |              93 | USA     | PGA Tour               |
|   38 | Jim Furyk               |        \-0.58 |         173 |              72 | USA     | PGA Tour               |
|   39 | Joaquin Niemann         |        \-0.53 |         188 |             106 | CHI     | PGA Tour               |
|   40 | Bud Cauley              |        \-0.52 |         223 |              80 | USA     | PGA Tour               |
|   41 | Andrew Putnam           |        \-0.51 |         268 |              84 | USA     | PGA Tour               |
|   42 | Rafael Cabrera Bello    |        \-0.51 |         311 |             105 | ESP     | PGA Tour               |
|   43 | Russell Knox            |        \-0.50 |         294 |             102 | SCO     | PGA Tour               |
|   44 | Bubba Watson            |        \-0.49 |         223 |              74 | USA     | PGA Tour               |
|   45 | Adam Hadwin             |        \-0.49 |         267 |              80 | CAN     | PGA Tour               |
|   46 | Ryan Palmer             |        \-0.48 |         201 |              71 | USA     | PGA Tour               |
|   47 | Mike Lorenzo-Vera       |        \-0.47 |         235 |              82 | FRA     | European Tour          |
|   48 | JT Poston               |        \-0.46 |         276 |             100 | USA     | PGA Tour               |
|   49 | Daniel Berger           |        \-0.46 |         240 |              86 | USA     | PGA Tour               |
|   50 | Corey Conners           |        \-0.45 |         292 |              91 | CAN     | PGA Tour               |
|   51 | Matthias Schwab         |        \-0.45 |         254 |              87 | AUT     | European Tour          |
|   52 | Victor Perez            |        \-0.45 |         243 |              70 | FRA     | European Tour          |
|   53 | Ian Poulter             |        \-0.44 |         288 |              82 | ENG     | PGA Tour               |
|   54 | Kevin Kisner            |        \-0.43 |         279 |             103 | USA     | PGA Tour               |
|   55 | Vaughn Taylor           |        \-0.42 |         257 |              98 | USA     | PGA Tour               |
|   56 | Jason Kokrak            |        \-0.42 |         285 |              91 | USA     | PGA Tour               |
|   57 | Thomas Pieters          |        \-0.41 |         260 |              90 | BEL     | European Tour(3)       |
|   58 | Robert MacIntyre        |        \-0.41 |         198 |              87 | SCO     | European Tour          |
|   59 | Jordan Spieth           |        \-0.40 |         251 |              87 | USA     | PGA Tour               |
|   60 | Alex Noren              |        \-0.40 |         258 |             100 | SWE     | PGA Tour               |
|   61 | Ryan Moore              |        \-0.40 |         230 |              72 | USA     | PGA Tour               |
|   62 | Graeme McDowell         |        \-0.38 |         260 |              86 | NIR     | PGA Tour               |
|   63 | Lucas Glover            |        \-0.37 |         256 |              97 | USA     | PGA Tour               |
|   64 | Erik van Rooyen         |        \-0.36 |         296 |             109 | RSA     | European Tour          |
|   65 | Denny McCarthy          |        \-0.34 |         273 |              94 | USA     | PGA Tour               |
|   66 | Thomas Detry            |        \-0.33 |         280 |             102 | BEL     | European Tour          |
|   67 | Brendon Todd            |        \-0.32 |         110 |              77 | USA     | PGA Tour               |
|   68 | Rory Sabbatini          |        \-0.32 |         265 |             111 | RSA     | PGA Tour               |
|   69 | Keegan Bradley          |        \-0.30 |         289 |              90 | USA     | PGA Tour               |
|   70 | Nate Lashley            |        \-0.30 |         238 |              76 | USA     | PGA Tour               |
|   71 | Bernd Wiesberger        |        \-0.29 |         217 |              89 | AUT     | European Tour          |
|   72 | Martin Kaymer           |        \-0.29 |         262 |              95 | GER     | European Tour(3)       |
|   73 | Pat Perez               |        \-0.29 |         233 |              65 | USA     | PGA Tour               |
|   74 | Kevin Na                |        \-0.29 |         241 |              75 | USA     | PGA Tour               |
|   75 | Thorbjorn Olesen        |        \-0.27 |         209 |              42 | DEN     | Major Championship     |
|   76 | Sean O’Hair             |        \-0.27 |         155 |              10 | USA     | Korn Ferry Tour KGT    |
|   77 | Brian Harman            |        \-0.26 |         281 |              96 | USA     | PGA Tour               |
|   78 | Paul Waring             |        \-0.26 |         233 |              82 | ENG     | European Tour          |
|   79 | Cameron Smith           |        \-0.23 |         259 |              88 | AUS     | PGA Tour               |
|   80 | Branden Grace           |        \-0.22 |         277 |              89 | RSA     | PGA Tour               |
|   81 | Tom Lewis               |        \-0.21 |         228 |              76 | ENG     | European Tour          |
|   82 | Harris English          |        \-0.21 |         267 |             101 | USA     | PGA Tour               |
|   83 | Joost Luiten            |        \-0.20 |         235 |              98 | NED     | European Tour(3)       |
|   84 | Carlos Ortiz            |        \-0.19 |         283 |              90 | MEX     | PGA Tour               |
|   85 | Juan Sebastian Munoz    |        \-0.18 |         273 |              97 | COL     | PGA Tour               |
|   86 | Emiliano Grillo         |        \-0.17 |         268 |              76 | ARG     | PGA Tour               |
|   87 | Danny Willett           |        \-0.17 |         213 |              88 | ENG     | PGA Tour               |
|   88 | Harry Higgs             |        \-0.16 |         173 |             108 | USA     | Web.com Tour           |
|   89 | Matthew Wolff           |        \-0.15 |          55 |              53 | USA     | PGA Tour               |
|   90 | Lee Westwood            |        \-0.14 |         234 |              73 | ENG     | European Tour(3)       |
|   91 | Chez Reavie             |        \-0.13 |         284 |              99 | USA     | PGA Tour               |
|   92 | Aaron Wise              |        \-0.13 |         233 |              71 | USA     | PGA Tour               |
|   93 | Matt Jones              |        \-0.12 |         252 |              91 | AUS     | PGA Tour               |
|   94 | Bronson Burgoon         |        \-0.11 |         197 |              76 | USA     | PGA Tour               |
|   95 | Tom Hoge                |        \-0.09 |         287 |             101 | USA     | PGA Tour               |
|   96 | Francesco Molinari      |        \-0.09 |         247 |              73 | ITA     | PGA Tour               |
|   97 | Nick Taylor             |        \-0.09 |         284 |              96 | CAN     | PGA Tour               |
|   98 | Zach Johnson            |        \-0.07 |         240 |              75 | USA     | PGA Tour               |
|   99 | Cameron Tringale        |        \-0.07 |         248 |              85 | USA     | PGA Tour               |
|  100 | Scott Piercy            |        \-0.06 |         233 |              86 | USA     | PGA Tour               |
|  101 | Dylan Frittelli         |        \-0.05 |         322 |              99 | RSA     | PGA Tour               |
|  102 | Takumi Kanaya(Am)       |        \-0.04 |          50 |              22 | JPN     | Japan Golf Tour        |
|  103 | Cameron Champ           |        \-0.04 |         203 |              83 | USA     | PGA Tour               |
|  104 | Harold Varner III       |        \-0.04 |         294 |              87 | USA     | PGA Tour               |
|  105 | Lanto Griffin           |        \-0.03 |         282 |             105 | USA     | PGA Tour               |
|  106 | D.J. Trahan             |        \-0.02 |         126 |              64 | USA     | PGA Tour               |
|  107 | Adam Long               |        \-0.01 |         273 |              97 | USA     | PGA Tour               |
|  108 | Danny Lee               |        \-0.01 |         262 |              83 | NZL     | PGA Tour               |
|  109 | Matt Wallace            |        \-0.01 |         298 |             102 | ENG     | European Tour(3)       |
|  110 | Zhang Xinjun            |        \-0.01 |         274 |             108 | CHN     | Web.com Tour           |
|  111 | Kevin Tway              |          0.00 |         274 |              78 | USA     | PGA Tour               |
|  112 | Christiaan Bezuidenhout |          0.01 |         275 |             100 | RSA     | European Tour          |
|  113 | Jazz Janewattananond    |          0.01 |         324 |             130 | THA     | Asian Tour             |
|  114 | Adam Schenk             |          0.01 |         305 |             102 | USA     | PGA Tour               |
|  115 | Joel Dahmen             |          0.02 |         266 |              96 | USA     | PGA Tour               |
|  116 | Jhonattan Vegas         |          0.02 |         253 |              76 | VEN     | PGA Tour               |
|  117 | Marcus Kinhult          |          0.03 |         246 |              72 | SWE     | European Tour          |
|  118 | Sunghoon Kang           |          0.03 |         285 |              93 | KOR     | PGA Tour               |
|  119 | Kurt Kitayama           |          0.04 |         238 |              93 | USA     | European Tour(3)       |
|  120 | Haotong Li              |          0.05 |         273 |              86 | CHN     | European Tour(3)       |
|  121 | Doc Redman              |          0.05 |         114 |              82 | USA     | PGA Tour               |
|  122 | Shugo Imahira           |          0.06 |         297 |             112 | JPN     | Japan Golf Tour        |
|  123 | Kyle Stanley            |          0.06 |         265 |              83 | USA     | PGA Tour               |
|  124 | Nick Watney             |          0.07 |         255 |              81 | USA     | PGA Tour               |
|  125 | Max Homa                |          0.08 |         230 |              92 | USA     | PGA Tour               |
|  126 | Talor Gooch             |          0.09 |         252 |              76 | USA     | PGA Tour               |
|  127 | Kevin Streelman         |          0.09 |         265 |              90 | USA     | PGA Tour               |
|  128 | Phil Mickelson          |          0.09 |         236 |              71 | USA     | PGA Tour               |
|  129 | Aaron Baddeley          |          0.10 |         209 |              64 | AUS     | PGA Tour               |
|  130 | Charley Hoffman         |          0.10 |         273 |              81 | USA     | PGA Tour               |
|  131 | Eddie Pepperell         |          0.11 |         226 |              76 | ENG     | European Tour          |
|  132 | Brian Stuard            |          0.13 |         286 |             104 | USA     | PGA Tour               |
|  133 | J.B. Holmes             |          0.14 |         227 |              62 | USA     | PGA Tour               |
|  134 | Sam Ryder               |          0.14 |         263 |              78 | USA     | PGA Tour               |
|  135 | Brice Garnett           |          0.15 |         282 |              82 | USA     | PGA Tour               |
|  136 | Miguel A Jimenez        |          0.15 |          61 |              20 | ESP     | European Tour(3)       |
|  137 | Romain Langasque        |          0.16 |         256 |              91 | FRA     | European Tour          |
|  138 | Andrew Landry           |          0.16 |         251 |              76 | USA     | PGA Tour               |
|  139 | Mark Hubbard            |          0.19 |         269 |             109 | USA     | Korn Ferry Tour KGT    |
|  140 | Wyndham Clark           |          0.19 |         206 |              80 | USA     | PGA Tour               |
|  141 | Cameron Percy           |          0.19 |         224 |              69 | AUS     | PGA Tour               |
|  142 | Scott Stallings         |          0.20 |         258 |              89 | USA     | PGA Tour               |
|  143 | Sam Burns               |          0.21 |         192 |              72 | USA     | PGA Tour               |
|  144 | Matthew NeSmith         |          0.21 |         150 |             102 | USA     | Korn Ferry Tour KGT    |
|  145 | Andrew Johnston         |          0.22 |         181 |              51 | ENG     | European Tour          |
|  146 | Jordan L Smith          |          0.23 |         272 |              84 | ENG     | European Tour(3)       |
|  147 | Jason Scrivener         |          0.23 |         265 |              87 | AUS     | European Tour(3)       |
|  148 | Patrick Rodgers         |          0.23 |         237 |              67 | USA     | PGA Tour               |
|  149 | Adria Arnaus            |          0.24 |         244 |              89 | ESP     | European Tour          |
|  150 | Gunn Charoenkul         |          0.24 |         244 |             108 | THA     | Japan Golf Tour        |
|  151 | Will Zalatoris          |          0.24 |          85 |              59 | USA     | Korn Ferry Tour KGT    |
|  152 | Andy Sullivan           |          0.25 |         265 |              85 | ENG     | European Tour          |
|  153 | Augusto Nunez           |          0.25 |         215 |              68 | ARG     | PGA Tour Latinoamerica |
|  154 | Henrik Norlander        |          0.25 |         244 |             102 | SWE     | Web.com Tour           |
|  155 | Benjamin Hebert         |          0.25 |         246 |              84 | FRA     | European Tour          |
|  156 | David Hearn             |          0.26 |         242 |              81 | CAN     | PGA Tour               |
|  157 | Mikko Korhonen          |          0.26 |         231 |              84 | FIN     | European Tour          |
|  158 | Gavin Green             |          0.27 |         277 |              99 | MAS     | European Tour          |
|  159 | Keith Mitchell          |          0.28 |         277 |              87 | USA     | PGA Tour               |
|  160 | Luke List               |          0.30 |         263 |              77 | USA     | PGA Tour               |
|  161 | Grayson Murray          |          0.30 |         218 |              59 | USA     | PGA Tour               |
|  162 | Stewart Cink            |          0.30 |         237 |              64 | USA     | PGA Tour               |
|  163 | Brendan Steele          |          0.31 |         221 |              72 | USA     | PGA Tour               |
|  164 | Justin Harding          |          0.32 |         269 |             103 | RSA     | European Tour(3)       |
|  165 | Richie Ramsay           |          0.32 |         240 |              84 | SCO     | European Tour          |
|  166 | Ryan Armour             |          0.32 |         283 |              92 | USA     | PGA Tour               |
|  167 | Brian Gay               |          0.32 |         279 |              92 | USA     | PGA Tour               |
|  168 | Shaun Norris            |          0.33 |         306 |             106 | RSA     | Japan Golf Tour        |
|  169 | Steve Stricker          |          0.35 |         105 |              22 | USA     | PGA Tour               |
|  170 | Martin Laird            |          0.35 |         239 |              86 | SCO     | PGA Tour               |
|  171 | Beau Hossler            |          0.36 |         301 |              99 | USA     | PGA Tour               |
|  172 | Davis Riley             |          0.36 |          83 |              79 | USA     | Korn Ferry Tour KGT    |
|  173 | Bo Hoag                 |          0.37 |         257 |             117 | USA     | Web.com Tour           |
|  174 | Troy Merritt            |          0.37 |         253 |              75 | USA     | PGA Tour               |
|  175 | Kiradech Aphibarnrat    |          0.37 |         280 |              84 | THA     | PGA Tour               |
|  176 | Roberto Diaz            |          0.37 |         272 |              82 | MEX     | PGA Tour               |
|  177 | Sam Horsfield           |          0.38 |         203 |              84 | ENG     | European Tour(3)       |
|  178 | Chesson Hadley          |          0.39 |         273 |              79 | USA     | PGA Tour               |
|  179 | John Huh                |          0.39 |         215 |              47 | USA     | PGA Tour               |
|  180 | Michael Thompson        |          0.39 |         199 |              76 | USA     | PGA Tour               |
|  181 | Ross Fisher             |          0.39 |         245 |              75 | ENG     | European Tour(3)       |
|  182 | Tyler Duncan(Jul1989)   |          0.39 |         293 |             101 | USA     | PGA Tour               |
|  183 | C.T. Pan                |          0.39 |         269 |              82 | TPE     | PGA Tour               |
|  184 | Peter Malnati           |          0.39 |         268 |              90 | USA     | PGA Tour               |
|  185 | Fabian Gomez            |          0.40 |         257 |              99 | ARG     | PGA Tour               |
|  186 | Russell Henley          |          0.40 |         243 |              78 | USA     | PGA Tour               |
|  187 | Chase Seiffert          |          0.40 |         132 |             100 | USA     | Web.com Tour           |
|  188 | Junggon Hwang           |          0.40 |         273 |              85 | KOR     | Japan Golf Tour        |
|  189 | Zac Blair               |          0.41 |         291 |             117 | USA     | PGA Tour               |
|  190 | Jason Dufner            |          0.41 |         232 |              70 | USA     | PGA Tour               |
|  191 | Jimmy Walker            |          0.42 |         227 |              77 | USA     | PGA Tour               |
|  192 | Siwoo Kim               |          0.42 |         267 |              82 | KOR     | PGA Tour               |
|  193 | Chan Kim                |          0.42 |         156 |              86 | USA     | Japan Golf Tour        |
|  194 | Curtis Thompson         |          0.42 |          98 |               6 | USA     | Korn Ferry Tour KGT    |
|  195 | Richy Werenski          |          0.43 |         248 |              85 | USA     | PGA Tour               |
|  196 | Maverick McNealy        |          0.44 |         208 |             103 | USA     | PGA Tour               |
|  197 | Brandon Harkins         |          0.45 |         269 |              76 | USA     | PGA Tour               |
|  198 | Scott Jamieson          |          0.45 |         246 |              78 | SCO     | European Tour          |
|  199 | Tanapat Pichaikul       |          0.45 |          25 |              11 | THA     | ATGT Logo 2            |
|  200 | Rikuya Hoshino          |          0.45 |         258 |              98 | JPN     | Japan Golf Tour        |

Current Golf Ratings
