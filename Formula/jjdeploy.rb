require 'formula'

class Jjdeploy < Formula
  homepage 'https://github.com/buscarini/jjdeploy'
  url 'https://github.com/buscarini/jjdeploy/archive/0.1.4.tar.gz'
  sha1 '3bf4c80f9156dfdf98cce7c57283c009d227ef43'
  
  def install
    prefix.install 'jjdeploy_resources','jjdeploy.config'

    bin.install 'jjdeploy'
  end

  test do
    system "#{bin}/jjdeploy", '--version'
  end
end