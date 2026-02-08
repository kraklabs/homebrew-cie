# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.12"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.12/cie_v0.7.12_darwin_arm64.tar.gz"
      sha256 "15994b9c97a158e7872f8ef4cd655173006c3b05f127721bf6a2a066e0673cc7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.12/cie_v0.7.12_linux_amd64.tar.gz"
      sha256 "1755a536ea1bff5f63354e07de38534a82f5f559739dcee9597b1f798f418898"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.12/cie_v0.7.12_linux_arm64.tar.gz"
      sha256 "9162833167ec1057008fae212352eaed6d1bca24aab5912daf480ca69954c791"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
