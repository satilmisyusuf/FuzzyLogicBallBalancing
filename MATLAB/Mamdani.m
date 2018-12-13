global X mu_X mu_xi

altsinir_x=-100; ustsinir_x=100;
altsinir_y=-200; ustsinir_y=200;
altsinir_z=-50; ustsinir_z=50;

xi=0; yi=120; zi=0;

%uzaklik  x
Yamuk(altsinir_x,-100,-100,-75,-25,ustsinir_x,xi);   x_NL=X; mu_NLx=mu_X; mu_xi_NL=mu_xi;
Ucgen(altsinir_x,-75,-25,-5,ustsinir_x,xi);          x_NS=X; mu_NSx=mu_X; mu_xi_NS=mu_xi;
Yamuk(altsinir_x,-25,-5,5,25,ustsinir_x,xi);         x_Z=X; mu_Zx=mu_X; mu_xi_Z=mu_xi;
Ucgen(altsinir_x,5,25,75,ustsinir_x,xi);             x_PS=X; mu_PSx=mu_X; mu_xi_PS=mu_xi;
Yamuk(altsinir_x,25,75,100,100,ustsinir_x,xi);       x_PL=X; mu_PLx=mu_X; mu_xi_PL=mu_xi;
%plot(x_NL,mu_NLx,    x_NS,mu_NSx,    x_Z,mu_Zx,   x_PS,mu_PSx,   x_PL,mu_PLx);


%hiz y
Yamuk(altsinir_y,-200,-200,-185,-75,ustsinir_y,yi);   y_NL=X; mu_NLy=mu_X; mu_yi_NL=mu_xi;
Ucgen(altsinir_y,-185,-75,-15,ustsinir_y,yi);         y_NS=X; mu_NSy=mu_X; mu_yi_NS=mu_xi;
Yamuk(altsinir_y,-75,-15,15,75,ustsinir_y,yi);        y_Z=X; mu_Zy=mu_X; mu_yi_Z=mu_xi;
Ucgen(altsinir_y,15,75,185,ustsinir_y,yi);            y_PS=X; mu_PSy=mu_X; mu_yi_PS=mu_xi;
Yamuk(altsinir_y,75,185,200,200,ustsinir_y,yi);       y_PL=X; mu_PLy=mu_X; mu_yi_PL=mu_xi;

%plot(y_NL,mu_NLy,    y_NS,mu_NSy,    y_Z,mu_Zy,   y_PS,mu_PSy,   y_PL,mu_PLy);


%aci z
Yamuk(altsinir_z,-50,-50,-40,-25,ustsinir_z,yi);     z_NL=X; mu_NLz=mu_X; mu_zi_NL=mu_xi;
Ucgen(altsinir_z,-40,-25,-10,ustsinir_z,yi);         z_NM=X; mu_NMz=mu_X; mu_zi_MS=mu_xi;
Ucgen(altsinir_z,-25,-10,0,ustsinir_z,yi);           z_NS=X; mu_NSz=mu_X; mu_zi_NS=mu_xi;
Yamuk(altsinir_z,-10,-1,1,10,ustsinir_z,yi);         z_Z=X; mu_Zz=mu_X; mu_zi_Z=mu_xi;
Ucgen(altsinir_z,0,10,25,ustsinir_z,yi);             z_PS=X; mu_PSz=mu_X; mu_zi_PS=mu_xi;
Ucgen(altsinir_z,10,25,40,ustsinir_z,yi);            z_PM=X; mu_PMz=mu_X; mu_zi_PM=mu_xi;
Yamuk(altsinir_z,25,40,50,50,ustsinir_z,yi);         z_PL=X; mu_PLz=mu_X; mu_zi_PL=mu_xi;

%plot(z_NL,mu_NLz,    z_NM,mu_NMz,    z_NS,mu_NSz,   z_Z,mu_Zz,   z_PS,mu_PSz,   z_PM,mu_PMz,   z_PL,mu_PLz);

mu_kural1= min(mu_xi_NL,mu_yi_NL);
mu_kural2= min(mu_xi_NS,mu_yi_NL);
mu_kural3= min(mu_xi_Z,mu_yi_NL);
mu_kural4= min(mu_xi_PS,mu_yi_NL);
mu_kural5= min(mu_xi_PL,mu_yi_NL);

