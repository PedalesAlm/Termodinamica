clear all; 
clc;

A=[-40 7.432 0.01130 5.7796 -0.016 89.167 89.15 0.000 97.100 97.10 0.00000 0.23135 0.23135;
-35 8.581 0.01136 5.0509 1.484 88.352 89.84 1.502 96.354 97.86 0.00355 0.22687 0.23043;
-30 9.869 0.01143 4.4300 2.990 87.532 90.52 3.011 95.601 98.61 0.00708 0.22248 0.22956;
-25 11.306 0.01150 3.8988 4.502 86.706 91.21 4.526 94.839 99.36 0.01058 0.21817 0.22875;
-20 12.906 0.01156 3.4426 6.019 85.874 91.89 6.047 94.068 100.12 0.01405 0.21394 0.22798;
-15 14.680 0.01163 3.0494 7.543 85.036 92.58 7.574 93.288 100.86 0.01749 0.20978 0.22727;
-10 16.642 0.01171 2.7091 9.073 84.191 93.26 9.109 92.498 101.61 0.02092 0.20569 0.22660;
-5 18.806 0.01178 2.4137 10.609 83.339 93.95 10.650 91.698 102.35 0.02431 0.20166 0.22598;
0 21.185 0.01185 2.1564 12.152 82.479 94.63 12.199 90.886 103.08 0.02769 0.19770 0.22539;
5 23.793 0.01193 1.9316 13.702 81.610 95.31 13.755 90.062 103.82 0.03104 0.19380 0.22485;
10 26.646 0.01201 1.7345 15.259 80.733 95.99 15.318 89.226 104.54 0.03438 0.18996 0.22434;
15 29.759 0.01209 1.5612 16.823 79.846 96.67 16.889 88.377 105.27 0.03769 0.18617 0.22386;
20 33.147 0.01217 1.4084 18.394 78.950 97.34 18.469 87.514 105.98 0.04098 0.18243 0.22341;
25 36.826 0.01225 1.2732 19.973 78.043 98.02 20.056 86.636 106.69 0.04426 0.17874 0.22300;
30 40.813 0.01234 1.1534 21.560 77.124 98.68 21.653 85.742 107.40 0.04752 0.17509 0.22260;
35 45.124 0.01242 1.0470 23.154 76.195 99.35 23.258 84.833 108.09 0.05076 0.17148 0.22224;
40 49.776 0.01251 0.95205 24.757 75.253 100.01 24.873 83.907 108.78 0.05398 0.16791 0.22189;
45 54.787 0.01261 0.86727 26.369 74.298 100.67 26.497 82.963 109.46 0.05720 0.16437 0.22157;
50 60.175 0.01270 0.79136 27.990 73.329 101.32 28.131 82.000 110.13 0.06039 0.16087 0.22127;
55 65.957 0.01280 0.72323 29.619 72.346 101.97 29.775 81.017 110.79 0.06358 0.15740 0.22098;
60 72.152 0.01290 0.66195 31.258 71.347 102.61 31.431 80.013 111.44 0.06675 0.15396 0.22070;
65 78.780 0.01301 0.60671 32.908 70.333 103.24 33.097 78.988 112.09 0.06991 0.15053 0.22044;
70 85.858 0.01312 0.55681 34.567 69.301 103.87 34.776 77.939 112.71 0.07306 0.14713 0.22019;
75 93.408 0.01323 0.51165 36.237 68.251 104.49 36.466 76.866 113.33 0.07620 0.14375 0.21995;
80 101.45 0.01334 0.47069 37.919 67.181 105.10 38.169 75.767 113.94 0.07934 0.14038 0.21972;
85 110.00 0.01347 0.43348 39.612 66.091 105.70 39.886 74.641 114.53 0.08246 0.13703 0.21949;
90 119.08 0.01359 0.39959 41.317 64.979 106.30 41.617 73.485 115.10 0.08559 0.13368 0.21926;
95 128.72 0.01372 0.36869 43.036 63.844 106.88 43.363 72.299 115.66 0.08870 0.13033 0.21904;
100 138.93 0.01386 0.34045 44.768 62.683 107.45 45.124 71.080 116.20 0.09182 0.12699 0.21881;
105 149.73 0.01400 0.31460 46.514 61.496 108.01 46.902 69.825 116.73 0.09493 0.12365 0.21858;
110 161.16 0.01415 0.29090 48.276 60.279 108.56 48.698 68.533 117.23 0.09804 0.12029 0.21834;
115 173.23 0.01430 0.26913 50.054 59.031 109.08 50.512 67.200 117.71 0.10116 0.11693 0.21809;
120 185.96 0.01446 0.24909 51.849 57.749 109.60 52.346 65.823 118.17 0.10428 0.11354 0.21782;
130 213.53 0.01482 0.21356 55.495 55.071 110.57 56.080 62.924 119.00 0.11054 0.10670 0.21724;
140 244.06 0.01521 0.18315 59.226 52.216 111.44 59.913 59.801 119.71 0.11684 0.09971 0.21655;
150 277.79 0.01567 0.15692 63.059 49.144 112.20 63.864 56.405 120.27 0.12321 0.09251 0.21572;
160 314.94 0.01619 0.13410 67.014 45.799 112.81 67.958 52.671 120.63 0.12970 0.08499 0.21469;
170 355.80 0.01681 0.11405 71.126 42.097 113.22 72.233 48.499 120.73 0.13634 0.07701 0.21335;
180 400.66 0.01759 0.09618 75.448 37.899 113.35 76.752 43.726 120.48 0.14323 0.06835 0.21158;
190 449.90 0.01860 0.07990 80.082 32.950 113.03 81.631 38.053 119.68 0.15055 0.05857 0.20911;
200 504.00 0.02009 0.06441 85.267 26.651 111.92 87.140 30.785 117.93 0.15867 0.04666 0.20533;
210 563.76 0.02309 0.04722 91.986 16.498 108.48 94.395 19.015 113.41 0.16922 0.02839 0.19761;
];
a=A(:,1);
b=A(:,2);
c=A(:,3);
d=A(:,4);
e=A(:,5);
f=A(:,6);
g=A(:,7);
h=A(:,8);
i=A(:,9);
j=A(:,10);
k=A(:,11);
l=A(:,12);
m=A(:,13);
disp('Buen dia la siguiente informacion hace referencia');
disp('de las propiedades termodinamicas del refrigerante R-134a');
disp('tomada del libro de TERMODINAMICA de YUNUS A. ÇENGEL & MICHAEL A. BOLES');
disp('Digite si quiere saber ');
disp('1-->presion a partir de la  temperatura')
disp('2-->temperatura a partir de la  presion')
disp('3-->volumen especifico a partir de la presion')
disp('4-->volumen especifico a partir de la temperatura')
disp('5-->energia interna a partir de de la presion')
disp('6-->energia interna a partir de de la temperatura')
disp('7-->entalpia a partir de de la presion')
disp('8-->entalpia a partir de de la temperatura')
disp('9-->entropia a partir de de la presion')
disp('10-->entropia a partir de de la temperatura')

