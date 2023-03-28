-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('Gabriel Simeonov','ganisi@abv.bg' , 'gabrielsimeonov' ,'Your_cognito_user_id'),
  ('Spas Kyosev','4em6iro@gmail.com' , 'spaskyosev' ,'Your_cognito_user_id');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'andrewbrown' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )