program testeFeldZweitMax (input, output);
{ testet die Funktion FeldZweitMax }

  const
  FELDGROESSE = 10;

  type
  tIndex = 1..FELDGROESSE;
  tFeld = array [tIndex] of integer;

  var 
  Feld : tFeld;
  i : integer;

  function FeldZweitMax (var inFeld : tFeld) : integer;
  var max1, max2, i : integer;
  begin
	max1 := -MaxInt; max2 := -MaxInt;
	for i := 1 to FELDGROESSE do
	begin
		if (inFeld[i] >= max1) then
			begin
				max2 := max1;
				max1 := inFeld[i];
			end
		else if (inFeld[i] >= max2) then
		begin
			max2 := inFeld[i]; 
		end;
	end;
	FeldZweitMax := max2;
  end;
	
begin { Testprogramm }
  writeln('Bitte geben Sie ', FELDGROESSE, ' Zahlen ein:');
  for i := 1 to FELDGROESSE do
    read (Feld [i]);
  writeln('Die zweitgroesste Zahl ist ', FeldZweitMax (Feld), '.');
end. { testeFeldZweitMax }


