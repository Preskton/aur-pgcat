# Maintainer: Esk <esk@esk.lol>

pkgname=pgcat
pkgver=0.2.4
pkgrel=2
pkgdesc="PostgreSQL pooler with sharding, load balancing and failover support."
arch=('x86_64')
url="https://github.com/postgresml/pgcat"
license=('MIT')
depends=('gcc-libs')
makedepends=('cargo')
source=(
  "$pkgname-$pkgver.tar.gz::https://github.com/postgresml/$pkgname/archive/refs/tags/$pkgname-$pkgver.tar.gz"
)
sha512sums=(
  'a316877f1ca79282bfb6005856a84963d356f89045d56cdd9fc4824f2fc1028988256303a1ed4d40dceead7bc2dc990c5bbdccbaa231825702331ac7184df6cf'
)
options=(!lto)

build() {
  cd "$pkgname-$pkgname-$pkgver"

  cargo build --release --locked
}

package() {
  cd "$pkgname-$pkgname-$pkgver"

  install -Dm755 "target/release/$pkgname" "$pkgdir/usr/bin/$pkgname"
  install -Dm640 "pgcat.minimal.toml" "$pkgdir/etc/pgcat.toml"
  install -Dm644 "README.md" "$pkgdir/usr/share/doc/${pkgname}/README.md"
  install -Dm644 "LICENSE" "$pkgdir/usr/share/licenses/${pkgname}/LICENSE-MIT"
  install -Dm644 "pgcat.service" "$pkgdir/usr/lib/systemd/system/pgcat.service"
}
