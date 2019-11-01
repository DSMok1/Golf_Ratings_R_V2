Current Golf Ratings
================
DSMok1
November 01, 2019

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
|    1 | Rory McIlroy            |        \-2.36 |         237 |              92 | NIR     | PGA Tour                |
|    2 | Jon Rahm                |        \-2.20 |         270 |              95 | ESP     | PGA Tour                |
|    3 | Justin Thomas           |        \-2.16 |         253 |              80 | USA     | PGA Tour                |
|    4 | Patrick Cantlay         |        \-2.04 |         212 |              80 | USA     | PGA Tour                |
|    5 | Tiger Woods             |        \-2.03 |         122 |              40 | USA     | PGA Tour                |
|    6 | Webb Simpson            |        \-1.91 |         269 |              82 | USA     | PGA Tour                |
|    7 | Brooks Koepka           |        \-1.75 |         246 |              84 | USA     | PGA Tour                |
|    8 | Justin Rose             |        \-1.72 |         262 |              88 | ENG     | PGA Tour                |
|    9 | Hideki Matsuyama        |        \-1.70 |         274 |             105 | JPN     | PGA Tour                |
|   10 | Dustin Johnson          |        \-1.69 |         238 |              82 | USA     | PGA Tour                |
|   11 | Paul Casey              |        \-1.64 |         250 |              80 | ENG     | PGA Tour                |
|   12 | Rickie Fowler           |        \-1.54 |         248 |              82 | USA     | PGA Tour                |
|   13 | Tommy Fleetwood         |        \-1.53 |         316 |             108 | ENG     | PGA Tour                |
|   14 | Xander Schauffele       |        \-1.51 |         271 |              78 | USA     | PGA Tour                |
|   15 | Adam Scott              |        \-1.49 |         227 |              69 | AUS     | PGA Tour                |
|   16 | Viktor Hovland          |        \-1.43 |          66 |              60 | NOR     | PGA Tour                |
|   17 | Bryson DeChambeau       |        \-1.43 |         278 |              94 | USA     | PGA Tour                |
|   18 | Tony Finau              |        \-1.38 |         302 |             100 | USA     | PGA Tour                |
|   19 | Gary Woodland           |        \-1.35 |         269 |              85 | USA     | PGA Tour                |
|   20 | Patrick Reed            |        \-1.33 |         328 |             116 | USA     | PGA Tour                |
|   21 | Collin Morikawa         |        \-1.29 |          52 |              44 | USA     | PGA Tour                |
|   22 | Henrik Stenson          |        \-1.25 |         234 |              82 | SWE     | PGA Tour                |
|   23 | Jason Day               |        \-1.24 |         214 |              68 | AUS     | PGA Tour                |
|   24 | Shane Lowry             |        \-1.23 |         249 |              75 | IRL     | European Tour           |
|   25 | Louis Oosthuizen        |        \-1.23 |         230 |              76 | RSA     | PGA Tour                |
|   26 | Billy Horschel          |        \-1.18 |         271 |              92 | USA     | PGA Tour                |
|   27 | Matt Kuchar             |        \-1.13 |         280 |              90 | USA     | PGA Tour                |
|   28 | Rafael Cabrera Bello    |        \-1.08 |         313 |             101 | ESP     | PGA Tour                |
|   29 | Byeong Hun An           |        \-1.02 |         295 |              92 | KOR     | PGA Tour                |
|   30 | Charles Howell III      |        \-1.01 |         282 |              94 | USA     | PGA Tour                |
|   31 | Jordan Spieth           |        \-1.01 |         257 |              83 | USA     | PGA Tour                |
|   32 | Sungjae Im              |        \-1.00 |         360 |             134 | KOR     | PGA Tour                |
|   33 | Adam Hadwin             |        \-0.99 |         275 |              84 | CAN     | PGA Tour                |
|   34 | Ian Poulter             |        \-0.98 |         292 |              88 | ENG     | PGA Tour                |
|   35 | Marc Leishman           |        \-0.95 |         272 |              76 | AUS     | PGA Tour                |
|   36 | Tyrrell Hatton          |        \-0.94 |         260 |              88 | ENG     | PGA Tour                |
|   37 | Joaquin Niemann         |        \-0.92 |         178 |             107 | CHI     | PGA Tour                |
|   38 | Brandt Snedeker         |        \-0.91 |         251 |             103 | USA     | PGA Tour                |
|   39 | Matthew Fitzpatrick     |        \-0.91 |         284 |             101 | ENG     | European Tour           |
|   40 | Sergio Garcia           |        \-0.90 |         243 |              86 | ESP     | PGA Tour                |
|   41 | Jim Furyk               |        \-0.87 |         175 |              76 | USA     | PGA Tour                |
|   42 | Matt Wallace            |        \-0.87 |         274 |             108 | ENG     | European Tour           |
|   43 | Francesco Molinari      |        \-0.87 |         246 |              68 | ITA     | PGA Tour                |
|   44 | Kevin Na                |        \-0.85 |         245 |              69 | USA     | PGA Tour                |
|   45 | Andrew Putnam           |        \-0.85 |         262 |              88 | USA     | PGA Tour                |
|   46 | Lucas Glover            |        \-0.82 |         265 |              98 | USA     | PGA Tour                |
|   47 | Cameron Smith           |        \-0.81 |         268 |              88 | AUS     | PGA Tour                |
|   48 | Danny Willett           |        \-0.77 |         217 |              89 | ENG     | PGA Tour                |
|   49 | Bernd Wiesberger        |        \-0.76 |         213 |              81 | AUT     | European Tour           |
|   50 | Denny McCarthy          |        \-0.76 |         257 |              95 | USA     | PGA Tour                |
|   51 | Rory Sabbatini          |        \-0.75 |         263 |             111 | RSA     | PGA Tour                |
|   52 | Kevin Kisner            |        \-0.75 |         264 |              88 | USA     | PGA Tour                |
|   53 | Chez Reavie             |        \-0.74 |         279 |              90 | USA     | PGA Tour                |
|   54 | Mike Lorenzo-Vera       |        \-0.73 |         229 |              80 | FRA     | European Tour           |
|   55 | Jason Kokrak            |        \-0.72 |         288 |              88 | USA     | PGA Tour                |
|   56 | Erik van Rooyen         |        \-0.71 |         274 |             107 | RSA     | European Tour           |
|   57 | Bud Cauley              |        \-0.67 |         229 |              89 | USA     | PGA Tour                |
|   58 | Dylan Frittelli         |        \-0.65 |         322 |             109 | RSA     | PGA Tour                |
|   59 | Corey Conners           |        \-0.65 |         292 |              94 | CAN     | PGA Tour                |
|   60 | Scottie Scheffler       |        \-0.64 |         114 |             102 | USA     | Web.com Tour            |
|   61 | Joost Luiten            |        \-0.63 |         227 |              92 | NED     | European Tour           |
|   62 | Aaron Wise              |        \-0.62 |         234 |              75 | USA     | PGA Tour                |
|   63 | Ryan Moore              |        \-0.61 |         236 |              72 | USA     | PGA Tour                |
|   64 | Abraham Ancer           |        \-0.60 |         291 |              96 | MEX     | PGA Tour                |
|   65 | Emiliano Grillo         |        \-0.60 |         279 |              82 | ARG     | PGA Tour                |
|   66 | Ryan Palmer             |        \-0.59 |         194 |              66 | USA     | PGA Tour                |
|   67 | JT Poston               |        \-0.59 |         268 |              98 | USA     | PGA Tour                |
|   68 | Thorbjorn Olesen        |        \-0.58 |         233 |              60 | DEN     | European Tour           |
|   69 | Alex Noren              |        \-0.58 |         250 |              90 | SWE     | PGA Tour                |
|   70 | Haotong Li              |        \-0.58 |         261 |              82 | CHN     | European Tour           |
|   71 | Daniel Berger           |        \-0.56 |         242 |              80 | USA     | PGA Tour                |
|   72 | Matt Jones              |        \-0.54 |         240 |              94 | AUS     | PGA Tour                |
|   73 | Andrea Pavan            |        \-0.54 |         231 |              94 | ITA     | European Tour           |
|   74 | Lanto Griffin           |        \-0.53 |         270 |              93 | USA     | Web.com Tour            |
|   75 | Russell Knox            |        \-0.53 |         284 |             102 | SCO     | PGA Tour                |
|   76 | Brian Harman            |        \-0.52 |         287 |              99 | USA     | PGA Tour                |
|   77 | Kyle Stanley            |        \-0.51 |         272 |              80 | USA     | PGA Tour                |
|   78 | Juan Sebastian Munoz    |        \-0.50 |         260 |             104 | COL     | PGA Tour                |
|   79 | Harold Varner III       |        \-0.50 |         308 |              98 | USA     | PGA Tour                |
|   80 | Pat Perez               |        \-0.50 |         241 |              61 | USA     | PGA Tour                |
|   81 | Matthias Schwab         |        \-0.49 |         230 |              91 | AUT     | European Tour           |
|   82 | Matthew Wolff           |        \-0.48 |          41 |              37 | USA     | PGA Tour                |
|   83 | Keegan Bradley          |        \-0.48 |         291 |              96 | USA     | PGA Tour                |
|   84 | Zach Johnson            |        \-0.48 |         240 |              72 | USA     | PGA Tour                |
|   85 | Bubba Watson            |        \-0.48 |         217 |              68 | USA     | PGA Tour                |
|   86 | Vaughn Taylor           |        \-0.47 |         263 |              98 | USA     | PGA Tour                |
|   87 | Shugo Imahira           |        \-0.45 |         295 |             111 | JPN     | Japan Golf Tour         |
|   88 | Bronson Burgoon         |        \-0.45 |         185 |              73 | USA     | PGA Tour                |
|   89 | Steve Stricker          |        \-0.42 |         104 |              20 | USA     | PGA Tour                |
|   90 | Thomas Pieters          |        \-0.42 |         246 |              86 | BEL     | European Tour           |
|   91 | Thomas Detry            |        \-0.42 |         264 |              90 | BEL     | European Tour           |
|   92 | Nick Taylor             |        \-0.40 |         290 |             107 | CAN     | PGA Tour                |
|   93 | Nate Lashley            |        \-0.39 |         240 |              80 | USA     | PGA Tour                |
|   94 | Tom Lewis               |        \-0.39 |         218 |              74 | ENG     | European Tour           |
|   95 | Harris English          |        \-0.37 |         267 |             113 | USA     | PGA Tour                |
|   96 | Kevin Streelman         |        \-0.36 |         273 |              91 | USA     | PGA Tour                |
|   97 | Martin Kaymer           |        \-0.36 |         262 |              95 | GER     | European Tour           |
|   98 | Cameron Tringale        |        \-0.36 |         247 |              77 | USA     | PGA Tour                |
|   99 | Andrew Johnston         |        \-0.36 |         193 |              65 | ENG     | European Tour           |
|  100 | Paul Waring             |        \-0.36 |         227 |              76 | ENG     | European Tour           |
|  101 | Carlos Ortiz            |        \-0.35 |         277 |              96 | MEX     | PGA Tour                |
|  102 | Aaron Baddeley          |        \-0.34 |         210 |              61 | AUS     | PGA Tour                |
|  103 | Robert MacIntyre        |        \-0.33 |         176 |              89 | SCO     | European Tour           |
|  104 | Sam Ryder               |        \-0.32 |         249 |              80 | USA     | PGA Tour                |
|  105 | Adam Schenk             |        \-0.32 |         297 |             112 | USA     | PGA Tour                |
|  106 | Zhang Xinjun            |        \-0.31 |         275 |             107 | CHN     | Web.com Tour            |
|  107 | Cameron Percy           |        \-0.31 |         221 |              64 | AUS     | Web.com Tour            |
|  108 | Graeme McDowell         |        \-0.31 |         256 |              82 | NIR     | PGA Tour                |
|  109 | Nick Watney             |        \-0.30 |         250 |              85 | USA     | PGA Tour                |
|  110 | Kevin Tway              |        \-0.27 |         278 |              78 | USA     | PGA Tour                |
|  111 | Chan Kim                |        \-0.26 |         152 |              65 | USA     | Japan Golf Tour         |
|  112 | Eddie Pepperell         |        \-0.25 |         220 |              68 | ENG     | European Tour           |
|  113 | Sunghoon Kang           |        \-0.22 |         290 |              95 | KOR     | PGA Tour                |
|  114 | Jordan L Smith          |        \-0.21 |         274 |              84 | ENG     | European Tour           |
|  115 | Mark Hubbard            |        \-0.21 |         263 |              95 | USA     | Web.com Tour            |
|  116 | Danny Lee               |        \-0.21 |         265 |              86 | NZL     | PGA Tour                |
|  117 | Russell Henley          |        \-0.21 |         251 |              84 | USA     | PGA Tour                |
|  118 | Brian Stuard            |        \-0.20 |         290 |             100 | USA     | PGA Tour                |
|  119 | Keith Mitchell          |        \-0.19 |         267 |              81 | USA     | PGA Tour                |
|  120 | Wyndham Clark           |        \-0.19 |         195 |              93 | USA     | PGA Tour                |
|  121 | Brice Garnett           |        \-0.18 |         271 |              91 | USA     | PGA Tour                |
|  122 | Siwoo Kim               |        \-0.17 |         269 |              92 | KOR     | PGA Tour                |
|  123 | Jhonattan Vegas         |        \-0.16 |         259 |              82 | VEN     | PGA Tour                |
|  124 | D.J. Trahan             |        \-0.15 |         117 |              57 | USA     | PGA Tour                |
|  125 | Doc Redman              |        \-0.15 |          90 |              62 | USA     | PGA Tour                |
|  126 | Kiradech Aphibarnrat    |        \-0.15 |         294 |              92 | THA     | PGA Tour                |
|  127 | Austin Cook             |        \-0.14 |         268 |              70 | USA     | PGA Tour                |
|  128 | Ryan Armour             |        \-0.14 |         276 |              94 | USA     | PGA Tour                |
|  129 | Christiaan Bezuidenhout |        \-0.13 |         254 |              86 | RSA     | European Tour           |
|  130 | Phil Mickelson          |        \-0.11 |         235 |              66 | USA     | PGA Tour                |
|  131 | Charley Hoffman         |        \-0.11 |         276 |              80 | USA     | PGA Tour                |
|  132 | Scott Piercy            |        \-0.11 |         237 |              90 | USA     | PGA Tour                |
|  133 | Lee Westwood            |        \-0.10 |         228 |              69 | ENG     | European Tour           |
|  134 | C.T. Pan                |        \-0.09 |         276 |              84 | TPE     | PGA Tour                |
|  135 | Ryo Ishikawa            |        \-0.09 |         222 |              69 | JPN     | Japan Golf Tour         |
|  136 | Scott Harrington        |        \-0.09 |         204 |              87 | USA     | Web.com Tour            |
|  137 | Beau Hossler            |        \-0.08 |         284 |              95 | USA     | PGA Tour                |
|  138 | Talor Gooch             |        \-0.08 |         234 |              72 | USA     | PGA Tour                |
|  139 | Peter Malnati           |        \-0.08 |         267 |              91 | USA     | PGA Tour                |
|  140 | Victor Perez            |        \-0.08 |         219 |              74 | FRA     | European Tour           |
|  141 | Luke List               |        \-0.07 |         268 |              75 | USA     | PGA Tour                |
|  142 | Kevin Chappell          |        \-0.07 |         192 |              22 | USA     | PGA Tour                |
|  143 | Martin Laird            |        \-0.07 |         243 |              92 | SCO     | PGA Tour                |
|  144 | Andrew Landry           |        \-0.07 |         243 |              82 | USA     | PGA Tour                |
|  145 | Stewart Cink            |        \-0.07 |         245 |              57 | USA     | PGA Tour                |
|  146 | Richy Werenski          |        \-0.06 |         261 |              99 | USA     | PGA Tour                |
|  147 | Sam Horsfield           |        \-0.06 |         187 |              84 | ENG     | European Tour           |
|  148 | Marcus Kinhult          |        \-0.05 |         228 |              78 | SWE     | European Tour           |
|  149 | Troy Merritt            |        \-0.05 |         258 |              79 | USA     | PGA Tour                |
|  150 | Brian Gay               |        \-0.05 |         283 |              96 | USA     | PGA Tour                |
|  151 | Joel Dahmen             |        \-0.04 |         261 |              98 | USA     | PGA Tour                |
|  152 | Harry Higgs             |        \-0.04 |         146 |             105 | USA     | Web.com Tour            |
|  153 | Romain Langasque        |        \-0.04 |         246 |              83 | FRA     | European Tour           |
|  154 | Justin Harding          |        \-0.03 |         248 |              95 | RSA     | European Tour           |
|  155 | Calum Hill(Nov1994)     |        \-0.03 |         116 |              68 | SCO     | European Challenge Tour |
|  156 | Peter Uihlein           |        \-0.02 |         276 |              89 | USA     | PGA Tour                |
|  157 | Victor Dubuisson        |        \-0.02 |         120 |              60 | FRA     | European Tour           |
|  158 | Mikko Korhonen          |        \-0.01 |         231 |              84 | FIN     | European Tour           |
|  159 | Richard Sterne          |        \-0.01 |         239 |              71 | RSA     | European Tour           |
|  160 | Branden Grace           |        \-0.01 |         279 |              97 | RSA     | PGA Tour                |
|  161 | Jazz Janewattananond    |          0.00 |         306 |             111 | THA     | Asian Tour              |
|  162 | Sam Burns               |          0.01 |         180 |              84 | USA     | PGA Tour                |
|  163 | Michael Thompson        |          0.01 |         205 |              77 | USA     | PGA Tour                |
|  164 | Cameron Champ           |          0.02 |         180 |              85 | USA     | PGA Tour                |
|  165 | Chris Kirk              |          0.02 |         226 |              43 | USA     | PGA Tour                |
|  166 | Kurt Kitayama           |          0.03 |         224 |              91 | USA     | European Tour           |
|  167 | Benjamin Hebert         |          0.03 |         242 |              74 | FRA     | European Tour           |
|  168 | Scott Stallings         |          0.03 |         252 |              86 | USA     | PGA Tour                |
|  169 | Kramer Hickok           |          0.03 |         248 |              97 | USA     | PGA Tour                |
|  170 | Sepp Straka             |          0.04 |         263 |              82 | AUT     | PGA Tour                |
|  171 | Richie Ramsay           |          0.05 |         240 |              76 | SCO     | European Tour           |
|  172 | Chris Paisley           |          0.06 |         241 |              89 | ENG     | European Tour           |
|  173 | Adam Long               |          0.07 |         260 |              88 | USA     | PGA Tour                |
|  174 | James Hahn              |          0.07 |         214 |              31 | USA     | PGA Tour                |
|  175 | Chesson Hadley          |          0.08 |         267 |              78 | USA     | PGA Tour                |
|  176 | Fabian Gomez            |          0.08 |         262 |             100 | ARG     | PGA Tour                |
|  177 | Adria Arnaus            |          0.08 |         220 |              89 | ESP     | European Tour           |
|  178 | Lucas Herbert           |          0.11 |         188 |              80 | AUS     | European Tour           |
|  179 | Tom Hoge                |          0.11 |         271 |             102 | USA     | PGA Tour                |
|  180 | Adam Svensson           |          0.12 |         226 |              77 | CAN     | PGA Tour                |
|  181 | Alexander Bjork         |          0.13 |         271 |              82 | SWE     | European Tour           |
|  182 | Matt Every              |          0.13 |         218 |              65 | USA     | PGA Tour                |
|  183 | Andy Sullivan           |          0.13 |         269 |              87 | ENG     | European Tour           |
|  184 | Rikuya Hoshino          |          0.13 |         239 |              93 | JPN     | Japan Golf Tour         |
|  185 | Joseph Bramlett         |          0.14 |         167 |              88 | USA     | Web.com Tour            |
|  186 | Jason Dufner            |          0.14 |         230 |              72 | USA     | PGA Tour                |
|  187 | George Coetzee          |          0.15 |         268 |              96 | RSA     | European Tour           |
|  188 | Jonas Blixt             |          0.15 |         217 |              72 | SWE     | PGA Tour                |
|  189 | Aaron Rai               |          0.16 |         252 |              90 | ENG     | European Tour           |
|  190 | Callum Shinkwin         |          0.16 |         174 |              52 | ENG     | European Tour           |
|  191 | J.B. Holmes             |          0.16 |         227 |              60 | USA     | PGA Tour                |
|  192 | Mackenzie Hughes        |          0.16 |         258 |              82 | CAN     | PGA Tour                |
|  193 | Roger Sloan             |          0.17 |         243 |              90 | CAN     | PGA Tour                |
|  194 | Jason Scrivener         |          0.17 |         267 |              91 | AUS     | European Tour           |
|  195 | Roberto Castro          |          0.17 |         211 |              80 | USA     | PGA Tour                |
|  196 | Seungyul Noh            |          0.17 |          94 |               8 | KOR     | Asian Tour              |
|  197 | Henrik Norlander        |          0.17 |         236 |              88 | SWE     | Web.com Tour            |
|  198 | Joachim B Hansen        |          0.18 |         258 |              91 | DEN     | European Tour           |
|  199 | Junggon Hwang           |          0.18 |         275 |              83 | KOR     | Japan Golf Tour         |
|  200 | Ryuko Tokimatsu         |          0.20 |         252 |              85 | JPN     | Japan Golf Tour         |

Current Golf Ratings
