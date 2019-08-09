select c.id, c.name as community_name, p.name as permissinon_name, count(cmp.member_id) as cmi
from communities as c
	inner join community_members as cm on cm.community_id = c.id
    inner join community_member_permissions as cmp on cmp.member_id = cm.user_id
    inner join permissions as p on p.id = cmp.permission_id
group by c.id, p.id
having cmi >= 5
limit 100;