# snapshot package feeds for mipsel_24kc
{
  sha256sums = {
    hash = "sha256-pXb12yGlCARHw15rg3u2AN4o8PFumcEjmf6JLvssvCA=";
    name = "mipsel_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/base/";
    sourceInfo = {
      hash = "sha256-0Ov4po1t2Du3Ui5YOgco9/EVFDK/T940ciPW/YQrnrY=";
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
      hash = "sha256-t1AaudDdfQUqOGtq/ICh1zvDdUkrhOz/zYUoPHMf1fo=";
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
      hash = "sha256-5GU2weo+R0jTpPK/P19VKtLMivLBnegrUh/VdO/OVL0=";
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
      hash = "sha256-boJwCCxTWPa0fprZD3m8uHdhPHvtzRDnDfoZy7PslMU=";
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
      hash = "sha256-WlQ4HsEDJwRJFuhCsWDgxHMDAIj/AMqoUXutOF37wqk=";
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
