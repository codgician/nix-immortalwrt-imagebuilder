# 25.12.0 package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-nLcAEbuTPODwR5olfufUYcAL95HQZjVCRRZ1FwirNlI=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-O71j2c9eiQJUz2fG/S9wDs+iRVSJ2daThwSwNqrvbMA=";
      name = "x86_64-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/base/packages.adb";
    };
    packages =
      let
        p = ./x86_64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/luci/";
    sourceInfo = {
      hash = "sha256-UxBl9Ad5rcmH8UGOCpCn9nqhPJusVKtmsFBUo3Zpbmc=";
      name = "x86_64-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/luci/packages.adb";
    };
    packages =
      let
        p = ./x86_64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/packages/";
    sourceInfo = {
      hash = "sha256-AC9eZzq03Z6h1T1tcC55X67bp020WY1a/DyU2PfTq2A=";
      name = "x86_64-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/packages/packages.adb";
    };
    packages =
      let
        p = ./x86_64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/routing/";
    sourceInfo = {
      hash = "sha256-c63wv4soL4VcSq1FhGT9wVSljSnzC0rttLUzzozFP3A=";
      name = "x86_64-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/routing/packages.adb";
    };
    packages =
      let
        p = ./x86_64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/telephony/";
    sourceInfo = {
      hash = "sha256-f6rubkf4szq133FDPJlIWx7cq8bTIkSkQo3NjIdysuo=";
      name = "x86_64-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/telephony/packages.adb";
    };
    packages =
      let
        p = ./x86_64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
