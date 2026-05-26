# 25.12.0 package feeds for i386_pentium-mmx
{
  sha256sums = {
    hash = "sha256-Ien44FoVc0fOMaZBxH9/H06IluIwqaMMV6Mf2j1eXUI=";
    name = "i386_pentium-mmx-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium-mmx/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium-mmx/base/";
    sourceInfo = {
      hash = "sha256-KhOh9dXoHMLeb7VZVe/IPQgOEilok51RVaodo2SdePw=";
      name = "i386_pentium-mmx-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium-mmx/base/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium-mmx/luci/";
    sourceInfo = {
      hash = "sha256-CKUbVdXMQr1gbWyl2UNxszRPTlfQH+3deq9RUxrRt6A=";
      name = "i386_pentium-mmx-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium-mmx/luci/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium-mmx/packages/";
    sourceInfo = {
      hash = "sha256-tDvH7D2IDQq2O3s7Rxs0cY9nTBlQgJuYUooZxITecFI=";
      name = "i386_pentium-mmx-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium-mmx/packages/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium-mmx/routing/";
    sourceInfo = {
      hash = "sha256-3lPrlC06iT8gcpqePWBdKEVm4VqrZ7bkMrZ07R5b1bM=";
      name = "i386_pentium-mmx-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium-mmx/routing/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium-mmx/telephony/";
    sourceInfo = {
      hash = "sha256-flF3u77RtSWvGe+c57xRt7l9fZoV+Hd3rcXz0qZ94w8=";
      name = "i386_pentium-mmx-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium-mmx/telephony/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
