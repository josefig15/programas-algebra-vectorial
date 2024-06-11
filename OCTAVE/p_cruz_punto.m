# PROGRAMA PRODUCTO CRUZ/PUNTO 3D
# Encuentra el Producto Cruz o Producto Punto de dos vectores.
# Funcionamiento:
# 1) Pregunta componentes x , y & z del Vector 1 y lo almacena en cadena L1
# 2) Pregunta componentes x , y & z del Vector 2 y lo almacena en cadena L2    
# 2) Pregnta el tipo operacion: 1) V1 X V2 , 2) V1 . V2
# 3) Muestra el Resultado Producto cruz almacenado en cadena L3. 
# 4) Muestra el Resultado Producto Punto almacenado en S y el Angulo entre V1 y V2.

disp("PRODUCTO CRUZ/PUNTO 3D")

L1 = zeros(1,3); %Vector 1
L2 = zeros(1,3); %Vector 2
L3 = zeros(1,3); %Vector Resultado

%Proceso captura componentes vectores
A = 0;                    % Acumulador Vector 1
B = 0;                    % Acumulador Vector 2
for I = 1:2
  disp("VECTOR NUMERO")
  disp(I)
  for N = 1:3
    if N == 1
      disp("COMPONENTE X")
    elseif N == 2
      disp("COMPONENTE Y")
    elseif N == 3
      disp("COMPONENTE Z")
    endif
    
    input("? ")
    C = ans;
    
    if I == 1
      L1(N) = C;
      A = A + C^2; 
    endif
    if I == 2
      L2(N) = C;
      B = B + C^2;
    endif
    
  endfor
endfor

% Calculo de Magnitudes
A = sqrt(A);
B = sqrt(B);

% Seleccion de Operacion
disp("1)V1 X V2")
disp("2)V1 . V2")
input("? ")
O = ans;
disp("RESULTADO")

% Producto Cruz
if O == 1
  L3(1) = L1(2)*L2(3) - L1(3)*L2(2);
  L3(2) = L1(3)*L2(1) - L1(1)*L2(3);
  L3(3) = L1(1)*L2(2) - L1(2)*L2(1);
  disp("P.CRUZ")
  L3
endif

% Producto Punto.
if O == 2
  S = 0;
  for N = 1:3
    S = S + L1(N)*L2(N);
  endfor
  R = acos(S/(A*B));  % Angulo entre V1 y V2
  disp("P.PUNTO V1 y V2")
  S
  disp("ANGULO ENTRE V1 y V2 (RAD)")
  R
  disp("ANGULO ENTRE V1 y V2 (DEG)") 
  R = R*180/pi
endif
