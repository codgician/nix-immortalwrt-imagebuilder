# snapshot package feeds for mips_24kc
{
  sha256sums = {
    hash = "sha256-BY7aHkSPaHcK/V9rA+q+IfOjQR78tiSi3MH8FtRcd0k=";
    name = "mips_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/base/";
    sourceInfo = {
      hash = "sha256-MlDd2j3vxZ19s58EZbA/DoSknPE1YX6ADzX9qEv8yww=";
      name = "mips_24kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/base/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/luci/";
    sourceInfo = {
      hash = "sha256-1V91wgxZkHD6eQKEP1aKZQvOm4aCa2jF2fxZfjwHlzg=";
      name = "mips_24kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/packages/";
    sourceInfo = {
      hash = "sha256-sY5fWGSs6scZ8K028ndEHFIY6kyTYqt2+sQrwTqoVNM=";
      name = "mips_24kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/routing/";
    sourceInfo = {
      hash = "sha256-NY3aYYp+fnRjw90A31qTE3op1i53NebpG3BTVRse82k=";
      name = "mips_24kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-siekzGLrkf4bBUkm+fszXJlufRg8WQUbC6lar2whoLk=";
      name = "mips_24kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
