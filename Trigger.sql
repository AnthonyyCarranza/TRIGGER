-Trigger que no permita matricular a un estudiante a un estudiante que no este en la edad de entre 3 y 4 años. 

CREATE OR REPLACE FUNCTION est_edad() returns Trigger
AS 
$$
Begin
if (new.est_edad)<> 3 and (new.est_edad)<> 4 then
raise warning '';
return null;
else
return new;
end if;



END
$$

Language plpgsql

create  trigger edad before insert on nino
for each row execute procedure edad();