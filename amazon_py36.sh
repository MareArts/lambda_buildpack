dev_install () {
    yum -y update
    yum -y upgrade
    yum install -y \
    wget \
    gcc \
    gcc-c++ \
    findutils \
    zlib-devel \
    zip

    yum install -y yum-utils
    yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
    yum install -y python36.x86_64
    yum install -y python36-devel.x86_64
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python36 get-pip.py
    pip3 install virtualenv
}

main () {
    dev_install
}

main
