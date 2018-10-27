# add users
zifnaba:
  user.present:
    - fullname: Tom Powell
    - home: /home/zifnab/
    - shell: /bin/bash
    - gid_from_name: True
    - groups:
      - sudo
    - optional_groups:
      - docker
      - lxd
zifnab keys:
  ssh_auth.present:
    - user: zifnaba
    - names:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCrYFjdT0O1XfAlqXYRhzyH0qbGboDLwRPdlFAJF0SuEXEwGt760BksuVzAr/X/+8HxcWYKqTZ5lWngQdSVDjVK9RJk8JMMRFbcj2sMebResaluf8PK9rcmiEtQm2Hmgr5ZS/F5gxnyQbeFCFKTmkZjmVSVo+j3xKC/XFlrskwwONNxC/B0//a7UB1iok7pchbZ4KsnXOVK3taOjwW/KBrARFQLlEgX+K0gnllnv/v1+X+kqkMMI/1lefrCe2pUf51F53xpSChQzBVaUtmwfZUx2QvobnHYzTkopTwXmL7erFnv593GHajmiW4VAIOjfrN+iof7cVwsgaS3bo2kSZGTc/ImNORuV07OE3vrQ9M1/vnow2At4n19MpdhR2g++IsJN03VxOdDiGogMSu07LKzuBfD0tKN5TlNyh660LyYFaG10X+16GyC2U2DG6xiphijX6F1Wa/DI2tl0tBxIZq4ewVbPMHQfG0YdoHG5alOCtWJduC6PtpoHqV02QSZw0M= tom@powell.io

#forkbomb:
#  user.present:
#    - fullname: Simon Shields
#    - home: /home/zifnab/
#    - shell: /bin/bash
#    - groups:
#      - sudo
#forkbomb keys:
#  - user: forkbomb
#  - names:
#      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5kg8hCSoQ8Yx+Se3nLd7E1dPux2nxBltWxgfg50b64jJlolzTFe6aydx8opcRZyjUXU1m4EnOI6GD+8A3bhcVoUYHMpN2/iFIRBt6S3NqUNOB6lKPHiOz4kSAXhULRf84XTH0hVWy58F7ygisWy/jqBW5yh+g0bM2GZsHcVhC5Qjm765whJKYEg/1OkKMPVS7aMS6Sb2fIkMcYvI02/oxulUPZuLPGWymRRrZXlkSqa0WQRBXHCxYE+Iyx3nUZCC3uh79LhMB3tqQ31pfCqiInxT/HHB73yhohFQotl+bCjrpv4dCGjg9DDvacZPi858dbdbUqNgp5tXMn41P3qMX simon@archbox
#
