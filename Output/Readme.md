Current Golf Ratings
================
DSMok1
March 10, 2020

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
|    1 | Rory McIlroy            |        \-2.29 |         249 |              88 | NIR     | PGA Tour               |
|    2 | Jon Rahm                |        \-2.18 |         270 |              87 | ESP     | PGA Tour               |
|    3 | Justin Thomas           |        \-1.87 |         249 |              76 | USA     | PGA Tour               |
|    4 | Webb Simpson            |        \-1.55 |         258 |              78 | USA     | PGA Tour               |
|    5 | Patrick Cantlay         |        \-1.46 |         228 |              74 | USA     | PGA Tour               |
|    6 | Xander Schauffele       |        \-1.42 |         279 |              76 | USA     | PGA Tour               |
|    7 | Hideki Matsuyama        |        \-1.39 |         275 |             101 | JPN     | PGA Tour               |
|    8 | Dustin Johnson          |        \-1.31 |         232 |              70 | USA     | PGA Tour               |
|    9 | Tommy Fleetwood         |        \-1.31 |         314 |             104 | ENG     | PGA Tour               |
|   10 | Patrick Reed            |        \-1.25 |         336 |             116 | USA     | PGA Tour               |
|   11 | Bryson DeChambeau       |        \-1.25 |         280 |              84 | USA     | PGA Tour               |
|   12 | Tiger Woods             |        \-1.22 |         128 |              40 | USA     | PGA Tour               |
|   13 | Rickie Fowler           |        \-1.19 |         250 |              74 | USA     | PGA Tour               |
|   14 | Adam Scott              |        \-1.17 |         223 |              72 | AUS     | PGA Tour               |
|   15 | Collin Morikawa         |        \-1.14 |          83 |              75 | USA     | PGA Tour               |
|   16 | Gary Woodland           |        \-1.12 |         268 |              79 | USA     | PGA Tour               |
|   17 | Tyrrell Hatton          |        \-1.03 |         252 |              80 | ENG     | PGA Tour               |
|   18 | Sungjae Im              |        \-1.00 |         378 |             127 | KOR     | PGA Tour               |
|   19 | Matt Kuchar             |        \-1.00 |         295 |              90 | USA     | PGA Tour               |
|   20 | Paul Casey              |        \-0.97 |         260 |              90 | ENG     | PGA Tour               |
|   21 | Louis Oosthuizen        |        \-0.95 |         236 |              92 | RSA     | PGA Tour               |
|   22 | Justin Rose             |        \-0.94 |         268 |              90 | ENG     | PGA Tour               |
|   23 | Marc Leishman           |        \-0.93 |         270 |              76 | AUS     | PGA Tour               |
|   24 | Tony Finau              |        \-0.93 |         308 |             100 | USA     | PGA Tour               |
|   25 | Brooks Koepka           |        \-0.92 |         238 |              70 | USA     | PGA Tour               |
|   26 | Jason Day               |        \-0.87 |         212 |              64 | AUS     | PGA Tour               |
|   27 | Matthew Fitzpatrick     |        \-0.77 |         298 |             106 | ENG     | PGA Tour               |
|   28 | Billy Horschel          |        \-0.77 |         276 |              97 | USA     | PGA Tour               |
|   29 | Scottie Scheffler       |        \-0.75 |         146 |             110 | USA     | PGA Tour               |
|   30 | Daniel Berger           |        \-0.71 |         242 |              88 | USA     | PGA Tour               |
|   31 | Shane Lowry             |        \-0.69 |         267 |              86 | IRL     | European Tour(3)       |
|   32 | Viktor Hovland          |        \-0.67 |          90 |              76 | NOR     | PGA Tour               |
|   33 | Abraham Ancer           |        \-0.67 |         309 |             100 | MEX     | PGA Tour               |
|   34 | Byeong Hun An           |        \-0.67 |         294 |              93 | KOR     | PGA Tour               |
|   35 | Brandt Snedeker         |        \-0.66 |         240 |              93 | USA     | PGA Tour               |
|   36 | Henrik Stenson          |        \-0.58 |         244 |              88 | SWE     | PGA Tour               |
|   37 | Sergio Garcia           |        \-0.55 |         249 |              88 | ESP     | PGA Tour               |
|   38 | Bud Cauley              |        \-0.50 |         227 |              82 | USA     | PGA Tour               |
|   39 | Kevin Na                |        \-0.48 |         247 |              75 | USA     | PGA Tour               |
|   40 | Ian Poulter             |        \-0.46 |         292 |              82 | ENG     | PGA Tour               |
|   41 | Adam Hadwin             |        \-0.46 |         266 |              79 | CAN     | PGA Tour               |
|   42 | Harris English          |        \-0.42 |         269 |             101 | USA     | PGA Tour               |
|   43 | Ryan Moore              |        \-0.39 |         232 |              72 | USA     | PGA Tour               |
|   44 | Joaquin Niemann         |        \-0.38 |         194 |             100 | CHI     | PGA Tour               |
|   45 | Joel Dahmen             |        \-0.38 |         270 |              98 | USA     | PGA Tour               |
|   46 | Vaughn Taylor           |        \-0.37 |         267 |              98 | USA     | PGA Tour               |
|   47 | Bubba Watson            |        \-0.37 |         227 |              72 | USA     | PGA Tour               |
|   48 | Brendon Todd            |        \-0.36 |         119 |              78 | USA     | PGA Tour               |
|   49 | Ryan Palmer             |        \-0.35 |         198 |              70 | USA     | PGA Tour               |
|   50 | Jason Kokrak            |        \-0.34 |         287 |              87 | USA     | PGA Tour               |
|   51 | Erik van Rooyen         |        \-0.34 |         291 |             113 | RSA     | European Tour(3)       |
|   52 | JT Poston               |        \-0.34 |         275 |             100 | USA     | PGA Tour               |
|   53 | Jim Furyk               |        \-0.32 |         169 |              67 | USA     | PGA Tour               |
|   54 | Kevin Kisner            |        \-0.32 |         277 |              99 | USA     | PGA Tour               |
|   55 | Matthias Schwab         |        \-0.32 |         262 |              89 | AUT     | European Tour(3)       |
|   56 | Nick Taylor             |        \-0.31 |         286 |              92 | CAN     | PGA Tour               |
|   57 | Charles Howell III      |        \-0.31 |         277 |              93 | USA     | PGA Tour               |
|   58 | Rafael Cabrera Bello    |        \-0.30 |         312 |             108 | ESP     | PGA Tour               |
|   59 | Chez Reavie             |        \-0.30 |         291 |              99 | USA     | PGA Tour               |
|   60 | Jordan Spieth           |        \-0.29 |         251 |              89 | USA     | PGA Tour               |
|   61 | Russell Knox            |        \-0.29 |         297 |              97 | SCO     | PGA Tour               |
|   62 | Juan Sebastian Munoz    |        \-0.28 |         280 |              94 | COL     | PGA Tour               |
|   63 | Carlos Ortiz            |        \-0.28 |         289 |              92 | MEX     | PGA Tour               |
|   64 | Rory Sabbatini          |        \-0.27 |         271 |             112 | SVK     | PGA Tour               |
|   65 | Andrew Putnam           |        \-0.26 |         264 |              80 | USA     | PGA Tour               |
|   66 | Victor Perez            |        \-0.25 |         247 |              70 | FRA     | European Tour(3)       |
|   67 | Lee Westwood            |        \-0.25 |         232 |              77 | ENG     | European Tour(3)       |
|   68 | Thomas Pieters          |        \-0.25 |         256 |              88 | BEL     | European Tour(3)       |
|   69 | Talor Gooch             |        \-0.24 |         258 |              79 | USA     | PGA Tour               |
|   70 | Max Homa                |        \-0.23 |         239 |              88 | USA     | PGA Tour               |
|   71 | Lanto Griffin           |        \-0.23 |         290 |             109 | USA     | PGA Tour               |
|   72 | Thomas Detry            |        \-0.21 |         281 |             102 | BEL     | European Tour(3)       |
|   73 | Christiaan Bezuidenhout |        \-0.21 |         273 |             102 | RSA     | European Tour          |
|   74 | Denny McCarthy          |        \-0.21 |         273 |              96 | USA     | PGA Tour               |
|   75 | Cameron Smith           |        \-0.21 |         258 |              82 | AUS     | PGA Tour               |
|   76 | Bernd Wiesberger        |        \-0.20 |         213 |              91 | AUT     | European Tour(3)       |
|   77 | Thorbjorn Olesen        |        \-0.19 |         205 |              36 | DEN     | Major Championship     |
|   78 | Corey Conners           |        \-0.19 |         294 |              98 | CAN     | PGA Tour               |
|   79 | Brian Harman            |        \-0.18 |         285 |              98 | USA     | PGA Tour               |
|   80 | Harold Varner III       |        \-0.18 |         303 |              90 | USA     | PGA Tour               |
|   81 | Sean O’Hair             |        \-0.17 |         150 |              14 | USA     | Korn Ferry Tour KGT    |
|   82 | Scott Piercy            |        \-0.17 |         233 |              88 | USA     | PGA Tour               |
|   83 | Danny Willett           |        \-0.17 |         213 |              86 | ENG     | PGA Tour               |
|   84 | Harry Higgs             |        \-0.17 |         185 |             112 | USA     | PGA Tour               |
|   85 | Alex Noren              |        \-0.17 |         266 |             100 | SWE     | PGA Tour               |
|   86 | Robert MacIntyre        |        \-0.17 |         206 |              82 | SCO     | European Tour          |
|   87 | Paul Waring             |        \-0.16 |         232 |              82 | ENG     | European Tour(3)       |
|   88 | Martin Kaymer           |        \-0.16 |         260 |              93 | GER     | European Tour(3)       |
|   89 | Danny Lee               |        \-0.15 |         268 |              83 | NZL     | PGA Tour               |
|   90 | Joost Luiten            |        \-0.14 |         239 |              94 | NED     | European Tour(3)       |
|   91 | Keegan Bradley          |        \-0.14 |         291 |              86 | USA     | PGA Tour               |
|   92 | Matt Jones              |        \-0.14 |         262 |              91 | AUS     | PGA Tour               |
|   93 | Cameron Tringale        |        \-0.13 |         249 |              87 | USA     | PGA Tour               |
|   94 | Kevin Streelman         |        \-0.13 |         269 |              87 | USA     | PGA Tour               |
|   95 | Tom Hoge                |        \-0.10 |         289 |              96 | USA     | PGA Tour               |
|   96 | Jhonattan Vegas         |        \-0.07 |         251 |              80 | VEN     | PGA Tour               |
|   97 | Branden Grace           |        \-0.06 |         278 |              88 | RSA     | PGA Tour               |
|   98 | Lucas Glover            |        \-0.05 |         264 |              97 | USA     | PGA Tour               |
|   99 | Dylan Frittelli         |        \-0.05 |         317 |             100 | RSA     | PGA Tour               |
|  100 | Adam Long               |        \-0.04 |         278 |             101 | USA     | PGA Tour               |
|  101 | Mike Lorenzo-Vera       |        \-0.04 |         237 |              80 | FRA     | European Tour(3)       |
|  102 | Nate Lashley            |        \-0.03 |         238 |              72 | USA     | PGA Tour               |
|  103 | Phil Mickelson          |        \-0.03 |         232 |              67 | USA     | PGA Tour               |
|  104 | Bronson Burgoon         |        \-0.01 |         199 |              70 | USA     | PGA Tour               |
|  105 | Graeme McDowell         |        \-0.01 |         263 |              86 | NIR     | PGA Tour               |
|  106 | Aaron Wise              |          0.00 |         235 |              77 | USA     | PGA Tour               |
|  107 | Charley Hoffman         |          0.00 |         275 |              81 | USA     | PGA Tour               |
|  108 | Patrick Rodgers         |          0.01 |         250 |              73 | USA     | PGA Tour               |
|  109 | Adam Schenk             |          0.01 |         313 |             100 | USA     | PGA Tour               |
|  110 | Zach Johnson            |          0.01 |         240 |              73 | USA     | PGA Tour               |
|  111 | Emiliano Grillo         |          0.01 |         268 |              76 | ARG     | PGA Tour               |
|  112 | Matthew NeSmith         |          0.01 |         164 |             106 | USA     | PGA Tour               |
|  113 | J.B. Holmes             |          0.02 |         223 |              63 | USA     | PGA Tour               |
|  114 | Wyndham Clark           |          0.02 |         222 |              85 | USA     | PGA Tour               |
|  115 | Russell Henley          |          0.03 |         247 |              73 | USA     | PGA Tour               |
|  116 | Takumi Kanaya(Am)       |          0.04 |          50 |              22 | JPN     | Japan Golf Tour        |
|  117 | Nick Watney             |          0.04 |         252 |              79 | USA     | PGA Tour               |
|  118 | Aaron Baddeley          |          0.05 |         213 |              61 | AUS     | PGA Tour               |
|  119 | Tom Lewis               |          0.07 |         231 |              76 | ENG     | European Tour(3)       |
|  120 | Matthew Wolff           |          0.07 |          65 |              57 | USA     | PGA Tour               |
|  121 | Brice Garnett           |          0.07 |         285 |              90 | USA     | PGA Tour               |
|  122 | Matt Wallace            |          0.08 |         308 |             102 | ENG     | European Tour(3)       |
|  123 | Zhang Xinjun            |          0.08 |         282 |             110 | CHN     | PGA Tour               |
|  124 | Pat Perez               |          0.08 |         230 |              65 | USA     | PGA Tour               |
|  125 | Charl Schwartzel        |          0.08 |         197 |              30 | RSA     | PGA Tour               |
|  126 | Doc Redman              |          0.09 |         124 |              92 | USA     | PGA Tour               |
|  127 | Sam Burns               |          0.09 |         204 |              75 | USA     | PGA Tour               |
|  128 | Kurt Kitayama           |          0.09 |         242 |              96 | USA     | European Tour(3)       |
|  129 | Keith Mitchell          |          0.09 |         283 |              84 | USA     | PGA Tour               |
|  130 | Cameron Champ           |          0.11 |         211 |              79 | USA     | PGA Tour               |
|  131 | Brendan Steele          |          0.11 |         215 |              72 | USA     | PGA Tour               |
|  132 | Andrew Landry           |          0.13 |         250 |              79 | USA     | PGA Tour               |
|  133 | Will Zalatoris          |          0.13 |          93 |              67 | USA     | Korn Ferry Tour KGT    |
|  134 | Maverick McNealy        |          0.16 |         222 |             103 | USA     | PGA Tour               |
|  135 | Kyle Stanley            |          0.17 |         269 |              85 | USA     | PGA Tour               |
|  136 | Mark Hubbard            |          0.17 |         268 |             110 | USA     | PGA Tour               |
|  137 | Sunghoon Kang           |          0.17 |         289 |              94 | KOR     | PGA Tour               |
|  138 | Beau Hossler            |          0.18 |         310 |             104 | USA     | PGA Tour               |
|  139 | Troy Merritt            |          0.19 |         258 |              83 | USA     | PGA Tour               |
|  140 | Eddie Pepperell         |          0.20 |         221 |              70 | ENG     | European Tour(3)       |
|  141 | Kevin Tway              |          0.21 |         274 |              80 | USA     | PGA Tour               |
|  142 | Benjamin Hebert         |          0.21 |         256 |              90 | FRA     | European Tour(3)       |
|  143 | Francesco Molinari      |          0.21 |         243 |              75 | ITA     | PGA Tour               |
|  144 | Stewart Cink            |          0.21 |         237 |              65 | USA     | PGA Tour               |
|  145 | Luke List               |          0.22 |         263 |              79 | USA     | PGA Tour               |
|  146 | Martin Laird            |          0.22 |         240 |              89 | SCO     | PGA Tour               |
|  147 | Shugo Imahira           |          0.24 |         299 |             112 | JPN     | Japan Golf Tour        |
|  148 | Scott Stallings         |          0.24 |         259 |              90 | USA     | PGA Tour               |
|  149 | Jordan L Smith          |          0.24 |         273 |              84 | ENG     | European Tour(3)       |
|  150 | Gavin Green             |          0.25 |         281 |             101 | MAS     | European Tour(3)       |
|  151 | Brian Stuard            |          0.26 |         288 |             101 | USA     | PGA Tour               |
|  152 | Miguel A Jimenez        |          0.26 |          61 |              20 | ESP     | European Tour(3)       |
|  153 | Cameron Davis           |          0.26 |         241 |              92 | AUS     | PGA Tour               |
|  154 | Hudson Swafford         |          0.26 |         209 |              47 | USA     | PGA Tour               |
|  155 | James Hahn              |          0.26 |         212 |              30 | USA     | PGA Tour               |
|  156 | Sam Ryder               |          0.26 |         269 |              84 | USA     | PGA Tour               |
|  157 | Steve Stricker          |          0.26 |         112 |              24 | USA     | PGA Tour               |
|  158 | Augusto Nunez           |          0.27 |         223 |              82 | ARG     | PGA Tour Latinoamerica |
|  159 | Jazz Janewattananond    |          0.27 |         328 |             130 | THA     | Asian Tour             |
|  160 | George Coetzee          |          0.28 |         272 |             100 | RSA     | European Tour(3)       |
|  161 | Dylan Wu                |          0.28 |         102 |              66 | USA     | Korn Ferry Tour KGT    |
|  162 | Marcus Kinhult          |          0.29 |         248 |              74 | SWE     | European Tour(3)       |
|  163 | Kyounghoon Lee          |          0.30 |         308 |              91 | KOR     | PGA Tour               |
|  164 | Cameron Percy           |          0.31 |         224 |              69 | AUS     | PGA Tour               |
|  165 | Mikko Korhonen          |          0.31 |         229 |              82 | FIN     | European Tour(3)       |
|  166 | Andrew Johnston         |          0.32 |         178 |              49 | ENG     | European Tour          |
|  167 | Jimmy Walker            |          0.33 |         224 |              77 | USA     | PGA Tour               |
|  168 | Gunn Charoenkul         |          0.33 |         243 |             108 | THA     | Japan Golf Tour        |
|  169 | Ben Martin              |          0.33 |         173 |              55 | USA     | PGA Tour               |
|  170 | Romain Langasque        |          0.33 |         255 |              87 | FRA     | European Tour(3)       |
|  171 | Shaun Norris            |          0.34 |         310 |             106 | RSA     | Japan Golf Tour        |
|  172 | Richy Werenski          |          0.35 |         251 |              84 | USA     | PGA Tour               |
|  173 | D.J. Trahan             |          0.36 |         131 |              65 | USA     | PGA Tour               |
|  174 | Greyson Sigg            |          0.36 |         162 |              70 | USA     | PGA Tour Canada        |
|  175 | Grayson Murray          |          0.37 |         217 |              56 | USA     | PGA Tour               |
|  176 | Luke Donald             |          0.37 |         140 |              60 | ENG     | PGA Tour               |
|  177 | Jason Scrivener         |          0.38 |         275 |              85 | AUS     | European Tour(3)       |
|  178 | Haotong Li              |          0.38 |         272 |              88 | CHN     | European Tour(3)       |
|  179 | Justin Harding          |          0.38 |         271 |             103 | RSA     | European Tour(3)       |
|  180 | Brandon Wu              |          0.38 |          35 |              31 | USA     | PGA Tour               |
|  181 | Jason Dufner            |          0.40 |         236 |              77 | USA     | PGA Tour               |
|  182 | John Huh                |          0.40 |         211 |              40 | USA     | PGA Tour               |
|  183 | Davis Riley             |          0.41 |          93 |              85 | USA     | Korn Ferry Tour KGT    |
|  184 | Brad Kennedy            |          0.41 |         243 |              90 | AUS     | Japan Golf Tour        |
|  185 | Andy Sullivan           |          0.41 |         268 |              86 | ENG     | European Tour(3)       |
|  186 | Chan Kim                |          0.41 |         160 |              90 | USA     | Japan Golf Tour        |
|  187 | Zac Blair               |          0.41 |         293 |             115 | USA     | PGA Tour               |
|  188 | Peter Malnati           |          0.42 |         267 |              89 | USA     | PGA Tour               |
|  189 | Bo Hoag                 |          0.43 |         262 |             116 | USA     | PGA Tour               |
|  190 | Brian Gay               |          0.44 |         284 |              86 | USA     | PGA Tour               |
|  191 | Ross Fisher             |          0.44 |         247 |              77 | ENG     | European Tour(3)       |
|  192 | Lucas Herbert           |          0.45 |         202 |              83 | AUS     | European Tour(3)       |
|  193 | Michael Thompson        |          0.45 |         203 |              73 | USA     | PGA Tour               |
|  194 | Ryan Fox                |          0.46 |         280 |              82 | NZL     | European Tour(3)       |
|  195 | Joseph Bramlett         |          0.46 |         198 |             105 | USA     | PGA Tour               |
|  196 | Kalle Samooja           |          0.47 |         233 |              85 | FIN     | European Tour(3)       |
|  197 | Chase Seiffert          |          0.47 |         142 |             100 | USA     | PGA Tour               |
|  198 | Henrik Norlander        |          0.47 |         252 |             106 | SWE     | PGA Tour               |
|  199 | Kramer Hickok           |          0.48 |         273 |              87 | USA     | PGA Tour               |
|  200 | Mackenzie Hughes        |          0.49 |         242 |              82 | CAN     | PGA Tour               |

Current Golf Ratings
