# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.13"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.13/cie_v0.7.13_darwin_arm64.tar.gz"
      sha256 "6d6e240b8e833bacb5c2c359e09cef474d2766fc73a8d04d970b8160588c118d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.13/cie_v0.7.13_linux_amd64.tar.gz"
      sha256 "62253fe5e8fa9ec1ce9b48847307275ea234924094c04c16ddfa88605629470d"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.13/cie_v0.7.13_linux_arm64.tar.gz"
      sha256 "6349766b02606b4f4e5370f9f1a6d1812fb3133e5ece881c655b0f5d0b58bda0"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
