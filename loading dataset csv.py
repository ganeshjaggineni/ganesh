#importing libraries
import pandas
#loading dataset  downloaded from website
data=pandas.read_csv("D:\\ganesh python\\festivals.csv")
#pr4i
print(data)
#dataa=pandas.read_csv("research.csv")
#print(dataa)

print("displaying top 5 rows")
print(data.head())
print("displaying last 5 rows")
print(data.tail())
print("displaying first 20 rows")
print(data.head(20))


#output
0                                   Local Festivals                  NaN   
1                          Dance on Camera Festival     1.25.10 – 2.2.10   
2                 The New York Jewish Film Festival    1.13.10 – 1.28.10   
3       The New York Sephardic Jewish Film Festival     2.4.10 – 2.11.10   
4   New York International Children’s Film Festival     2.26.10 – 3.1.10   
5      New York International Film & Video Festival    7.22.10 – 7.29.10   
6                  New Directors/New Films Festival     3.24.10 – 4.4.10   
7                              GenArt Film Festival     4.7.10 – 4.13.10   
8                    New York African Film Festival     4.7.19 – 4.13.10   
9                             Tribeca Film Festival     4.21.10 – 5.2.10   
10                           Syracuse Film Festival  10.13.10 – 10.17.10   
11        New York City Mental Health Film Festival              4.25.10   
12                Columbia University Film Festival     4.26.10 – 5.7.10   
13              Bosnian-Herzegovinian Film Festival    5.14.10 – 5.15.10   
14                 Media that Matters Film Festival               6.2.10   
15             New York Lesbian & Gay Film Festival     6.3.10 – 6.13.10   
16                      Staten Island Film Festival      6.2.10 – 6.6.10   
17             Brooklyn International Film Festival     6.4.10 – 6.13.10   
18                  Bronx Independent Film Festival    6.17.10 – 6.19.10   
19                     New York Asian Film Festival       6/27/10-7/8/10   
20              Long Island International Film Expo     7.9.10 – 7.18.10   
21       Asian American International Film Festival    7.15.10 – 7.24.10   
22      New York International Latino Film Festival     7.27.10 – 8.1.10   
23           New York International Fringe Festival    8.13.10 – 8.29.10   
24                       Central Park Film Festival                  TBD   
25                               How! Film Festival                  TBD   
26                            Independent Film Week    9.18.10 – 10.3.10   
27                    Manhattan Short Film Festival      9/26/10-10/3/10   
28                     New York Television Festival    9.20.10 – 9.25.10   
29                      New York Surf Film Festival      9/24/10-9/26/10   
30                           New York Film Festival    9/24/10-/10/10/10   
31                New York Musical Theatre Festival     9/27/10-10/17/10   
32                       Coney Island Film Festival    9.24.10 – 9.26.10   
33                         Reel Venus Film Festival                  TBD   
34                          Reel Time Film Festival                  TBD   
35                               Queer Black Cinema    10/14/10-10/17/10   
36             Hamptons International Film Festival   10.7.10 – 10.11.10   
37                        Fordham Law Film Festival    10/15/10-10/21/10   
38                                CMJ Film Festival    10/19/10-10/23/10   
39          South Asian International Film Festival     10/27/10-11/2/10   
40               Queens International Film Festival                  TBD   
41                   African Diaspora Film Festival  11.26.10 – 12.14.10   
42   African American Women in Cinema Film Festival                  TBD   
43         Explorers Club Documentary Film Festival                  TBD   
44                  H20 International Film Festival                  TBD   
45                      New York AIDS Film Festival                  TBD   
46                   New York Turkish Film Festival                  TBD   

                                              Website  
