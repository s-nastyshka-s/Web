PROGRAM SarahRevere(INPUT, OUTPUT);
{����� ᮮ⢥�����饣� ᮮ�饭��, ������饣� �� ����稭�
 �� �室�: '...by land' ��� 1; '...by sea'  ��� 2;
 ���� ����� ᮮ�饭�� �� �訡��}
USES
  DOS;
VAR
  Lanterns: STRING;
BEGIN {SarahRevere}
  {����஢���� QUERY_STRING � Lanterns}
  Lanterns := GetEnv('QUERY_STRING'); {'lanterns=1'}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  {Issue SarahRevere's message}
  IF Lanterns = 'lanterns=1'
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF Lanterns = 'lanterns=2'
    THEN
      WRITELN('The British are coming by sea.')
    ELSE
      WRITELN('The North Church shows only ''', Lanterns, '''.')
END. {SarahRevere}
