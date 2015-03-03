default['myapp']['db']['name']     = 'myapp_staging'
default['myapp']['db']['username'] = 'myapp_RW'
default['myapp']['db']['password'] = 'topsecret'

override['rbenv']['group_users'] = ['myapp']
