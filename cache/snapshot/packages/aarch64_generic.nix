# snapshot package feeds for aarch64_generic
{
  sha256sums = {
    hash = "sha256-arR8JJIpMvCN9Zt8Bbz//WsliugiIGCtBnUq97grHYQ=";
    name = "aarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-tCTbTtD5po3r5qKa8XpBxY9fWBbpnJQuv1YvWw4TE3E=";
      name = "aarch64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-Hh0pDziVF53yG0LcVXgI3RE67bVBfvV5lGqvP5i6Xfo=";
      name = "aarch64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-rZlTJwLbnU9QslUD5HEGY0APekvIjhjkkWrSWuNZlho=";
      name = "aarch64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-WN6KVXEPJrOXFSMl3KoY5M/j9hPoFiqFkorfjQzlBJo=";
      name = "aarch64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-LhHR3zum6ixSBsLS9AQ333BSuQw29bbvW+VMuKDiMns=";
      name = "aarch64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
