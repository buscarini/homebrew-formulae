require 'formula'

class Jjdeploy < Formula
  homepage 'https://github.com/buscarini/jjdeploy'
  url 'https://github.com/buscarini/jjdeploy/archive/0.5.4.tar.gz'
  sha1 '32060692d7ca81d285388a1c19e7e9e9175ae31f'
  
  def install
    prefix.install 'jjdeploy_resources','jjdeploy.config'

    bin.install 'jjdeploy'
  end

  test do
    system "#{bin}/jjdeploy", '--version'
  end
end