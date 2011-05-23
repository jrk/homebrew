require 'formula'

class OcamlOunit < Formula
  url 'http://forge.ocamlcore.org/frs/download.php/495/ounit-1.1.0.tar.gz'
  homepage 'http://ounit.forge.ocamlcore.org/'
  md5 'bf82bd7f8853cd9a1aff7be716192643'

  depends_on 'objective-caml'
  depends_on 'ocaml-findlib'

  def install
    ENV.deparallelize
    system "ocaml", "setup.ml", "-configure", "--prefix", "#{prefix}"
    system "ocaml", "setup.ml", "-build"
    system "ocaml", "setup.ml", "-install"
  end
end
