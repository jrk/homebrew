require 'formula'

class Godi < Formula
  url 'http://download.camlcity.org/download/godi-rocketboost-20091222.tar.gz'
  homepage 'http://godi.camlcity.org/godi'
  md5 '5ce87273e3ecce6a3785a6c538674e1e'
  version '3.12'

  def patches
    # set bootstrap script to use /bin/ksh instead of /bin/sh
    DATA
  end

  def install
    system "./bootstrap", "--prefix", "#{prefix}", "--section", "3.12"
    system "PATH=#{prefix}/bin:#{prefix}/sbin:$PATH ./bootstrap_stage2"
  end
end

__END__
diff --git a/bootstrap b/bootstrap
index 258f815..ffe7dab 100755
--- a/bootstrap
+++ b/bootstrap
@@ -1,4 +1,4 @@
-#! /bin/sh
+#! /bin/ksh
 
 # GODI: $Id: bootstrap 912 2009-12-22 15:50:49Z gerd $
