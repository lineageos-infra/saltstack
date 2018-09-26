# installs packages, sets up repo, sets up source trees, DOES NOT RUN SYNC
# the first build in jenkins may take some time
dependencies:
  pkg.installed:
    - pkgs:
      - bc
      - bison
      - build-essential
      - ccache
      - curl
      - flex
      - g++-multilib
      - gcc-multilib
      - git
      - gnupg
      - gperf
      - imagemagick
      - lib32ncurses5-dev
      - lib32readline-dev
      - lib32z1-dev
      - liblz4-tool
      - libncurses5-dev
      - libsdl1.2-dev
      - libssl-dev
      - libwxgtk3.0-dev
      - libxml2
      - libxml2-utils
      - lzop
      - pngcrush
      - rsync
      - schedtool
      - squashfs-tools
      - xsltproc
      - zip
      - zlib1g-dev
/usr/local/bin/repo:
  file.managed:
    - source: https://commondatastorage.googleapis.com/git-repo-downloads/repo
    - user: root
    - group: root
    - mode: 755
    - skip_verify: True

jenkins:
  user.present:
    - fullname: LineageOS Builder
    - shell: /bin/bash
    - home: /home/jenkins

setup git user:
  git.config_set:
    - user: jenkins
    - global: true
    - name: user.name
    - value: LineageOS Builder

setup git email:
  git.config_set:
    - user: jenkins
    - global: true
    - name: user.email
    - value: infra@lineageos.org

{% for dir in ['/lineage', '/lineage/cm-14.1', '/lineage/lineage-15.1', '/lineage/cm-14.1/.repo/local_manifests', '/lineage/lineage-15.1/.repo/local_manifests'] %}
{{dir}}:
  file.directory:
    - user: jenkins
    - group: jenkins
    - mode: 755
{% endfor %}


