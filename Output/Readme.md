Current Golf Ratings
================
DSMok1
March 04, 2020

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
|    1 | Rory McIlroy            |        \-2.28 |         249 |              88 | NIR     | PGA Tour               |
|    2 | Jon Rahm                |        \-2.19 |         274 |              87 | ESP     | PGA Tour               |
|    3 | Justin Thomas           |        \-1.88 |         253 |              80 | USA     | PGA Tour               |
|    4 | Webb Simpson            |        \-1.56 |         258 |              82 | USA     | PGA Tour               |
|    5 | Hideki Matsuyama        |        \-1.51 |         275 |             101 | JPN     | PGA Tour               |
|    6 | Patrick Cantlay         |        \-1.47 |         228 |              74 | USA     | PGA Tour               |
|    7 | Tommy Fleetwood         |        \-1.45 |         316 |             100 | ENG     | PGA Tour               |
|    8 | Xander Schauffele       |        \-1.45 |         275 |              76 | USA     | PGA Tour               |
|    9 | Dustin Johnson          |        \-1.32 |         236 |              70 | USA     | PGA Tour               |
|   10 | Adam Scott              |        \-1.28 |         225 |              74 | AUS     | PGA Tour               |
|   11 | Patrick Reed            |        \-1.23 |         336 |             116 | USA     | PGA Tour               |
|   12 | Tiger Woods             |        \-1.23 |         128 |              40 | USA     | PGA Tour               |
|   13 | Rickie Fowler           |        \-1.17 |         250 |              76 | USA     | PGA Tour               |
|   14 | Bryson DeChambeau       |        \-1.14 |         276 |              84 | USA     | PGA Tour               |
|   15 | Gary Woodland           |        \-1.13 |         272 |              79 | USA     | PGA Tour               |
|   16 | Justin Rose             |        \-1.05 |         270 |              88 | ENG     | PGA Tour               |
|   17 | Collin Morikawa         |        \-1.04 |          79 |              75 | USA     | PGA Tour               |
|   18 | Tony Finau              |        \-1.01 |         306 |             100 | USA     | PGA Tour               |
|   19 | Matt Kuchar             |        \-1.00 |         299 |              90 | USA     | PGA Tour               |
|   20 | Brooks Koepka           |        \-1.00 |         238 |              72 | USA     | PGA Tour               |
|   21 | Paul Casey              |        \-0.98 |         264 |              90 | ENG     | PGA Tour               |
|   22 | Louis Oosthuizen        |        \-0.96 |         240 |              90 | RSA     | PGA Tour               |
|   23 | Sungjae Im              |        \-0.90 |         374 |             127 | KOR     | PGA Tour               |
|   24 | Jason Day               |        \-0.88 |         212 |              64 | AUS     | PGA Tour               |
|   25 | Tyrrell Hatton          |        \-0.81 |         252 |              80 | ENG     | PGA Tour               |
|   26 | Billy Horschel          |        \-0.78 |         272 |              97 | USA     | PGA Tour               |
|   27 | Marc Leishman           |        \-0.74 |         266 |              76 | AUS     | PGA Tour               |
|   28 | Abraham Ancer           |        \-0.74 |         305 |             100 | MEX     | PGA Tour               |
|   29 | Byeong Hun An           |        \-0.74 |         294 |              93 | KOR     | PGA Tour               |
|   30 | Daniel Berger           |        \-0.71 |         246 |              88 | USA     | PGA Tour               |
|   31 | Shane Lowry             |        \-0.70 |         267 |              82 | IRL     | European Tour(3)       |
|   32 | Viktor Hovland          |        \-0.70 |          86 |              74 | NOR     | PGA Tour               |
|   33 | Matthew Fitzpatrick     |        \-0.69 |         298 |             106 | ENG     | PGA Tour               |
|   34 | Scottie Scheffler       |        \-0.68 |         142 |             110 | USA     | PGA Tour               |
|   35 | Henrik Stenson          |        \-0.67 |         242 |              88 | SWE     | PGA Tour               |
|   36 | Brandt Snedeker         |        \-0.66 |         244 |              93 | USA     | PGA Tour               |
|   37 | Sergio Garcia           |        \-0.56 |         253 |              92 | ESP     | PGA Tour               |
|   38 | JT Poston               |        \-0.50 |         273 |             100 | USA     | PGA Tour               |
|   39 | Bubba Watson            |        \-0.50 |         229 |              72 | USA     | PGA Tour               |
|   40 | Vaughn Taylor           |        \-0.47 |         263 |              98 | USA     | PGA Tour               |
|   41 | Rafael Cabrera Bello    |        \-0.47 |         314 |             108 | ESP     | PGA Tour               |
|   42 | Adam Hadwin             |        \-0.46 |         266 |              79 | CAN     | PGA Tour               |
|   43 | Kevin Na                |        \-0.46 |         247 |              75 | USA     | PGA Tour               |
|   44 | Kevin Kisner            |        \-0.46 |         279 |              99 | USA     | PGA Tour               |
|   45 | Bud Cauley              |        \-0.46 |         223 |              82 | USA     | PGA Tour               |
|   46 | Ryan Moore              |        \-0.43 |         232 |              72 | USA     | PGA Tour               |
|   47 | Ian Poulter             |        \-0.43 |         288 |              78 | ENG     | PGA Tour               |
|   48 | Joaquin Niemann         |        \-0.43 |         192 |             102 | CHI     | PGA Tour               |
|   49 | Charles Howell III      |        \-0.41 |         275 |              93 | USA     | PGA Tour               |
|   50 | Ryan Palmer             |        \-0.36 |         198 |              70 | USA     | PGA Tour               |
|   51 | Nick Taylor             |        \-0.36 |         282 |              96 | CAN     | PGA Tour               |
|   52 | Erik van Rooyen         |        \-0.35 |         293 |             111 | RSA     | European Tour(3)       |
|   53 | Russell Knox            |        \-0.34 |         299 |              99 | SCO     | PGA Tour               |
|   54 | Matthias Schwab         |        \-0.34 |         258 |              91 | AUT     | European Tour(3)       |
|   55 | Carlos Ortiz            |        \-0.34 |         287 |              94 | MEX     | PGA Tour               |
|   56 | Juan Sebastian Munoz    |        \-0.34 |         278 |              98 | COL     | PGA Tour               |
|   57 | Andrew Putnam           |        \-0.33 |         262 |              80 | USA     | PGA Tour               |
|   58 | Jim Furyk               |        \-0.33 |         173 |              69 | USA     | PGA Tour               |
|   59 | Chez Reavie             |        \-0.30 |         291 |              99 | USA     | PGA Tour               |
|   60 | Jordan Spieth           |        \-0.30 |         255 |              89 | USA     | PGA Tour               |
|   61 | Lee Westwood            |        \-0.30 |         234 |              73 | ENG     | European Tour(3)       |
|   62 | Denny McCarthy          |        \-0.30 |         271 |              96 | USA     | PGA Tour               |
|   63 | Robert MacIntyre        |        \-0.30 |         202 |              86 | SCO     | European Tour          |
|   64 | Harris English          |        \-0.29 |         265 |             101 | USA     | PGA Tour               |
|   65 | Rory Sabbatini          |        \-0.27 |         267 |             112 | RSA     | PGA Tour               |
|   66 | Thomas Pieters          |        \-0.27 |         256 |              90 | BEL     | European Tour(3)       |
|   67 | Victor Perez            |        \-0.26 |         247 |              74 | FRA     | European Tour(3)       |
|   68 | Brendon Todd            |        \-0.26 |         115 |              78 | USA     | PGA Tour               |
|   69 | Jason Kokrak            |        \-0.26 |         283 |              91 | USA     | PGA Tour               |
|   70 | Martin Kaymer           |        \-0.25 |         262 |              93 | GER     | European Tour(3)       |
|   71 | Alex Noren              |        \-0.24 |         268 |             102 | SWE     | PGA Tour               |
|   72 | Brian Harman            |        \-0.24 |         283 |              96 | USA     | PGA Tour               |
|   73 | Scott Piercy            |        \-0.23 |         235 |              90 | USA     | PGA Tour               |
|   74 | Joel Dahmen             |        \-0.23 |         266 |             100 | USA     | PGA Tour               |
|   75 | Corey Conners           |        \-0.22 |         292 |              96 | CAN     | PGA Tour               |
|   76 | Cameron Smith           |        \-0.21 |         258 |              84 | AUS     | PGA Tour               |
|   77 | Bernd Wiesberger        |        \-0.21 |         217 |              93 | AUT     | European Tour(3)       |
|   78 | Thomas Detry            |        \-0.21 |         281 |             102 | BEL     | European Tour          |
|   79 | Thorbjorn Olesen        |        \-0.20 |         209 |              36 | DEN     | Major Championship     |
|   80 | Lanto Griffin           |        \-0.20 |         286 |             109 | USA     | PGA Tour               |
|   81 | Sean O’Hair             |        \-0.18 |         154 |              12 | USA     | Korn Ferry Tour KGT    |
|   82 | Nate Lashley            |        \-0.17 |         236 |              72 | USA     | PGA Tour               |
|   83 | Paul Waring             |        \-0.17 |         234 |              80 | ENG     | European Tour          |
|   84 | Wyndham Clark           |        \-0.17 |         218 |              85 | USA     | PGA Tour               |
|   85 | Kevin Streelman         |        \-0.17 |         267 |              86 | USA     | PGA Tour               |
|   86 | Lucas Glover            |        \-0.16 |         262 |              99 | USA     | PGA Tour               |
|   87 | Max Homa                |        \-0.16 |         235 |              92 | USA     | PGA Tour               |
|   88 | Harry Higgs             |        \-0.15 |         181 |             108 | USA     | PGA Tour               |
|   89 | Joost Luiten            |        \-0.15 |         239 |              94 | NED     | European Tour(3)       |
|   90 | Harold Varner III       |        \-0.14 |         299 |              90 | USA     | PGA Tour               |
|   91 | Mike Lorenzo-Vera       |        \-0.14 |         235 |              84 | FRA     | European Tour(3)       |
|   92 | Christiaan Bezuidenhout |        \-0.14 |         273 |             106 | RSA     | European Tour          |
|   93 | Cameron Tringale        |        \-0.14 |         249 |              87 | USA     | PGA Tour               |
|   94 | Matt Jones              |        \-0.13 |         258 |              91 | AUS     | PGA Tour               |
|   95 | Keegan Bradley          |        \-0.12 |         287 |              84 | USA     | PGA Tour               |
|   96 | Talor Gooch             |        \-0.11 |         254 |              79 | USA     | PGA Tour               |
|   97 | Phil Mickelson          |        \-0.10 |         234 |              67 | USA     | PGA Tour               |
|   98 | Pat Perez               |        \-0.08 |         232 |              65 | USA     | PGA Tour               |
|   99 | Charl Schwartzel        |        \-0.08 |         199 |              30 | RSA     | PGA Tour               |
|  100 | Danny Willett           |        \-0.07 |         213 |              86 | ENG     | PGA Tour               |
|  101 | Jhonattan Vegas         |        \-0.07 |         255 |              80 | VEN     | PGA Tour               |
|  102 | Branden Grace           |        \-0.06 |         282 |              88 | RSA     | PGA Tour               |
|  103 | Matthew NeSmith         |        \-0.02 |         162 |             102 | USA     | PGA Tour               |
|  104 | Bronson Burgoon         |        \-0.02 |         199 |              74 | USA     | PGA Tour               |
|  105 | Aaron Wise              |        \-0.01 |         235 |              73 | USA     | PGA Tour               |
|  106 | Adam Schenk             |          0.01 |         313 |             102 | USA     | PGA Tour               |
|  107 | Emiliano Grillo         |          0.01 |         272 |              76 | ARG     | PGA Tour               |
|  108 | J.B. Holmes             |          0.01 |         227 |              63 | USA     | PGA Tour               |
|  109 | Tom Hoge                |          0.01 |         285 |              96 | USA     | PGA Tour               |
|  110 | Takumi Kanaya(Am)       |          0.02 |          50 |              22 | JPN     | Japan Golf Tour        |
|  111 | Russell Henley          |          0.02 |         247 |              73 | USA     | PGA Tour               |
|  112 | Adam Long               |          0.03 |         274 |              99 | USA     | PGA Tour               |
|  113 | Nick Watney             |          0.03 |         252 |              79 | USA     | PGA Tour               |
|  114 | Dylan Frittelli         |          0.04 |         317 |              98 | RSA     | PGA Tour               |
|  115 | Danny Lee               |          0.04 |         264 |              83 | NZL     | PGA Tour               |
|  116 | Aaron Baddeley          |          0.04 |         213 |              61 | AUS     | PGA Tour               |
|  117 | Doc Redman              |          0.05 |         120 |              90 | USA     | PGA Tour               |
|  118 | Tom Lewis               |          0.06 |         231 |              72 | ENG     | European Tour(3)       |
|  119 | Mark Hubbard            |          0.06 |         266 |             106 | USA     | PGA Tour               |
|  120 | Graeme McDowell         |          0.07 |         259 |              89 | NIR     | PGA Tour               |
|  121 | Brice Garnett           |          0.07 |         285 |              88 | USA     | PGA Tour               |
|  122 | Zhang Xinjun            |          0.07 |         278 |             108 | CHN     | PGA Tour               |
|  123 | Matthew Wolff           |          0.08 |          61 |              53 | USA     | PGA Tour               |
|  124 | Cameron Champ           |          0.08 |         209 |              79 | USA     | PGA Tour               |
|  125 | Brendan Steele          |          0.08 |         217 |              70 | USA     | PGA Tour               |
|  126 | Kurt Kitayama           |          0.08 |         242 |              96 | USA     | European Tour(3)       |
|  127 | Patrick Rodgers         |          0.09 |         246 |              73 | USA     | PGA Tour               |
|  128 | Zach Johnson            |          0.11 |         240 |              73 | USA     | PGA Tour               |
|  129 | Kevin Tway              |          0.12 |         272 |              80 | USA     | PGA Tour               |
|  130 | Will Zalatoris          |          0.12 |          93 |              67 | USA     | Korn Ferry Tour KGT    |
|  131 | Andrew Landry           |          0.12 |         250 |              81 | USA     | PGA Tour               |
|  132 | Maverick McNealy        |          0.13 |         220 |              99 | USA     | PGA Tour               |
|  133 | Jazz Janewattananond    |          0.13 |         326 |             134 | THA     | Asian Tour             |
|  134 | Matt Wallace            |          0.15 |         304 |             104 | ENG     | European Tour(3)       |
|  135 | Sam Ryder               |          0.15 |         267 |              80 | USA     | PGA Tour               |
|  136 | Haotong Li              |          0.16 |         272 |              84 | CHN     | European Tour(3)       |
|  137 | Sam Burns               |          0.16 |         200 |              74 | USA     | PGA Tour               |
|  138 | Charley Hoffman         |          0.16 |         271 |              81 | USA     | PGA Tour               |
|  139 | Kyle Stanley            |          0.16 |         269 |              85 | USA     | PGA Tour               |
|  140 | Eddie Pepperell         |          0.19 |         221 |              70 | ENG     | European Tour(3)       |
|  141 | Francesco Molinari      |          0.20 |         247 |              75 | ITA     | PGA Tour               |
|  142 | Mikko Korhonen          |          0.20 |         231 |              82 | FIN     | European Tour(3)       |
|  143 | Brian Stuard            |          0.21 |         286 |             101 | USA     | PGA Tour               |
|  144 | Luke List               |          0.22 |         263 |              79 | USA     | PGA Tour               |
|  145 | Martin Laird            |          0.22 |         240 |              89 | SCO     | PGA Tour               |
|  146 | Shugo Imahira           |          0.22 |         299 |             112 | JPN     | Japan Golf Tour        |
|  147 | Jordan L Smith          |          0.23 |         273 |              84 | ENG     | European Tour(3)       |
|  148 | Scott Stallings         |          0.24 |         259 |              86 | USA     | PGA Tour               |
|  149 | Benjamin Hebert         |          0.24 |         252 |              90 | FRA     | European Tour(3)       |
|  150 | Miguel A Jimenez        |          0.25 |          61 |              20 | ESP     | European Tour(3)       |
|  151 | Stewart Cink            |          0.25 |         233 |              64 | USA     | PGA Tour               |
|  152 | Cameron Davis           |          0.26 |         241 |              92 | AUS     | PGA Tour               |
|  153 | Hudson Swafford         |          0.26 |         209 |              46 | USA     | PGA Tour               |
|  154 | James Hahn              |          0.26 |         212 |              30 | USA     | PGA Tour               |
|  155 | Beau Hossler            |          0.27 |         306 |             100 | USA     | PGA Tour               |
|  156 | Dylan Wu                |          0.27 |         102 |              62 | USA     | Korn Ferry Tour KGT    |
|  157 | Augusto Nunez           |          0.27 |         223 |              78 | ARG     | PGA Tour Latinoamerica |
|  158 | Keith Mitchell          |          0.29 |         279 |              86 | USA     | PGA Tour               |
|  159 | Gavin Green             |          0.30 |         277 |              99 | MAS     | European Tour          |
|  160 | Cameron Percy           |          0.30 |         224 |              65 | AUS     | PGA Tour               |
|  161 | Troy Merritt            |          0.31 |         254 |              83 | USA     | PGA Tour               |
|  162 | Andrew Johnston         |          0.31 |         178 |              49 | ENG     | European Tour          |
|  163 | Ben Martin              |          0.32 |         173 |              55 | USA     | PGA Tour               |
|  164 | Romain Langasque        |          0.32 |         255 |              89 | FRA     | European Tour(3)       |
|  165 | Shaun Norris            |          0.32 |         310 |             102 | RSA     | Japan Golf Tour        |
|  166 | Gunn Charoenkul         |          0.32 |         240 |             108 | THA     | Japan Golf Tour        |
|  167 | Sunghoon Kang           |          0.34 |         285 |              98 | KOR     | PGA Tour               |
|  168 | Richy Werenski          |          0.35 |         251 |              83 | USA     | PGA Tour               |
|  169 | George Coetzee          |          0.35 |         270 |              98 | RSA     | European Tour(3)       |
|  170 | Kyounghoon Lee          |          0.35 |         304 |              91 | KOR     | PGA Tour               |
|  171 | D.J. Trahan             |          0.36 |         131 |              63 | USA     | PGA Tour               |
|  172 | Greyson Sigg            |          0.36 |         162 |              66 | USA     | PGA Tour Canada        |
|  173 | Luke Donald             |          0.37 |         140 |              56 | ENG     | PGA Tour               |
|  174 | Grayson Murray          |          0.37 |         217 |              56 | USA     | PGA Tour               |
|  175 | Brandon Wu              |          0.38 |          35 |              31 | USA     | PGA Tour               |
|  176 | Ross Fisher             |          0.38 |         247 |              75 | ENG     | European Tour(3)       |
|  177 | Marcus Kinhult          |          0.39 |         244 |              76 | SWE     | European Tour(3)       |
|  178 | Justin Harding          |          0.39 |         267 |             103 | RSA     | European Tour(3)       |
|  179 | Brad Kennedy            |          0.39 |         247 |              90 | AUS     | Japan Golf Tour        |
|  180 | Chan Kim                |          0.39 |         160 |              86 | USA     | Japan Golf Tour        |
|  181 | Jason Dufner            |          0.40 |         240 |              76 | USA     | PGA Tour               |
|  182 | Davis Riley             |          0.40 |          93 |              81 | USA     | Korn Ferry Tour KGT    |
|  183 | John Huh                |          0.40 |         211 |              42 | USA     | PGA Tour               |
|  184 | Jason Scrivener         |          0.41 |         271 |              87 | AUS     | European Tour(3)       |
|  185 | Peter Malnati           |          0.42 |         267 |              91 | USA     | PGA Tour               |
|  186 | Bo Hoag                 |          0.42 |         262 |             114 | USA     | PGA Tour               |
|  187 | Henrik Norlander        |          0.42 |         250 |             104 | SWE     | PGA Tour               |
|  188 | Brian Gay               |          0.43 |         280 |              88 | USA     | PGA Tour               |
|  189 | Steve Stricker          |          0.43 |         108 |              24 | USA     | PGA Tour               |
|  190 | Lucas Herbert           |          0.44 |         202 |              81 | AUS     | European Tour          |
|  191 | Adria Arnaus            |          0.44 |         246 |              91 | ESP     | European Tour(3)       |
|  192 | Michael Thompson        |          0.44 |         203 |              73 | USA     | PGA Tour               |
|  193 | Andy Sullivan           |          0.45 |         268 |              87 | ENG     | European Tour          |
|  194 | Ryan Fox                |          0.45 |         282 |              84 | NZL     | European Tour(3)       |
|  195 | Joseph Bramlett         |          0.46 |         198 |             103 | USA     | PGA Tour               |
|  196 | Jimmy Walker            |          0.46 |         224 |              75 | USA     | PGA Tour               |
|  197 | Chase Seiffert          |          0.46 |         142 |              98 | USA     | PGA Tour               |
|  198 | Rob Oppenheim           |          0.47 |         297 |             110 | USA     | PGA Tour               |
|  199 | Richie Ramsay           |          0.47 |         240 |              86 | SCO     | European Tour(3)       |
|  200 | Kramer Hickok           |          0.48 |         273 |              87 | USA     | PGA Tour               |

Current Golf Ratings
