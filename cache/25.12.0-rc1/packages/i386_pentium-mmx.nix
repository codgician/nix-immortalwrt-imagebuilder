# 25.12.0-rc1 package feeds for i386_pentium-mmx
{
  sha256sums = {
    hash = "sha256-w+QhhmoW6lW03d/Tq30NCjBhW4nEuB1qX+f0LEySY8Q=";
    name = "i386_pentium-mmx-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/base/";
    sourceInfo = {
      hash = "sha256-hHQve73VyQrSJKbjgKEY55puxpgPR8CDlkfkK0ssiwc=";
      name = "i386_pentium-mmx-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/base/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/luci/";
    sourceInfo = {
      hash = "sha256-6+XIbPk+RZAIOx3aSZB+7iwWmalQEqBTSZmHRDu3JeU=";
      name = "i386_pentium-mmx-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/luci/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/packages/";
    sourceInfo = {
      hash = "sha256-rDJz/28hNKR9bvcU5iVBNEX4hpIYK1IYL/RqbIAgh1E=";
      name = "i386_pentium-mmx-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/packages/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/routing/";
    sourceInfo = {
      hash = "sha256-u60ygHIbjJhCbRTDsce4EGpfUF/0h1zULV3QUIKZ1vE=";
      name = "i386_pentium-mmx-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/routing/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/telephony/";
    sourceInfo = {
      hash = "sha256-szs1u7ebal0Ao24xmGt4hYl8No7j6fCoBERVbwLNPbI=";
      name = "i386_pentium-mmx-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/telephony/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
