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


  