Current Golf Ratings
================
DSMok1
April 28, 2020

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
|    1 | Rory McIlroy            |        \-2.27 |         241 |              88 | NIR     | PGA Tour               |
|    2 | Jon Rahm                |        \-2.17 |         262 |              87 | ESP     | PGA Tour               |
|    3 | Justin Thomas           |        \-1.86 |         243 |              76 | USA     | PGA Tour               |
|    4 | Webb Simpson            |        \-1.54 |         246 |              78 | USA     | PGA Tour               |
|    5 | Patrick Cantlay         |        \-1.45 |         216 |              74 | USA     | PGA Tour               |
|    6 | Xander Schauffele       |        \-1.41 |         273 |              80 | USA     | PGA Tour               |
|    7 | Hideki Matsuyama        |        \-1.37 |         267 |             101 | JPN     | PGA Tour               |
|    8 | Dustin Johnson          |        \-1.30 |         232 |              70 | USA     | PGA Tour               |
|    9 | Tommy Fleetwood         |        \-1.29 |         304 |             102 | ENG     | PGA Tour               |
|   10 | Bryson DeChambeau       |        \-1.24 |         264 |              84 | USA     | PGA Tour               |
|   11 | Patrick Reed            |        \-1.24 |         326 |             116 | USA     | PGA Tour               |
|   12 | Tiger Woods             |        \-1.20 |         128 |              40 | USA     | PGA Tour               |
|   13 | Rickie Fowler           |        \-1.17 |         238 |              74 | USA     | PGA Tour               |
|   14 | Adam Scott              |        \-1.15 |         217 |              74 | AUS     | PGA Tour               |
|   15 | Collin Morikawa         |        \-1.12 |          83 |              79 | USA     | PGA Tour               |
|   16 | Gary Woodland           |        \-1.11 |         262 |              79 | USA     | PGA Tour               |
|   17 | Tyrrell Hatton          |        \-1.01 |         242 |              80 | ENG     | PGA Tour               |
|   18 | Sungjae Im              |        \-0.98 |         366 |             127 | KOR     | PGA Tour               |
|   19 | Matt Kuchar             |        \-0.98 |         277 |              90 | USA     | PGA Tour               |
|   20 | Paul Casey              |        \-0.96 |         252 |              90 | ENG     | PGA Tour               |
|   21 | Louis Oosthuizen        |        \-0.93 |         228 |              90 | RSA     | PGA Tour               |
|   22 | Justin Rose             |        \-0.92 |         256 |              88 | ENG     | PGA Tour               |
|   23 | Marc Leishman           |        \-0.91 |         258 |              76 | AUS     | PGA Tour               |
|   24 | Tony Finau              |        \-0.91 |         292 |             102 | USA     | PGA Tour               |
|   25 | Brooks Koepka           |        \-0.90 |         228 |              72 | USA     | PGA Tour               |
|   26 | Jason Day               |        \-0.85 |         204 |              64 | AUS     | PGA Tour               |
|   27 | Matthew Fitzpatrick     |        \-0.76 |         288 |             106 | ENG     | PGA Tour               |
|   28 | Billy Horschel          |        \-0.75 |         262 |              97 | USA     | PGA Tour               |
|   29 | Scottie Scheffler       |        \-0.73 |         146 |             114 | USA     | PGA Tour               |
|   30 | Daniel Berger           |        \-0.69 |         232 |              86 | USA     | PGA Tour               |
|   31 | Shane Lowry             |        \-0.68 |         261 |              84 | IRL     | European Tour(3)       |
|   32 | Abraham Ancer           |        \-0.66 |         301 |             102 | MEX     | PGA Tour               |
|   33 | Viktor Hovland          |        \-0.65 |          90 |              76 | NOR     | PGA Tour               |
|   34 | Byeong Hun An           |        \-0.65 |         278 |              93 | KOR     | PGA Tour               |
|   35 | Brandt Snedeker         |        \-0.64 |         228 |              89 | USA     | PGA Tour               |
|   36 | Henrik Stenson          |        \-0.57 |         234 |              86 | SWE     | PGA Tour               |
|   37 | Sergio Garcia           |        \-0.53 |         245 |              88 | ESP     | PGA Tour               |
|   38 | Bud Cauley              |        \-0.48 |         211 |              84 | USA     | PGA Tour               |
|   39 | Kevin Na                |        \-0.46 |         237 |              77 | USA     | PGA Tour               |
|   40 | Ian Poulter             |        \-0.45 |         276 |              82 | ENG     | PGA Tour               |
|   41 | Adam Hadwin             |        \-0.44 |         246 |              75 | CAN     | PGA Tour               |
|   42 | Harris English          |        \-0.41 |         257 |             101 | USA     | PGA Tour               |
|   43 | Ryan Moore              |        \-0.36 |         216 |              72 | USA     | PGA Tour               |
|   44 | Joel Dahmen             |        \-0.36 |         265 |             100 | USA     | PGA Tour               |
|   45 | Joaquin Niemann         |        \-0.36 |         194 |              98 | CHI     | PGA Tour               |
|   46 | Vaughn Taylor           |        \-0.35 |         255 |             100 | USA     | PGA Tour               |
|   47 | Bubba Watson            |        \-0.35 |         215 |              70 | USA     | PGA Tour               |
|   48 | Brendon Todd            |        \-0.34 |         117 |              82 | USA     | PGA Tour               |
|   49 | Ryan Palmer             |        \-0.34 |         188 |              70 | USA     | PGA Tour               |
|   50 | Jason Kokrak            |        \-0.33 |         270 |              87 | USA     | PGA Tour               |
|   51 | Erik van Rooyen         |        \-0.32 |         285 |             109 | RSA     | European Tour(3)       |
|   52 | JT Poston               |        \-0.32 |         259 |              98 | USA     | PGA Tour               |
|   53 | Jim Furyk               |        \-0.31 |         161 |              67 | USA     | PGA Tour               |
|   54 | Kevin Kisner            |        \-0.30 |         265 |              97 | USA     | PGA Tour               |
|   55 | Matthias Schwab         |        \-0.30 |         260 |              89 | AUT     | European Tour(3)       |
|   56 | Nick Taylor             |        \-0.30 |         268 |              96 | CAN     | PGA Tour               |
|   57 | Charles Howell III      |        \-0.29 |         261 |              91 | USA     | PGA Tour               |
|   58 | Rafael Cabrera Bello    |        \-0.29 |         302 |             106 | ESP     | PGA Tour               |
|   59 | Chez Reavie             |        \-0.28 |         281 |              99 | USA     | PGA Tour               |
|   60 | Jordan Spieth           |        \-0.27 |         245 |              89 | USA     | PGA Tour               |
|   61 | Russell Knox            |        \-0.27 |         289 |              99 | SCO     | PGA Tour               |
|   62 | Juan Sebastian Munoz    |        \-0.27 |         274 |              96 | COL     | PGA Tour               |
|   63 | Carlos Ortiz            |        \-0.27 |         283 |              90 | MEX     | PGA Tour               |
|   64 | Rory Sabbatini          |        \-0.25 |         265 |             116 | SVK     | PGA Tour               |
|   65 | Andrew Putnam           |        \-0.24 |         258 |              82 | USA     | PGA Tour               |
|   66 | Victor Perez            |        \-0.24 |         245 |              68 | FRA     | European Tour(3)       |
|   67 | Lee Westwood            |        \-0.23 |         226 |              79 | ENG     | European Tour(3)       |
|   68 | Thomas Pieters          |        \-0.23 |         250 |              90 | BEL     | European Tour(3)       |
|   69 | Talor Gooch             |        \-0.22 |         250 |              83 | USA     | PGA Tour               |
|   70 | Max Homa                |        \-0.21 |         235 |              92 | USA     | PGA Tour               |
|   71 | Lanto Griffin           |        \-0.21 |         284 |             113 | USA     | PGA Tour               |
|   72 | Thomas Detry            |        \-0.20 |         279 |             102 | BEL     | European Tour(3)       |
|   73 | Christiaan Bezuidenhout |        \-0.19 |         269 |             102 | RSA     | European Tour          |
|   74 | Denny McCarthy          |        \-0.19 |         267 |              98 | USA     | PGA Tour               |
|   75 | Cameron Smith           |        \-0.19 |         240 |              82 | AUS     | PGA Tour               |
|   76 | Thorbjorn Olesen        |        \-0.18 |         197 |              34 | DEN     | Major Championship     |
|   77 | Bernd Wiesberger        |        \-0.18 |         201 |              87 | AUT     | European Tour(3)       |
|   78 | Corey Conners           |        \-0.17 |         288 |              98 | CAN     | PGA Tour               |
|   79 | Brian Harman            |        \-0.17 |         273 |              98 | USA     | PGA Tour               |
|   80 | Sean O’Hair             |        \-0.16 |         142 |              14 | USA     | Korn Ferry Tour KGT    |
|   81 | Harold Varner III       |        \-0.16 |         281 |              92 | USA     | PGA Tour               |
|   82 | Scott Piercy            |        \-0.16 |         227 |              86 | USA     | PGA Tour               |
|   83 | Danny Willett           |        \-0.16 |         209 |              88 | ENG     | PGA Tour               |
|   84 | Harry Higgs             |        \-0.15 |         185 |             116 | USA     | PGA Tour               |
|   85 | Alex Noren              |        \-0.15 |         260 |             102 | SWE     | PGA Tour               |
|   86 | Robert MacIntyre        |        \-0.15 |         206 |              82 | SCO     | European Tour(3)       |
|   87 | Paul Waring             |        \-0.14 |         226 |              78 | ENG     | European Tour(3)       |
|   88 | Danny Lee               |        \-0.14 |         246 |              85 | NZL     | PGA Tour               |
|   89 | Martin Kaymer           |        \-0.14 |         248 |              91 | GER     | European Tour(3)       |
|   90 | Joost Luiten            |        \-0.13 |         231 |              98 | NED     | European Tour(3)       |
|   91 | Keegan Bradley          |        \-0.12 |         273 |              86 | USA     | PGA Tour               |
|   92 | Cameron Tringale        |        \-0.12 |         238 |              87 | USA     | PGA Tour               |
|   93 | Matt Jones              |        \-0.12 |         252 |              95 | AUS     | PGA Tour               |
|   94 | Kevin Streelman         |        \-0.11 |         253 |              85 | USA     | PGA Tour               |
|   95 | Tom Hoge                |        \-0.08 |         277 |             100 | USA     | PGA Tour               |
|   96 | Jhonattan Vegas         |        \-0.05 |         241 |              76 | VEN     | PGA Tour               |
|   97 | Branden Grace           |        \-0.04 |         264 |              88 | RSA     | PGA Tour               |
|   98 | Lucas Glover            |        \-0.03 |         250 |              95 | USA     | PGA Tour               |
|   99 | Dylan Frittelli         |        \-0.03 |         305 |             104 | RSA     | PGA Tour               |
|  100 | Mike Lorenzo-Vera       |        \-0.02 |         229 |              78 | FRA     | European Tour(3)       |
|  101 | Adam Long               |        \-0.02 |         272 |             101 | USA     | PGA Tour               |
|  102 | Nate Lashley            |        \-0.02 |         230 |              72 | USA     | PGA Tour               |
|  103 | Phil Mickelson          |        \-0.01 |         224 |              67 | USA     | PGA Tour               |
|  104 | Bronson Burgoon         |          0.01 |         199 |              68 | USA     | PGA Tour               |
|  105 | Graeme McDowell         |          0.01 |         245 |              86 | NIR     | PGA Tour               |
|  106 | Aaron Wise              |          0.01 |         227 |              73 | USA     | PGA Tour               |
|  107 | Charley Hoffman         |          0.02 |         255 |              83 | USA     | PGA Tour               |
|  108 | Patrick Rodgers         |          0.02 |         246 |              73 | USA     | PGA Tour               |
|  109 | Adam Schenk             |          0.03 |         309 |              96 | USA     | PGA Tour               |
|  110 | Zach Johnson            |          0.03 |         232 |              73 | USA     | PGA Tour               |
|  111 | Emiliano Grillo         |          0.03 |         260 |              76 | ARG     | PGA Tour               |
|  112 | Matthew NeSmith         |          0.03 |         164 |             108 | USA     | PGA Tour               |
|  113 | J.B. Holmes             |          0.03 |         217 |              61 | USA     | PGA Tour               |
|  114 | Wyndham Clark           |          0.04 |         222 |              89 | USA     | PGA Tour               |
|  115 | Russell Henley          |          0.05 |         227 |              73 | USA     | PGA Tour               |
|  116 | Takumi Kanaya(Am)       |          0.05 |          50 |              22 | JPN     | Japan Golf Tour        |
|  117 | Nick Watney             |          0.05 |         244 |              79 | USA     | PGA Tour               |
|  118 | Aaron Baddeley          |          0.07 |         197 |              57 | AUS     | PGA Tour               |
|  119 | Tom Lewis               |          0.09 |         227 |              74 | ENG     | European Tour(3)       |
|  120 | Matthew Wolff           |          0.09 |          65 |              61 | USA     | PGA Tour               |
|  121 | Brice Garnett           |          0.09 |         279 |              88 | USA     | PGA Tour               |
|  122 | Matt Wallace            |          0.09 |         300 |             102 | ENG     | European Tour(3)       |
|  123 | Zhang Xinjun            |          0.10 |         274 |             114 | CHN     | PGA Tour               |
|  124 | Pat Perez               |          0.10 |         218 |              63 | USA     | PGA Tour               |
|  125 | Charl Schwartzel        |          0.11 |         185 |              32 | RSA     | PGA Tour               |
|  126 | Doc Redman              |          0.11 |         124 |              96 | USA     | PGA Tour               |
|  127 | Kurt Kitayama           |          0.11 |         236 |              92 | USA     | European Tour(3)       |
|  128 | Keith Mitchell          |          0.11 |         273 |              84 | USA     | PGA Tour               |
|  129 | Sam Burns               |          0.11 |         204 |              75 | USA     | PGA Tour               |
|  130 | Cameron Champ           |          0.13 |         211 |              79 | USA     | PGA Tour               |
|  131 | Brendan Steele          |          0.13 |         207 |              70 | USA     | PGA Tour               |
|  132 | Andrew Landry           |          0.14 |         242 |              77 | USA     | PGA Tour               |
|  133 | Will Zalatoris          |          0.15 |          93 |              67 | USA     | Korn Ferry Tour KGT    |
|  134 | Maverick McNealy        |          0.18 |         222 |             105 | USA     | PGA Tour               |
|  135 | Mark Hubbard            |          0.19 |         258 |             112 | USA     | PGA Tour               |
|  136 | Kyle Stanley            |          0.19 |         253 |              83 | USA     | PGA Tour               |
|  137 | Sunghoon Kang           |          0.20 |         271 |              94 | KOR     | PGA Tour               |
|  138 | Beau Hossler            |          0.20 |         302 |             104 | USA     | PGA Tour               |
|  139 | Troy Merritt            |          0.21 |         242 |              87 | USA     | PGA Tour               |
|  140 | Eddie Pepperell         |          0.22 |         215 |              66 | ENG     | European Tour(3)       |
|  141 | Benjamin Hebert         |          0.22 |         248 |              92 | FRA     | European Tour(3)       |
|  142 | Kevin Tway              |          0.23 |         266 |              82 | USA     | PGA Tour               |
|  143 | Francesco Molinari      |          0.23 |         231 |              71 | ITA     | PGA Tour               |
|  144 | Stewart Cink            |          0.23 |         219 |              67 | USA     | PGA Tour               |
|  145 | Martin Laird            |          0.24 |         226 |              87 | SCO     | PGA Tour               |
|  146 | Luke List               |          0.24 |         243 |              75 | USA     | PGA Tour               |
|  147 | Scott Stallings         |          0.26 |         251 |              86 | USA     | PGA Tour               |
|  148 | Shugo Imahira           |          0.26 |         291 |             112 | JPN     | Japan Golf Tour        |
|  149 | Jordan L Smith          |          0.26 |         261 |              84 | ENG     | European Tour(3)       |
|  150 | Gavin Green             |          0.27 |         268 |             101 | MAS     | European Tour(3)       |
|  151 | Brian Stuard            |          0.27 |         272 |             103 | USA     | PGA Tour               |
|  152 | Sam Ryder               |          0.28 |         265 |              82 | USA     | PGA Tour               |
|  153 | James Hahn              |          0.28 |         194 |              30 | USA     | PGA Tour               |
|  154 | Miguel A Jimenez        |          0.28 |          61 |              20 | ESP     | European Tour(3)       |
|  155 | Cameron Davis           |          0.28 |         241 |              92 | AUS     | PGA Tour               |
|  156 | Hudson Swafford         |          0.28 |         195 |              43 | USA     | PGA Tour               |
|  157 | Steve Stricker          |          0.29 |         106 |              24 | USA     | PGA Tour               |
|  158 | Augusto Nunez           |          0.29 |         221 |              82 | ARG     | PGA Tour Latinoamerica |
|  159 | Jazz Janewattananond    |          0.29 |         320 |             132 | THA     | Asian Tour             |
|  160 | George Coetzee          |          0.30 |         264 |             100 | RSA     | European Tour(3)       |
|  161 | Dylan Wu                |          0.30 |         102 |              66 | USA     | Korn Ferry Tour KGT    |
|  162 | Marcus Kinhult          |          0.31 |         240 |              76 | SWE     | European Tour(3)       |
|  163 | Kyounghoon Lee          |          0.32 |         304 |              95 | KOR     | PGA Tour               |
|  164 | Cameron Percy           |          0.33 |         216 |              69 | AUS     | PGA Tour               |
|  165 | Mikko Korhonen          |          0.33 |         223 |              80 | FIN     | European Tour(3)       |
|  166 | Andrew Johnston         |          0.34 |         164 |              49 | ENG     | European Tour          |
|  167 | Gunn Charoenkul         |          0.34 |         239 |             109 | THA     | Japan Golf Tour        |
|  168 | Ben Martin              |          0.34 |         161 |              55 | USA     | PGA Tour               |
|  169 | Jimmy Walker            |          0.35 |         213 |              77 | USA     | PGA Tour               |
|  170 | Romain Langasque        |          0.35 |         247 |              89 | FRA     | European Tour(3)       |
|  171 | Shaun Norris            |          0.35 |         300 |             106 | RSA     | Japan Golf Tour        |
|  172 | Richy Werenski          |          0.36 |         241 |              82 | USA     | PGA Tour               |
|  173 | D.J. Trahan             |          0.38 |         127 |              65 | USA     | PGA Tour               |
|  174 | Greyson Sigg            |          0.38 |         162 |              70 | USA     | PGA Tour Canada        |
|  175 | Grayson Murray          |          0.39 |         205 |              56 | USA     | PGA Tour               |
|  176 | Luke Donald             |          0.39 |         128 |              60 | ENG     | PGA Tour               |
|  177 | Haotong Li              |          0.40 |         270 |              88 | CHN     | European Tour(3)       |
|  178 | Jason Scrivener         |          0.40 |         271 |              89 | AUS     | European Tour(3)       |
|  179 | Justin Harding          |          0.40 |         267 |             103 | RSA     | European Tour(3)       |
|  180 | Brandon Wu              |          0.40 |          35 |              31 | USA     | PGA Tour               |
|  181 | Jason Dufner            |          0.42 |         220 |              75 | USA     | PGA Tour               |
|  182 | John Huh                |          0.42 |         193 |              40 | USA     | PGA Tour               |
|  183 | Brad Kennedy            |          0.43 |         231 |              86 | AUS     | Japan Golf Tour        |
|  184 | Davis Riley             |          0.43 |          93 |              85 | USA     | Korn Ferry Tour KGT    |
|  185 | Chan Kim                |          0.43 |         156 |              90 | USA     | Japan Golf Tour        |
|  186 | Andy Sullivan           |          0.43 |         260 |              86 | ENG     | European Tour(3)       |
|  187 | Zac Blair               |          0.43 |         277 |             119 | USA     | PGA Tour               |
|  188 | Peter Malnati           |          0.44 |         257 |              89 | USA     | PGA Tour               |
|  189 | Bo Hoag                 |          0.45 |         262 |             116 | USA     | PGA Tour               |
|  190 | Brian Gay               |          0.46 |         274 |              88 | USA     | PGA Tour               |
|  191 | Ross Fisher             |          0.46 |         239 |              77 | ENG     | European Tour(3)       |
|  192 | Lucas Herbert           |          0.46 |         198 |              79 | AUS     | European Tour(3)       |
|  193 | Michael Thompson        |          0.47 |         187 |              71 | USA     | PGA Tour               |
|  194 | Ryan Fox                |          0.48 |         272 |              82 | NZL     | European Tour(3)       |
|  195 | Kalle Samooja           |          0.48 |         227 |              85 | FIN     | European Tour(3)       |
|  196 | Joseph Bramlett         |          0.48 |         198 |             105 | USA     | PGA Tour               |
|  197 | Chase Seiffert          |          0.49 |         142 |             100 | USA     | PGA Tour               |
|  198 | Henrik Norlander        |          0.49 |         252 |             108 | SWE     | PGA Tour               |
|  199 | Kramer Hickok           |          0.50 |         273 |              87 | USA     | PGA Tour               |
|  200 | Mackenzie Hughes        |          0.50 |         232 |              82 | CAN     | PGA Tour               |

Current Golf Ratings
