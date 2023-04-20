-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('Gabriel Simeonov','ganisi@abv.bg' , 'gabrielsimeonov' ,'7d5ce73d-4992-4a2b-9959-42d518cdd7d2'),
  ('Spas Kyosev','4em6iro@gmail.com' , 'spaskyosev' ,'0feb303c-12be-46b5-b5a4-96b734a3ae5a'),
  ('Londo Mollari','lmollari@centari.com' ,'londo' ,'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'gabrielsimeonov' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )