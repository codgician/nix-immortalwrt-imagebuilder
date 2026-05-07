# 25.12.0-rc1 package feeds for aarch64_cortex-a76
{
  sha256sums = {
    hash = "sha256-u/5NleFMNpFS2e8WPwkHHLqokmTNdnZpDbkxPSSXLKQ=";
    name = "aarch64_cortex-a76-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a76/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a76/base/";
    sourceInfo = {
      hash = "sha256-rNDQ4DzJqMAASbw+BZLjV6MPlOAQLEIKG085vxRqQtY=";
      name = "aarch64_cortex-a76-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a76/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a76/luci/";
    sourceInfo = {
      hash = "sha256-rPnu79tiVYvaxPNg6wOY4ZnpEz/ddNHl/Osc8Ekxs6w=";
      name = "aarch64_cortex-a76-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a76/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a76/packages/";
    sourceInfo = {
      hash = "sha256-/GE05hwp9ZQmzI2Q45gUPA18aCD7MwZ/9HicSaioo08=";
      name = "aarch64_cortex-a76-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a76/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a76/routing/";
    sourceInfo = {
      hash = "sha256-ZOEWQZ5s18F92YwWqsB3Vu1jtQlWwRhDvxh+VFtZ3PM=";
      name = "aarch64_cortex-a76-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a76/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a76/telephony/";
    sourceInfo = {
      hash = "sha256-r1BEfiF7Q627Ou6qvwWwJPNQrab2Bl9cffXNgBfYEn0=";
      name = "aarch64_cortex-a76-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a76/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
