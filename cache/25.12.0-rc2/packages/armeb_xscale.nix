# 25.12.0-rc2 package feeds for armeb_xscale
{
  sha256sums = {
    hash = "sha256-MOB+JuPBYj4XZRjI6I6RnwPOcwve6Ufeu7KQWBBR+Kw=";
    name = "armeb_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/armeb_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/armeb_xscale/base/";
    sourceInfo = {
      hash = "sha256-SIBGqZBGApvPTLipJ/kfVoirswA7pvQzT15OkostVYk=";
      name = "armeb_xscale-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/armeb_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/armeb_xscale/luci/";
    sourceInfo = {
      hash = "sha256-Ux02X/FDTnksGYADDsx9mHAOuU67LqrCORmBDIOsFxg=";
      name = "armeb_xscale-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/armeb_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/armeb_xscale/packages/";
    sourceInfo = {
      hash = "sha256-dpW5vuqsYww1DJmCQGYUX3Dh1x5JoIvqwozKdHI41pE=";
      name = "armeb_xscale-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/armeb_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/armeb_xscale/routing/";
    sourceInfo = {
      hash = "sha256-q+LrTx5D8JkAmBBahWDKN/8wONPKN+bGL32SaFROyJo=";
      name = "armeb_xscale-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/armeb_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/armeb_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-cDiUBRDc0cVPpo4RwIXVSzy9xPgIFsXm0FbS+s5RfXI=";
      name = "armeb_xscale-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/armeb_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
