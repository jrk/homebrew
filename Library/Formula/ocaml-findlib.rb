require 'formula'

class OcamlFindlib < Formula
  url 'http://download.camlcity.org/download/findlib-1.2.7.tar.gz'
  homepage ''
  md5 '000bff723e8d3d727a7edd5b5901b540'

  depends_on 'objective-caml'

  def install
    ENV.deparallelize
    system "./configure", "-bindir", "#{prefix}/bin"
    system "make", "all"
    system "make", "opt"
    system "make", "install"
  end
end
