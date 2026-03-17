# snapshot package feeds for powerpc_8548
{
  sha256sums = {
    hash = "sha256-AU8gTCgy1D9oACT5rues0A1bYoo7Q+0B6nWsVmSXQ7Y=";
    name = "powerpc_8548-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/base/";
    sourceInfo = {
      hash = "sha256-IPjtNOAdwsZyXm3Zgmi/wCVwePmqIu3WdEbRQt70zko=";
      name = "powerpc_8548-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/luci/";
    sourceInfo = {
      hash = "sha256-Pym3PPAGf743SO1nFIcVAR9P/BkCy6lGFpS42SD1lAs=";
      name = "powerpc_8548-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/packages/";
    sourceInfo = {
      hash = "sha256-qnxvXtI4SvqbGztDjvPGpWJiivoHio8wdCzbXru0KIg=";
      name = "powerpc_8548-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/routing/";
    sourceInfo = {
      hash = "sha256-APigz608kJ3fU7/sNBrp0zogyEBOjYS/6mR/8hMK8/k=";
      name = "powerpc_8548-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/telephony/";
    sourceInfo = {
      hash = "sha256-5FhstTAXkT6ztz8oWXMelgmYaqgolS+/Dq3D6zrcSSI=";
      name = "powerpc_8548-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
