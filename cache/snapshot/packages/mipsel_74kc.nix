# snapshot package feeds for mipsel_74kc
{
  sha256sums = {
    hash = "sha256-YW8FlqwYPG56fvQ4Nx8956faxJYIAzTaVVmeWapFZ0A=";
    name = "mipsel_74kc-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/base/";
    sourceInfo = {
      hash = "sha256-CYxDakpRL0ELNi7uItPiyS6T00y1EfJlL2cMeI029Y8=";
      name = "mipsel_74kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/luci/";
    sourceInfo = {
      hash = "sha256-L9zWsemYI4Ua6rRQj5BA9poMtOlwApXlV3ZtiPeiJY0=";
      name = "mipsel_74kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/packages/";
    sourceInfo = {
      hash = "sha256-PYfNAFSy+1T4wwljZtq4uCE2/+0KL/KTvZMUR1UviLk=";
      name = "mipsel_74kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/routing/";
    sourceInfo = {
      hash = "sha256-7ebK35PcNw06x1EqWMmUMNfKND3stkdwypzndctaKiI=";
      name = "mipsel_74kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/telephony/";
    sourceInfo = {
      hash = "sha256-XMc1UwDBWaF9u0nBI8RZPHyP/mBmRvfeAt7sk3n5E/0=";
      name = "mipsel_74kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