0                                                 NaN  
1                      http://www.dancefilmsassn.org/  
2    http://www.thejewishmuseum.org/nyjff2010schedule  
3   http://www.americansephardifederation.org/sub/...  
4                               http://www.gkids.com/  
5                         http://www.nyfilmvideo.com/  
6              http://www.filmlinc.com/ndnf/ndnf.html  
7                              http://www.genart.org/  
8                       http://www.africanfilmny.org/  
9                http://www.tribecafilm.com/festival/  
10                            http://syrfilmfest.com/  
11        http://www.nycmentalhealthfilmfestival.com/  
12         http://www.cufilmfest.com/indexstatic.html  
13                            http://www.bhffnyc.org/  
14                   http://mediathatmattersfest.org/  
15                      http://newfest.org/wordpress/  
16                     http://www.sifilmfestival.org/  
17               http://www.brooklynfilmfestival.org/  
18                         http://www.bronxstage.com/  
19                       http://www.subwaycinema.com/  
20                            http://liifilmexpo.org/  
21                    http://www.asiancinevision.org/  
22                 http://nylatinofilm.com/index.html  
23                          http://www.fringenyc.org/  
24                             www.centralparknyc.org  
25                                                NaN  
26                http://www.independentfilmweek.com/  
27                         http://www.msfilmfest.com/  
28                              http://www.nytvf.com/  
29                              http://nysurffilm.com  
30                 http://filmlinc.com/nyff/nyff.html  
31                                       www.nymf.org  
32            http://www.coneyislandfilmfestival.com/  
33                                                NaN  
34                                                NaN  
35                  http://queerblackcinema.ning.com/  
36                       http://hamptonsfilmfest.org/  
37                http://forhamlawandculture.org/film  
38                   http://cmj.com/marathon/film.php  
39              http://www.saiff.org/2010/landing.php  
40                 http://www.queensfilmfestival.com/  
41                             http://www.nyadff.org/  
42                                                NaN  
43                                                NaN  
44                                                NaN  
45                                                NaN  
46         http://www.newyorkturkishfilmfestival.com/  
displaying top 5 rows
                                   Local Festivals               Date  \
0                                  Local Festivals                NaN   
1                         Dance on Camera Festival   1.25.10 – 2.2.10   
2                The New York Jewish Film Festival  1.13.10 – 1.28.10   
3      The New York Sephardic Jewish Film Festival   2.4.10 – 2.11.10   
4  New York International Children’s Film Festival   2.26.10 – 3.1.10   

                                             Website  
0                                                NaN  
1                     http://www.dancefilmsassn.org/  
2   http://www.thejewishmuseum.org/nyjff2010schedule  
3  http://www.americansephardifederation.org/sub/...  
4                              http://www.gkids.com/  
displaying last 5 rows
                                   Local Festivals Date  \
42  African American Women in Cinema Film Festival  TBD   
43        Explorers Club Documentary Film Festival  TBD   
44                 H20 International Film Festival  TBD   
45                     New York AIDS Film Festival  TBD   
46                  New York Turkish Film Festival  TBD   

                                       Website  
42                                         NaN  
43                                         NaN  
44                                         NaN  
45                                         NaN  
46  http://www.newyorkturkishfilmfestival.com/  
displaying first 20 rows
                                    Local Festivals                 Date  \
0                                   Local Festivals                  NaN   
1                          Dance on Camera Festival     1.25.10 – 2.2.10   
2                 The New York Jewish Film Festival    1.13.10 – 1.28.10   
3       The New York Sephardic Jewish Film Festival     2.4.10 – 2.11.10   
4   New York International Children’s Film Festival     2.26.10 – 3.1.10   
5      New York International Film & Video Festival    7.22.10 – 7.29.10   
6                  New Directors/New Films Festival     3.24.10 – 4.4.10   
7                              GenArt Film Festival     4.7.10 – 4.13.10   
8                    New York African Film Festival     4.7.19 – 4.13.10   
9                             Tribeca Film Festival     4.21.10 – 5.2.10   
10                           Syracuse Film Festival  10.13.10 – 10.17.10   
11        New York City Mental Health Film Festival              4.25.10   
12                Columbia University Film Festival     4.26.10 – 5.7.10   
13              Bosnian-Herzegovinian Film Festival    5.14.10 – 5.15.10   
14                 Media that Matters Film Festival               6.2.10   
15             New York Lesbian & Gay Film Festival     6.3.10 – 6.13.10   
16                      Staten Island Film Festival      6.2.10 – 6.6.10   
17             Brooklyn International Film Festival     6.4.10 – 6.13.10   
18                  Bronx Independent Film Festival    6.17.10 – 6.19.10   
19                     New York Asian Film Festival       6/27/10-7/8/10   

                                              Website  
0                                                 NaN  
1                      http://www.dancefilmsassn.org/  
2    http://www.thejewishmuseum.org/nyjff2010schedule  
3   http://www.americansephardifederation.org/sub/...  
4                               http://www.gkids.com/  
5                         http://www.nyfilmvideo.com/  
6              http://www.filmlinc.com/ndnf/ndnf.html  
7                              http://www.genart.org/  
8                       http://www.africanfilmny.org/  
9                http://www.tribecafilm.com/festival/  
10                            http://syrfilmfest.com/  
11        http://www.nycmentalhealthfilmfestival.com/  
12         http://www.cufilmfest.com/indexstatic.html  
13                            http://www.bhffnyc.org/  
14                   http://mediathatmattersfest.org/  
15                      http://newfest.org/wordpress/  
16                     http://www.sifilmfestival.org/  
17               http://www.brooklynfilmfestival.org/  
18                         http://www.bronxstage.com/  
19                       http://www.subwaycinema.com/  