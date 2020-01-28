Current Golf Ratings
================
DSMok1
January 28, 2020

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
|    1 | Rory McIlroy            |        \-2.24 |         241 |              88 | NIR     | PGA Tour                |
|    2 | Jon Rahm                |        \-2.19 |         274 |              87 | ESP     | PGA Tour                |
|    3 | Justin Thomas           |        \-1.87 |         251 |              82 | USA     | PGA Tour                |
|    4 | Tiger Woods             |        \-1.84 |         126 |              44 | USA     | PGA Tour                |
|    5 | Webb Simpson            |        \-1.72 |         261 |              82 | USA     | PGA Tour                |
|    6 | Patrick Cantlay         |        \-1.48 |         224 |              76 | USA     | PGA Tour                |
|    7 | Tommy Fleetwood         |        \-1.45 |         316 |             108 | ENG     | PGA Tour                |
|    8 | Dustin Johnson          |        \-1.43 |         230 |              70 | USA     | PGA Tour                |
|    9 | Xander Schauffele       |        \-1.43 |         270 |              78 | USA     | PGA Tour                |
|   10 | Hideki Matsuyama        |        \-1.34 |         273 |             101 | JPN     | PGA Tour                |
|   11 | Brooks Koepka           |        \-1.34 |         238 |              72 | USA     | PGA Tour                |
|   12 | Justin Rose             |        \-1.32 |         276 |              88 | ENG     | PGA Tour                |
|   13 | Louis Oosthuizen        |        \-1.31 |         246 |              88 | RSA     | PGA Tour                |
|   14 | Rickie Fowler           |        \-1.30 |         254 |              82 | USA     | PGA Tour                |
|   15 | Patrick Reed            |        \-1.26 |         338 |             118 | USA     | PGA Tour                |
|   16 | Adam Scott              |        \-1.19 |         225 |              77 | AUS     | PGA Tour                |
|   17 | Collin Morikawa         |        \-1.12 |          67 |              59 | USA     | PGA Tour                |
|   18 | Paul Casey              |        \-1.07 |         264 |              90 | ENG     | PGA Tour                |
|   19 | Gary Woodland           |        \-1.03 |         274 |              81 | USA     | PGA Tour                |
|   20 | Tony Finau              |        \-0.97 |         310 |             106 | USA     | PGA Tour                |
|   21 | Viktor Hovland          |        \-0.92 |          74 |              62 | NOR     | PGA Tour                |
|   22 | Bryson DeChambeau       |        \-0.92 |         271 |              84 | USA     | PGA Tour                |
|   23 | Matt Kuchar             |        \-0.89 |         294 |              90 | USA     | PGA Tour                |
|   24 | Marc Leishman           |        \-0.87 |         272 |              76 | AUS     | PGA Tour                |
|   25 | Matthew Fitzpatrick     |        \-0.86 |         294 |             101 | ENG     | PGA Tour                |
|   26 | Sungjae Im              |        \-0.84 |         364 |             126 | KOR     | PGA Tour                |
|   27 | Henrik Stenson          |        \-0.83 |         242 |              88 | SWE     | PGA Tour                |
|   28 | Brandt Snedeker         |        \-0.83 |         245 |              91 | USA     | PGA Tour                |
|   29 | Jason Day               |        \-0.80 |         216 |              62 | AUS     | PGA Tour                |
|   30 | Shane Lowry             |        \-0.73 |         267 |              81 | IRL     | PGA Tour                |
|   31 | Scottie Scheffler       |        \-0.73 |         132 |             112 | USA     | PGA Tour                |
|   32 | Tyrrell Hatton          |        \-0.68 |         256 |              90 | ENG     | PGA Tour                |
|   33 | Abraham Ancer           |        \-0.65 |         303 |             100 | MEX     | PGA Tour                |
|   34 | Charles Howell III      |        \-0.62 |         279 |              97 | USA     | PGA Tour                |
|   35 | Mike Lorenzo-Vera       |        \-0.61 |         241 |              80 | FRA     | European Tour           |
|   36 | Rafael Cabrera Bello    |        \-0.61 |         315 |             105 | ESP     | PGA Tour                |
|   37 | Billy Horschel          |        \-0.60 |         274 |              97 | USA     | PGA Tour                |
|   38 | Jim Furyk               |        \-0.59 |         173 |              72 | USA     | PGA Tour                |
|   39 | Sergio Garcia           |        \-0.59 |         253 |              88 | ESP     | PGA Tour                |
|   40 | Byeong Hun An           |        \-0.57 |         294 |              93 | KOR     | PGA Tour                |
|   41 | Andrew Putnam           |        \-0.56 |         270 |              84 | USA     | PGA Tour                |
|   42 | Joaquin Niemann         |        \-0.54 |         188 |             106 | CHI     | PGA Tour                |
|   43 | Ryan Palmer             |        \-0.54 |         201 |              71 | USA     | PGA Tour                |
|   44 | Vaughn Taylor           |        \-0.53 |         259 |              98 | USA     | PGA Tour                |
|   45 | Matthias Schwab         |        \-0.53 |         250 |              87 | AUT     | European Tour           |
|   46 | Robert MacIntyre        |        \-0.52 |         196 |              83 | SCO     | European Tour           |
|   47 | Victor Perez            |        \-0.52 |         239 |              70 | FRA     | European Tour           |
|   48 | Ryan Moore              |        \-0.49 |         232 |              74 | USA     | PGA Tour                |
|   49 | Adam Hadwin             |        \-0.48 |         271 |              80 | CAN     | PGA Tour                |
|   50 | Jordan Spieth           |        \-0.48 |         253 |              87 | USA     | PGA Tour                |
|   51 | Jason Kokrak            |        \-0.48 |         287 |              91 | USA     | PGA Tour                |
|   52 | Corey Conners           |        \-0.46 |         292 |              91 | CAN     | PGA Tour                |
|   53 | Erik van Rooyen         |        \-0.46 |         294 |             107 | RSA     | European Tour           |
|   54 | Bud Cauley              |        \-0.44 |         225 |              82 | USA     | PGA Tour                |
|   55 | Denny McCarthy          |        \-0.44 |         273 |              92 | USA     | PGA Tour                |
|   56 | Kevin Kisner            |        \-0.43 |         279 |             103 | USA     | PGA Tour                |
|   57 | JT Poston               |        \-0.43 |         274 |             104 | USA     | PGA Tour                |
|   58 | Ian Poulter             |        \-0.43 |         288 |              82 | ENG     | PGA Tour                |
|   59 | Russell Knox            |        \-0.43 |         292 |             102 | SCO     | PGA Tour                |
|   60 | Alex Noren              |        \-0.42 |         262 |             102 | SWE     | PGA Tour                |
|   61 | Rory Sabbatini          |        \-0.41 |         267 |             113 | RSA     | PGA Tour                |
|   62 | Bernd Wiesberger        |        \-0.40 |         223 |              89 | AUT     | European Tour           |
|   63 | Cameron Smith           |        \-0.39 |         265 |              88 | AUS     | PGA Tour                |
|   64 | Matthew Wolff           |        \-0.38 |          53 |              49 | USA     | PGA Tour                |
|   65 | Lucas Glover            |        \-0.38 |         264 |              93 | USA     | PGA Tour                |
|   66 | Tom Lewis               |        \-0.36 |         226 |              76 | ENG     | European Tour           |
|   67 | Kevin Na                |        \-0.34 |         243 |              75 | USA     | PGA Tour                |
|   68 | Paul Waring             |        \-0.34 |         235 |              84 | ENG     | European Tour           |
|   69 | Keegan Bradley          |        \-0.34 |         291 |              90 | USA     | PGA Tour                |
|   70 | Brendon Todd            |        \-0.33 |         110 |              77 | USA     | PGA Tour                |
|   71 | Daniel Berger           |        \-0.33 |         242 |              88 | USA     | PGA Tour                |
|   72 | Emiliano Grillo         |        \-0.33 |         274 |              78 | ARG     | PGA Tour                |
|   73 | Thomas Pieters          |        \-0.32 |         260 |              90 | BEL     | European Tour(3)        |
|   74 | Pat Perez               |        \-0.30 |         237 |              63 | USA     | PGA Tour                |
|   75 | Brian Harman            |        \-0.30 |         285 |              98 | USA     | PGA Tour                |
|   76 | Sean O’Hair             |        \-0.29 |         159 |              10 | USA     | PGA Tour                |
|   77 | Thorbjorn Olesen        |        \-0.29 |         217 |              46 | DEN     | European Tour           |
|   78 | Bubba Watson            |        \-0.28 |         221 |              70 | USA     | PGA Tour                |
|   79 | Thomas Detry            |        \-0.27 |         282 |             102 | BEL     | European Tour           |
|   80 | Martin Kaymer           |        \-0.25 |         266 |              95 | GER     | PGA Tour                |
|   81 | Joost Luiten            |        \-0.25 |         239 |              96 | NED     | European Tour           |
|   82 | Lanto Griffin           |        \-0.24 |         284 |             107 | USA     | Web.com Tour            |
|   83 | Lee Westwood            |        \-0.24 |         236 |              73 | ENG     | European Tour           |
|   84 | Aaron Wise              |        \-0.20 |         235 |              73 | USA     | PGA Tour                |
|   85 | Chez Reavie             |        \-0.20 |         284 |              99 | USA     | PGA Tour                |
|   86 | Juan Sebastian Munoz    |        \-0.19 |         273 |              99 | COL     | PGA Tour                |
|   87 | Graeme McDowell         |        \-0.19 |         264 |              84 | NIR     | PGA Tour                |
|   88 | Danny Willett           |        \-0.19 |         217 |              88 | ENG     | PGA Tour                |
|   89 | Matt Jones              |        \-0.17 |         254 |              91 | AUS     | PGA Tour                |
|   90 | Dylan Frittelli         |        \-0.16 |         322 |              97 | RSA     | PGA Tour                |
|   91 | Bronson Burgoon         |        \-0.12 |         197 |              76 | USA     | PGA Tour                |
|   92 | Zach Johnson            |        \-0.12 |         242 |              75 | USA     | PGA Tour                |
|   93 | Cameron Tringale        |        \-0.11 |         252 |              83 | USA     | PGA Tour                |
|   94 | Nick Taylor             |        \-0.11 |         286 |             100 | CAN     | PGA Tour                |
|   95 | Harris English          |        \-0.11 |         271 |              99 | USA     | PGA Tour                |
|   96 | Francesco Molinari      |        \-0.11 |         251 |              71 | ITA     | PGA Tour                |
|   97 | Carlos Ortiz            |        \-0.10 |         283 |              90 | MEX     | PGA Tour                |
|   98 | Branden Grace           |        \-0.10 |         273 |              91 | RSA     | PGA Tour                |
|   99 | Harry Higgs             |        \-0.09 |         169 |             108 | USA     | Web.com Tour            |
|  100 | Nate Lashley            |        \-0.07 |         234 |              76 | USA     | PGA Tour                |
|  101 | Harold Varner III       |        \-0.07 |         298 |              87 | USA     | PGA Tour                |
|  102 | Kyle Stanley            |        \-0.06 |         271 |              83 | USA     | PGA Tour                |
|  103 | Marcus Kinhult          |        \-0.06 |         242 |              72 | SWE     | European Tour           |
|  104 | Takumi Kanaya(Am)       |        \-0.06 |          54 |              22 | JPN     | Japan Golf Tour         |
|  105 | Jazz Janewattananond    |        \-0.05 |         324 |             128 | THA     | Asian Tour              |
|  106 | Cameron Champ           |        \-0.05 |         203 |              81 | USA     | PGA Tour                |
|  107 | Matt Wallace            |        \-0.04 |         294 |             104 | ENG     | European Tour(3)        |
|  108 | Adam Schenk             |        \-0.04 |         305 |             106 | USA     | PGA Tour                |
|  109 | D.J. Trahan             |        \-0.04 |         126 |              62 | USA     | PGA Tour                |
|  110 | Tom Hoge                |        \-0.01 |         283 |              99 | USA     | PGA Tour                |
|  111 | Sunghoon Kang           |          0.00 |         287 |              93 | KOR     | PGA Tour                |
|  112 | Talor Gooch             |          0.01 |         250 |              76 | USA     | PGA Tour                |
|  113 | Joel Dahmen             |          0.01 |         266 |              96 | USA     | PGA Tour                |
|  114 | Kurt Kitayama           |          0.02 |         242 |              93 | USA     | European Tour           |
|  115 | Christiaan Bezuidenhout |          0.03 |         271 |             100 | RSA     | European Tour           |
|  116 | Shugo Imahira           |          0.04 |         299 |             110 | JPN     | Japan Golf Tour         |
|  117 | Nick Watney             |          0.05 |         257 |              83 | USA     | PGA Tour                |
|  118 | Kevin Streelman         |          0.06 |         269 |              88 | USA     | PGA Tour                |
|  119 | Kevin Tway              |          0.07 |         274 |              78 | USA     | PGA Tour                |
|  120 | Haotong Li              |          0.07 |         275 |              88 | CHN     | European Tour(3)        |
|  121 | Zhang Xinjun            |          0.07 |         274 |             108 | CHN     | Web.com Tour            |
|  122 | Romain Langasque        |          0.07 |         258 |              91 | FRA     | European Tour           |
|  123 | Jhonattan Vegas         |          0.08 |         253 |              74 | VEN     | PGA Tour                |
|  124 | Brian Stuard            |          0.08 |         291 |             104 | USA     | PGA Tour                |
|  125 | Sam Ryder               |          0.10 |         263 |              80 | USA     | PGA Tour                |
|  126 | Eddie Pepperell         |          0.10 |         226 |              76 | ENG     | European Tour           |
|  127 | Danny Lee               |          0.11 |         262 |              85 | NZL     | PGA Tour                |
|  128 | Brice Garnett           |          0.12 |         280 |              84 | USA     | PGA Tour                |
|  129 | Scott Piercy            |          0.12 |         233 |              86 | USA     | PGA Tour                |
|  130 | Miguel A Jimenez        |          0.14 |          63 |              18 | ESP     | European Tour(3)        |
|  131 | Adam Long               |          0.14 |         273 |              99 | USA     | PGA Tour                |
|  132 | Doc Redman              |          0.15 |         110 |              78 | USA     | PGA Tour                |
|  133 | Sam Burns               |          0.15 |         190 |              72 | USA     | PGA Tour                |
|  134 | Charley Hoffman         |          0.16 |         277 |              79 | USA     | PGA Tour                |
|  135 | Ryan Armour             |          0.16 |         285 |              92 | USA     | PGA Tour                |
|  136 | Will Zalatoris          |          0.16 |          81 |              55 | USA     | Korn Ferry Tour KGT     |
|  137 | Jordan L Smith          |          0.17 |         276 |              84 | ENG     | European Tour           |
|  138 | Cameron Percy           |          0.17 |         228 |              69 | AUS     | PGA Tour                |
|  139 | Aaron Baddeley          |          0.17 |         209 |              60 | AUS     | PGA Tour                |
|  140 | Brian Gay               |          0.18 |         281 |              92 | USA     | PGA Tour                |
|  141 | Scott Stallings         |          0.18 |         260 |              89 | USA     | PGA Tour                |
|  142 | Matthew NeSmith         |          0.19 |         150 |             102 | USA     | Web.com Tour            |
|  143 | Mikko Korhonen          |          0.19 |         233 |              84 | FIN     | European Tour           |
|  144 | Andrew Landry           |          0.20 |         251 |              76 | USA     | PGA Tour                |
|  145 | Andrew Johnston         |          0.20 |         187 |              53 | ENG     | European Tour           |
|  146 | Jason Scrivener         |          0.21 |         271 |              87 | AUS     | European Tour           |
|  147 | Gunn Charoenkul         |          0.22 |         248 |             108 | THA     | Japan Golf Tour         |
|  148 | Beau Hossler            |          0.22 |         301 |              99 | USA     | PGA Tour                |
|  149 | Siwoo Kim               |          0.22 |         267 |              86 | KOR     | PGA Tour                |
|  150 | Augusto Nunez           |          0.23 |         213 |              64 | ARG     | PGA Tour Latinoamerica  |
|  151 | Henrik Norlander        |          0.23 |         246 |             102 | SWE     | Web.com Tour            |
|  152 | Brendan Steele          |          0.23 |         227 |              72 | USA     | PGA Tour                |
|  153 | David Hearn             |          0.24 |         244 |              81 | CAN     | PGA Tour                |
|  154 | Adria Arnaus            |          0.25 |         240 |              89 | ESP     | European Tour           |
|  155 | Chris Kirk              |          0.25 |         218 |              32 | USA     | PGA Tour                |
|  156 | Grayson Murray          |          0.26 |         220 |              59 | USA     | PGA Tour                |
|  157 | Troy Merritt            |          0.26 |         257 |              75 | USA     | PGA Tour                |
|  158 | Andy Sullivan           |          0.27 |         267 |              87 | ENG     | European Tour           |
|  159 | Benjamin Hebert         |          0.27 |         248 |              82 | FRA     | European Tour           |
|  160 | Max Homa                |          0.28 |         228 |              88 | USA     | PGA Tour                |
|  161 | Justin Harding          |          0.28 |         265 |             103 | RSA     | European Tour(3)        |
|  162 | C.T. Pan                |          0.28 |         271 |              84 | TPE     | PGA Tour                |
|  163 | Stewart Cink            |          0.29 |         241 |              62 | USA     | PGA Tour                |
|  164 | Adam Svensson           |          0.29 |         232 |              63 | CAN     | PGA Tour                |
|  165 | Jimmy Walker            |          0.29 |         225 |              75 | USA     | PGA Tour                |
|  166 | Phil Mickelson          |          0.30 |         240 |              69 | USA     | PGA Tour                |
|  167 | Wyndham Clark           |          0.30 |         202 |              82 | USA     | PGA Tour                |
|  168 | Shaun Norris            |          0.32 |         308 |             106 | RSA     | Japan Golf Tour         |
|  169 | Mark Hubbard            |          0.32 |         269 |             111 | USA     | Web.com Tour            |
|  170 | Wade Ormsby             |          0.32 |         248 |              77 | AUS     | European Tour           |
|  171 | Martin Laird            |          0.32 |         242 |              86 | SCO     | PGA Tour                |
|  172 | Will Wilcox             |          0.32 |         139 |              26 | USA     | Web.com Tour            |
|  173 | Sam Horsfield           |          0.33 |         201 |              84 | ENG     | European Tour(3)        |
|  174 | Steve Stricker          |          0.33 |         109 |              20 | USA     | PGA Tour                |
|  175 | Chesson Hadley          |          0.34 |         271 |              79 | USA     | PGA Tour                |
|  176 | Kiradech Aphibarnrat    |          0.34 |         284 |              86 | THA     | PGA Tour                |
|  177 | Bo Hoag                 |          0.35 |         257 |             119 | USA     | Web.com Tour            |
|  178 | Charl Schwartzel        |          0.35 |         193 |              32 | RSA     | PGA Tour                |
|  179 | Russell Henley          |          0.35 |         245 |              78 | USA     | PGA Tour                |
|  180 | J.B. Holmes             |          0.35 |         231 |              60 | USA     | PGA Tour                |
|  181 | Scott Jamieson          |          0.37 |         248 |              76 | SCO     | European Tour           |
|  182 | Richie Ramsay           |          0.37 |         244 |              84 | SCO     | European Tour           |
|  183 | Tyler Duncan(Jul1989)   |          0.37 |         295 |             103 | USA     | PGA Tour                |
|  184 | Peter Malnati           |          0.37 |         268 |              88 | USA     | PGA Tour                |
|  185 | Michael Thompson        |          0.38 |         203 |              78 | USA     | PGA Tour                |
|  186 | Junggon Hwang           |          0.38 |         277 |              85 | KOR     | Japan Golf Tour         |
|  187 | Chase Seiffert          |          0.38 |         132 |             100 | USA     | Web.com Tour            |
|  188 | Fabian Gomez            |          0.38 |         259 |              99 | ARG     | PGA Tour                |
|  189 | Zac Blair               |          0.39 |         297 |             115 | USA     | Web.com Tour            |
|  190 | Patrick Rodgers         |          0.39 |         239 |              65 | USA     | PGA Tour                |
|  191 | Scott Harrington        |          0.39 |         223 |             106 | USA     | Web.com Tour            |
|  192 | Jason Dufner            |          0.40 |         232 |              66 | USA     | PGA Tour                |
|  193 | Gavin Green             |          0.40 |         281 |              97 | MAS     | European Tour           |
|  194 | Chan Kim                |          0.40 |         160 |              86 | USA     | Japan Golf Tour         |
|  195 | Calum Hill(Nov1994)     |          0.42 |         138 |              90 | SCO     | European Challenge Tour |
|  196 | Richy Werenski          |          0.42 |         252 |              83 | USA     | PGA Tour                |
|  197 | Maverick McNealy        |          0.42 |         208 |             103 | USA     | Web.com Tour            |
|  198 | Austin Cook             |          0.42 |         275 |              73 | USA     | PGA Tour                |
|  199 | Keith Mitchell          |          0.43 |         277 |              87 | USA     | PGA Tour                |
|  200 | Brandon Harkins         |          0.43 |         273 |              74 | USA     | PGA Tour                |

Current Golf Ratings
