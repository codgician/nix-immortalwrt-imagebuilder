# snapshot package feeds for mipsel_24kc
{
  sha256sums = {
    hash = "sha256-1mMFfyMQNnmeuVPMsP0e4v0sTAcmyGfjiJUQ5K7cgc4=";
    name = "mipsel_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/base/";
    sourceInfo = {
      hash = "sha256-CtouixOTxV0+p4ciKgJWhTxCbv6UVwVidR9Yoet/Shs=";
      name = "mipsel_24kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/luci/";
    sourceInfo = {
      hash = "sha256-8ypF5dUT+UBIc2LZCx5sh+Fe3KkBE4UuJ9lDyCG+Zj4=";
      name = "mipsel_24kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/packages/";
    sourceInfo = {
      hash = "sha256-PqljDKSIzDrJ7+1sx/lGtBCdZUiHOp9kNvr0NUuus6M=";
      name = "mipsel_24kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/routing/";
    sourceInfo = {
      hash = "sha256-+rH9d9nqb1Qsl/MHW14wGTpjUfhr5SFOpurW1okgOzs=";
      name = "mipsel_24kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-7glL+0uP2EZFMLT/ZfiJZH0GvYdYlffBd+Wd9QlPvsQ=";
      name = "mipsel_24kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
