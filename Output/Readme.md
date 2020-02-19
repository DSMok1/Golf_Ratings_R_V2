Current Golf Ratings
================
DSMok1
February 19, 2020

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
|    1 | Rory McIlroy            |        \-2.21 |         245 |              88 | NIR     | PGA Tour               |
|    2 | Jon Rahm                |        \-2.10 |         270 |              87 | ESP     | PGA Tour               |
|    3 | Webb Simpson            |        \-1.83 |         254 |              82 | USA     | PGA Tour               |
|    4 | Justin Thomas           |        \-1.79 |         251 |              82 | USA     | PGA Tour               |
|    5 | Patrick Cantlay         |        \-1.48 |         228 |              78 | USA     | PGA Tour               |
|    6 | Dustin Johnson          |        \-1.47 |         232 |              70 | USA     | PGA Tour               |
|    7 | Xander Schauffele       |        \-1.42 |         273 |              76 | USA     | PGA Tour               |
|    8 | Hideki Matsuyama        |        \-1.41 |         271 |             101 | JPN     | PGA Tour               |
|    9 | Tommy Fleetwood         |        \-1.40 |         308 |             104 | ENG     | PGA Tour               |
|   10 | Adam Scott              |        \-1.34 |         225 |              70 | AUS     | PGA Tour               |
|   11 | Louis Oosthuizen        |        \-1.26 |         238 |              92 | RSA     | PGA Tour               |
|   12 | Rickie Fowler           |        \-1.24 |         252 |              80 | USA     | PGA Tour               |
|   13 | Tiger Woods             |        \-1.23 |         128 |              44 | USA     | PGA Tour               |
|   14 | Brooks Koepka           |        \-1.17 |         238 |              72 | USA     | PGA Tour               |
|   15 | Justin Rose             |        \-1.16 |         268 |              84 | ENG     | PGA Tour               |
|   16 | Collin Morikawa         |        \-1.14 |          75 |              67 | USA     | PGA Tour               |
|   17 | Patrick Reed            |        \-1.06 |         332 |             112 | USA     | PGA Tour               |
|   18 | Tony Finau              |        \-1.02 |         306 |             104 | USA     | PGA Tour               |
|   19 | Matt Kuchar             |        \-1.01 |         295 |              90 | USA     | PGA Tour               |
|   20 | Gary Woodland           |        \-0.98 |         268 |              79 | USA     | PGA Tour               |
|   21 | Bryson DeChambeau       |        \-0.92 |         274 |              84 | USA     | PGA Tour               |
|   22 | Jason Day               |        \-0.89 |         212 |              62 | AUS     | PGA Tour               |
|   23 | Paul Casey              |        \-0.89 |         264 |              90 | ENG     | PGA Tour               |
|   24 | Marc Leishman           |        \-0.81 |         266 |              76 | AUS     | PGA Tour               |
|   25 | Sungjae Im              |        \-0.80 |         366 |             123 | KOR     | PGA Tour               |
|   26 | Viktor Hovland          |        \-0.76 |          80 |              70 | NOR     | PGA Tour               |
|   27 | Matthew Fitzpatrick     |        \-0.74 |         298 |             102 | ENG     | European Tour(3)       |
|   28 | Henrik Stenson          |        \-0.70 |         242 |              92 | SWE     | PGA Tour               |
|   29 | Shane Lowry             |        \-0.69 |         259 |              82 | IRL     | European Tour(3)       |
|   30 | Scottie Scheffler       |        \-0.68 |         138 |             104 | USA     | PGA Tour               |
|   31 | Abraham Ancer           |        \-0.67 |         301 |             100 | MEX     | PGA Tour               |
|   32 | Billy Horschel          |        \-0.66 |         268 |              97 | USA     | PGA Tour               |
|   33 | Brandt Snedeker         |        \-0.64 |         240 |              89 | USA     | PGA Tour               |
|   34 | Byeong Hun An           |        \-0.63 |         286 |              93 | KOR     | PGA Tour               |
|   35 | Tyrrell Hatton          |        \-0.63 |         252 |              82 | ENG     | PGA Tour               |
|   36 | Sergio Garcia           |        \-0.61 |         253 |              92 | ESP     | PGA Tour               |
|   37 | Daniel Berger           |        \-0.58 |         244 |              92 | USA     | PGA Tour               |
|   38 | Charles Howell III      |        \-0.51 |         275 |              93 | USA     | PGA Tour               |
|   39 | Vaughn Taylor           |        \-0.49 |         261 |              98 | USA     | PGA Tour               |
|   40 | JT Poston               |        \-0.48 |         273 |             100 | USA     | PGA Tour               |
|   41 | Joaquin Niemann         |        \-0.48 |         190 |             104 | CHI     | PGA Tour               |
|   42 | Adam Hadwin             |        \-0.47 |         266 |              79 | CAN     | PGA Tour               |
|   43 | Bud Cauley              |        \-0.47 |         223 |              80 | USA     | PGA Tour               |
|   44 | Ryan Moore              |        \-0.44 |         232 |              72 | USA     | PGA Tour               |
|   45 | Jim Furyk               |        \-0.44 |         171 |              71 | USA     | PGA Tour               |
|   46 | Rafael Cabrera Bello    |        \-0.43 |         314 |             108 | ESP     | PGA Tour               |
|   47 | Mike Lorenzo-Vera       |        \-0.42 |         231 |              80 | FRA     | European Tour(3)       |
|   48 | Jordan Spieth           |        \-0.42 |         251 |              89 | USA     | PGA Tour               |
|   49 | Bubba Watson            |        \-0.42 |         225 |              74 | USA     | PGA Tour               |
|   50 | Kevin Kisner            |        \-0.40 |         279 |              99 | USA     | PGA Tour               |
|   51 | Ian Poulter             |        \-0.40 |         288 |              82 | ENG     | PGA Tour               |
|   52 | Matthias Schwab         |        \-0.40 |         254 |              87 | AUT     | European Tour(3)       |
|   53 | Victor Perez            |        \-0.40 |         243 |              70 | FRA     | European Tour(3)       |
|   54 | Russell Knox            |        \-0.39 |         299 |             101 | SCO     | PGA Tour               |
|   55 | Corey Conners           |        \-0.38 |         286 |              92 | CAN     | PGA Tour               |
|   56 | Nick Taylor             |        \-0.36 |         282 |              98 | CAN     | PGA Tour               |
|   57 | Thomas Pieters          |        \-0.36 |         256 |              90 | BEL     | European Tour(3)       |
|   58 | Denny McCarthy          |        \-0.36 |         269 |              94 | USA     | PGA Tour               |
|   59 | Robert MacIntyre        |        \-0.36 |         198 |              82 | SCO     | European Tour          |
|   60 | Andrew Putnam           |        \-0.34 |         262 |              80 | USA     | PGA Tour               |
|   61 | Jason Kokrak            |        \-0.34 |         279 |              89 | USA     | PGA Tour               |
|   62 | Lucas Glover            |        \-0.34 |         260 |              95 | USA     | PGA Tour               |
|   63 | Alex Noren              |        \-0.33 |         266 |             100 | SWE     | PGA Tour               |
|   64 | Chez Reavie             |        \-0.29 |         287 |              97 | USA     | PGA Tour               |
|   65 | Thomas Detry            |        \-0.28 |         280 |             102 | BEL     | European Tour          |
|   66 | Erik van Rooyen         |        \-0.27 |         290 |             109 | RSA     | European Tour(3)       |
|   67 | Kevin Na                |        \-0.26 |         243 |              77 | USA     | PGA Tour               |
|   68 | Brendon Todd            |        \-0.26 |         111 |              74 | USA     | PGA Tour               |
|   69 | Carlos Ortiz            |        \-0.25 |         283 |              90 | MEX     | PGA Tour               |
|   70 | Brian Harman            |        \-0.25 |         283 |              96 | USA     | PGA Tour               |
|   71 | Sean O’Hair             |        \-0.25 |         156 |              12 | USA     | Korn Ferry Tour KGT    |
|   72 | Rory Sabbatini          |        \-0.25 |         265 |             108 | RSA     | PGA Tour               |
|   73 | Ryan Palmer             |        \-0.25 |         198 |              66 | USA     | PGA Tour               |
|   74 | Martin Kaymer           |        \-0.25 |         262 |              97 | GER     | European Tour(3)       |
|   75 | Bernd Wiesberger        |        \-0.24 |         213 |              89 | AUT     | European Tour(3)       |
|   76 | Juan Sebastian Munoz    |        \-0.24 |         274 |              94 | COL     | PGA Tour               |
|   77 | Scott Piercy            |        \-0.24 |         235 |              86 | USA     | PGA Tour               |
|   78 | Joel Dahmen             |        \-0.24 |         266 |              98 | USA     | PGA Tour               |
|   79 | Thorbjorn Olesen        |        \-0.23 |         209 |              40 | DEN     | Major Championship     |
|   80 | Graeme McDowell         |        \-0.23 |         259 |              89 | NIR     | PGA Tour               |
|   81 | Harry Higgs             |        \-0.22 |         177 |             112 | USA     | PGA Tour               |
|   82 | Paul Waring             |        \-0.20 |         233 |              80 | ENG     | European Tour          |
|   83 | Harris English          |        \-0.20 |         265 |             103 | USA     | PGA Tour               |
|   84 | Lanto Griffin           |        \-0.19 |         282 |             105 | USA     | PGA Tour               |
|   85 | Keegan Bradley          |        \-0.18 |         287 |              90 | USA     | PGA Tour               |
|   86 | Nate Lashley            |        \-0.18 |         236 |              76 | USA     | PGA Tour               |
|   87 | Kevin Streelman         |        \-0.18 |         263 |              88 | USA     | PGA Tour               |
|   88 | Max Homa                |        \-0.17 |         235 |              92 | USA     | PGA Tour               |
|   89 | Tom Lewis               |        \-0.17 |         228 |              74 | ENG     | European Tour(3)       |
|   90 | Cameron Smith           |        \-0.15 |         254 |              86 | AUS     | PGA Tour               |
|   91 | Christiaan Bezuidenhout |        \-0.15 |         271 |             102 | RSA     | European Tour          |
|   92 | Joost Luiten            |        \-0.15 |         235 |              98 | NED     | European Tour(3)       |
|   93 | Matt Jones              |        \-0.14 |         254 |              93 | AUS     | PGA Tour               |
|   94 | Harold Varner III       |        \-0.13 |         299 |              88 | USA     | PGA Tour               |
|   95 | Phil Mickelson          |        \-0.12 |         234 |              73 | USA     | PGA Tour               |
|   96 | Emiliano Grillo         |        \-0.10 |         270 |              74 | ARG     | PGA Tour               |
|   97 | Danny Willett           |        \-0.10 |         211 |              88 | ENG     | PGA Tour               |
|   98 | Lee Westwood            |        \-0.09 |         226 |              73 | ENG     | European Tour(3)       |
|   99 | Pat Perez               |        \-0.09 |         232 |              65 | USA     | PGA Tour               |
|  100 | Branden Grace           |        \-0.08 |         278 |              88 | RSA     | PGA Tour               |
|  101 | Talor Gooch             |        \-0.07 |         250 |              75 | USA     | PGA Tour               |
|  102 | Cameron Tringale        |        \-0.07 |         249 |              87 | USA     | PGA Tour               |
|  103 | Zach Johnson            |        \-0.06 |         240 |              73 | USA     | PGA Tour               |
|  104 | Tom Hoge                |        \-0.06 |         283 |             102 | USA     | PGA Tour               |
|  105 | Wyndham Clark           |        \-0.04 |         214 |              85 | USA     | PGA Tour               |
|  106 | Takumi Kanaya(Am)       |        \-0.03 |          50 |              22 | JPN     | Japan Golf Tour        |
|  107 | Bronson Burgoon         |        \-0.02 |         199 |              74 | USA     | PGA Tour               |
|  108 | Dylan Frittelli         |        \-0.01 |         316 |             100 | RSA     | PGA Tour               |
|  109 | Adam Schenk             |        \-0.01 |         307 |             100 | USA     | PGA Tour               |
|  110 | Kurt Kitayama           |          0.00 |         234 |              92 | USA     | European Tour(3)       |
|  111 | Matthew Wolff           |          0.00 |          57 |              51 | USA     | PGA Tour               |
|  112 | J.B. Holmes             |          0.01 |         227 |              63 | USA     | PGA Tour               |
|  113 | Jazz Janewattananond    |          0.03 |         322 |             130 | THA     | Asian Tour             |
|  114 | Aaron Baddeley          |          0.04 |         213 |              67 | AUS     | PGA Tour               |
|  115 | Doc Redman              |          0.04 |         118 |              90 | USA     | PGA Tour               |
|  116 | Matt Wallace            |          0.04 |         298 |             104 | ENG     | European Tour(3)       |
|  117 | Zhang Xinjun            |          0.05 |         272 |             108 | CHN     | PGA Tour               |
|  118 | Danny Lee               |          0.05 |         262 |              83 | NZL     | PGA Tour               |
|  119 | Kevin Tway              |          0.06 |         270 |              80 | USA     | PGA Tour               |
|  120 | Aaron Wise              |          0.06 |         231 |              77 | USA     | PGA Tour               |
|  121 | Jhonattan Vegas         |          0.06 |         251 |              76 | VEN     | PGA Tour               |
|  122 | Sam Burns               |          0.06 |         196 |              72 | USA     | PGA Tour               |
|  123 | Cameron Champ           |          0.07 |         209 |              79 | USA     | PGA Tour               |
|  124 | Marcus Kinhult          |          0.08 |         243 |              72 | SWE     | European Tour(3)       |
|  125 | Matthew NeSmith         |          0.08 |         154 |             102 | USA     | Korn Ferry Tour KGT    |
|  126 | Sunghoon Kang           |          0.08 |         285 |              94 | KOR     | PGA Tour               |
|  127 | Shugo Imahira           |          0.08 |         295 |             112 | JPN     | Japan Golf Tour        |
|  128 | Will Zalatoris          |          0.10 |          93 |              63 | USA     | Korn Ferry Tour KGT    |
|  129 | Adam Long               |          0.11 |         270 |              99 | USA     | PGA Tour               |
|  130 | Francesco Molinari      |          0.11 |         247 |              73 | ITA     | PGA Tour               |
|  131 | Brian Stuard            |          0.12 |         286 |             101 | USA     | PGA Tour               |
|  132 | Andrew Landry           |          0.12 |         250 |              79 | USA     | PGA Tour               |
|  133 | Nick Watney             |          0.13 |         252 |              77 | USA     | PGA Tour               |
|  134 | Charley Hoffman         |          0.15 |         271 |              81 | USA     | PGA Tour               |
|  135 | Eddie Pepperell         |          0.16 |         223 |              74 | ENG     | European Tour(3)       |
|  136 | Charl Schwartzel        |          0.16 |         195 |              34 | RSA     | PGA Tour               |
|  137 | Henrik Norlander        |          0.17 |         244 |             102 | SWE     | PGA Tour               |
|  138 | Haotong Li              |          0.18 |         271 |              88 | CHN     | European Tour(3)       |
|  139 | Patrick Rodgers         |          0.18 |         240 |              69 | USA     | PGA Tour               |
|  140 | Mark Hubbard            |          0.19 |         264 |             110 | USA     | PGA Tour               |
|  141 | Kyle Stanley            |          0.19 |         265 |              83 | USA     | PGA Tour               |
|  142 | Cameron Percy           |          0.20 |         216 |              65 | AUS     | PGA Tour               |
|  143 | Miguel A Jimenez        |          0.20 |          61 |              20 | ESP     | European Tour(3)       |
|  144 | Romain Langasque        |          0.21 |         256 |              89 | FRA     | European Tour(3)       |
|  145 | Luke List               |          0.21 |         265 |              79 | USA     | PGA Tour               |
|  146 | Russell Henley          |          0.22 |         247 |              73 | USA     | PGA Tour               |
|  147 | Keith Mitchell          |          0.22 |         277 |              88 | USA     | PGA Tour               |
|  148 | D.J. Trahan             |          0.23 |         125 |              63 | USA     | PGA Tour               |
|  149 | Brice Garnett           |          0.24 |         277 |              84 | USA     | PGA Tour               |
|  150 | Scott Stallings         |          0.24 |         259 |              86 | USA     | PGA Tour               |
|  151 | Sam Ryder               |          0.25 |         259 |              78 | USA     | PGA Tour               |
|  152 | Stewart Cink            |          0.25 |         233 |              64 | USA     | PGA Tour               |
|  153 | James Hahn              |          0.25 |         212 |              26 | USA     | PGA Tour               |
|  154 | Gunn Charoenkul         |          0.25 |         240 |             108 | THA     | Japan Golf Tour        |
|  155 | Maverick McNealy        |          0.26 |         212 |              99 | USA     | PGA Tour               |
|  156 | Andrew Johnston         |          0.27 |         178 |              49 | ENG     | European Tour          |
|  157 | Augusto Nunez           |          0.27 |         219 |              76 | ARG     | PGA Tour Latinoamerica |
|  158 | Chesson Hadley          |          0.28 |         271 |              80 | USA     | PGA Tour               |
|  159 | Jordan L Smith          |          0.28 |         272 |              84 | ENG     | European Tour(3)       |
|  160 | Adria Arnaus            |          0.29 |         244 |              91 | ESP     | European Tour(3)       |
|  161 | Troy Merritt            |          0.30 |         254 |              81 | USA     | PGA Tour               |
|  162 | Andy Sullivan           |          0.30 |         265 |              87 | ENG     | European Tour          |
|  163 | Martin Laird            |          0.30 |         236 |              83 | SCO     | PGA Tour               |
|  164 | Benjamin Hebert         |          0.30 |         244 |              86 | FRA     | European Tour(3)       |
|  165 | Peter Malnati           |          0.30 |         267 |              93 | USA     | PGA Tour               |
|  166 | Grayson Murray          |          0.30 |         213 |              56 | USA     | PGA Tour               |
|  167 | Greyson Sigg            |          0.31 |         158 |              62 | USA     | PGA Tour Canada        |
|  168 | Mikko Korhonen          |          0.31 |         227 |              82 | FIN     | European Tour(3)       |
|  169 | Gavin Green             |          0.31 |         273 |              99 | MAS     | European Tour          |
|  170 | Zac Blair               |          0.31 |         287 |             117 | USA     | PGA Tour               |
|  171 | Beau Hossler            |          0.32 |         298 |             100 | USA     | PGA Tour               |
|  172 | Brendan Steele          |          0.32 |         217 |              72 | USA     | PGA Tour               |
|  173 | Brian Gay               |          0.33 |         282 |              90 | USA     | PGA Tour               |
|  174 | Jason Scrivener         |          0.33 |         269 |              87 | AUS     | European Tour(3)       |
|  175 | Davis Riley             |          0.34 |          89 |              81 | USA     | Korn Ferry Tour KGT    |
|  176 | Justin Harding          |          0.35 |         264 |              99 | RSA     | European Tour(3)       |
|  177 | Shaun Norris            |          0.36 |         304 |             102 | RSA     | Japan Golf Tour        |
|  178 | Bo Hoag                 |          0.36 |         256 |             112 | USA     | Korn Ferry Tour KGT    |
|  179 | Chase Seiffert          |          0.36 |         136 |              98 | USA     | PGA Tour               |
|  180 | Brandon Wu              |          0.36 |          35 |              31 | USA     | PGA Tour               |
|  181 | Minwoo Lee              |          0.37 |         100 |              62 | AUS     | European Tour          |
|  182 | Richie Ramsay           |          0.37 |         238 |              86 | SCO     | European Tour(3)       |
|  183 | Roberto Diaz            |          0.38 |         270 |              82 | MEX     | PGA Tour               |
|  184 | Ben Martin              |          0.39 |         169 |              51 | USA     | Korn Ferry Tour KGT    |
|  185 | John Huh                |          0.40 |         211 |              44 | USA     | PGA Tour               |
|  186 | Ryan Fox                |          0.40 |         279 |              84 | NZL     | European Tour(3)       |
|  187 | George Coetzee          |          0.40 |         265 |              97 | RSA     | European Tour(3)       |
|  188 | Sam Horsfield           |          0.41 |         207 |              86 | ENG     | European Tour(3)       |
|  189 | Dylan Wu                |          0.42 |          98 |              58 | USA     | Korn Ferry Tour KGT    |
|  190 | Junggon Hwang           |          0.42 |         273 |              85 | KOR     | Japan Golf Tour        |
|  191 | Cameron Davis           |          0.43 |         233 |              94 | AUS     | PGA Tour               |
|  192 | Steve Stricker          |          0.43 |         108 |              20 | USA     | PGA Tour               |
|  193 | Richy Werenski          |          0.43 |         247 |              81 | USA     | PGA Tour               |
|  194 | Joseph Bramlett         |          0.43 |         192 |              99 | USA     | Korn Ferry Tour KGT    |
|  195 | Ross Fisher             |          0.44 |         243 |              75 | ENG     | European Tour(3)       |
|  196 | Michael Thompson        |          0.44 |         201 |              75 | USA     | PGA Tour               |
|  197 | Chan Kim                |          0.44 |         156 |              86 | USA     | Japan Golf Tour        |
|  198 | Fabian Gomez            |          0.45 |         258 |              99 | ARG     | PGA Tour               |
|  199 | Richard Sterne          |          0.45 |         253 |              71 | RSA     | European Tour(3)       |
|  200 | Tanapat Pichaikul       |          0.46 |          25 |              11 | THA     | ATGT Logo 2            |

Current Golf Ratings
