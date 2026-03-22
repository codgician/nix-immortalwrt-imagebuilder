# snapshot package feeds for aarch64_cortex-a53
{
  sha256sums = {
    hash = "sha256-btw48PohgLtFJtHjr1fPg+IDTvesuB5C1KEHehiizjE=";
    name = "aarch64_cortex-a53-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a53/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a53/base/";
    sourceInfo = {
      hash = "sha256-MgLd+AlOj1kAPObShiomPltyXi4eNgVlpO8NY3zddVU=";
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
      hash = "sha256-TXqXOrhZO5eM48KciLoFGtt/CJF1Fa5NabbFWVbmVX0=";
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
      hash = "sha256-VbKiHWrlffK1QTGwci+flW+gK1NSEiexfd4GtUms8Kg=";
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
      hash = "sha256-7u+B7737SLD6zbicsj16S3Ga061g5MQ4/Ij8VUTcdbo=";
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
      hash = "sha256-z0iPXePmzGJTaenbd/sRGirDSaRttRWloetBEbiPDU0=";
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
