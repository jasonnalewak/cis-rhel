name 'cis-rhel'

default_source :supermarket

run_list 'cis-rhel::default'

cookbook 'cis-rhel', path: '.'
