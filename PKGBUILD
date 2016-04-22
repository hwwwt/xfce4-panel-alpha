# Contributor: twa022 <twa022 at gmail dot com>

_pkgname=xfce4-panel
pkgname=${_pkgname}-alpha
pkgver=4.12.0
pkgrel=1
pkgdesc="A mod version of panel for the Xfce desktop environment"
arch=('i686' 'x86_64')
url="https://github.com/hwwwt/xfce4-panel-alpha"
license=('GPL2')
groups=('xfce4')
depends=('exo' 'garcon' 'libxfce4ui' 'libwnck' 'hicolor-icon-theme'
         'desktop-file-utils')
makedepends=('intltool' 'gtk-doc')
provides=("${_pkgname}=${pkgver}")
conflicts=("${_pkgname}" "${_pkgname}-git")
install=$_pkgname.install
source=(http://archive.xfce.org/src/xfce/$_pkgname/${pkgver%.*}/$_pkgname-$pkgver.tar.bz2)

sha256sums=('30920fc2e2fc26279a82b5261a155c2cc15ab2aa1ced2275684a6ff8261b97b0')

build() {

  cd "$srcdir/$_pkgname-$pkgver"

  # 活动窗口最大时面板不透明，若要禁用，注释掉下面三行
  cp ../../patch/panel/* ./panel/
  cp ../../patch/migrate/* ./migrate/
  cp ../../patch/po/* ./po/

  # 开启扁平按钮时活动窗口按钮透明，若要禁用，注释掉下面这行
  cp ../../patch/plugins/tasklist/* ./plugins/tasklist/

  ./configure \
    --prefix=/usr \
    --sysconfdir=/etc \
    --libexecdir=/usr/lib \
    --localstatedir=/var \
    --disable-static \
    --enable-gio-unix \
    --enable-gtk-doc \
    --enable-gtk3 \
    --disable-debug
  make
}

package() {
  cd "$srcdir/$_pkgname-$pkgver"
  make DESTDIR="$pkgdir" install
}
