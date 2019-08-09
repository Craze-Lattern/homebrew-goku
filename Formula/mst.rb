class Mst < Formula
  desc 'Tool to analyze iOS app size'
  homepage 'https://github.com/guoyuan94/mst'
  url 'https://github.com/guoyuan94/mst.git',
      tag: '0.2.0',
      revision: 'dcc798ad3f0566b969fe4fbdf06d1f2456e78aa0'
  head 'https://github.com/guoyuan94/mst.git'

  bottle do
    root_url 'https://github.com/guoyuan94/mst/releases/download/0.2.0'
    cellar :any_skip_relocation
    sha256 'a3bd0aaff031b5f6c3b68e08cd9d9a108ed2c17dcb2f2c477f2707cc2a1aa88e' => :mojave
  end

  depends_on xcode: ['10.2', :build]

  def install
    system 'make', 'prefix_install', "PREFIX=#{prefix}", "TEMPORARY_FOLDER=#{buildpath}/mst.dst"
  end

  test do
    system 'false'
  end
end
