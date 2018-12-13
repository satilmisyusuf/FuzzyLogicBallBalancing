# Fuzzy-Logic-Ball-Balancing

Burada tanımlanan problem, plakanın herhangi bir kısmındaki hareketli veya sabit bir topu dengede tutmaktır. Top, farklı hızlarda farklı yönlerden atılırsa plakanın ortasına sabitlenmeye çalışmalıdır.
![img1](https://github.com/satilmisyusuf/FuzzyLogicBallBalancing/blob/master/img/img1.png)


## Matlab Fuzzy Toolbox
Plaka üzerindeki topu durdurmak için topun pozisyonunu ve hızını bilmek zorundayız. 
Bu veriler ile plakanın açı değerini hesaplayacağız.
 - Ortaya Uzaklık (Giriş): Bu, topun merkez konumundan uzaklığıdır. Plakanın merkezi 0 olarak gösterilir. -100'den +100'e kadar değişebilir. X ekseni için, top + x yönünde ise uzaklık pozitiftir. Üyelik fonksiyonları aşağıda gösterilmiştir.![ortaya uzaklık](https://github.com/satilmisyusuf/FuzzyLogicBallBalancing/blob/master/img/ortayauzaklik.png)
5 adet üyelik fonksiyonu vardır. 
	 - NL (Negatif Büyük)
	 - NS (Negatif Küçük)
	 - Z (Sıfır)
	 - PS (Pozitif Küçük)
	 - PL (Pozitif Büyük)
	 
 - Hız (Giriş): Bu bize topun ne kadar hızlı hareket ettiğini gösteriyor. Plakanın merkezi 0 olarak gösterilir. -200'den +200'e kadar değişebilir. X ekseni için, top + x yönünde hareket ediyorsa hız pozitiftir. Üyelik fonksiyonları aşağıda gösterilmiştir:![ortaya uzaklık](https://github.com/satilmisyusuf/FuzzyLogicBallBalancing/blob/master/img/hiz.png)
5 adet üyelik fonksiyonu vardır. 
	 - NL (Negatif Büyük)
	 - NS (Negatif Küçük)
	 - Z (Sıfır)
	 - PS (Pozitif Küçük)
	 - PL (Pozitif Büyük)	 

 - Açı (Çıkış): Bulanık kontrolörün çıkışı, plakaya verilmesi gereken açının değeridir. -50'den +50'ye kadar değişebilir.
7 adet üyelik fonksiyonu vardır. 
	 - NL   (Negatif Büyük)
	 - NM (Negatif Orta)
	 - NS   (Negatif Küçük)
	 - Z  (Sıfır)
	 - PS (Pozitif Küçük)
	 - PM (Pozitif Orta)
	 - PL (Pozitif Büyük)	
	 
 - Kural tablosu şekilde verilmiştir.
![kural tablosu](https://github.com/satilmisyusuf/FuzzyLogicBallBalancing/blob/master/img/kuralTablosu.png)

 - Kurallar şekilde verilmiştir.
![kurallar](https://github.com/satilmisyusuf/FuzzyLogicBallBalancing/blob/master/img/kurallar.png)
### Mamdani

 - ![kurallar](https://github.com/satilmisyusuf/FuzzyLogicBallBalancing/blob/master/img/FuzzyMamdani.png)

 - ![kurallar](https://github.com/satilmisyusuf/FuzzyLogicBallBalancing/blob/master/img/MamdaniRuleView.png)

 - ![kurallar](https://github.com/satilmisyusuf/FuzzyLogicBallBalancing/blob/master/img/MamdaniSurfaceView.png)


### Sugeno

 - ![kurallar](https://github.com/satilmisyusuf/FuzzyLogicBallBalancing/blob/master/img/FuzzySugeno.png)

 - ![kurallar](https://github.com/satilmisyusuf/FuzzyLogicBallBalancing/blob/master/img/SugenoRuleView.png)

 - ![kurallar](https://github.com/satilmisyusuf/FuzzyLogicBallBalancing/blob/master/img/SugenoSurfaceView.png)
