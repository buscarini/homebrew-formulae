require 'formula'

class Jjdeploy < Formula
  homepage 'https://github.com/buscarini/jjdeploy'
  url 'https://github.com/buscarini/jjdeploy/archive/0.7.6.tar.gz'
  sha1 '351164ed187f8a988ae915d41ea6aa10176d5e0f'
  
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