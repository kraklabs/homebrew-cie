# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.0/cie_v0.7.0_darwin_arm64.tar.gz"
      sha256 "e7c240bfe222db329b907b32de0ba7e7201723a517e507e678b8329c0ce01248"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.0/cie_v0.7.0_linux_amd64.tar.gz"
      sha256 "08741dba5dbf68586f6faf550df98781fdaca5d8d42f7bc9218926d6dd07799c"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.0/cie_v0.7.0_linux_arm64.tar.gz"
      sha256 "f4f535d4864f7c112452ddf84556d002b72be9a45441670ae30bb4d5d5bee9ba"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
