require 'formula'

class Jjdeploy < Formula
  homepage 'https://github.com/buscarini/jjdeploy'
  url 'https://github.com/buscarini/jjdeploy/archive/0.3.9.tar.gz'
  sha1 '64c2787a4a4e2347df9c4bb87eba2c486f00f6de'
  
  def install
    prefix.install 'jjdeploy_resources','jjdeploy.config'

    bin.install 'jjdeploy'
  end

  test do
    system "#{bin}/jjdeploy", '--version'
  end
end