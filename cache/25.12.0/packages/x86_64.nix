# 25.12.0 package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-Dbd63M6SHVb7OKSte5Ge8g9Sy1lLX1KMZRS/g/X7I/A=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-XbOehIxCujxzbKSsmZiIHrs8oIA0ThsYPrW1YTTo2FM=";
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
      hash = "sha256-lRVmv03UE/PUD4yFRcMXPErLy+20ejfW1YqjMVMkasU=";
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
      hash = "sha256-ySxz5ro1+wqsi8o0tbnLiHKkReplXyEDt6/OwbEam4Y=";
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
      hash = "sha256-e3y588Rw2yGPAbikT/sUKd5zWGdmAZWYWI1mDx4MtF0=";
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
      hash = "sha256-fNv/iKZYJ61asFPskR0lhTv1fo5viXWQsMRjpMXG1qk=";
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
