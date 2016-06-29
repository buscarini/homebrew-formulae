require 'formula'

class Jjdeploy < Formula
  homepage 'https://github.com/buscarini/jjdeploy'
  url 'https://github.com/buscarini/jjdeploy/archive/0.8.0.tar.gz'
  sha1 'f1ffb231c03cd1f59a3be3621f9278ba2af31087'
  
  def install
    prefix.install 'jjdeploy_resources','jjdeploy.config'

    bin.install 'jjdeploy'
    bin.install 'upload.py'
    bin.install 'askpass.py'
  end

  test do
    system "#{bin}/jjdeploy", '--version'
  end
end