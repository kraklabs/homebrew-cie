# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.6.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.6.0/cie_v0.6.0_darwin_arm64.tar.gz"
      sha256 "9dca0be236eb33b7e334cf13f3e3f51b5923767318b6d437dc5162f19b20cbdd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.6.0/cie_v0.6.0_linux_amd64.tar.gz"
      sha256 "8b91f784cc4385fa7046bba47e62bdcd3e965b7fafb8ec22518702612e7a9541"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.6.0/cie_v0.6.0_linux_arm64.tar.gz"
      sha256 "4fed01f3ae8e66ce478f04c007918a00c74bd7e735b99185d6c9cdd506a0e034"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
