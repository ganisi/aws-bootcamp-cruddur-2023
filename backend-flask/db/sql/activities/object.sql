SELECT 
  activities.uuid,
  users.display_name,
  users.handle,
  activities.messsage,
  activities.created_at,
  activities.expires_at
FROM public.activities
INNER JOIN public.users ON users.uuid = activities.user_uuid
WHERE 
 activities.uuid = %(uuid)s