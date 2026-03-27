# 24.10.1 d1/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/d1/generic/";
  sha256sums = {
    hash = "sha256-fRnC/xgF3K94k2311taUBfENvvr3WFs25cfTrpxCrJU=";
    name = "d1_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/d1/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "2a81728fc9a337c19f50dd97aa33f1004d167e9672d97c026348ea34073ed4fc";
    filename = "immortalwrt-imagebuilder-24.10.1-d1-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Ja6FPHSBGJsIaApCutWJ5fkiqXDW9LRkVN5to8cX/NM=";
    name = "d1_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/d1/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_riscv64";
    linux_kernel = {
      release = "1";
      vermagic = "42e3dfa825470e42f7d546af54a93633";
      version = "6.6.86";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.86-1-42e3dfa825470e42f7d546af54a93633";
    profiles = {
      "100ask_dongshan-nezha-stu" = {
        device_packages = [ ];
      };
      allwinner_d1-nezha = {
        device_packages = [ ];
      };
      sipeed_lichee-rv-dock = {
        device_packages = [
          "kmod-rtw88-8723ds"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      widora_mangopi-mq-pro = {
        device_packages = [
          "kmod-rtw88-8723ds"
          "wpad-openssl"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.86-1-42e3dfa825470e42f7d546af54a93633" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/d1/generic/kmods/6.6.86-1-42e3dfa825470e42f7d546af54a93633/";
    sourceInfo = {
      hash = "sha256-ul4uECwfJaHtpYpDgcgsjfKkC2D0r059KVAGkKfwsSI=";
      name = "kmods-d1_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/d1/generic/kmods/6.6.86-1-42e3dfa825470e42f7d546af54a93633/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/d1/generic/packages/";
    sourceInfo = {
      hash = "sha256-UbtI22XKqr6eSzATAHrZGyyOlfs2tUmbW7YGF0Hcb0k=";
      name = "d1_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/d1/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "riscv64_riscv64";
  feeds = import ./../../../packages/riscv64_riscv64.nix;
}
