require 'formula'

class OcamlBatteries < Formula
  url 'https://forge.ocamlcore.org/frs/download.php/560/batteries-1.3.0.tar.gz'
  homepage 'http://batteries.forge.ocamlcore.org/'
  md5 '2c9f71158e4c776fb0fd51a263e37d72'

  depends_on 'objective-caml'  
  depends_on 'ocaml-findlib'
  depends_on 'ocaml-camomile'
  depends_on 'ocaml-ounit'

  def install
    system "make all"
    system "make install"
    system "make doc"
    system "make install-doc"
  end
end
