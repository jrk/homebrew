require 'formula'

class OcamlCamomile < Formula
  url 'http://downloads.sourceforge.net/project/camomile/camomile/0.8.2/camomile-0.8.2.tar.bz2'
  homepage 'http://camomile.sourceforge.net/'
  md5 '51b7803c6a876d005f1541fb83d82a7a'

  depends_on 'objective-caml'

  def install
    ENV.deparallelize
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end
end
