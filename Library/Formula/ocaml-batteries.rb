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
    ENV.deparallelize
    ENV['DOCROOT'] = "#{prefix}/share/doc/ocaml-batteries"
    ENV['DESTDIR'] = "#{prefix}/lib/ocaml/site-lib"
    system "mkdir", "-p", "#{ENV['DESTDIR']}"
    system "make all"
    system "make install"
    system "make doc"
    system "make install-doc"
    ohai 'To get started using Batteries at the toplevel, copy the following
into `~/.ocamlinit`:
-----------------------------------------------------------------------------
let interactive = !Sys.interactive;;
Sys.interactive := false;; (*Pretend to be in non-interactive mode*)
#use "topfind";;
Sys.interactive := interactive;; (*Return to regular interactive mode*)

Toploop.use_silently 
             Format.err_formatter (Filename.concat (Findlib.package_directory 
             "batteries") "battop.ml");;
-----------------------------------------------------------------------------
If you already have findlib in your `~/.ocamlinit`, you only need the
last line in our ocamlinit to load batteries.
'
  end
end