menu=input('');
if menu==1
Presion=input('digite el valor de la presion en psia');
interporlar=interp1(b,a,Presion,'spline');
disp('su Temperatura es en °F');   
disp(interporlar);
disp('copyright Daniel Almeida 2015');
elseif menu==2
        Temperatura=input('digite el valor de la temperatura en °F');
        interporlar=interp1(a,b,Temperatura,'spline');
disp('su Presion es en psia');       
disp(interporlar);
disp('copyright Daniel Almeida 2015');
elseif menu==3
    Presion=input('digite el valor de la presion en psia');
    calidad=input('digite el valor de la calidad');
    interpolar=interp1(b,c,Presion,'spline');
    interpolar1=interp1(b,d,Presion,'spline');
    disp('su volumen especifico es en ft3/lbm'); 
    disp((calidad*(interpolar1-interpolar))+interpolar);
    disp('copyright Daniel Almeida 2015');
elseif menu==4
    Temperatura=input('digite el valor de la temperatura en °F');
    calidad=input('digite el valor de la calidad');
    interpolar=interp1(a,c,Temperatura,'spline');
    interpolar1=interp1(a,d,Temperatura,'spline');
    disp('su volumen especifico es en ft3/lbm'); 
    disp((calidad*(interpolar1-interpolar))+interpolar);
    disp('copyright Daniel Almeida 2015');
elseif menu==5
    Presion=input('digite el valor de la presion en psia');
    calidad=input('digite el valor de la calidad');
    interpolar=interp1(b,e,Presion,'spline');
    interpolar1=interp1(b,g,Presion,'spline');
    disp('su energia interna es en Btu/lbm'); 
    disp((calidad*(interpolar1-interpolar))+interpolar);   
    disp('copyright Daniel Almeida 2015');
elseif menu==6
    Temperatura=input('digite el valor de la temperatura en °F');
    calidad=input('digite el valor de la calidad');
    interpolar=interp1(a,e,Temperatura,'spline');
    interpolar1=interp1(a,g,Temperatura,'spline');
    disp('su energia interna es en Btu/lbm'); 
    disp((calidad*(interpolar1-interpolar))+interpolar);
    disp('copyright Daniel Almeida 2015');
elseif menu==7
    Presion=input('digite el valor de la presion en psia');
    calidad=input('digite el valor de la calidad');
    interpolar=interp1(b,h,Presion,'spline');
    interpolar1=interp1(b,j,Presion,'spline');
    disp('su entalpia es Btu/lbm'); 
    disp((calidad*(interpolar1-interpolar))+interpolar);  
    disp('copyright Daniel Almeida 2015');
elseif menu==8
    Temperatura=input('digite el valor de la temperatura en °F');
    calidad=input('digite el valor de la calidad');
    interpolar=interp1(a,h,Temperatura,'spline');
    interpolar1=interp1(a,j,Temperatura,'spline');
    disp('su entalpia es en Btu/lbm'); 
    disp((calidad*(interpolar1-interpolar))+interpolar);
    disp('copyright Daniel Almeida 2015');
elseif menu==9
    Presion=input('digite el valor de la presion en psia');
    calidad=input('digite el valor de la calidad');
    interpolar=interp1(b,k,Presion,'spline');
    interpolar1=interp1(b,m,Presion,'spline');
    disp('su entropia es en Btu/lbm ·R'); 
    disp((calidad*(interpolar1-interpolar))+interpolar); 
    disp('copyright Daniel Almeida 2015');
elseif menu==10
    Temperatura=input('digite el valor de la temperatura °F');
    calidad=input('digite el valor de la calidad');
    interpolar=interp1(a,k,Temperatura,'spline');
    interpolar1=interp1(a,m,Temperatura,'spline');
    disp('su entropia es en Btu/lbm ·R'); 
    disp((calidad*(interpolar1-interpolar))+interpolar);
    disp('copyright Daniel Almeida 2015');

end
   