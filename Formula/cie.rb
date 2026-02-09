# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.19"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.19/cie_v0.7.19_darwin_arm64.tar.gz"
      sha256 "07f380a1be5bac8cd50ff9cd78bb487c8c6017c0a24709e6d50f303b0922f20a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.19/cie_v0.7.19_linux_amd64.tar.gz"
      sha256 "74e1bc59385a30fdf66060f51dcf1120e4a1d263128a8f64ce3522e32a8fb568"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.19/cie_v0.7.19_linux_arm64.tar.gz"
      sha256 "72ac3df9d5d61da84b5b190d87d19c59c065f3a501206524712de16ff6e6908e"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
