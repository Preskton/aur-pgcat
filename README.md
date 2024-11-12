[![AUR Version](https://img.shields.io/aur/version/pgcat)](https://aur.archlinux.org/packages/pgcat)
# AUR pgcat

Arch Linux AUR package that installs installs [`pgcat`](https://github.com/postgresml/pgcat), a PostgreSQL pooler with sharding, load balancing and failover support.

## Git Mirrors

- https://github.com/Preskton/aur-pgcat

## Contributing

1. Make changes to `PKGBUILD` as necessary.
2. If the version of the upstream binary (`pkgver`) is the same as before, bump the package release (`pkgrel`) number.
3. Run `make sums` to update sha512 sums.
4. Run `make srcinfo` to update the `.SRCINFO`.
5. Run `git push -u origin master` to push to AUR.
6. Wait about five minutes for changes to be available when running commands like `yay pgcat`.
