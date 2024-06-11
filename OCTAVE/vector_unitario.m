# PROGRAMA VECTOR UNITARIO
# Encuentra la Magnitud de un Vector y su vector Unitario.
# Funcionamiento:
# 1) Pregunta componentes x , y & z del Vector 1 y lo almacena en cadena L1   
# 2) Muestra La Magnitud del Vector 1 Almcenado en "A". 
# 3) Muestra el vector Unitario almacenado en cadena L2.

disp("VECTOR UNITARIO")

L1 = zeros(1,3);
L2 = zeros(1,3);

% Ingreso Datos
A = 0; % Acumulador
for N = 1:3
  if N == 1
    disp("COMPONENTE X")
  elseif N == 2
    disp("COMPONENTE Y")
  elseif N == 3
    disp("COMPONENTE Z")
  endif
  input("? ")
  C = ans;      % Componente vector
  L1(N) = C;    
  A = A + C^2;  % Sumatoria componentes^2
endfor

% Calculo vector Unitario
A = sqrt(A);    % Magnitud vector

for N = 1:3
  L2(N) = L1(N)/A; 
endfor

disp("MAGNITUD")
A
disp("RESULTADO")
L2


  
