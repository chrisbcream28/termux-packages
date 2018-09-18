TERMUX_PKG_HOMEPAGE=https://github.com/github/cmark
TERMUX_PKG_DESCRIPTION="CommonMark parsing and rendering program"
TERMUX_PKG_VERSION=0.28.3.gfm.16
TERMUX_PKG_SHA256=5594e42f13e529e2530bcc8e4681832e888714d5c89f4eaf3adefc731e21a3e2
TERMUX_PKG_SRCURL=https://github.com/github/cmark/archive/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-DCMAKE_INSTALL_LIBDIR=$TERMUX_PREFIX/lib"
TERMUX_PKG_INCLUDE_IN_DEVPACKAGE="lib/cmake-gfm-extensions"

termux_step_post_make_install() {
    cd $TERMUX_PREFIX/bin
    ln -f -s cmark-gfm cmark

    cd $TERMUX_PREFIX/share/man/man1
    ln -f -s cmark-gfm.1 cmark.1
}
