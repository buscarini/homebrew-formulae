require 'formula'

class Jjdeploy < Formula
  homepage 'https://github.com/buscarini/jjdeploy'
  url 'https://github.com/buscarini/jjdeploy/archive/0.8.3.tar.gz'
  sha256 '9aab0aec49f50f39cf151b1c075a479d1ed7797bd0b93cf8b3563b5f02ff57d9'
  
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