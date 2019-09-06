size(600, 100);
background(100);

//variabler
int sojleW=width/6, sojle=0;
int[] num={0, 0, 0, 0, 0, 0};

// der laves et for loop der kører 200 gange
for (int i=0; i<200; i++) {
  int val=(int)random(0, 6);//der genereres et tilfældigt tal mellem 0 og 5, årsagen til dette er at array begynder fra 0.
  num[val]+=1;//den tilfældige værdier der er genereret sættes ind i array acces for at gøre denne værdi en større. Således hvis val=0 registreres det at der er blevet slået én ener.
}
//der laves et for loop der kører 6 gange
for (int i=0; i<6; i++) {
  rect(sojle, height, sojleW, -num[i]);//der tegnes et rektangel med x-værdien sojle der er 0 som udgangspunkt, men vokser med sojleW hver gang loopet er kørt en gang igennem. Søjlen starter i bunden af skærmen som har y-værdien height, bredden er sojleW og højden er det antal slag der har været af den pågældende værdi som hentes ved num[i] denne gøres negativ for at få den til at gå opad skærmen.
  // tekst der angiver hvilken søjler der viser hvilket antal øjne og hvor mange tilfælde der var af denne værdi
  fill(0);
  textSize(20);
  text(i+1+"'ere", sojle+1, height-1);
  fill(255);
  text(num[i], sojle, height-num[i]-1);
  sojle+=sojleW;
}
