Current Golf Ratings
================
DSMok1
June 20, 2020

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
|    1 | Rory McIlroy            |        \-2.18 |         239 |              66 | NIR     | PGA Tour               |
|    2 | Jon Rahm                |        \-2.07 |         249 |              71 | ESP     | PGA Tour               |
|    3 | Justin Thomas           |        \-1.95 |         236 |              62 | USA     | PGA Tour               |
|    4 | Xander Schauffele       |        \-1.61 |         259 |              60 | USA     | PGA Tour               |
|    5 | Patrick Cantlay         |        \-1.48 |         208 |              56 | USA     | PGA Tour               |
|    6 | Bryson DeChambeau       |        \-1.46 |         258 |              66 | USA     | PGA Tour               |
|    7 | Collin Morikawa         |        \-1.41 |          87 |              75 | USA     | PGA Tour               |
|    8 | Hideki Matsuyama        |        \-1.40 |         255 |              77 | JPN     | PGA Tour               |
|    9 | Patrick Reed            |        \-1.39 |         310 |              96 | USA     | PGA Tour               |
|   10 | Webb Simpson            |        \-1.39 |         230 |              52 | USA     | PGA Tour               |
|   11 | Tommy Fleetwood         |        \-1.32 |         292 |              82 | ENG     | PGA Tour               |
|   12 | Gary Woodland           |        \-1.30 |         251 |              61 | USA     | PGA Tour               |
|   13 | Tiger Woods             |        \-1.24 |         128 |              26 | USA     | PGA Tour               |
|   14 | Adam Scott              |        \-1.18 |         199 |              58 | AUS     | PGA Tour               |
|   15 | Justin Rose             |        \-1.17 |         250 |              66 | ENG     | PGA Tour               |
|   16 | Dustin Johnson          |        \-1.16 |         218 |              46 | USA     | PGA Tour               |
|   17 | Sungjae Im              |        \-1.11 |         348 |              92 | KOR     | PGA Tour               |
|   18 | Rickie Fowler           |        \-1.04 |         226 |              48 | USA     | PGA Tour               |
|   19 | Tyrrell Hatton          |        \-1.04 |         232 |              56 | ENG     | European Tour(3)       |
|   20 | Daniel Berger           |        \-1.01 |         222 |              56 | USA     | PGA Tour               |
|   21 | Tony Finau              |        \-1.00 |         282 |              76 | USA     | PGA Tour               |
|   22 | Paul Casey              |        \-0.98 |         236 |              74 | ENG     | PGA Tour               |
|   23 | Matt Kuchar             |        \-0.97 |         260 |              64 | USA     | PGA Tour               |
|   24 | Brooks Koepka           |        \-0.95 |         212 |              52 | USA     | PGA Tour               |
|   25 | Marc Leishman           |        \-0.85 |         242 |              60 | AUS     | PGA Tour               |
|   26 | Louis Oosthuizen        |        \-0.84 |         220 |              70 | RSA     | PGA Tour               |
|   27 | Abraham Ancer           |        \-0.81 |         284 |              76 | MEX     | PGA Tour               |
|   28 | Matthew Fitzpatrick     |        \-0.81 |         278 |              82 | ENG     | European Tour(3)       |
|   29 | Billy Horschel          |        \-0.79 |         248 |              71 | USA     | PGA Tour               |
|   30 | Viktor Hovland          |        \-0.79 |          94 |              72 | NOR     | PGA Tour               |
|   31 | Jason Day               |        \-0.71 |         192 |              44 | AUS     | PGA Tour               |
|   32 | Bubba Watson            |        \-0.68 |         211 |              52 | USA     | PGA Tour               |
|   33 | Scottie Scheffler       |        \-0.67 |         146 |              80 | USA     | PGA Tour               |
|   34 | Brandt Snedeker         |        \-0.66 |         218 |              63 | USA     | PGA Tour               |
|   35 | Jason Kokrak            |        \-0.65 |         254 |              59 | USA     | PGA Tour               |
|   36 | Bud Cauley              |        \-0.60 |         201 |              56 | USA     | PGA Tour               |
|   37 | Henrik Stenson          |        \-0.59 |         220 |              56 | SWE     | European Tour(3)       |
|   38 | Ian Poulter             |        \-0.56 |         264 |              64 | ENG     | European Tour(3)       |
|   39 | Byeong Hun An           |        \-0.56 |         264 |              73 | KOR     | PGA Tour               |
|   40 | Shane Lowry             |        \-0.55 |         245 |              68 | IRL     | European Tour(3)       |
|   41 | Sergio Garcia           |        \-0.54 |         231 |              70 | ESP     | European Tour(3)       |
|   42 | JT Poston               |        \-0.54 |         249 |              70 | USA     | PGA Tour               |
|   43 | Joel Dahmen             |        \-0.53 |         259 |              66 | USA     | PGA Tour               |
|   44 | Jordan Spieth           |        \-0.52 |         233 |              59 | USA     | PGA Tour               |
|   45 | Adam Hadwin             |        \-0.49 |         236 |              51 | CAN     | PGA Tour               |
|   46 | Kevin Na                |        \-0.47 |         229 |              56 | USA     | PGA Tour               |
|   47 | Joaquin Niemann         |        \-0.46 |         196 |              68 | CHI     | PGA Tour               |
|   48 | Rory Sabbatini          |        \-0.44 |         263 |              80 | SVK     | PGA Tour               |
|   49 | Kevin Kisner            |        \-0.43 |         251 |              73 | USA     | PGA Tour               |
|   50 | Rafael Cabrera Bello    |        \-0.42 |         288 |              80 | ESP     | European Tour(3)       |
|   51 | Harris English          |        \-0.42 |         241 |              73 | USA     | PGA Tour               |
|   52 | Corey Conners           |        \-0.36 |         277 |              68 | CAN     | PGA Tour               |
|   53 | Ryan Moore              |        \-0.35 |         206 |              48 | USA     | PGA Tour               |
|   54 | Vaughn Taylor           |        \-0.35 |         243 |              71 | USA     | PGA Tour               |
|   55 | Harold Varner III       |        \-0.35 |         271 |              68 | USA     | PGA Tour               |
|   56 | Jim Furyk               |        \-0.34 |         153 |              39 | USA     | PGA Tour               |
|   57 | Charles Howell III      |        \-0.33 |         265 |              73 | USA     | PGA Tour               |
|   58 | Matthias Schwab         |        \-0.32 |         252 |              67 | AUT     | European Tour(3)       |
|   59 | Brian Harman            |        \-0.32 |         259 |              68 | USA     | PGA Tour               |
|   60 | Nick Taylor             |        \-0.32 |         252 |              68 | CAN     | PGA Tour               |
|   61 | Talor Gooch             |        \-0.29 |         233 |              67 | USA     | PGA Tour               |
|   62 | Erik van Rooyen         |        \-0.27 |         281 |              81 | RSA     | European Tour(3)       |
|   63 | Brendon Todd            |        \-0.27 |         113 |              70 | USA     | PGA Tour               |
|   64 | Lee Westwood            |        \-0.26 |         210 |              69 | ENG     | European Tour(3)       |
|   65 | Thomas Pieters          |        \-0.25 |         244 |              74 | BEL     | European Tour(3)       |
|   66 | Max Homa                |        \-0.25 |         224 |              66 | USA     | PGA Tour               |
|   67 | Keegan Bradley          |        \-0.25 |         263 |              64 | USA     | PGA Tour               |
|   68 | Juan Sebastian Munoz    |        \-0.24 |         260 |              74 | COL     | PGA Tour               |
|   69 | Branden Grace           |        \-0.24 |         256 |              62 | RSA     | PGA Tour               |
|   70 | Harry Higgs             |        \-0.23 |         187 |              83 | USA     | PGA Tour               |
|   71 | Christiaan Bezuidenhout |        \-0.22 |         259 |              79 | RSA     | European Tour(3)       |
|   72 | Thomas Detry            |        \-0.22 |         267 |              82 | BEL     | European Tour(3)       |
|   73 | Lucas Glover            |        \-0.22 |         238 |              71 | USA     | PGA Tour               |
|   74 | Chez Reavie             |        \-0.21 |         261 |              81 | USA     | PGA Tour               |
|   75 | Matt Jones              |        \-0.21 |         242 |              69 | AUS     | PGA Tour               |
|   76 | Thorbjorn Olesen        |        \-0.21 |         187 |              18 | DEN     | European Tour          |
|   77 | Patrick Rodgers         |        \-0.20 |         234 |              68 | USA     | PGA Tour               |
|   78 | Ryan Palmer             |        \-0.20 |         175 |              48 | USA     | PGA Tour               |
|   79 | Bernd Wiesberger        |        \-0.20 |         181 |              69 | AUT     | European Tour(3)       |
|   80 | Robert MacIntyre        |        \-0.17 |         206 |              68 | SCO     | European Tour(3)       |
|   81 | Carlos Ortiz            |        \-0.17 |         266 |              70 | MEX     | PGA Tour               |
|   82 | Paul Waring             |        \-0.16 |         216 |              66 | ENG     | European Tour(3)       |
|   83 | Martin Kaymer           |        \-0.16 |         238 |              63 | GER     | European Tour(3)       |
|   84 | Joost Luiten            |        \-0.15 |         217 |              78 | NED     | European Tour(3)       |
|   85 | Will Zalatoris          |        \-0.15 |          95 |              50 | USA     | Korn Ferry Tour KGT    |
|   86 | Cameron Tringale        |        \-0.14 |         220 |              67 | USA     | PGA Tour               |
|   87 | Danny Lee               |        \-0.14 |         230 |              55 | NZL     | PGA Tour               |
|   88 | Cameron Smith           |        \-0.13 |         234 |              66 | AUS     | PGA Tour               |
|   89 | Russell Knox            |        \-0.13 |         277 |              75 | SCO     | PGA Tour               |
|   90 | Bronson Burgoon         |        \-0.13 |         203 |              58 | USA     | PGA Tour               |
|   91 | Cameron Champ           |        \-0.12 |         211 |              65 | USA     | PGA Tour               |
|   92 | Andrew Putnam           |        \-0.12 |         241 |              62 | USA     | PGA Tour               |
|   93 | Kevin Streelman         |        \-0.11 |         242 |              61 | USA     | PGA Tour               |
|   94 | Alex Noren              |        \-0.09 |         246 |              76 | SWE     | PGA Tour               |
|   95 | Denny McCarthy          |        \-0.09 |         254 |              70 | USA     | PGA Tour               |
|   96 | Victor Perez            |        \-0.09 |         234 |              60 | FRA     | European Tour(3)       |
|   97 | Scott Piercy            |        \-0.08 |         215 |              64 | USA     | PGA Tour               |
|   98 | Danny Willett           |        \-0.08 |         207 |              64 | ENG     | European Tour(3)       |
|   99 | Luke List               |        \-0.07 |         233 |              55 | USA     | PGA Tour               |
|  100 | Zach Johnson            |        \-0.07 |         216 |              47 | USA     | PGA Tour               |
|  101 | Adam Schenk             |        \-0.05 |         292 |              68 | USA     | PGA Tour               |
|  102 | Mike Lorenzo-Vera       |        \-0.05 |         223 |              62 | FRA     | European Tour(3)       |
|  103 | Matthew NeSmith         |        \-0.03 |         166 |              80 | USA     | PGA Tour               |
|  104 | Graeme McDowell         |        \-0.02 |         229 |              58 | NIR     | PGA Tour               |
|  105 | Phil Mickelson          |        \-0.02 |         206 |              53 | USA     | PGA Tour               |
|  106 | Aaron Wise              |        \-0.01 |         214 |              51 | USA     | PGA Tour               |
|  107 | Lanto Griffin           |          0.00 |         273 |              82 | USA     | PGA Tour               |
|  108 | Dylan Frittelli         |          0.00 |         295 |              78 | RSA     | PGA Tour               |
|  109 | Jhonattan Vegas         |          0.01 |         235 |              52 | VEN     | PGA Tour               |
|  110 | J.B. Holmes             |          0.01 |         197 |              46 | USA     | PGA Tour               |
|  111 | Adam Long               |          0.01 |         257 |              78 | USA     | PGA Tour               |
|  112 | Nate Lashley            |          0.01 |         211 |              56 | USA     | PGA Tour               |
|  113 | Pat Perez               |          0.02 |         206 |              47 | USA     | PGA Tour               |
|  114 | Sean O’Hair             |          0.02 |         128 |              14 | USA     | Korn Ferry Tour KGT    |
|  115 | Russell Henley          |          0.03 |         215 |              53 | USA     | PGA Tour               |
|  116 | Takumi Kanaya(Am)       |          0.03 |          50 |              14 | JPN     | Japan Golf Tour        |
|  117 | Maverick McNealy        |          0.04 |         224 |              82 | USA     | PGA Tour               |
|  118 | Matthew Wolff           |          0.04 |          69 |              61 | USA     | PGA Tour               |
|  119 | Aaron Baddeley          |          0.04 |         189 |              37 | AUS     | PGA Tour               |
|  120 | Wyndham Clark           |          0.06 |         224 |              67 | USA     | PGA Tour               |
|  121 | Tom Hoge                |          0.06 |         269 |              74 | USA     | PGA Tour               |
|  122 | Andrew Landry           |          0.07 |         227 |              55 | USA     | PGA Tour               |
|  123 | Charley Hoffman         |          0.07 |         237 |              55 | USA     | PGA Tour               |
|  124 | Tom Lewis               |          0.08 |         215 |              64 | ENG     | European Tour(3)       |
|  125 | Kurt Kitayama           |          0.08 |         221 |              74 | USA     | European Tour(3)       |
|  126 | Matt Wallace            |          0.08 |         286 |              82 | ENG     | European Tour(3)       |
|  127 | Sam Burns               |          0.09 |         204 |              48 | USA     | PGA Tour               |
|  128 | Charl Schwartzel        |          0.09 |         173 |              20 | RSA     | PGA Tour               |
|  129 | Mark Hubbard            |          0.09 |         248 |              83 | USA     | PGA Tour               |
|  130 | Brice Garnett           |          0.11 |         266 |              64 | USA     | PGA Tour               |
|  131 | Emiliano Grillo         |          0.11 |         244 |              52 | ARG     | PGA Tour               |
|  132 | Doc Redman              |          0.12 |         128 |              76 | USA     | PGA Tour               |
|  133 | Keith Mitchell          |          0.16 |         258 |              60 | USA     | PGA Tour               |
|  134 | Brian Stuard            |          0.17 |         258 |              75 | USA     | PGA Tour               |
|  135 | Sunghoon Kang           |          0.17 |         254 |              70 | KOR     | PGA Tour               |
|  136 | Kyle Stanley            |          0.17 |         239 |              65 | USA     | PGA Tour               |
|  137 | Eddie Pepperell         |          0.19 |         197 |              48 | ENG     | European Tour(3)       |
|  138 | Nick Watney             |          0.20 |         230 |              53 | USA     | PGA Tour               |
|  139 | Benjamin Hebert         |          0.20 |         234 |              74 | FRA     | European Tour(3)       |
|  140 | Francesco Molinari      |          0.21 |         213 |              53 | ITA     | PGA Tour               |
|  141 | Joseph Bramlett         |          0.22 |         202 |              77 | USA     | PGA Tour               |
|  142 | Stewart Cink            |          0.22 |         201 |              59 | USA     | PGA Tour               |
|  143 | Martin Laird            |          0.22 |         210 |              63 | SCO     | PGA Tour               |
|  144 | Shugo Imahira           |          0.24 |         269 |              84 | JPN     | Japan Golf Tour        |
|  145 | Scott Stallings         |          0.24 |         237 |              60 | USA     | PGA Tour               |
|  146 | Jordan L Smith          |          0.24 |         247 |              66 | ENG     | European Tour(3)       |
|  147 | Jazz Janewattananond    |          0.24 |         302 |              96 | THA     | Asian Tour             |
|  148 | Gavin Green             |          0.25 |         256 |              83 | MAS     | European Tour(3)       |
|  149 | Brendan Steele          |          0.25 |         197 |              52 | USA     | PGA Tour               |
|  150 | Miguel A Jimenez        |          0.25 |          59 |              18 | ESP     | European Tour(3)       |
|  151 | Peter Uihlein           |          0.25 |         240 |              57 | USA     | PGA Tour               |
|  152 | Augusto Nunez           |          0.26 |         206 |              54 | ARG     | PGA Tour Latinoamerica |
|  153 | James Hahn              |          0.26 |         178 |              30 | USA     | PGA Tour               |
|  154 | George Coetzee          |          0.28 |         252 |              84 | RSA     | European Tour(3)       |
|  155 | Cameron Davis           |          0.28 |         233 |              78 | AUS     | PGA Tour               |
|  156 | Marcus Kinhult          |          0.29 |         226 |              64 | SWE     | European Tour(3)       |
|  157 | Zhang Xinjun            |          0.30 |         263 |              83 | CHN     | PGA Tour               |
|  158 | Troy Merritt            |          0.30 |         236 |              71 | USA     | PGA Tour               |
|  159 | Cameron Percy           |          0.31 |         204 |              57 | AUS     | PGA Tour               |
|  160 | Mikko Korhonen          |          0.31 |         211 |              64 | FIN     | European Tour(3)       |
|  161 | Gunn Charoenkul         |          0.31 |         217 |              73 | THA     | Japan Golf Tour        |
|  162 | Paul Barjon             |          0.32 |         144 |              56 | FRA     | PGA Tour Canada        |
|  163 | Chesson Hadley          |          0.32 |         255 |              56 | USA     | PGA Tour               |
|  164 | Andrew Johnston         |          0.32 |         154 |              41 | ENG     | European Tour          |
|  165 | Romain Langasque        |          0.32 |         237 |              71 | FRA     | European Tour(3)       |
|  166 | Shaun Norris            |          0.33 |         286 |              85 | RSA     | Japan Golf Tour        |
|  167 | Dylan Wu                |          0.34 |         104 |              58 | USA     | Korn Ferry Tour KGT    |
|  168 | Richy Werenski          |          0.35 |         239 |              58 | USA     | PGA Tour               |
|  169 | Hudson Swafford         |          0.35 |         185 |              25 | USA     | PGA Tour               |
|  170 | D.J. Trahan             |          0.36 |         116 |              53 | USA     | PGA Tour               |
|  171 | Ben Martin              |          0.37 |         143 |              52 | USA     | PGA Tour               |
|  172 | Luke Donald             |          0.37 |         120 |              42 | ENG     | PGA Tour               |
|  173 | Justin Harding          |          0.37 |         256 |              83 | RSA     | European Tour(3)       |
|  174 | Grayson Murray          |          0.37 |         186 |              44 | USA     | PGA Tour               |
|  175 | Haotong Li              |          0.37 |         250 |              66 | CHN     | European Tour(3)       |
|  176 | Jason Scrivener         |          0.37 |         261 |              73 | AUS     | European Tour(3)       |
|  177 | Brandon Wu              |          0.38 |          35 |              31 | USA     | PGA Tour               |
|  178 | Zac Blair               |          0.39 |         261 |              84 | USA     | PGA Tour               |
|  179 | Greyson Sigg            |          0.40 |         156 |              62 | USA     | PGA Tour Canada        |
|  180 | Steve Stricker          |          0.40 |          92 |              16 | USA     | PGA Tour               |
|  181 | Chan Kim                |          0.40 |         140 |              68 | USA     | Japan Golf Tour        |
|  182 | John Huh                |          0.40 |         181 |              38 | USA     | PGA Tour               |
|  183 | Brad Kennedy            |          0.40 |         211 |              62 | AUS     | Japan Golf Tour        |
|  184 | Beau Hossler            |          0.41 |         294 |              76 | USA     | PGA Tour               |
|  185 | Andy Sullivan           |          0.41 |         252 |              72 | ENG     | European Tour(3)       |
|  186 | Peter Malnati           |          0.42 |         246 |              60 | USA     | PGA Tour               |
|  187 | Kyounghoon Lee          |          0.42 |         283 |              68 | KOR     | PGA Tour               |
|  188 | Lee Hodges              |          0.42 |         125 |              52 | USA     | Korn Ferry Tour KGT    |
|  189 | Bo Hoag                 |          0.43 |         254 |              81 | USA     | PGA Tour               |
|  190 | Henrik Norlander        |          0.43 |         243 |              72 | SWE     | PGA Tour               |
|  191 | Sam Ryder               |          0.44 |         248 |              70 | USA     | PGA Tour               |
|  192 | Lucas Herbert           |          0.44 |         198 |              65 | AUS     | European Tour(3)       |
|  193 | Ross Fisher             |          0.45 |         223 |              63 | ENG     | European Tour(3)       |
|  194 | Ryan Fox                |          0.45 |         258 |              70 | NZL     | European Tour(3)       |
|  195 | Brian Gay               |          0.45 |         260 |              59 | USA     | PGA Tour               |
|  196 | Kalle Samooja           |          0.46 |         219 |              65 | FIN     | European Tour(3)       |
|  197 | Michael Thompson        |          0.46 |         177 |              47 | USA     | PGA Tour               |
|  198 | Kevin Tway              |          0.47 |         250 |              56 | USA     | PGA Tour               |
|  199 | Tyler Duncan(Jul1989)   |          0.47 |         279 |              76 | USA     | PGA Tour               |
|  200 | Mackenzie Hughes        |          0.47 |         220 |              54 | CAN     | PGA Tour               |

Current Golf Ratings
