# Class: puppetnode
# ===========================
#
# this class install puppetserver for debian jessie.
#
#
# Examples
# --------
#
# @example
# include puppetnode
#
# Authors
# -------
#
# Author Name <gril51043@gmail.com>
#
# Copyright
# ---------
#
# Copyright 2017 Martin Krutina
#
class puppetnode {

  include puppetnode::master

}
