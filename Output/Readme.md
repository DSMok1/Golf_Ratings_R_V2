Current Golf Ratings
================
DSMok1
June 22, 2020

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
|    1 | Rory McIlroy            |        \-2.39 |         243 |              66 | NIR     | PGA Tour               |
|    2 | Justin Thomas           |        \-2.32 |         240 |              64 | USA     | PGA Tour               |
|    3 | Jon Rahm                |        \-2.31 |         253 |              69 | ESP     | PGA Tour               |
|    4 | Webb Simpson            |        \-1.98 |         234 |              50 | USA     | PGA Tour               |
|    5 | Bryson DeChambeau       |        \-1.88 |         262 |              66 | USA     | PGA Tour               |
|    6 | Patrick Cantlay         |        \-1.81 |         208 |              52 | USA     | PGA Tour               |
|    7 | Xander Schauffele       |        \-1.73 |         263 |              60 | USA     | PGA Tour               |
|    8 | Tommy Fleetwood         |        \-1.66 |         292 |              78 | ENG     | European Tour          |
|    9 | Tyrrell Hatton          |        \-1.62 |         236 |              52 | ENG     | European Tour          |
|   10 | Patrick Reed            |        \-1.62 |         312 |              96 | USA     | PGA Tour               |
|   11 | Justin Rose             |        \-1.60 |         254 |              66 | ENG     | PGA Tour               |
|   12 | Dustin Johnson          |        \-1.58 |         222 |              44 | USA     | PGA Tour               |
|   13 | Daniel Berger           |        \-1.57 |         226 |              56 | USA     | PGA Tour               |
|   14 | Tiger Woods             |        \-1.56 |         128 |              22 | USA     | PGA Tour               |
|   15 | Hideki Matsuyama        |        \-1.55 |         257 |              73 | JPN     | PGA Tour               |
|   16 | Collin Morikawa         |        \-1.53 |          91 |              75 | USA     | PGA Tour               |
|   17 | Adam Scott              |        \-1.51 |         199 |              54 | AUS     | PGA Tour               |
|   18 | Brooks Koepka           |        \-1.47 |         216 |              52 | USA     | PGA Tour               |
|   19 | Gary Woodland           |        \-1.47 |         255 |              61 | USA     | PGA Tour               |
|   20 | Abraham Ancer           |        \-1.36 |         288 |              76 | MEX     | PGA Tour               |
|   21 | Tony Finau              |        \-1.34 |         286 |              78 | USA     | PGA Tour               |
|   22 | Sungjae Im              |        \-1.34 |         350 |              96 | KOR     | PGA Tour               |
|   23 | Paul Casey              |        \-1.32 |         236 |              70 | ENG     | PGA Tour               |
|   24 | Rickie Fowler           |        \-1.32 |         228 |              46 | USA     | PGA Tour               |
|   25 | Matt Kuchar             |        \-1.29 |         264 |              62 | USA     | PGA Tour               |
|   26 | Matthew Fitzpatrick     |        \-1.26 |         282 |              82 | ENG     | European Tour          |
|   27 | Viktor Hovland          |        \-1.22 |          98 |              72 | NOR     | PGA Tour               |
|   28 | Marc Leishman           |        \-1.18 |         242 |              58 | AUS     | PGA Tour               |
|   29 | Sergio Garcia           |        \-1.11 |         235 |              68 | ESP     | European Tour          |
|   30 | Billy Horschel          |        \-1.09 |         250 |              71 | USA     | PGA Tour               |
|   31 | Ian Poulter             |        \-1.05 |         268 |              66 | ENG     | European Tour          |
|   32 | JT Poston               |        \-1.03 |         253 |              74 | USA     | PGA Tour               |
|   33 | Joaquin Niemann         |        \-1.03 |         200 |              72 | CHI     | PGA Tour               |
|   34 | Scottie Scheffler       |        \-1.01 |         146 |              82 | USA     | PGA Tour               |
|   35 | Bubba Watson            |        \-0.98 |         215 |              54 | USA     | PGA Tour               |
|   36 | Louis Oosthuizen        |        \-0.97 |         222 |              70 | RSA     | PGA Tour               |
|   37 | Jason Day               |        \-0.96 |         194 |              42 | AUS     | PGA Tour               |
|   38 | Henrik Stenson          |        \-0.94 |         220 |              52 | SWE     | European Tour          |
|   39 | Harris English          |        \-0.89 |         245 |              71 | USA     | PGA Tour               |
|   40 | Jason Kokrak            |        \-0.87 |         256 |              63 | USA     | PGA Tour               |
|   41 | Joel Dahmen             |        \-0.87 |         263 |              68 | USA     | PGA Tour               |
|   42 | Rory Sabbatini          |        \-0.87 |         267 |              80 | SVK     | PGA Tour               |
|   43 | Adam Hadwin             |        \-0.86 |         240 |              55 | CAN     | PGA Tour               |
|   44 | Bud Cauley              |        \-0.85 |         203 |              60 | USA     | PGA Tour               |
|   45 | Shane Lowry             |        \-0.81 |         247 |              66 | IRL     | European Tour          |
|   46 | Brandt Snedeker         |        \-0.81 |         220 |              59 | USA     | PGA Tour               |
|   47 | Corey Conners           |        \-0.81 |         281 |              72 | CAN     | PGA Tour               |
|   48 | Kevin Na                |        \-0.80 |         229 |              56 | USA     | PGA Tour               |
|   49 | Ryan Palmer             |        \-0.78 |         179 |              50 | USA     | PGA Tour               |
|   50 | Brian Harman            |        \-0.75 |         263 |              72 | USA     | PGA Tour               |
|   51 | Kevin Kisner            |        \-0.75 |         253 |              73 | USA     | PGA Tour               |
|   52 | Erik van Rooyen         |        \-0.74 |         285 |              79 | RSA     | European Tour          |
|   53 | Will Zalatoris          |        \-0.72 |          99 |              52 | USA     | Korn Ferry Tour        |
|   54 | Jordan Spieth           |        \-0.71 |         237 |              59 | USA     | PGA Tour               |
|   55 | Vaughn Taylor           |        \-0.69 |         247 |              73 | USA     | PGA Tour               |
|   56 | Lucas Glover            |        \-0.68 |         242 |              73 | USA     | PGA Tour               |
|   57 | Juan Sebastian Munoz    |        \-0.68 |         264 |              76 | COL     | PGA Tour               |
|   58 | Matthias Schwab         |        \-0.68 |         252 |              67 | AUT     | European Tour          |
|   59 | Christiaan Bezuidenhout |        \-0.67 |         263 |              81 | RSA     | European Tour          |
|   60 | Byeong Hun An           |        \-0.66 |         266 |              73 | KOR     | PGA Tour               |
|   61 | Rafael Cabrera Bello    |        \-0.66 |         290 |              80 | ESP     | European Tour          |
|   62 | Nick Taylor             |        \-0.65 |         252 |              64 | CAN     | PGA Tour               |
|   63 | Charles Howell III      |        \-0.65 |         267 |              73 | USA     | PGA Tour               |
|   64 | Max Homa                |        \-0.64 |         228 |              68 | USA     | PGA Tour               |
|   65 | Harold Varner III       |        \-0.62 |         273 |              72 | USA     | PGA Tour               |
|   66 | Jim Furyk               |        \-0.62 |         155 |              39 | USA     | PGA Tour               |
|   67 | Lee Westwood            |        \-0.61 |         210 |              69 | ENG     | European Tour          |
|   68 | Thomas Pieters          |        \-0.60 |         244 |              72 | BEL     | European Tour          |
|   69 | Harry Higgs             |        \-0.59 |         191 |              87 | USA     | PGA Tour               |
|   70 | Carlos Ortiz            |        \-0.59 |         270 |              68 | MEX     | PGA Tour               |
|   71 | Keegan Bradley          |        \-0.58 |         263 |              66 | USA     | PGA Tour               |
|   72 | Thomas Detry            |        \-0.58 |         267 |              82 | BEL     | European Tour          |
|   73 | Alex Noren              |        \-0.57 |         250 |              78 | SWE     | PGA Tour               |
|   74 | Ryan Moore              |        \-0.57 |         208 |              50 | USA     | PGA Tour               |
|   75 | Brendon Todd            |        \-0.56 |         115 |              70 | USA     | PGA Tour               |
|   76 | Matt Jones              |        \-0.56 |         246 |              71 | AUS     | PGA Tour               |
|   77 | Thorbjorn Olesen        |        \-0.55 |         187 |              16 | DEN     | European Tour          |
|   78 | Bernd Wiesberger        |        \-0.55 |         181 |              65 | AUT     | European Tour          |
|   79 | Branden Grace           |        \-0.54 |         260 |              64 | RSA     | PGA Tour               |
|   80 | Dylan Frittelli         |        \-0.53 |         299 |              80 | RSA     | PGA Tour               |
|   81 | Patrick Rodgers         |        \-0.53 |         236 |              72 | USA     | PGA Tour               |
|   82 | Jhonattan Vegas         |        \-0.53 |         239 |              54 | VEN     | PGA Tour               |
|   83 | Robert MacIntyre        |        \-0.52 |         206 |              68 | SCO     | European Tour          |
|   84 | Paul Waring             |        \-0.52 |         216 |              66 | ENG     | European Tour          |
|   85 | Martin Kaymer           |        \-0.51 |         238 |              59 | GER     | European Tour          |
|   86 | Joost Luiten            |        \-0.50 |         217 |              78 | NED     | European Tour          |
|   87 | Talor Gooch             |        \-0.49 |         235 |              71 | USA     | PGA Tour               |
|   88 | Cameron Tringale        |        \-0.47 |         220 |              67 | USA     | PGA Tour               |
|   89 | Matthew NeSmith         |        \-0.47 |         170 |              80 | USA     | PGA Tour               |
|   90 | Cameron Champ           |        \-0.46 |         211 |              69 | USA     | PGA Tour               |
|   91 | Russell Knox            |        \-0.44 |         279 |              77 | SCO     | PGA Tour               |
|   92 | Charl Schwartzel        |        \-0.42 |         177 |              20 | RSA     | PGA Tour               |
|   93 | Brice Garnett           |        \-0.42 |         270 |              66 | USA     | PGA Tour               |
|   94 | Kevin Streelman         |        \-0.42 |         244 |              63 | USA     | PGA Tour               |
|   95 | Cameron Smith           |        \-0.41 |         236 |              64 | AUS     | PGA Tour               |
|   96 | Chez Reavie             |        \-0.40 |         265 |              79 | USA     | PGA Tour               |
|   97 | Andrew Landry           |        \-0.40 |         231 |              59 | USA     | PGA Tour               |
|   98 | Mike Lorenzo-Vera       |        \-0.40 |         223 |              62 | FRA     | European Tour          |
|   99 | Doc Redman              |        \-0.39 |         132 |              76 | USA     | PGA Tour               |
|  100 | Danny Willett           |        \-0.39 |         209 |              62 | ENG     | European Tour          |
|  101 | Bronson Burgoon         |        \-0.36 |         205 |              62 | USA     | PGA Tour               |
|  102 | Andrew Putnam           |        \-0.36 |         243 |              60 | USA     | PGA Tour               |
|  103 | Mark Hubbard            |        \-0.36 |         252 |              83 | USA     | PGA Tour               |
|  104 | Phil Mickelson          |        \-0.35 |         206 |              51 | USA     | PGA Tour               |
|  105 | Danny Lee               |        \-0.34 |         234 |              57 | NZL     | PGA Tour               |
|  106 | Ryan McCormick          |        \-0.33 |          53 |              14 | USA     | Korn Ferry Tour        |
|  107 | Luke List               |        \-0.33 |         235 |              57 | USA     | PGA Tour               |
|  108 | Nate Lashley            |        \-0.33 |         213 |              54 | USA     | PGA Tour               |
|  109 | J.B. Holmes             |        \-0.32 |         197 |              44 | USA     | PGA Tour               |
|  110 | Takumi Kanaya(Am)       |        \-0.32 |          50 |              14 | JPN     | Japan Golf Tour        |
|  111 | Maverick McNealy        |        \-0.32 |         228 |              82 | USA     | PGA Tour               |
|  112 | Pat Perez               |        \-0.32 |         208 |              51 | USA     | PGA Tour               |
|  113 | Graeme McDowell         |        \-0.31 |         231 |              56 | NIR     | PGA Tour               |
|  114 | Adam Long               |        \-0.31 |         259 |              80 | USA     | PGA Tour               |
|  115 | Joseph Bramlett         |        \-0.30 |         206 |              79 | USA     | PGA Tour               |
|  116 | Aaron Baddeley          |        \-0.30 |         191 |              35 | AUS     | PGA Tour               |
|  117 | Chris Kirk              |        \-0.29 |         196 |              19 | USA     | PGA Tour               |
|  118 | Zach Johnson            |        \-0.29 |         218 |              47 | USA     | PGA Tour               |
|  119 | Tom Hoge                |        \-0.28 |         271 |              72 | USA     | PGA Tour               |
|  120 | Denny McCarthy          |        \-0.28 |         256 |              74 | USA     | PGA Tour               |
|  121 | Russell Henley          |        \-0.28 |         217 |              53 | USA     | PGA Tour               |
|  122 | Tom Lewis               |        \-0.27 |         215 |              66 | ENG     | European Tour          |
|  123 | Kurt Kitayama           |        \-0.27 |         221 |              74 | USA     | European Tour          |
|  124 | Charley Hoffman         |        \-0.27 |         239 |              57 | USA     | PGA Tour               |
|  125 | Lanto Griffin           |        \-0.25 |         275 |              84 | USA     | PGA Tour               |
|  126 | Aaron Wise              |        \-0.25 |         216 |              47 | USA     | PGA Tour               |
|  127 | Matthew Wolff           |        \-0.23 |          71 |              65 | USA     | PGA Tour               |
|  128 | Wyndham Clark           |        \-0.22 |         228 |              69 | USA     | PGA Tour               |
|  129 | Matt Wallace            |        \-0.22 |         290 |              80 | ENG     | European Tour          |
|  130 | Scott Piercy            |        \-0.21 |         217 |              64 | USA     | PGA Tour               |
|  131 | Ben Martin              |        \-0.21 |         147 |              54 | USA     | PGA Tour               |
|  132 | Brian Stuard            |        \-0.21 |         262 |              75 | USA     | PGA Tour               |
|  133 | Michael Thompson        |        \-0.21 |         181 |              49 | USA     | PGA Tour               |
|  134 | Victor Perez            |        \-0.20 |         236 |              62 | FRA     | European Tour          |
|  135 | Scott Stallings         |        \-0.19 |         241 |              60 | USA     | PGA Tour               |
|  136 | Kyle Stanley            |        \-0.17 |         241 |              61 | USA     | PGA Tour               |
|  137 | Emiliano Grillo         |        \-0.17 |         246 |              50 | ARG     | PGA Tour               |
|  138 | Sam Burns               |        \-0.16 |         206 |              48 | USA     | PGA Tour               |
|  139 | Adam Schenk             |        \-0.16 |         294 |              72 | USA     | PGA Tour               |
|  140 | Eddie Pepperell         |        \-0.16 |         197 |              48 | ENG     | European Tour          |
|  141 | Benjamin Hebert         |        \-0.15 |         234 |              74 | FRA     | European Tour          |
|  142 | Nick Hardy              |        \-0.15 |          76 |              28 | USA     | Korn Ferry Tour        |
|  143 | Nick Watney             |        \-0.14 |         230 |              55 | USA     | PGA Tour               |
|  144 | Francesco Molinari      |        \-0.13 |         213 |              49 | ITA     | PGA Tour               |
|  145 | Shugo Imahira           |        \-0.12 |         269 |              82 | JPN     | Japan Golf Tour        |
|  146 | Jordan L Smith          |        \-0.11 |         247 |              66 | ENG     | European Tour          |
|  147 | Martin Laird            |        \-0.11 |         210 |              63 | SCO     | PGA Tour               |
|  148 | Gavin Green             |        \-0.11 |         256 |              83 | MAS     | European Tour          |
|  149 | Peter Uihlein           |        \-0.11 |         244 |              61 | USA     | PGA Tour               |
|  150 | Keith Mitchell          |        \-0.11 |         260 |              62 | USA     | PGA Tour               |
|  151 | Miguel A Jimenez        |        \-0.10 |          59 |              18 | ESP     | European Tour          |
|  152 | Jazz Janewattananond    |        \-0.10 |         304 |              98 | THA     | Asian Tour             |
|  153 | Stewart Cink            |        \-0.10 |         205 |              59 | USA     | PGA Tour               |
|  154 | Greyson Sigg            |        \-0.09 |         160 |              62 | USA     | PGA Tour Canada        |
|  155 | Brendan Steele          |        \-0.08 |         197 |              54 | USA     | PGA Tour               |
|  156 | George Coetzee          |        \-0.08 |         252 |              84 | RSA     | European Tour          |
|  157 | Marcus Kinhult          |        \-0.07 |         226 |              60 | SWE     | European Tour          |
|  158 | Chesson Hadley          |        \-0.06 |         259 |              56 | USA     | PGA Tour               |
|  159 | Cameron Davis           |        \-0.06 |         233 |              80 | AUS     | PGA Tour               |
|  160 | Sean O’Hair             |        \-0.05 |         132 |              16 | USA     | Korn Ferry Tour        |
|  161 | Zhang Xinjun            |        \-0.05 |         267 |              81 | CHN     | PGA Tour               |
|  162 | Mikko Korhonen          |        \-0.05 |         211 |              64 | FIN     | European Tour          |
|  163 | Gunn Charoenkul         |        \-0.04 |         217 |              69 | THA     | Japan Golf Tour        |
|  164 | Brandon Harkins         |        \-0.04 |         254 |              50 | USA     | Korn Ferry Tour        |
|  165 | Andrew Johnston         |        \-0.04 |         154 |              41 | ENG     | European Tour          |
|  166 | Cameron Percy           |        \-0.04 |         204 |              57 | AUS     | PGA Tour               |
|  167 | Romain Langasque        |        \-0.03 |         237 |              71 | FRA     | European Tour          |
|  168 | Sam Ryder               |        \-0.02 |         252 |              72 | USA     | PGA Tour               |
|  169 | Shaun Norris            |        \-0.02 |         286 |              85 | RSA     | Japan Golf Tour        |
|  170 | Tyler Duncan(Jul1989)   |        \-0.02 |         283 |              80 | USA     | PGA Tour               |
|  171 | Hudson Swafford         |          0.01 |         185 |              27 | USA     | PGA Tour               |
|  172 | Augusto Nunez           |          0.01 |         208 |              58 | ARG     | PGA Tour Latinoamerica |
|  173 | D.J. Trahan             |          0.02 |         116 |              53 | USA     | PGA Tour               |
|  174 | Jason Scrivener         |          0.02 |         261 |              73 | AUS     | European Tour          |
|  175 | Justin Harding          |          0.02 |         256 |              81 | RSA     | European Tour          |
|  176 | Haotong Li              |          0.02 |         250 |              62 | CHN     | European Tour          |
|  177 | Grayson Murray          |          0.03 |         186 |              44 | USA     | PGA Tour               |
|  178 | Zac Blair               |          0.04 |         261 |              86 | USA     | PGA Tour               |
|  179 | Brandon Wu              |          0.04 |          35 |              27 | USA     | PGA Tour               |
|  180 | Sunghoon Kang           |          0.04 |         256 |              72 | KOR     | PGA Tour               |
|  181 | Sepp Straka             |          0.04 |         256 |              62 | AUT     | PGA Tour               |
|  182 | Brad Kennedy            |          0.05 |         211 |              62 | AUS     | Japan Golf Tour        |
|  183 | Wes Roach               |          0.05 |         246 |              66 | USA     | PGA Tour               |
|  184 | Chan Kim                |          0.05 |         140 |              66 | USA     | Japan Golf Tour        |
|  185 | Troy Merritt            |          0.05 |         240 |              73 | USA     | PGA Tour               |
|  186 | James Hahn              |          0.05 |         182 |              30 | USA     | PGA Tour               |
|  187 | Andy Sullivan           |          0.06 |         252 |              72 | ENG     | European Tour          |
|  188 | Jason Dufner            |          0.06 |         212 |              52 | USA     | PGA Tour               |
|  189 | John Huh                |          0.07 |         181 |              38 | USA     | PGA Tour               |
|  190 | Steve Stricker          |          0.07 |          92 |              18 | USA     | PGA Tour               |
|  191 | Beau Hossler            |          0.07 |         294 |              78 | USA     | PGA Tour               |
|  192 | Dylan Wu                |          0.08 |         106 |              56 | USA     | Korn Ferry Tour        |
|  193 | Bo Hoag                 |          0.09 |         258 |              77 | USA     | PGA Tour               |
|  194 | Lucas Herbert           |          0.09 |         198 |              65 | AUS     | European Tour          |
|  195 | Henrik Norlander        |          0.09 |         243 |              74 | SWE     | PGA Tour               |
|  196 | Ross Fisher             |          0.09 |         223 |              63 | ENG     | European Tour          |
|  197 | Davis Riley             |          0.09 |          99 |              64 | USA     | Korn Ferry Tour        |
|  198 | Ryan Fox                |          0.10 |         258 |              68 | NZL     | European Tour          |
|  199 | Kalle Samooja           |          0.10 |         219 |              65 | FIN     | European Tour          |
|  200 | Scott Jamieson          |          0.13 |         223 |              64 | SCO     | European Tour          |

Current Golf Ratings
