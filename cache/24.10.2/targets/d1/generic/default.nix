# 24.10.2 d1/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/d1/generic/";
  sha256sums = {
    hash = "sha256-NISZNj4SiQlPDY2aJve8kansX0EP6vy8MHSuhiDZMgw=";
    name = "d1_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/d1/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "0c965afbd86a2babfbbaae8a7b35d460fc741b685eb0b6048d684f2a2d22e8a3";
    filename = "immortalwrt-imagebuilder-24.10.2-d1-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-BLO8nmtJzJ3FNheelKU2Q29CMmTvmhDLcBt5MAWZ+ak=";
    name = "d1_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/d1/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_riscv64";
    linux_kernel = {
      release = "1";
      vermagic = "5cd0d225a014ebd5c35ec1ff381dabdd";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-5cd0d225a014ebd5c35ec1ff381dabdd";
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
  kmods."6.6.93-1-5cd0d225a014ebd5c35ec1ff381dabdd" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/d1/generic/kmods/6.6.93-1-5cd0d225a014ebd5c35ec1ff381dabdd/";
    sourceInfo = {
      hash = "sha256-/ylLuqK7GM5RobjUd+sSP2GqxzcAJ9KCjIc+pKI9yRM=";
      name = "kmods-d1_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/d1/generic/kmods/6.6.93-1-5cd0d225a014ebd5c35ec1ff381dabdd/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/d1/generic/packages/";
    sourceInfo = {
      hash = "sha256-Yc6VjwN7dSoomIAVUkydKEVZoOLNgEXHGJd3kTFDUUo=";
      name = "d1_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/d1/generic/packages/Packages";
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
