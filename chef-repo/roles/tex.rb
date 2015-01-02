name 'dev'
description 'development'
run_list(
  'recipe[apt]',
  'recipe[timezone]',
  'recipe[japanese]',
  'recipe[locale]',
  'recipe[tex]'
)
