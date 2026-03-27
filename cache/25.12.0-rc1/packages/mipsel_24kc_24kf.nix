# 25.12.0-rc1 package feeds for mipsel_24kc_24kf
{
  sha256sums = {
    hash = "sha256-tMuUjSTPr6m8xcshvUq4t5OGEYRTgDTcdtrHH6U1nv4=";
    name = "mipsel_24kc_24kf-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc_24kf/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc_24kf/base/";
    sourceInfo = {
      hash = "sha256-4YoO/K1rYnZahHPVl0NbJvTy1b+kCDV0jYgQc0HqWJE=";
      name = "mipsel_24kc_24kf-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc_24kf/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc_24kf/luci/";
    sourceInfo = {
      hash = "sha256-A4jbRTjVPOTXmQ9ZHwu0zuzWFphslY8SuKWQc9EovvY=";
      name = "mipsel_24kc_24kf-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc_24kf/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc_24kf/packages/";
    sourceInfo = {
      hash = "sha256-PGsPs0ikP+M2wkAfXRoq9yZNvlZyiTZrtgfp6AU+dEA=";
      name = "mipsel_24kc_24kf-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc_24kf/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc_24kf/routing/";
    sourceInfo = {
      hash = "sha256-oIZNbMO44Wf149hN5fadpAyQ67uYEVwJO43DWZUJ2Qs=";
      name = "mipsel_24kc_24kf-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc_24kf/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc_24kf/telephony/";
    sourceInfo = {
      hash = "sha256-wR7yUgjiJ+te4UEFsVeAz6FjlEG5wApxls6/8fhMwAw=";
      name = "mipsel_24kc_24kf-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc_24kf/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
