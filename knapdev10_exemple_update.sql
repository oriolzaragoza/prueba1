declare
l_cnt number := 0;

begin

select count('x')
  into l_cnt
  from KNAPDEV10 k
  where k.status = '85';

  if l_cnt > 0 then
    dbms_output.put_line ('En total updateamos '||l_cnt||'');

    update knapdev10 k
    set k.status = '90'
    where k.status = '85';
	dbms_output.put_line ('En total updateamos '||l_cnt||'');
  end if;
end;
