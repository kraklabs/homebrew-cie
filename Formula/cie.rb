# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.3.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.3.0/cie_v0.3.0_darwin_arm64.tar.gz"
      sha256 "c3c397c93e8699221bdff9003849f41355c6785818ec7ece223af480d58310b9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.3.0/cie_v0.3.0_linux_amd64.tar.gz"
      sha256 "252d516f790b09f8def9803bbd35f6533c5dcd3a86453a569c4c9c0575e172ff"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.3.0/cie_v0.3.0_linux_arm64.tar.gz"
      sha256 "bc338e6fc440ae8d5d344d8f41643193d18fb1ddf3e6b5401cc440a88fce728b"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
