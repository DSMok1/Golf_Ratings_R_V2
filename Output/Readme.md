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
minimum of 40 rounds were included and tournament rounds with a minimum
of 15 ranked players were included.

## Data

The full output is located at
<https://github.com/DSMok1/Golf_Ratings_R_V2/blob/master/Output/Recent_Ratings.csv>

| Rank | Player\_Name            | Player\_Value | Num\_Rounds | Num\_Rounds\_Yr | Country | Tour\_Yr                |
| ---: | :---------------------- | ------------: | ----------: | --------------: | :------ | :---------------------- |
|    1 | Rory McIlroy            |        \-2.25 |         229 |              88 | NIR     | PGA Tour                |
|    2 | Dustin Johnson          |        \-2.20 |         246 |              94 | USA     | PGA Tour                |
|    3 | Jon Rahm                |        \-2.13 |         261 |              94 | ESP     | PGA Tour                |
|    4 | Patrick Cantlay         |        \-2.10 |         192 |              88 | USA     | PGA Tour                |
|    5 | Webb Simpson            |        \-2.03 |         269 |              90 | USA     | PGA Tour                |
|    6 | Justin Rose             |        \-1.97 |         254 |              86 | ENG     | PGA Tour                |
|    7 | Brooks Koepka           |        \-1.92 |         252 |             102 | USA     | PGA Tour                |
|    8 | Justin Thomas           |        \-1.81 |         261 |              92 | USA     | PGA Tour                |
|    9 | Tiger Woods             |        \-1.79 |         114 |              60 | USA     | PGA Tour                |
|   10 | Tommy Fleetwood         |        \-1.74 |         315 |             112 | ENG     | PGA Tour                |
|   11 | Rickie Fowler           |        \-1.69 |         262 |              88 | USA     | PGA Tour                |
|   12 | Paul Casey              |        \-1.60 |         260 |              84 | ENG     | PGA Tour                |
|   13 | Xander Schauffele       |        \-1.57 |         287 |              94 | USA     | PGA Tour                |
|   14 | Jason Day               |        \-1.52 |         208 |              84 | AUS     | PGA Tour                |
|   15 | Matt Kuchar             |        \-1.50 |         298 |              96 | USA     | PGA Tour                |
|   16 | Viktor Hovland          |        \-1.45 |          42 |              36 | NOR     | PGA Tour                |
|   17 | Tony Finau              |        \-1.44 |         298 |             104 | USA     | PGA Tour                |
|   18 | Adam Scott              |        \-1.43 |         225 |              73 | AUS     | PGA Tour                |
|   19 | Bryson DeChambeau       |        \-1.42 |         272 |              94 | USA     | PGA Tour                |
|   20 | Hideki Matsuyama        |        \-1.41 |         278 |             113 | JPN     | PGA Tour                |
|   21 | Henrik Stenson          |        \-1.34 |         236 |              90 | SWE     | PGA Tour                |
|   22 | Francesco Molinari      |        \-1.32 |         242 |              72 | ITA     | PGA Tour                |
|   23 | Shane Lowry             |        \-1.29 |         249 |              77 | IRL     | European Tour           |
|   24 | Marc Leishman           |        \-1.28 |         268 |              90 | AUS     | PGA Tour                |
|   25 | Gary Woodland           |        \-1.28 |         275 |              97 | USA     | PGA Tour                |
|   26 | Louis Oosthuizen        |        \-1.23 |         238 |              92 | RSA     | PGA Tour                |
|   27 | Patrick Reed            |        \-1.20 |         336 |             110 | USA     | PGA Tour                |
|   28 | Matthew Fitzpatrick     |        \-1.19 |         285 |             106 | ENG     | European Tour           |
|   29 | Billy Horschel          |        \-1.12 |         265 |             100 | USA     | PGA Tour                |
|   30 | Rafael Cabrera Bello    |        \-1.09 |         314 |             114 | ESP     | PGA Tour                |
|   31 | Jordan Spieth           |        \-1.09 |         257 |              88 | USA     | PGA Tour                |
|   32 | Sergio Garcia           |        \-1.09 |         241 |              85 | ESP     | PGA Tour                |
|   33 | Charles Howell III      |        \-1.08 |         272 |              90 | USA     | PGA Tour                |
|   34 | Jim Furyk               |        \-1.06 |         175 |              68 | USA     | PGA Tour                |
|   35 | Chez Reavie             |        \-1.05 |         273 |              90 | USA     | PGA Tour                |
|   36 | Byeong Hun An           |        \-1.04 |         287 |              96 | KOR     | PGA Tour                |
|   37 | Lucas Glover            |        \-1.04 |         251 |              88 | USA     | PGA Tour                |
|   38 | Tyrrell Hatton          |        \-1.03 |         266 |              98 | ENG     | PGA Tour                |
|   39 | Ian Poulter             |        \-1.00 |         280 |              92 | ENG     | PGA Tour                |
|   40 | Rory Sabbatini          |        \-0.95 |         257 |              87 | RSA     | PGA Tour                |
|   41 | Scott Piercy            |        \-0.92 |         239 |              88 | USA     | PGA Tour                |
|   42 | Matt Wallace            |        \-0.88 |         268 |             118 | ENG     | European Tour           |
|   43 | Jason Kokrak            |        \-0.88 |         290 |              94 | USA     | PGA Tour                |
|   44 | Lee Westwood            |        \-0.85 |         228 |              73 | ENG     | European Tour           |
|   45 | Kevin Na                |        \-0.82 |         253 |              81 | USA     | PGA Tour                |
|   46 | Adam Hadwin             |        \-0.82 |         279 |              86 | CAN     | PGA Tour                |
|   47 | Haotong Li              |        \-0.81 |         275 |              92 | CHN     | European Tour           |
|   48 | Brandt Snedeker         |        \-0.81 |         255 |             103 | USA     | PGA Tour                |
|   49 | Andrew Putnam           |        \-0.79 |         260 |              92 | USA     | PGA Tour                |
|   50 | Joaquin Niemann         |        \-0.79 |         152 |              96 | CHI     | PGA Tour                |
|   51 | Bubba Watson            |        \-0.77 |         231 |              82 | USA     | PGA Tour                |
|   52 | Kevin Streelman         |        \-0.76 |         273 |              85 | USA     | PGA Tour                |
|   53 | Aaron Wise              |        \-0.74 |         251 |              83 | USA     | PGA Tour                |
|   54 | Sungjae Im              |        \-0.72 |         348 |             130 | KOR     | PGA Tour                |
|   55 | Russell Knox            |        \-0.72 |         292 |              94 | SCO     | PGA Tour                |
|   56 | Emiliano Grillo         |        \-0.69 |         289 |              96 | ARG     | PGA Tour                |
|   57 | Kevin Kisner            |        \-0.68 |         276 |              96 | USA     | PGA Tour                |
|   58 | Bud Cauley              |        \-0.67 |         233 |              75 | USA     | PGA Tour                |
|   59 | Thorbjorn Olesen        |        \-0.67 |         253 |              82 | DEN     | European Tour           |
|   60 | Mike Lorenzo-Vera       |        \-0.66 |         236 |              77 | FRA     | European Tour           |
|   61 | Kyle Stanley            |        \-0.66 |         274 |              90 | USA     | PGA Tour                |
|   62 | Vaughn Taylor           |        \-0.66 |         261 |              83 | USA     | PGA Tour                |
|   63 | Abraham Ancer           |        \-0.65 |         287 |              96 | MEX     | PGA Tour                |
|   64 | Ryan Moore              |        \-0.65 |         250 |              80 | USA     | PGA Tour                |
|   65 | Keegan Bradley          |        \-0.64 |         293 |             102 | USA     | PGA Tour                |
|   66 | Cameron Smith           |        \-0.64 |         278 |             100 | AUS     | PGA Tour                |
|   67 | Daniel Berger           |        \-0.63 |         252 |              80 | USA     | PGA Tour                |
|   68 | Alex Noren              |        \-0.62 |         252 |              84 | SWE     | PGA Tour                |
|   69 | Denny McCarthy          |        \-0.62 |         259 |              95 | USA     | PGA Tour                |
|   70 | Erik van Rooyen         |        \-0.58 |         270 |             101 | RSA     | European Tour           |
|   71 | Dylan Frittelli         |        \-0.55 |         333 |             109 | RSA     | PGA Tour                |
|   72 | Joost Luiten            |        \-0.54 |         222 |              67 | NED     | European Tour           |
|   73 | Martin Kaymer           |        \-0.53 |         266 |              99 | GER     | European Tour           |
|   74 | Scottie Scheffler       |        \-0.53 |          84 |              72 | USA     | Web.com Tour            |
|   75 | Zach Johnson            |        \-0.52 |         252 |              78 | USA     | PGA Tour                |
|   76 | Kevin Chappell          |        \-0.50 |         200 |              26 | USA     | PGA Tour                |
|   77 | Steve Stricker          |        \-0.50 |         116 |              22 | USA     | PGA Tour                |
|   78 | Pat Perez               |        \-0.49 |         229 |              71 | USA     | PGA Tour                |
|   79 | JT Poston               |        \-0.49 |         284 |              88 | USA     | PGA Tour                |
|   80 | Nate Lashley            |        \-0.49 |         256 |              82 | USA     | PGA Tour                |
|   81 | Bernd Wiesberger        |        \-0.48 |         219 |              60 | AUT     | European Tour           |
|   82 | Graham Delaet           |        \-0.48 |          93 |               0 | CAN     | NA                      |
|   83 | Eddie Pepperell         |        \-0.48 |         217 |              80 | ENG     | European Tour           |
|   84 | Danny Willett           |        \-0.48 |         214 |              91 | ENG     | PGA Tour                |
|   85 | Thomas Pieters          |        \-0.47 |         245 |              80 | BEL     | European Tour           |
|   86 | Julian Suri             |        \-0.44 |         222 |              66 | USA     | European Tour           |
|   87 | Martin Laird            |        \-0.40 |         241 |              82 | SCO     | PGA Tour                |
|   88 | Ryan Palmer             |        \-0.39 |         186 |              68 | USA     | PGA Tour                |
|   89 | Sam Ryder               |        \-0.39 |         253 |              74 | USA     | PGA Tour                |
|   90 | Brian Harman            |        \-0.37 |         293 |             101 | USA     | PGA Tour                |
|   91 | Charley Hoffman         |        \-0.37 |         274 |              78 | USA     | PGA Tour                |
|   92 | Nick Taylor             |        \-0.37 |         288 |              99 | CAN     | PGA Tour                |
|   93 | Graeme McDowell         |        \-0.37 |         259 |              76 | NIR     | PGA Tour                |
|   94 | Sam Burns               |        \-0.37 |         170 |              88 | USA     | PGA Tour                |
|   95 | Thomas Detry            |        \-0.37 |         272 |              88 | BEL     | European Tour           |
|   96 | Jordan L Smith          |        \-0.36 |         280 |              88 | ENG     | European Tour           |
|   97 | Russell Henley          |        \-0.36 |         251 |              74 | USA     | PGA Tour                |
|   98 | Aaron Baddeley          |        \-0.36 |         222 |              73 | AUS     | PGA Tour                |
|   99 | Jorge Campillo          |        \-0.35 |         274 |              88 | ESP     | European Tour           |
|  100 | Keith Mitchell          |        \-0.35 |         273 |              89 | USA     | PGA Tour                |
|  101 | Jazz Janewattananond    |        \-0.32 |         272 |             109 | THA     | Asian Tour              |
|  102 | Justin Harding          |        \-0.32 |         251 |             101 | RSA     | Asian Tour              |
|  103 | Siwoo Kim               |        \-0.30 |         275 |              92 | KOR     | PGA Tour                |
|  104 | Andy Sullivan           |        \-0.30 |         260 |              86 | ENG     | European Tour           |
|  105 | Shugo Imahira           |        \-0.29 |         291 |             103 | JPN     | Japan Golf Tour         |
|  106 | Jhonattan Vegas         |        \-0.28 |         273 |              86 | VEN     | PGA Tour                |
|  107 | Matt Jones              |        \-0.28 |         242 |              88 | AUS     | PGA Tour                |
|  108 | Victor Dubuisson        |        \-0.27 |         104 |              44 | FRA     | European Tour           |
|  109 | Tom Lewis               |        \-0.27 |         216 |              90 | ENG     | European Tour           |
|  110 | C.T. Pan                |        \-0.27 |         282 |              92 | TPE     | PGA Tour                |
|  111 | Peter Malnati           |        \-0.26 |         279 |              99 | USA     | PGA Tour                |
|  112 | Michael Thompson        |        \-0.26 |         211 |              81 | USA     | PGA Tour                |
|  113 | J.J Spaun               |        \-0.26 |         263 |              91 | USA     | PGA Tour                |
|  114 | Nick Watney             |        \-0.26 |         238 |              91 | USA     | PGA Tour                |
|  115 | Branden Grace           |        \-0.25 |         287 |             100 | RSA     | PGA Tour                |
|  116 | Brice Garnett           |        \-0.25 |         275 |              97 | USA     | PGA Tour                |
|  117 | Kiradech Aphibarnrat    |        \-0.24 |         293 |              87 | THA     | PGA Tour                |
|  118 | Harold Varner III       |        \-0.22 |         298 |              82 | USA     | PGA Tour                |
|  119 | Ryan Armour             |        \-0.21 |         282 |             102 | USA     | PGA Tour                |
|  120 | Joel Dahmen             |        \-0.21 |         243 |              88 | USA     | PGA Tour                |
|  121 | Mackenzie Hughes        |        \-0.21 |         274 |              72 | CAN     | PGA Tour                |
|  122 | Brian Stuard            |        \-0.20 |         294 |              96 | USA     | PGA Tour                |
|  123 | Cameron Tringale        |        \-0.20 |         239 |              77 | USA     | PGA Tour                |
|  124 | Luke List               |        \-0.20 |         269 |              73 | USA     | PGA Tour                |
|  125 | Juan Sebastian Munoz    |        \-0.20 |         258 |              96 | COL     | PGA Tour                |
|  126 | Corey Conners           |        \-0.19 |         295 |              86 | CAN     | PGA Tour                |
|  127 | Shawn Stefani           |        \-0.19 |         260 |              92 | USA     | PGA Tour                |
|  128 | Phil Mickelson          |        \-0.18 |         235 |              74 | USA     | PGA Tour                |
|  129 | Zhang Xinjun            |        \-0.17 |         263 |              85 | CHN     | Web.com Tour            |
|  130 | Andrew Landry           |        \-0.17 |         245 |              86 | USA     | PGA Tour                |
|  131 | Adam Schenk             |        \-0.16 |         295 |             112 | USA     | PGA Tour                |
|  132 | Andrea Pavan            |        \-0.16 |         235 |              88 | ITA     | European Tour           |
|  133 | Talor Gooch             |        \-0.14 |         234 |              68 | USA     | PGA Tour                |
|  134 | Mikko Korhonen          |        \-0.13 |         231 |              83 | FIN     | European Tour           |
|  135 | Scott Stallings         |        \-0.11 |         262 |              82 | USA     | PGA Tour                |
|  136 | Benjamin Hebert         |        \-0.11 |         249 |              80 | FRA     | European Tour           |
|  137 | Matthias Schwab         |        \-0.11 |         205 |              90 | AUT     | European Tour           |
|  138 | Troy Merritt            |        \-0.10 |         247 |              61 | USA     | PGA Tour                |
|  139 | Bill Haas               |        \-0.10 |         241 |              70 | USA     | PGA Tour                |
|  140 | Paul Waring             |        \-0.09 |         218 |              71 | ENG     | European Tour           |
|  141 | Wyndham Clark           |        \-0.08 |         173 |              92 | USA     | PGA Tour                |
|  142 | Jamie Lovemark          |        \-0.08 |         224 |              34 | USA     | PGA Tour                |
|  143 | Jason Dufner            |        \-0.08 |         240 |              80 | USA     | PGA Tour                |
|  144 | Carlos Ortiz            |        \-0.07 |         273 |             102 | MEX     | PGA Tour                |
|  145 | Austin Cook             |        \-0.06 |         278 |              80 | USA     | PGA Tour                |
|  146 | Chris Kirk              |        \-0.06 |         248 |              65 | USA     | PGA Tour                |
|  147 | Danny Lee               |        \-0.05 |         265 |              88 | NZL     | PGA Tour                |
|  148 | Rikuya Hoshino          |        \-0.05 |         213 |              77 | JPN     | Japan Golf Tour         |
|  149 | Harry Higgs             |        \-0.05 |         128 |              97 | USA     | Web.com Tour            |
|  150 | Adrian Otaegui          |        \-0.05 |         269 |              84 | ESP     | European Tour           |
|  151 | Alexander Bjork         |        \-0.04 |         279 |              73 | SWE     | European Tour           |
|  152 | Johnson Wagner          |        \-0.04 |         220 |              62 | USA     | PGA Tour                |
|  153 | Kevin Tway              |        \-0.04 |         288 |              82 | USA     | PGA Tour                |
|  154 | Sepp Straka             |        \-0.04 |         259 |              92 | AUT     | PGA Tour                |
|  155 | D.J. Trahan             |        \-0.04 |         105 |              37 | USA     | PGA Tour                |
|  156 | Josh Teater             |        \-0.03 |         281 |              91 | USA     | PGA Tour                |
|  157 | Brian Gay               |        \-0.03 |         277 |             104 | USA     | PGA Tour                |
|  158 | Romain Langasque        |        \-0.02 |         259 |              94 | FRA     | European Challenge Tour |
|  159 | Harris English          |        \-0.02 |         261 |              93 | USA     | PGA Tour                |
|  160 | Joseph Bramlett         |        \-0.02 |         147 |              80 | USA     | Web.com Tour            |
|  161 | Lanto Griffin           |        \-0.01 |         262 |              77 | USA     | Web.com Tour            |
|  162 | Fabrizio Zanotti        |        \-0.01 |         227 |              66 | PAR     | European Tour           |
|  163 | Sanghyun Park           |          0.00 |         269 |              89 | KOR     | Asian Tour              |
|  164 | Henrik Norlander        |          0.00 |         234 |              84 | SWE     | Web.com Tour            |
|  165 | Jonas Blixt             |          0.00 |         227 |              80 | SWE     | PGA Tour                |
|  166 | Cameron Percy           |          0.00 |         221 |              56 | AUS     | Web.com Tour            |
|  167 | Sunghoon Kang           |          0.01 |         286 |              86 | KOR     | PGA Tour                |
|  168 | Beau Hossler            |          0.01 |         262 |              95 | USA     | PGA Tour                |
|  169 | Lucas Bjerregaard       |          0.02 |         279 |              94 | DEN     | European Tour           |
|  170 | Bronson Burgoon         |          0.02 |         167 |              63 | USA     | PGA Tour                |
|  171 | Patton Kizzire          |          0.02 |         245 |              90 | USA     | PGA Tour                |
|  172 | Peter Uihlein           |          0.02 |         256 |              87 | USA     | PGA Tour                |
|  173 | Seungyul Noh            |          0.02 |         102 |               0 | KOR     | NA                      |
|  174 | Jimmy Walker            |          0.02 |         242 |              86 | USA     | PGA Tour                |
|  175 | Chris Paisley           |          0.03 |         240 |              80 | ENG     | European Tour           |
|  176 | Robert MacIntyre        |          0.03 |         154 |              99 | SCO     | European Tour           |
|  177 | Chan Kim                |          0.04 |         144 |              35 | USA     | Japan Golf Tour         |
|  178 | Roger Sloan             |          0.04 |         249 |              96 | CAN     | PGA Tour                |
|  179 | Stewart Cink            |          0.05 |         241 |              55 | USA     | PGA Tour                |
|  180 | Christiaan Bezuidenhout |          0.05 |         263 |              99 | RSA     | European Tour           |
|  181 | Scott Brown             |          0.05 |         285 |              84 | USA     | PGA Tour                |
|  182 | James Hahn              |          0.05 |         224 |              42 | USA     | PGA Tour                |
|  183 | J.B. Holmes             |          0.08 |         241 |              70 | USA     | PGA Tour                |
|  184 | Chase Seiffert          |          0.08 |          93 |              76 | USA     | Web.com Tour            |
|  185 | Wes Roach               |          0.08 |         253 |              85 | USA     | PGA Tour                |
|  186 | Charlie Danielson       |          0.09 |          84 |              20 | USA     | PGA Tour Canada         |
|  187 | Adria Arnaus            |          0.10 |         193 |              98 | ESP     | European Tour           |
|  188 | Cameron Davis           |          0.10 |         197 |              98 | AUS     | PGA Tour                |
|  189 | David Lipsky            |          0.10 |         278 |              94 | USA     | European Tour           |
|  190 | Sean Crocker            |          0.10 |         142 |              80 | USA     | European Tour           |
|  191 | Max Homa                |          0.11 |         216 |              96 | USA     | PGA Tour                |
|  192 | George Coetzee          |          0.11 |         267 |              90 | RSA     | European Tour           |
|  193 | Adam Long               |          0.11 |         252 |              88 | USA     | PGA Tour                |
|  194 | Adam Svensson           |          0.12 |         232 |              81 | CAN     | PGA Tour                |
|  195 | Robert Rock             |          0.12 |         240 |              81 | ENG     | European Tour           |
|  196 | Victor Perez            |          0.13 |         213 |              86 | FRA     | European Tour           |
|  197 | Richard Sterne          |          0.13 |         247 |              71 | RSA     | European Tour           |
|  198 | Roberto Castro          |          0.13 |         225 |              76 | USA     | PGA Tour                |
|  199 | Richy Werenski          |          0.14 |         267 |              85 | USA     | PGA Tour                |
|  200 | Doc Redman              |          0.15 |          72 |              48 | USA     | PGA Tour                |

Current Golf Ratings
