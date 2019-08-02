class Mst < Formula
  desc 'Tool to analyze iOS app size'
  homepage 'https://github.com/guoyuan94/mst'
  url 'https://github.com/guoyuan94/mst.git',
      tag: '0.1.0',
      revision: '2e2c2a06d849c742c28ac24b512a8c1260688749'
  head 'https://github.com/guoyuan94/mst.git'

  bottle do
    root_url 'https://github.com/guoyuan94/mst/releases/download/0.1.0'
    cellar :any_skip_relocation
    sha256 'af5ae24bd59b4e76f96b35caa857b6455a5c50fe4cace546c45648bbf3887e05' => :mojave
  end

  depends_on xcode: ['10.2', :build]

  def install
    system 'make', 'prefix_install', "PREFIX=#{prefix}", "TEMPORARY_FOLDER=#{buildpath}/mst.dst"
  end

  test do
    system 'false'
  end
end
