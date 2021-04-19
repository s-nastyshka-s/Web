PROGRAM HelloUser(INPUT, OUTPUT);
{�뢥�� ᮮ�饭�� 'Hello dear, <name>!',
 � ��砥 ������⢨� ��ࠬ��� name, �뢥�� 'Hello Anonymous!'}
USES
  DOS;
VAR
  Parameters, Name: STRING;
BEGIN {HelloUser}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  {����஢���� QUERY_STRING � Parameters}
  Parameters := GetEnv('QUERY_STRING');
  IF POS('name=', Parameters) = 1
  THEN
    BEGIN
      IF POS('&', Parameters) <> 0
      THEN
        Name := COPY(Parameters, 6, POS('&', Parameters) - 6)
      ELSE
        Name := COPY(Parameters, 6, 255);
      WRITELN('Hello dear, ', Name)
    END
  ELSE
    WRITELN('Hello Anonymous!')
END. {HelloUser}