mu_kural6 = min(mu_xi_NL,mu_yi_NS);
mu_kural7 = min(mu_xi_NS,mu_yi_NS);
mu_kural8 = min(mu_xi_Z,mu_yi_NS);
mu_kural9 = min(mu_xi_PS,mu_yi_NS);
mu_kural10= min(mu_xi_PL,mu_yi_NS);

mu_kural11= min(mu_xi_NL,mu_yi_Z);
mu_kural12= min(mu_xi_NS,mu_yi_Z);
mu_kural13= min(mu_xi_Z,mu_yi_Z);
mu_kural14= min(mu_xi_PS,mu_yi_Z);
mu_kural15= min(mu_xi_PL,mu_yi_Z);

mu_kural16= min(mu_xi_NL,mu_yi_PS);
mu_kural17= min(mu_xi_NS,mu_yi_PS);
mu_kural18= min(mu_xi_Z,mu_yi_PS);
mu_kural19= min(mu_xi_PS,mu_yi_PS);
mu_kural20= min(mu_xi_PL,mu_yi_PS);

mu_kural21= min(mu_xi_NL,mu_yi_PL);
mu_kural22= min(mu_xi_NS,mu_yi_PL);
mu_kural23= min(mu_xi_Z,mu_yi_PL);
mu_kural24= min(mu_xi_PS,mu_yi_PL);
mu_kural25= min(mu_xi_PL,mu_yi_PL);





mu_sonuc1 = mu_kural1.*mu_NLz;
mu_sonuc2 = mu_kural2.*mu_NLz;
mu_sonuc3 = mu_kural3.*mu_NMz;
mu_sonuc4 = mu_kural4.*mu_NMz;
mu_sonuc5 = mu_kural5.*mu_NSz;

mu_sonuc6  = mu_kural6.*mu_NLz;
mu_sonuc7  = mu_kural7.*mu_NMz;
mu_sonuc8  = mu_kural8.*mu_NMz;
mu_sonuc9  = mu_kural9.*mu_NSz;
mu_sonuc10 = mu_kural10.*mu_Zz;

mu_sonuc11  = mu_kural11.*mu_NMz;
mu_sonuc12  = mu_kural12.*mu_NMz;
mu_sonuc13  = mu_kural13.*mu_Zz;
mu_sonuc14  = mu_kural14.*mu_PMz;
mu_sonuc15  = mu_kural15.*mu_PMz;

mu_sonuc16  = mu_kural16.*mu_Zz;
mu_sonuc17  = mu_kural17.*mu_PSz;
mu_sonuc18  = mu_kural18.*mu_PMz;
mu_sonuc19  = mu_kural19.*mu_PMz;
mu_sonuc20  = mu_kural20.*mu_PLz;

mu_sonuc21  = mu_kural21.*mu_PSz;
mu_sonuc22  = mu_kural22.*mu_PMz;
mu_sonuc23  = mu_kural23.*mu_PMz;
mu_sonuc24  = mu_kural24.*mu_PLz;
mu_sonuc25  = mu_kural25.*mu_PLz;

%plot(X,mu_sonuc1,X,mu_sonuc2,X,mu_sonuc3);
tmp = max(max(mu_sonuc1,mu_sonuc2),max(mu_sonuc3,mu_sonuc4));
tmp2 = max(max(mu_sonuc5,mu_sonuc6),max(mu_sonuc7,mu_sonuc8));
tmp3 = max(max(mu_sonuc9,mu_sonuc10),max(mu_sonuc11,mu_sonuc12));
tmp4 = max(max(mu_sonuc13,mu_sonuc14),max(mu_sonuc15,mu_sonuc16));
tmp5 = max(max(mu_sonuc17,mu_sonuc18),max(mu_sonuc19,mu_sonuc20));
tmp6 = max(max(mu_sonuc21,mu_sonuc22),max(mu_sonuc23,mu_sonuc24));
tmp7 = max(max(tmp,tmp2),max(tmp3,tmp4));

mu_birlestirme = max(max(tmp5,tmp6),max(tmp7,mu_sonuc25));
%plot(X,mu_birlestirme);

toplam_alan = sum(mu_birlestirme);
z = sum(mu_birlestirme.*X)/toplam_alan;

%line([z z],[0 1]);

lx = [z z];
ly = [0 1];
plot(X,mu_birlestirme,lx,ly,'LineWidth',2)


