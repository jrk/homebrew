require 'formula'

class Godi < Formula
  url 'http://download.camlcity.org/download/godi-rocketboost-20091222.tar.gz'
  homepage 'http://godi.camlcity.org/godi'
  md5 '5ce87273e3ecce6a3785a6c538674e1e'
  version '3.12'

  def install
    system "./bootstrap", "--prefix", "#{prefix}", "--section", "3.12"
    system "PATH=#{prefix}/bin:#{prefix}/sbin:$PATH ./bootstrap_stage2"
  end
end
