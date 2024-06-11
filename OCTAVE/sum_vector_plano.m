# SUMATORIA VECTORES EN EL PLANO
# Encuentra componentes x & y de N vectores en el Plano y realiza la Sumatoria Vector Resultante. 
# Funcionamiento:
# 1) Pregunta el Numero de Vectores, pregunta los datos de cada vector.
# 2) Pregunta La Magnitud del Vector.
# 3) Pregunta el Eje de Referencia.
# 4) Pregunta el Sentido Rotacion del angulo.
# 5) Pregunta el Valor del Angulo en Grados respecto al eje de referencia (Menor o igual a 90)
# 6) Muestra la Matriz A con las Componentes x & y de todos los vectores.
# 7) Muestra la Sumatoria de las Componentes x & y, almacenado en L1.
# 8) Muestra La magnitud "R" del vector Resultado.
# 9) Muestra el Angulo "G "respecto al eje x del vector resultado

disp("SUMATORIA VECTORES")
disp("NUMERO DE VECTORES")
input("?  ")
N = ans;

MatA = zeros(N,2);
L1 = zeros(1,2);

A = 0; % Acumulador componentes en X
B = 0; % Acumulador componentes en Y
for F = 1:N
  disp(" ")
  disp("VECTOR NUMERO")
  disp(F)
  disp("MAGNITUD")
  input("?  ")
  M = ans;
  
  disp(" ")
  disp("EJE DE REFERENCIA")
  disp("1) x")
  disp("2) y")
  disp("3)-x")
  disp("4)-y")
  input("?  ")
  E = ans;
  
  disp(" ")
  disp("SENTIDO")
  disp("1)ANTI-HORARIO")
  disp("2)HORARIO")
  input("?  ")
  O = ans;
  
  disp(" ")
  disp("MINIMO ANGULO AL EJE DE REFERENCIA GRADOS")
  input("?  ")
  T = ans*pi/180;
  
  if T > 90
    disp("ANGULO > 90")
    return
  endif
  
  % Asignacion Signos Primer Cuadrante
  % Referencia eje +x (E=1) sentido Anti-horario (O=1)
  % Referencia eje +y (E=2) sentido Horario (O=2)
  if E==1 && O==1 || E==2 && O==2
    I = 1;
    J = 1;
  endif
  % Asignacion Signos Segundo Cuadrante
  % Referencia eje -x (E=3) sentido Horario (O=2)
  % Referencia eje +y (E=2) sentido Anti-Horario (O=1)
  if E==3 && O==2 || E==2 && O==1
    I = -1;
    J =1;
  endif
  % Asignacion Signos Tercer Cuadrante
  % Referencia eje -x (E=3) sentido Anti-Horario (O=1)
  % Referencia eje -y (E=4) sentido Horario (O=2)
  if E==3 && O==1 || E==4 && O==2
    I = -1;
    J = -1;
  endif
  % Asignacion Signos Cuart Cuadrante
  % Referencia eje x (E=1) sentido Horario (O=2)
  % Referencia eje -y (E=2) sentido Anti-Horario (O=1)
  if E==1 && O==2 || E==4 && O==1
    I = 1;
    J = -1;
  endif
  % Calculo componentes eje x (E=1) y Eje -x (E=3)
  if E == 1 || E == 3
    X = M*cos(T)*I;
    Y = M*sin(T)*J;
  endif
  % Calculo componentes eje y (E=2) y Eje -y (E=4)
  if E == 2 || E == 4
    X = M*sin(T)*I;
    Y = M*cos(T)*J;
  endif
  
  MatA(F,1) = X;
  MatA(F,2) = Y;
  
  A = A + X;  % Sumatoria componentes x
  B = B + Y;  % Sumatoria componentes y
endfor

L1(1) = A;    % Componente X resultado
L1(2) = B;    % Componente Y resultado

disp("COMPONENTES VECTORES")
disp(MatA)
disp("VECTOR RESULTADO")
disp(L1)
disp("MAGNITUD")
R = sqrt(A^2 + B^2);
disp(R)
disp("ANGULO DEG")
G = atan(B/A)*180/pi;
disp(G)
  
