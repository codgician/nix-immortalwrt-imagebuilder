# 25.12.0-rc2 package feeds for aarch64_cortex-a53
{
  sha256sums = {
    hash = "sha256-UGwTYV28C/eFpNNWyKDWV04mYJgh+NHwrwMqh0s0kMs=";
    name = "aarch64_cortex-a53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/base/";
    sourceInfo = {
      hash = "sha256-OcJuoCfe6Tc8tAJhfoxU4Le+4wgId8uwyW9RO4SfOxw=";
      name = "aarch64_cortex-a53-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/luci/";
    sourceInfo = {
      hash = "sha256-eIroj50G5b8k3eCVSYRo85BIYvKbs6NomBs/Q5Ecfbw=";
      name = "aarch64_cortex-a53-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/packages/";
    sourceInfo = {
      hash = "sha256-IQeQ7i0FfrebASlPhi1FrBpa6hwetJUBA+boq6YqOEE=";
      name = "aarch64_cortex-a53-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/routing/";
    sourceInfo = {
      hash = "sha256-0cdZWhz2RkiAZzlvjnCzYAhVIaHS6Sws1MPqqeDXIUE=";
      name = "aarch64_cortex-a53-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/telephony/";
    sourceInfo = {
      hash = "sha256-18k6jAJ84Z8u+oN24cPEU3yx8d+ttN9gyc/gvI51DeY=";
      name = "aarch64_cortex-a53-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
