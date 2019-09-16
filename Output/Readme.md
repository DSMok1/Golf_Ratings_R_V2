Current Golf Ratings
================
DSMok1
September 16, 2019

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
|    1 | Rory McIlroy            |        \-2.42 |         233 |              88 | NIR     | PGA Tour                |
|    2 | Jon Rahm                |        \-2.22 |         263 |              88 | ESP     | PGA Tour                |
|    3 | Justin Thomas           |        \-2.09 |         257 |              84 | USA     | PGA Tour                |
|    4 | Patrick Cantlay         |        \-2.08 |         204 |              80 | USA     | PGA Tour                |
|    5 | Brooks Koepka           |        \-1.93 |         248 |              94 | USA     | PGA Tour                |
|    6 | Webb Simpson            |        \-1.92 |         267 |              82 | USA     | PGA Tour                |
|    7 | Paul Casey              |        \-1.81 |         256 |              86 | ENG     | PGA Tour                |
|    8 | Justin Rose             |        \-1.78 |         250 |              84 | ENG     | PGA Tour                |
|    9 | Dustin Johnson          |        \-1.76 |         246 |              86 | USA     | PGA Tour                |
|   10 | Adam Scott              |        \-1.74 |         225 |              65 | AUS     | PGA Tour                |
|   11 | Tommy Fleetwood         |        \-1.73 |         319 |             108 | ENG     | PGA Tour                |
|   12 | Tiger Woods             |        \-1.65 |         118 |              44 | USA     | PGA Tour                |
|   13 | Rickie Fowler           |        \-1.61 |         252 |              86 | USA     | PGA Tour                |
|   14 | Tony Finau              |        \-1.60 |         294 |              96 | USA     | PGA Tour                |
|   15 | Viktor Hovland          |        \-1.60 |          54 |              48 | NOR     | PGA Tour                |
|   16 | Hideki Matsuyama        |        \-1.57 |         276 |             103 | JPN     | PGA Tour                |
|   17 | Xander Schauffele       |        \-1.51 |         283 |              90 | USA     | PGA Tour                |
|   18 | Louis Oosthuizen        |        \-1.40 |         234 |              88 | RSA     | PGA Tour                |
|   19 | Collin Morikawa         |        \-1.38 |          38 |              32 | USA     | PGA Tour                |
|   20 | Henrik Stenson          |        \-1.37 |         232 |              76 | SWE     | PGA Tour                |
|   21 | Bryson DeChambeau       |        \-1.37 |         276 |              88 | USA     | PGA Tour                |
|   22 | Jason Day               |        \-1.31 |         206 |              72 | AUS     | PGA Tour                |
|   23 | Patrick Reed            |        \-1.25 |         332 |             112 | USA     | PGA Tour                |
|   24 | Gary Woodland           |        \-1.21 |         269 |              89 | USA     | PGA Tour                |
|   25 | Matt Kuchar             |        \-1.21 |         290 |              94 | USA     | PGA Tour                |
|   26 | Shane Lowry             |        \-1.18 |         247 |              79 | IRL     | European Tour           |
|   27 | Marc Leishman           |        \-1.17 |         264 |              80 | AUS     | PGA Tour                |
|   28 | Jordan Spieth           |        \-1.17 |         253 |              79 | USA     | PGA Tour                |
|   29 | Matthew Fitzpatrick     |        \-1.16 |         283 |              96 | ENG     | European Tour           |
|   30 | Billy Horschel          |        \-1.14 |         259 |              96 | USA     | PGA Tour                |
|   31 | Sergio Garcia           |        \-1.14 |         239 |              81 | ESP     | European Tour           |
|   32 | Ian Poulter             |        \-1.11 |         288 |              82 | ENG     | PGA Tour                |
|   33 | Chez Reavie             |        \-1.08 |         273 |              92 | USA     | PGA Tour                |
|   34 | Jason Kokrak            |        \-1.06 |         286 |              90 | USA     | PGA Tour                |
|   35 | Joaquin Niemann         |        \-1.04 |         164 |             100 | CHI     | PGA Tour                |
|   36 | Brandt Snedeker         |        \-1.02 |         251 |             103 | USA     | PGA Tour                |
|   37 | Tyrrell Hatton          |        \-1.01 |         262 |              82 | ENG     | PGA Tour                |
|   38 | Byeong Hun An           |        \-1.01 |         291 |              88 | KOR     | PGA Tour                |
|   39 | Lucas Glover            |        \-1.00 |         255 |              98 | USA     | PGA Tour                |
|   40 | Rafael Cabrera Bello    |        \-0.99 |         310 |              94 | ESP     | PGA Tour                |
|   41 | Kevin Kisner            |        \-0.96 |         272 |              88 | USA     | PGA Tour                |
|   42 | Francesco Molinari      |        \-0.96 |         244 |              66 | ITA     | PGA Tour                |
|   43 | Charles Howell III      |        \-0.95 |         272 |              90 | USA     | PGA Tour                |
|   44 | Jim Furyk               |        \-0.92 |         167 |              68 | USA     | PGA Tour                |
|   45 | Matt Wallace            |        \-0.88 |         266 |             104 | ENG     | European Tour           |
|   46 | Andrew Putnam           |        \-0.87 |         254 |              84 | USA     | PGA Tour                |
|   47 | Erik van Rooyen         |        \-0.87 |         271 |             103 | RSA     | European Tour           |
|   48 | Scott Piercy            |        \-0.87 |         235 |              86 | USA     | PGA Tour                |
|   49 | Matthew Wolff           |        \-0.85 |          29 |              29 | USA     | PGA Tour                |
|   50 | Mike Lorenzo-Vera       |        \-0.85 |         232 |              73 | FRA     | European Tour           |
|   51 | Sungjae Im              |        \-0.85 |         358 |             126 | KOR     | PGA Tour                |
|   52 | Haotong Li              |        \-0.84 |         259 |              86 | CHN     | European Tour           |
|   53 | Abraham Ancer           |        \-0.83 |         285 |              96 | MEX     | PGA Tour                |
|   54 | Scottie Scheffler       |        \-0.81 |         102 |              86 | USA     | Web.com Tour            |
|   55 | Rory Sabbatini          |        \-0.81 |         257 |             101 | RSA     | PGA Tour                |
|   56 | Adam Hadwin             |        \-0.79 |         269 |              82 | CAN     | PGA Tour                |
|   57 | Vaughn Taylor           |        \-0.78 |         253 |              91 | USA     | PGA Tour                |
|   58 | Thomas Pieters          |        \-0.77 |         249 |              78 | BEL     | European Tour           |
|   59 | Aaron Wise              |        \-0.76 |         236 |              73 | USA     | PGA Tour                |
|   60 | Ryan Moore              |        \-0.76 |         234 |              74 | USA     | PGA Tour                |
|   61 | Kevin Na                |        \-0.74 |         247 |              67 | USA     | PGA Tour                |
|   62 | Bud Cauley              |        \-0.73 |         225 |              79 | USA     | PGA Tour                |
|   63 | Thorbjorn Olesen        |        \-0.69 |         247 |              66 | DEN     | European Tour           |
|   64 | Kevin Streelman         |        \-0.67 |         263 |              81 | USA     | PGA Tour                |
|   65 | Joost Luiten            |        \-0.66 |         226 |              75 | NED     | European Tour           |
|   66 | Emiliano Grillo         |        \-0.66 |         279 |              82 | ARG     | PGA Tour                |
|   67 | Cameron Smith           |        \-0.65 |         272 |              86 | AUS     | PGA Tour                |
|   68 | Bernd Wiesberger        |        \-0.63 |         217 |              70 | AUT     | European Tour           |
|   69 | Lee Westwood            |        \-0.63 |         228 |              67 | ENG     | European Tour           |
|   70 | Bubba Watson            |        \-0.62 |         219 |              66 | USA     | PGA Tour                |
|   71 | Keegan Bradley          |        \-0.62 |         289 |              94 | USA     | PGA Tour                |
|   72 | Kyle Stanley            |        \-0.60 |         264 |              80 | USA     | PGA Tour                |
|   73 | Daniel Berger           |        \-0.57 |         240 |              70 | USA     | PGA Tour                |
|   74 | Matthias Schwab         |        \-0.57 |         217 |              92 | AUT     | European Tour           |
|   75 | JT Poston               |        \-0.57 |         274 |              96 | USA     | PGA Tour                |
|   76 | Denny McCarthy          |        \-0.56 |         249 |              89 | USA     | PGA Tour                |
|   77 | Russell Knox            |        \-0.55 |         280 |              86 | SCO     | PGA Tour                |
|   78 | Graham Delaet           |        \-0.54 |          83 |               0 | CAN     | NA                      |
|   79 | Alex Noren              |        \-0.54 |         250 |              78 | SWE     | PGA Tour                |
|   80 | Dylan Frittelli         |        \-0.53 |         325 |             107 | RSA     | PGA Tour                |
|   81 | Danny Willett           |        \-0.53 |         212 |              85 | ENG     | PGA Tour                |
|   82 | Tom Lewis               |        \-0.53 |         216 |              78 | ENG     | European Tour           |
|   83 | Brian Harman            |        \-0.52 |         283 |              89 | USA     | PGA Tour                |
|   84 | Martin Kaymer           |        \-0.50 |         260 |              89 | GER     | European Tour           |
|   85 | Steve Stricker          |        \-0.49 |         104 |              20 | USA     | PGA Tour                |
|   86 | Thomas Detry            |        \-0.48 |         266 |              86 | BEL     | European Tour           |
|   87 | Andrea Pavan            |        \-0.48 |         231 |              90 | ITA     | European Tour           |
|   88 | Zach Johnson            |        \-0.48 |         234 |              64 | USA     | PGA Tour                |
|   89 | Matt Jones              |        \-0.47 |         240 |              84 | AUS     | PGA Tour                |
|   90 | Corey Conners           |        \-0.44 |         294 |              92 | CAN     | PGA Tour                |
|   91 | Pat Perez               |        \-0.43 |         231 |              59 | USA     | PGA Tour                |
|   92 | Nate Lashley            |        \-0.43 |         248 |              76 | USA     | PGA Tour                |
|   93 | Eddie Pepperell         |        \-0.41 |         215 |              74 | ENG     | European Tour           |
|   94 | C.T. Pan                |        \-0.40 |         276 |              84 | TPE     | PGA Tour                |
|   95 | Shugo Imahira           |        \-0.39 |         299 |             105 | JPN     | Japan Golf Tour         |
|   96 | Nick Taylor             |        \-0.38 |         286 |              97 | CAN     | PGA Tour                |
|   97 | Harold Varner III       |        \-0.38 |         300 |              86 | USA     | PGA Tour                |
|   98 | Juan Sebastian Munoz    |        \-0.37 |         254 |              92 | COL     | PGA Tour                |
|   99 | Aaron Baddeley          |        \-0.35 |         208 |              61 | AUS     | PGA Tour                |
|  100 | Jhonattan Vegas         |        \-0.35 |         261 |              74 | VEN     | PGA Tour                |
|  101 | Russell Henley          |        \-0.33 |         245 |              70 | USA     | PGA Tour                |
|  102 | Sam Burns               |        \-0.33 |         172 |              78 | USA     | PGA Tour                |
|  103 | Sam Ryder               |        \-0.32 |         243 |              72 | USA     | PGA Tour                |
|  104 | Keith Mitchell          |        \-0.31 |         265 |              83 | USA     | PGA Tour                |
|  105 | Bronson Burgoon         |        \-0.29 |         171 |              63 | USA     | PGA Tour                |
|  106 | Andy Sullivan           |        \-0.29 |         264 |              90 | ENG     | European Tour           |
|  107 | Joel Dahmen             |        \-0.28 |         249 |              96 | USA     | PGA Tour                |
|  108 | Kevin Tway              |        \-0.27 |         280 |              80 | USA     | PGA Tour                |
|  109 | Graeme McDowell         |        \-0.27 |         253 |              78 | NIR     | PGA Tour                |
|  110 | Charley Hoffman         |        \-0.27 |         264 |              70 | USA     | PGA Tour                |
|  111 | Ryan Palmer             |        \-0.27 |         182 |              66 | USA     | PGA Tour                |
|  112 | Wyndham Clark           |        \-0.26 |         181 |              91 | USA     | PGA Tour                |
|  113 | Nick Watney             |        \-0.26 |         244 |              83 | USA     | PGA Tour                |
|  114 | Justin Harding          |        \-0.26 |         250 |             102 | RSA     | Asian Tour              |
|  115 | Martin Laird            |        \-0.25 |         235 |              80 | SCO     | PGA Tour                |
|  116 | Victor Dubuisson        |        \-0.25 |         112 |              52 | FRA     | European Tour           |
|  117 | D.J. Trahan             |        \-0.24 |         115 |              47 | USA     | PGA Tour                |
|  118 | Branden Grace           |        \-0.23 |         281 |              94 | RSA     | PGA Tour                |
|  119 | Adam Schenk             |        \-0.23 |         287 |             108 | USA     | PGA Tour                |
|  120 | Ryan Armour             |        \-0.23 |         276 |              92 | USA     | PGA Tour                |
|  121 | Kiradech Aphibarnrat    |        \-0.22 |         291 |              85 | THA     | PGA Tour                |
|  122 | Michael Thompson        |        \-0.22 |         203 |              79 | USA     | PGA Tour                |
|  123 | Alexander Bjork         |        \-0.22 |         277 |              81 | SWE     | European Tour           |
|  124 | Troy Merritt            |        \-0.20 |         255 |              73 | USA     | PGA Tour                |
|  125 | Robert MacIntyre        |        \-0.20 |         164 |              93 | SCO     | European Tour           |
|  126 | Siwoo Kim               |        \-0.19 |         265 |              84 | KOR     | PGA Tour                |
|  127 | Peter Malnati           |        \-0.19 |         267 |              91 | USA     | PGA Tour                |
|  128 | Brice Garnett           |        \-0.19 |         271 |              85 | USA     | PGA Tour                |
|  129 | Cameron Tringale        |        \-0.18 |         241 |              71 | USA     | PGA Tour                |
|  130 | Paul Waring             |        \-0.18 |         230 |              75 | ENG     | European Tour           |
|  131 | Brian Stuard            |        \-0.17 |         280 |              94 | USA     | PGA Tour                |
|  132 | Chan Kim                |        \-0.17 |         152 |              45 | USA     | Japan Golf Tour         |
|  133 | Austin Cook             |        \-0.17 |         266 |              64 | USA     | PGA Tour                |
|  134 | Andrew Landry           |        \-0.17 |         237 |              74 | USA     | PGA Tour                |
|  135 | Joseph Bramlett         |        \-0.16 |         165 |              82 | USA     | Web.com Tour            |
|  136 | Jordan L Smith          |        \-0.16 |         266 |              84 | ENG     | European Tour           |
|  137 | Harris English          |        \-0.16 |         259 |             101 | USA     | PGA Tour                |
|  138 | Ryo Ishikawa            |        \-0.15 |         216 |              65 | JPN     | Japan Golf Tour         |
|  139 | Harry Higgs             |        \-0.15 |         136 |             107 | USA     | Web.com Tour            |
|  140 | Lanto Griffin           |        \-0.15 |         268 |              77 | USA     | Web.com Tour            |
|  141 | Kevin Chappell          |        \-0.14 |         198 |              20 | USA     | PGA Tour                |
|  142 | Phil Mickelson          |        \-0.14 |         233 |              64 | USA     | PGA Tour                |
|  143 | Grayson Murray          |        \-0.14 |         226 |              54 | USA     | PGA Tour                |
|  144 | Jazz Janewattananond    |        \-0.13 |         286 |             107 | THA     | Asian Tour              |
|  145 | J.J Spaun               |        \-0.12 |         255 |              81 | USA     | PGA Tour                |
|  146 | Richy Werenski          |        \-0.11 |         267 |              93 | USA     | PGA Tour                |
|  147 | Andrew Johnston         |        \-0.10 |         199 |              67 | ENG     | European Tour           |
|  148 | Luke List               |        \-0.10 |         263 |              63 | USA     | PGA Tour                |
|  149 | Talor Gooch             |        \-0.10 |         226 |              66 | USA     | PGA Tour                |
|  150 | Junggon Hwang           |        \-0.07 |         289 |              87 | KOR     | Japan Golf Tour         |
|  151 | Peter Uihlein           |        \-0.07 |         270 |              85 | USA     | PGA Tour                |
|  152 | Jason Dufner            |        \-0.07 |         228 |              72 | USA     | PGA Tour                |
|  153 | Sanghyun Park           |        \-0.07 |         275 |              93 | KOR     | Asian Tour              |
|  154 | Mackenzie Hughes        |        \-0.07 |         266 |              76 | CAN     | PGA Tour                |
|  155 | Jorge Campillo          |        \-0.06 |         276 |              88 | ESP     | European Tour           |
|  156 | Zhang Xinjun            |        \-0.05 |         273 |              93 | CHN     | Web.com Tour            |
|  157 | Cameron Percy           |        \-0.05 |         221 |              56 | AUS     | Web.com Tour            |
|  158 | Benjamin Hebert         |        \-0.05 |         243 |              72 | FRA     | European Tour           |
|  159 | Chris Kirk              |        \-0.05 |         234 |              45 | USA     | PGA Tour                |
|  160 | Adria Arnaus            |        \-0.04 |         205 |              94 | ESP     | European Tour           |
|  161 | Mikko Korhonen          |        \-0.03 |         233 |              83 | FIN     | European Tour           |
|  162 | Sam Horsfield           |        \-0.03 |         167 |              77 | ENG     | European Tour           |
|  163 | Callum Shinkwin         |        \-0.03 |         178 |              50 | ENG     | European Tour           |
|  164 | Romain Langasque        |        \-0.03 |         249 |              80 | FRA     | European Tour           |
|  165 | Mark Hubbard            |        \-0.02 |         255 |              85 | USA     | Web.com Tour            |
|  166 | Carlos Ortiz            |        \-0.02 |         267 |              90 | MEX     | PGA Tour                |
|  167 | Christiaan Bezuidenhout |        \-0.02 |         259 |              91 | RSA     | European Tour           |
|  168 | Kramer Hickok           |        \-0.02 |         240 |              95 | USA     | PGA Tour                |
|  169 | Henrik Norlander        |        \-0.01 |         234 |              84 | SWE     | Web.com Tour            |
|  170 | Lucas Bjerregaard       |        \-0.01 |         271 |              90 | DEN     | European Tour           |
|  171 | Calum Hill(Nov1994)     |        \-0.01 |         100 |              72 | SCO     | European Challenge Tour |
|  172 | Bill Haas               |          0.00 |         229 |              68 | USA     | PGA Tour                |
|  173 | Rikuya Hoshino          |          0.00 |         227 |              83 | JPN     | Japan Golf Tour         |
|  174 | Danny Lee               |          0.00 |         263 |              80 | NZL     | PGA Tour                |
|  175 | Beau Hossler            |          0.00 |         274 |              91 | USA     | PGA Tour                |
|  176 | Scott Stallings         |          0.00 |         254 |              78 | USA     | PGA Tour                |
|  177 | Tom Hoge                |          0.02 |         271 |              98 | USA     | PGA Tour                |
|  178 | Sean Crocker            |          0.02 |         152 |              80 | USA     | European Tour           |
|  179 | Gavin Green             |          0.03 |         262 |              84 | MAS     | European Tour           |
|  180 | Seungyul Noh            |          0.03 |          94 |               0 | KOR     | NA                      |
|  181 | Sepp Straka             |          0.03 |         253 |              80 | AUT     | PGA Tour                |
|  182 | Doc Redman              |          0.04 |          76 |              44 | USA     | PGA Tour                |
|  183 | Scott Brown             |          0.05 |         275 |              82 | USA     | PGA Tour                |
|  184 | Adam Svensson           |          0.05 |         230 |              87 | CAN     | PGA Tour                |
|  185 | Max Homa                |          0.06 |         214 |              86 | USA     | PGA Tour                |
|  186 | Richard Sterne          |          0.06 |         245 |              71 | RSA     | European Tour           |
|  187 | Victor Perez            |          0.06 |         215 |              76 | FRA     | European Tour           |
|  188 | Jimmy Walker            |          0.07 |         232 |              76 | USA     | PGA Tour                |
|  189 | Scott Harrington        |          0.07 |         198 |              73 | USA     | Web.com Tour            |
|  190 | James Hahn              |          0.07 |         212 |              34 | USA     | PGA Tour                |
|  191 | Stewart Cink            |          0.07 |         235 |              53 | USA     | PGA Tour                |
|  192 | Lucas Herbert           |          0.07 |         185 |              83 | AUS     | European Tour           |
|  193 | Cormac Sharvin          |          0.08 |         178 |              62 | NIR     | European Challenge Tour |
|  194 | Chris Paisley           |          0.08 |         242 |              82 | ENG     | European Tour           |
|  195 | Sunghoon Kang           |          0.08 |         278 |              84 | KOR     | PGA Tour                |
|  196 | Chesson Hadley          |          0.08 |         259 |              74 | USA     | PGA Tour                |
|  197 | Jonas Blixt             |          0.09 |         219 |              76 | SWE     | PGA Tour                |
|  198 | Ryuko Tokimatsu         |          0.09 |         262 |              81 | JPN     | Japan Golf Tour         |
|  199 | J.B. Holmes             |          0.09 |         235 |              70 | USA     | PGA Tour                |
|  200 | Cameron Davis           |          0.10 |         211 |              96 | AUS     | PGA Tour                |

Current Golf Ratings
