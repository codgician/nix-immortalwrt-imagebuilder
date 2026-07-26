# snapshot package feeds for aarch64_cortex-a53
{
  sha256sums = {
    hash = "sha256-RXgKsCVvrrAkUS7L7ER/TZxm6Jviq9InYDz1d+w+Ogc=";
    name = "aarch64_cortex-a53-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a53/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a53/base/";
    sourceInfo = {
      hash = "sha256-DwBqQIIumvHhVAN6LyIIhAYUpdAovYcQ358rskZzRV4=";
      name = "aarch64_cortex-a53-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a53/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a53/luci/";
    sourceInfo = {
      hash = "sha256-GEONG5T875YD1u28PxetMaqr35N1rGpco7ZmTw7w0Vw=";
      name = "aarch64_cortex-a53-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a53/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a53/packages/";
    sourceInfo = {
      hash = "sha256-YbKKpxzfHmY9lW3R8st1+weN07/BlPRELbjgoI9yEMY=";
      name = "aarch64_cortex-a53-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a53/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a53/routing/";
    sourceInfo = {
      hash = "sha256-11zWCiLv/xiH16whc+J0TzcwdHxd0gy+OCUC5hSJC1I=";
      name = "aarch64_cortex-a53-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a53/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a53/telephony/";
    sourceInfo = {
      hash = "sha256-KZIUbWQTXSl2bIlWAi7UzUXAmOtCF1B3lHxUoR0Dz0w=";
      name = "aarch64_cortex-a53-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a53/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
