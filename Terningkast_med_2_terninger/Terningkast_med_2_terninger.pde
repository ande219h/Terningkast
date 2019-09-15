size(600, 600);
background(100);

//variabler
int sojleW=width/12, sojle=0;
int[] num={0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

// der laves et for loop der kører 200 gange
for (int i=0; i<200; i++) {
  //der genereres to tilfældige tal mellem 0 og 5, årsagen til dette er at array begynder fra 0.
  int val1=(int)random(0, 6);
  int val2=(int)random(0, 6);
  //de tilfældige værdier der er genereret sættes ind i array acces for at gøre denne værdi en større. Således hvis val=0 registreres det at der er blevet slået én toer.
  num[val1+val2]+=1;
}
//der laves et for loop der kører 11 gange
for (int i=0; i<11; i++) {
  rect(sojle, height, sojleW, -num[i]*10);//der tegnes et rektangel med x-værdien sojle der er 0 som udgangspunkt, men vokser med sojleW hver gang loopet er kørt en gang igennem. Søjlen starter i bunden af skærmen som har y-værdien height, bredden er sojleW og højden er det antal slag der har været af den pågældende værdi som hentes ved num[i] denne gøres negativ for at få den til at gå opad skærmen og ganges med 10 for at gøre den mere tydelig.
  // tekst der angiver hvilken søjler der viser hvilket antal øjne og hvor mange tilfælde der var af denne værdi
  fill(0);
  textSize(20);
  text(i+2+"'ere", sojle+1, height-1);
  fill(255);
  text(num[i], sojle, height-num[i]*10-1);
  sojle+=sojleW;
}
