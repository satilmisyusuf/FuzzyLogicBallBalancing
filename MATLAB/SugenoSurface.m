global mu_giris

altsinir_x=-100; ustsinir_x=100;
altsinir_y=-200; ustsinir_y=200;
altsinir_z=-50; ustsinir_z=50;

X=altsinir_x:ustsinir_x;
Y=altsinir_y:ustsinir_y;

z1=-40;   z2=-25;    z3=-10;
z4=  0;   z5= 10;    z6= 25;    z7=40;


for i=1:size(X,2)
    for j=1:size(Y,2)
        
        x=X(i);
        y=Y(j);

        YamukFISGiris(altsinir_x,-100,-100,-75,-25,ustsinir_x,x);    mu_xi_NL=mu_giris;
        UcgenFISGiris(altsinir_x,-75,-25,-5,ustsinir_x,x);           mu_xi_NS=mu_giris;
        YamukFISGiris(altsinir_x,-25,-5,5,25,ustsinir_x,x);          mu_xi_Z=mu_giris;
        UcgenFISGiris(altsinir_x,5,25,75,ustsinir_x,x);              mu_xi_PS=mu_giris;
        YamukFISGiris(altsinir_x,25,75,100,100,ustsinir_x,x);        mu_xi_PL=mu_giris;
        %plot(x_NL,mu_NLx,    x_NS,mu_NSx,    x_Z,mu_Zx,   x_PS,mu_PSx,   x_PL,mu_PLx);


        %hiz y
        YamukFISGiris(altsinir_y,-200,-200,-185,-75,ustsinir_y,y);    mu_yi_NL=mu_giris;
        UcgenFISGiris(altsinir_y,-185,-75,-15,ustsinir_y,y);          mu_yi_NS=mu_giris;
        YamukFISGiris(altsinir_y,-75,-15,15,75,ustsinir_y,y);         mu_yi_Z=mu_giris;
        UcgenFISGiris(altsinir_y,15,75,185,ustsinir_y,y);             mu_yi_PS=mu_giris;
        YamukFISGiris(altsinir_y,75,185,200,200,ustsinir_y,y);        mu_yi_PL=mu_giris;
        %plot(y_NL,mu_NLy,    y_NS,mu_NSy,    y_Z,mu_Zy,   y_PS,mu_PSy,   y_PL,mu_PLy);



        w1= min(mu_xi_NL,mu_yi_NL);
        w2= min(mu_xi_NS,mu_yi_NL);
        w3= min(mu_xi_Z,mu_yi_NL);
        w4= min(mu_xi_PS,mu_yi_NL);
        w5= min(mu_xi_PL,mu_yi_NL);

        w6 = min(mu_xi_NL,mu_yi_NS);
        w7 = min(mu_xi_NS,mu_yi_NS);
        w8 = min(mu_xi_Z,mu_yi_NS);
        w9 = min(mu_xi_PS,mu_yi_NS);
        w10= min(mu_xi_PL,mu_yi_NS);

        w11= min(mu_xi_NL,mu_yi_Z);
        w12= min(mu_xi_NS,mu_yi_Z);
        w13= min(mu_xi_Z,mu_yi_Z);
        w14= min(mu_xi_PS,mu_yi_Z);
        w15= min(mu_xi_PL,mu_yi_Z);

        w16= min(mu_xi_NL,mu_yi_PS);
        w17= min(mu_xi_NS,mu_yi_PS);
        w18= min(mu_xi_Z,mu_yi_PS);
        w19= min(mu_xi_PS,mu_yi_PS);
        w20= min(mu_xi_PL,mu_yi_PS);

        w21= min(mu_xi_NL,mu_yi_PL);
        w22= min(mu_xi_NS,mu_yi_PL);
        w23= min(mu_xi_Z,mu_yi_PL);
        w24= min(mu_xi_PS,mu_yi_PL);
        w25= min(mu_xi_PL,mu_yi_PL);


        SAT1=w1*z1 + w2*z1 + w3*z2 + w4*z2 + w5*z3;
        SAT2=w6*z1 + w7*z2 + w8*z2 + w9*z3 + w10*z4;
        SAT3=w11*z2 + w12*z2 + w13*z4 + w14*z6 + w15*z6;
        SAT4=w16*z4 + w17*z5 + w18*z6 + w19*z6 + w20*z7;
        SAT5=w21*z5 + w22*z6 + w23*z6 + w24*z7 + w25*z7;

        SAT = SAT1+SAT2+SAT3+SAT4+SAT5;

        toplam_agirlik = w1 + w2 + w3 + w4 + w5 + w6 + w7 + w8 + w9 + w10 + w11 + w12 + w13 + w14 + w15 + w16 + w17 + w18 + w19 + w20 + w21 + w22 + w23 + w24 + w25;
        z(j,i) = SAT/toplam_agirlik;
     
    end
end



[X,Y] = meshgrid(X,Y);

surf(X,Y,z)
xlabel('x');
ylabel('y');
zlabel('z');



