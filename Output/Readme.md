Current Golf Ratings
================
DSMok1
August 05, 2019

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
|    1 | Rory McIlroy            |        \-2.25 |         229 |              88 | NIR     | PGA Tour                |
|    2 | Dustin Johnson          |        \-2.19 |         246 |              94 | USA     | PGA Tour                |
|    3 | Jon Rahm                |        \-2.12 |         261 |              94 | ESP     | PGA Tour                |
|    4 | Patrick Cantlay         |        \-2.10 |         192 |              88 | USA     | PGA Tour                |
|    5 | Webb Simpson            |        \-2.02 |         269 |              90 | USA     | PGA Tour                |
|    6 | Justin Rose             |        \-1.97 |         254 |              86 | ENG     | PGA Tour                |
|    7 | Brooks Koepka           |        \-1.92 |         252 |             102 | USA     | PGA Tour                |
|    8 | Justin Thomas           |        \-1.80 |         261 |              92 | USA     | PGA Tour                |
|    9 | Tiger Woods             |        \-1.78 |         114 |              60 | USA     | PGA Tour                |
|   10 | Collin Morikawa         |        \-1.75 |          30 |              20 | USA     | PGA Tour                |
|   11 | Tommy Fleetwood         |        \-1.74 |         315 |             112 | ENG     | PGA Tour                |
|   12 | Rickie Fowler           |        \-1.68 |         262 |              88 | USA     | PGA Tour                |
|   13 | Paul Casey              |        \-1.60 |         260 |              84 | ENG     | PGA Tour                |
|   14 | Xander Schauffele       |        \-1.56 |         287 |              94 | USA     | PGA Tour                |
|   15 | Jason Day               |        \-1.51 |         208 |              84 | AUS     | PGA Tour                |
|   16 | Matt Kuchar             |        \-1.49 |         298 |              96 | USA     | PGA Tour                |
|   17 | Viktor Hovland          |        \-1.44 |          42 |              36 | NOR     | PGA Tour                |
|   18 | Tony Finau              |        \-1.43 |         298 |             104 | USA     | PGA Tour                |
|   19 | Adam Scott              |        \-1.43 |         225 |              73 | AUS     | PGA Tour                |
|   20 | Bryson DeChambeau       |        \-1.42 |         272 |              94 | USA     | PGA Tour                |
|   21 | Hideki Matsuyama        |        \-1.40 |         278 |             113 | JPN     | PGA Tour                |
|   22 | Henrik Stenson          |        \-1.33 |         236 |              90 | SWE     | PGA Tour                |
|   23 | Francesco Molinari      |        \-1.31 |         242 |              72 | ITA     | PGA Tour                |
|   24 | Shane Lowry             |        \-1.29 |         249 |              77 | IRL     | European Tour           |
|   25 | Marc Leishman           |        \-1.28 |         268 |              90 | AUS     | PGA Tour                |
|   26 | Gary Woodland           |        \-1.27 |         275 |              97 | USA     | PGA Tour                |
|   27 | Louis Oosthuizen        |        \-1.23 |         238 |              92 | RSA     | PGA Tour                |
|   28 | Patrick Reed            |        \-1.20 |         336 |             110 | USA     | PGA Tour                |
|   29 | Matthew Fitzpatrick     |        \-1.19 |         285 |             106 | ENG     | European Tour           |
|   30 | Billy Horschel          |        \-1.12 |         265 |             100 | USA     | PGA Tour                |
|   31 | Rafael Cabrera Bello    |        \-1.09 |         314 |             114 | ESP     | PGA Tour                |
|   32 | Sergio Garcia           |        \-1.08 |         241 |              85 | ESP     | PGA Tour                |
|   33 | Jordan Spieth           |        \-1.08 |         257 |              88 | USA     | PGA Tour                |
|   34 | Charles Howell III      |        \-1.07 |         272 |              90 | USA     | PGA Tour                |
|   35 | Matthew Wolff           |        \-1.07 |          25 |              21 | USA     | PGA Tour                |
|   36 | Jim Furyk               |        \-1.05 |         175 |              68 | USA     | PGA Tour                |
|   37 | Chez Reavie             |        \-1.04 |         273 |              90 | USA     | PGA Tour                |
|   38 | Byeong Hun An           |        \-1.03 |         287 |              96 | KOR     | PGA Tour                |
|   39 | Tyrrell Hatton          |        \-1.03 |         266 |              98 | ENG     | PGA Tour                |
|   40 | Lucas Glover            |        \-1.02 |         251 |              88 | USA     | PGA Tour                |
|   41 | Ian Poulter             |        \-1.00 |         280 |              92 | ENG     | PGA Tour                |
|   42 | Rory Sabbatini          |        \-0.95 |         257 |              87 | RSA     | PGA Tour                |
|   43 | Scott Piercy            |        \-0.91 |         239 |              88 | USA     | PGA Tour                |
|   44 | Matt Wallace            |        \-0.88 |         268 |             118 | ENG     | European Tour           |
|   45 | Jason Kokrak            |        \-0.87 |         290 |              94 | USA     | PGA Tour                |
|   46 | Lee Westwood            |        \-0.85 |         228 |              73 | ENG     | European Tour           |
|   47 | Kevin Na                |        \-0.82 |         253 |              81 | USA     | PGA Tour                |
|   48 | Haotong Li              |        \-0.81 |         275 |              92 | CHN     | European Tour           |
|   49 | Adam Hadwin             |        \-0.81 |         279 |              86 | CAN     | PGA Tour                |
|   50 | Brandt Snedeker         |        \-0.81 |         255 |             103 | USA     | PGA Tour                |
|   51 | Andrew Putnam           |        \-0.79 |         260 |              92 | USA     | PGA Tour                |
|   52 | Joaquin Niemann         |        \-0.78 |         152 |              96 | CHI     | PGA Tour                |
|   53 | Bubba Watson            |        \-0.77 |         231 |              82 | USA     | PGA Tour                |
|   54 | Kevin Streelman         |        \-0.75 |         273 |              85 | USA     | PGA Tour                |
|   55 | Aaron Wise              |        \-0.74 |         251 |              83 | USA     | PGA Tour                |
|   56 | Russell Knox            |        \-0.72 |         292 |              94 | SCO     | PGA Tour                |
|   57 | Sungjae Im              |        \-0.72 |         348 |             130 | KOR     | PGA Tour                |
|   58 | Emiliano Grillo         |        \-0.69 |         289 |              96 | ARG     | PGA Tour                |
|   59 | Kevin Kisner            |        \-0.67 |         276 |              96 | USA     | PGA Tour                |
|   60 | Mike Lorenzo-Vera       |        \-0.67 |         236 |              77 | FRA     | European Tour           |
|   61 | Bud Cauley              |        \-0.67 |         233 |              75 | USA     | PGA Tour                |
|   62 | Thorbjorn Olesen        |        \-0.67 |         253 |              82 | DEN     | European Tour           |
|   63 | Kyle Stanley            |        \-0.66 |         274 |              90 | USA     | PGA Tour                |
|   64 | Vaughn Taylor           |        \-0.65 |         261 |              83 | USA     | PGA Tour                |
|   65 | Abraham Ancer           |        \-0.65 |         287 |              96 | MEX     | PGA Tour                |
|   66 | Ryan Moore              |        \-0.65 |         250 |              80 | USA     | PGA Tour                |
|   67 | Keegan Bradley          |        \-0.63 |         293 |             102 | USA     | PGA Tour                |
|   68 | Cameron Smith           |        \-0.63 |         278 |             100 | AUS     | PGA Tour                |
|   69 | Daniel Berger           |        \-0.62 |         252 |              80 | USA     | PGA Tour                |
|   70 | Alex Noren              |        \-0.62 |         252 |              84 | SWE     | PGA Tour                |
|   71 | Denny McCarthy          |        \-0.61 |         259 |              95 | USA     | PGA Tour                |
|   72 | Erik van Rooyen         |        \-0.59 |         270 |             101 | RSA     | European Tour           |
|   73 | Joost Luiten            |        \-0.54 |         222 |              67 | NED     | European Tour           |
|   74 | Dylan Frittelli         |        \-0.54 |         333 |             109 | RSA     | PGA Tour                |
|   75 | Martin Kaymer           |        \-0.53 |         266 |              99 | GER     | European Tour           |
|   76 | Scottie Scheffler       |        \-0.52 |          84 |              72 | USA     | Web.com Tour            |
|   77 | Zach Johnson            |        \-0.52 |         252 |              78 | USA     | PGA Tour                |
|   78 | Kevin Chappell          |        \-0.50 |         200 |              26 | USA     | PGA Tour                |
|   79 | Bernd Wiesberger        |        \-0.49 |         219 |              60 | AUT     | European Tour           |
|   80 | Steve Stricker          |        \-0.49 |         116 |              22 | USA     | PGA Tour                |
|   81 | JT Poston               |        \-0.48 |         284 |              88 | USA     | PGA Tour                |
|   82 | Eddie Pepperell         |        \-0.48 |         217 |              80 | ENG     | European Tour           |
|   83 | Nate Lashley            |        \-0.48 |         256 |              82 | USA     | PGA Tour                |
|   84 | Graham Delaet           |        \-0.48 |          93 |               0 | CAN     | NA                      |
|   85 | Pat Perez               |        \-0.48 |         229 |              71 | USA     | PGA Tour                |
|   86 | Danny Willett           |        \-0.47 |         214 |              91 | ENG     | PGA Tour                |
|   87 | Thomas Pieters          |        \-0.47 |         245 |              80 | BEL     | European Tour           |
|   88 | Julian Suri             |        \-0.44 |         222 |              66 | USA     | European Tour           |
|   89 | Martin Laird            |        \-0.40 |         241 |              82 | SCO     | PGA Tour                |
|   90 | Ryan Palmer             |        \-0.38 |         186 |              68 | USA     | PGA Tour                |
|   91 | Sam Ryder               |        \-0.38 |         253 |              74 | USA     | PGA Tour                |
|   92 | Thomas Detry            |        \-0.37 |         272 |              88 | BEL     | European Tour           |
|   93 | Jordan L Smith          |        \-0.37 |         280 |              88 | ENG     | European Tour           |
|   94 | Brian Harman            |        \-0.37 |         293 |             101 | USA     | PGA Tour                |
|   95 | Nick Taylor             |        \-0.37 |         288 |              99 | CAN     | PGA Tour                |
|   96 | Charley Hoffman         |        \-0.37 |         274 |              78 | USA     | PGA Tour                |
|   97 | Graeme McDowell         |        \-0.36 |         259 |              76 | NIR     | PGA Tour                |
|   98 | Sam Burns               |        \-0.36 |         170 |              88 | USA     | PGA Tour                |
|   99 | Jorge Campillo          |        \-0.36 |         274 |              88 | ESP     | European Tour           |
|  100 | Russell Henley          |        \-0.35 |         251 |              74 | USA     | PGA Tour                |
|  101 | Aaron Baddeley          |        \-0.35 |         222 |              73 | AUS     | PGA Tour                |
|  102 | Keith Mitchell          |        \-0.34 |         273 |              89 | USA     | PGA Tour                |
|  103 | Jazz Janewattananond    |        \-0.32 |         272 |             109 | THA     | Asian Tour              |
|  104 | Justin Harding          |        \-0.32 |         251 |             101 | RSA     | Asian Tour              |
|  105 | Andy Sullivan           |        \-0.31 |         260 |              86 | ENG     | European Tour           |
|  106 | Shugo Imahira           |        \-0.30 |         291 |             103 | JPN     | Japan Golf Tour         |
|  107 | Siwoo Kim               |        \-0.30 |         275 |              92 | KOR     | PGA Tour                |
|  108 | Victor Dubuisson        |        \-0.28 |         104 |              44 | FRA     | European Tour           |
|  109 | Jhonattan Vegas         |        \-0.28 |         273 |              86 | VEN     | PGA Tour                |
|  110 | Tom Lewis               |        \-0.28 |         216 |              90 | ENG     | European Tour           |
|  111 | Matt Jones              |        \-0.27 |         242 |              88 | AUS     | PGA Tour                |
|  112 | C.T. Pan                |        \-0.26 |         282 |              92 | TPE     | PGA Tour                |
|  113 | Peter Malnati           |        \-0.25 |         279 |              99 | USA     | PGA Tour                |
|  114 | Nick Watney             |        \-0.25 |         238 |              91 | USA     | PGA Tour                |
|  115 | J.J Spaun               |        \-0.25 |         263 |              91 | USA     | PGA Tour                |
|  116 | Michael Thompson        |        \-0.25 |         211 |              81 | USA     | PGA Tour                |
|  117 | Branden Grace           |        \-0.25 |         287 |             100 | RSA     | PGA Tour                |
|  118 | Brice Garnett           |        \-0.24 |         275 |              97 | USA     | PGA Tour                |
|  119 | Kiradech Aphibarnrat    |        \-0.24 |         293 |              87 | THA     | PGA Tour                |
|  120 | Harold Varner III       |        \-0.21 |         298 |              82 | USA     | PGA Tour                |
|  121 | Ryan Armour             |        \-0.20 |         282 |             102 | USA     | PGA Tour                |
|  122 | Joel Dahmen             |        \-0.20 |         243 |              88 | USA     | PGA Tour                |
|  123 | Brian Stuard            |        \-0.20 |         294 |              96 | USA     | PGA Tour                |
|  124 | Mackenzie Hughes        |        \-0.20 |         274 |              72 | CAN     | PGA Tour                |
|  125 | Luke List               |        \-0.19 |         269 |              73 | USA     | PGA Tour                |
|  126 | Juan Sebastian Munoz    |        \-0.19 |         258 |              96 | COL     | PGA Tour                |
|  127 | Cameron Tringale        |        \-0.19 |         239 |              77 | USA     | PGA Tour                |
|  128 | Corey Conners           |        \-0.18 |         295 |              86 | CAN     | PGA Tour                |
|  129 | Shawn Stefani           |        \-0.18 |         260 |              92 | USA     | PGA Tour                |
|  130 | Phil Mickelson          |        \-0.17 |         235 |              74 | USA     | PGA Tour                |
|  131 | Andrea Pavan            |        \-0.17 |         235 |              88 | ITA     | European Tour           |
|  132 | Andrew Landry           |        \-0.16 |         245 |              86 | USA     | PGA Tour                |
|  133 | Zhang Xinjun            |        \-0.16 |         263 |              85 | CHN     | Web.com Tour            |
|  134 | Adam Schenk             |        \-0.16 |         295 |             112 | USA     | PGA Tour                |
|  135 | Mikko Korhonen          |        \-0.14 |         231 |              83 | FIN     | European Tour           |
|  136 | Talor Gooch             |        \-0.13 |         234 |              68 | USA     | PGA Tour                |
|  137 | Benjamin Hebert         |        \-0.12 |         249 |              80 | FRA     | European Tour           |
|  138 | Matthias Schwab         |        \-0.12 |         205 |              90 | AUT     | European Tour           |
|  139 | Scott Stallings         |        \-0.11 |         262 |              82 | USA     | PGA Tour                |
|  140 | Paul Waring             |        \-0.10 |         218 |              71 | ENG     | European Tour           |
|  141 | Troy Merritt            |        \-0.09 |         247 |              61 | USA     | PGA Tour                |
|  142 | Bill Haas               |        \-0.09 |         241 |              70 | USA     | PGA Tour                |
|  143 | Jamie Lovemark          |        \-0.08 |         224 |              34 | USA     | PGA Tour                |
|  144 | Wyndham Clark           |        \-0.08 |         173 |              92 | USA     | PGA Tour                |
|  145 | Jason Dufner            |        \-0.07 |         240 |              80 | USA     | PGA Tour                |
|  146 | Rikuya Hoshino          |        \-0.07 |         213 |              77 | JPN     | Japan Golf Tour         |
|  147 | Carlos Ortiz            |        \-0.06 |         273 |             102 | MEX     | PGA Tour                |
|  148 | Austin Cook             |        \-0.06 |         278 |              80 | USA     | PGA Tour                |
|  149 | Chris Kirk              |        \-0.05 |         248 |              65 | USA     | PGA Tour                |
|  150 | Adrian Otaegui          |        \-0.05 |         269 |              84 | ESP     | European Tour           |
|  151 | Danny Lee               |        \-0.05 |         265 |              88 | NZL     | PGA Tour                |
|  152 | Alexander Bjork         |        \-0.05 |         279 |              73 | SWE     | European Tour           |
|  153 | Harry Higgs             |        \-0.04 |         128 |              97 | USA     | Web.com Tour            |
|  154 | Kevin Tway              |        \-0.03 |         288 |              82 | USA     | PGA Tour                |
|  155 | Sepp Straka             |        \-0.03 |         259 |              92 | AUT     | PGA Tour                |
|  156 | Romain Langasque        |        \-0.03 |         259 |              94 | FRA     | European Challenge Tour |
|  157 | Johnson Wagner          |        \-0.03 |         220 |              62 | USA     | PGA Tour                |
|  158 | D.J. Trahan             |        \-0.03 |         105 |              37 | USA     | PGA Tour                |
|  159 | Josh Teater             |        \-0.03 |         281 |              91 | USA     | PGA Tour                |
|  160 | Brian Gay               |        \-0.02 |         277 |             104 | USA     | PGA Tour                |
|  161 | Fabrizio Zanotti        |        \-0.02 |         227 |              66 | PAR     | European Tour           |
|  162 | Harris English          |        \-0.01 |         261 |              93 | USA     | PGA Tour                |
|  163 | Sanghyun Park           |        \-0.01 |         269 |              89 | KOR     | Asian Tour              |
|  164 | Joseph Bramlett         |        \-0.01 |         147 |              80 | USA     | Web.com Tour            |
|  165 | Lanto Griffin           |          0.00 |         262 |              77 | USA     | Web.com Tour            |
|  166 | Henrik Norlander        |          0.00 |         234 |              84 | SWE     | Web.com Tour            |
|  167 | Cameron Percy           |          0.01 |         221 |              56 | AUS     | Web.com Tour            |
|  168 | Jonas Blixt             |          0.01 |         227 |              80 | SWE     | PGA Tour                |
|  169 | Sunghoon Kang           |          0.01 |         286 |              86 | KOR     | PGA Tour                |
|  170 | Beau Hossler            |          0.01 |         262 |              95 | USA     | PGA Tour                |
|  171 | Lucas Bjerregaard       |          0.02 |         279 |              94 | DEN     | European Tour           |
|  172 | Robert MacIntyre        |          0.02 |         154 |              99 | SCO     | European Tour           |
|  173 | Chris Paisley           |          0.02 |         240 |              80 | ENG     | European Tour           |
|  174 | Bronson Burgoon         |          0.03 |         167 |              63 | USA     | PGA Tour                |
|  175 | Chan Kim                |          0.03 |         144 |              35 | USA     | Japan Golf Tour         |
|  176 | Peter Uihlein           |          0.03 |         256 |              87 | USA     | PGA Tour                |
|  177 | Seungyul Noh            |          0.03 |         102 |               0 | KOR     | NA                      |
|  178 | Jimmy Walker            |          0.03 |         242 |              86 | USA     | PGA Tour                |
|  179 | Patton Kizzire          |          0.03 |         245 |              90 | USA     | PGA Tour                |
|  180 | Christiaan Bezuidenhout |          0.04 |         263 |              99 | RSA     | European Tour           |
|  181 | Stewart Cink            |          0.05 |         241 |              55 | USA     | PGA Tour                |
|  182 | Roger Sloan             |          0.05 |         249 |              96 | CAN     | PGA Tour                |
|  183 | James Hahn              |          0.06 |         224 |              42 | USA     | PGA Tour                |
|  184 | Scott Brown             |          0.06 |         285 |              84 | USA     | PGA Tour                |
|  185 | Chase Seiffert          |          0.08 |          93 |              76 | USA     | Web.com Tour            |
|  186 | J.B. Holmes             |          0.08 |         241 |              70 | USA     | PGA Tour                |
|  187 | Adria Arnaus            |          0.09 |         193 |              98 | ESP     | European Tour           |
|  188 | Wes Roach               |          0.09 |         253 |              85 | USA     | PGA Tour                |
|  189 | Sean Crocker            |          0.09 |         142 |              80 | USA     | European Tour           |
|  190 | George Coetzee          |          0.10 |         267 |              90 | RSA     | European Tour           |
|  191 | David Lipsky            |          0.10 |         278 |              94 | USA     | European Tour           |
|  192 | Cameron Davis           |          0.11 |         197 |              98 | AUS     | PGA Tour                |
|  193 | Robert Rock             |          0.11 |         240 |              81 | ENG     | European Tour           |
|  194 | Charlie Danielson       |          0.11 |          84 |              20 | USA     | PGA Tour Canada         |
|  195 | Victor Perez            |          0.12 |         213 |              86 | FRA     | European Tour           |
|  196 | Max Homa                |          0.12 |         216 |              96 | USA     | PGA Tour                |
|  197 | Adam Long               |          0.12 |         252 |              88 | USA     | PGA Tour                |
|  198 | Calum Hill(Nov1994)     |          0.12 |          86 |              70 | SCO     | European Challenge Tour |
|  199 | Adam Svensson           |          0.13 |         232 |              81 | CAN     | PGA Tour                |
|  200 | Richard Sterne          |          0.13 |         247 |              71 | RSA     | European Tour           |

Current Golf Ratings
