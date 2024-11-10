# Maintainer: Esk <esk@esk.lol>

pkgname=pgcat
pkgver=0.2.4
pkgrel=1
pkgdesc="PostgreSQL pooler with sharding, load balancing and failover support."
arch=('x86_64')
url="https://github.com/postgresml/pgcat"
license=('MIT')
depends=('gcc-libs')
makedepends=('cargo')
source=(
  "$pkgname-$pkgver.tar.gz::https://github.com/postgresml/$pkgname/archive/refs/tags/$pkgname-$pkgver.tar.gz"
  "pgcat.example.toml"
)
sha512sums=(
  'a316877f1ca79282bfb6005856a84963d356f89045d56cdd9fc4824f2fc1028988256303a1ed4d40dceead7bc2dc990c5bbdccbaa231825702331ac7184df6cf'
  '73dfaeba6de1d4968bf9396bd9ebf57ac358b9fcfb84ecc5dc6adc299ad0df10326bc0a3f879c0a53917f34199149380e6ae247783dcf0ef73d4a620eed4ce66'
)
options=(!lto)

build() {
  cd "$pkgname-$pkgname-$pkgver"

  cargo build --release --locked
}

package() {
  install -Dm755 "pgcat.example.toml" "$pkgdir/etc/pgcat.toml"

  cd "$pkgname-$pkgname-$pkgver"

  install -Dm755 "target/release/$pkgname" "$pkgdir/usr/bin/$pkgname"

  install -Dm644 "README.md" "$pkgdir/usr/share/doc/${pkgname}/README.md"
  install -Dm644 "LICENSE" "$pkgdir/usr/share/licenses/${pkgname}/LICENSE-MIT"
}
