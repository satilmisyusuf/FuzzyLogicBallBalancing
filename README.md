# Fuzzy-Logic-Ball-Balancing

Burada tanımlanan problem, plakanın herhangi bir kısmındaki hareketli veya sabit bir topu dengede tutmaktır. Top, farklı hızlarda farklı yönlerden atılırsa plakanın ortasına sabitlenmeye çalışmalıdır.
![img1](https://github.com/satilmisyusuf/FuzzyLogicBallBalancing/blob/master/img/img1.png)


## Matlab Fuzzy Toolbox
Plaka üzerindeki topu durdurmak için topun pozisyonunu ve hızını bilmek zorundayız.

 - Ortaya Uzaklık: Bu, topun merkez konumundan uzaklığıdır. Plakanın merkezi 0 olarak gösterilir. -100'den +100'e kadar değişebilir. X ekseni için, top + x yönünde hareket ediyorsa de / dt pozitiftir, negatiftir. Üyelik hata fonksiyonları aşağıda gösterilmiştir:![ortaya uzaklık](https://github.com/satilmisyusuf/FuzzyLogicBallBalancing/blob/master/img/ortayauzaklik.png)
5 adet üyelik fonksiyonu vardır. 
	 - NL (Negatif Büyük)
	 - NS (Negatif Küçük)
	 - Z (Sıfır)
	 - PS (Pozitif Küçük)
	 - PL (Pozitif Büyük)
	 
 - Hız: Bu bize topun ne kadar hızlı hareket ettiğini gösteriyor. Plakanın merkezi 0 olarak gösterilir. -100'den +100'e kadar değişebilir. Üyelik hata fonksiyonları aşağıda gösterilmiştir:![ortaya uzaklık](https://github.com/satilmisyusuf/FuzzyLogicBallBalancing/blob/master/img/ortayauzaklik.png)
5 adet üyelik fonksiyonu vardır. 
	 - NL (Negatif Büyük)
	 - NS (Negatif Küçük)
	 - Z (Sıfır)
	 - PS (Pozitif Küçük)
	 - PL (Pozitif Büyük)	 

### Mamdani
