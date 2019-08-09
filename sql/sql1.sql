select u.name as user_name, c.name as community_name, cm.joined_at
from users as u
	inner join community_members as cm on cm.user_id = u.id
	inner join communities as c on c.id = cm.community_id
where c.created_at >= '2013-01-01 00:00:00'
order by cm.joined_at desc;