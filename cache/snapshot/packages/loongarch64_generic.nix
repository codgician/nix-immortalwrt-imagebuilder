# snapshot package feeds for loongarch64_generic
{
  sha256sums = {
    hash = "sha256-3ztVPhWNewuwAqzVo5ZLo6r/rbttIVcvnZeOGGhtR3w=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-g9ToAGjbeVDQz0t7Ycd75hOPf3HNbLuxBtOrPE/YMds=";
      name = "loongarch64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-HPVy43Sq4Ts5UeqlfUi25v5xl4JdJoIci+6h0LC1TZ0=";
      name = "loongarch64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-w6b6BRtmMWB+7KbcyFqDiU1hbLOWezGQ4PCaIO1bFmo=";
      name = "loongarch64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-VDlTpmeGU3TbBWdKwZ6W8wqM6euFynef8zfdONG3O0Y=";
      name = "loongarch64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-M7AuNKfnUXL1/cH9ehfOz8y8LBNsDmNGqOyvrrAjscA=";
      name = "loongarch64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
