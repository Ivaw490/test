select u.name as user_name, c.name as community_name, p.name as permission_name
from users as u
	inner join community_members as cm on cm.user_id = u.id
    inner join communities as c on c.id = cm.community_id
    inner join community_member_permissions as cmp on cmp.member_id = cm.id
    inner join permissions as p on p.id = cmp.permission_id
where (u.name like "%t%" or p.name like "%articles%")
  and length(c.name) >= 15;