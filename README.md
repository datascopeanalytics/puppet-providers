puppet-providers
========================

Puppet has a rather annoying feature of
[supporting several package managers](http://docs.puppetlabs.com/references/latest/type.html#package-providers)
but not installing them by default when they are used. Grrr...

This puppet module can be used to install many (maybe all, someday) of
these non-native package managers so you can use `pip` or `npm` to
install python or node.js packages. This has been designed for Ubuntu
but can easily be extended to other operating systems as well.
