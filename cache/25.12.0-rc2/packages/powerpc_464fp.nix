# 25.12.0-rc2 package feeds for powerpc_464fp
{
  sha256sums = {
    hash = "sha256-C0qt4vidBmXdHtqzOs0GnReATNV5db9Jj95lS2OmjzY=";
    name = "powerpc_464fp-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc_464fp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc_464fp/base/";
    sourceInfo = {
      hash = "sha256-f/vHICa/sBDD+feCkIgXcPaoV+W17vM8dPz2K/qULj0=";
      name = "powerpc_464fp-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc_464fp/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc_464fp/luci/";
    sourceInfo = {
      hash = "sha256-NEpe1n2sXcNb82Zfrpwx27Udz/x9xYiyHBIC2Vljq9s=";
      name = "powerpc_464fp-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc_464fp/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc_464fp/packages/";
    sourceInfo = {
      hash = "sha256-VLGNX2dXNgrrOY0r+hScA/pvIPUbMjJOAqSSfbGG6EI=";
      name = "powerpc_464fp-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc_464fp/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc_464fp/routing/";
    sourceInfo = {
      hash = "sha256-Ym+YdhOEzCzqeugmCsChGVtaMYrqCCPGJeqrR+TcTq8=";
      name = "powerpc_464fp-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc_464fp/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc_464fp/telephony/";
    sourceInfo = {
      hash = "sha256-1uoy/02syClaG3XHRJ1zNTq5nMRFCnYic4WrUvdAJAc=";
      name = "powerpc_464fp-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc_464fp/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
