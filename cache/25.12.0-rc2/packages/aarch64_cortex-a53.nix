# 25.12.0-rc2 package feeds for aarch64_cortex-a53
{
  sha256sums = {
    hash = "sha256-aRrKsfL88kUzzV7D0ERgjEybP0Lg9F439lljPNQTDYo=";
    name = "aarch64_cortex-a53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/base/";
    sourceInfo = {
      hash = "sha256-k3vwWeEjqTd0qBZPx72mUTj6757qQGKRqe+8WDXcY/I=";
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
      hash = "sha256-7PWLRue7c8hTyRfsN2U/BF2wjJ5EedwSFz6osq9iBvU=";
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
      hash = "sha256-FjDF7PLeX3qbA8kU81d5DGJo0y4+2WyPRjOma7sI1cY=";
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
      hash = "sha256-N4VddRudYPmcmyyAuKw25HpPd0GRixKKMXsjOoyf22s=";
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
      hash = "sha256-9Hwq1VVAX0n+wW/0hgg51hbLyCW4yNoMiNxtQHnxCrk=";
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
