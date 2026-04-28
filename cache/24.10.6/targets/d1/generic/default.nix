# 24.10.6 d1/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/d1/generic/";
  sha256sums = {
    hash = "sha256-qzpA6NhrLZitkP6x7hgpMYm3kBHu67qH44Apb9Gu6Mk=";
    name = "d1_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/d1/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "6d356ed3ee4c4379913c75139f9cee6834168c1c9ba973e817e1f2279bfd76ed";
    filename = "immortalwrt-imagebuilder-24.10.6-d1-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-W9Xbxe3HPM6Fe9lagO0ma3D4Ey7u+V7CaeckIwRS0vA=";
    name = "d1_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/d1/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_riscv64";
    linux_kernel = {
      release = "1";
      vermagic = "88063115ab4a3603a60a70ad7664c88a";
      version = "6.6.133";
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
    kmods_target = "6.6.133-1-88063115ab4a3603a60a70ad7664c88a";
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
  kmods."6.6.133-1-88063115ab4a3603a60a70ad7664c88a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/d1/generic/kmods/6.6.133-1-88063115ab4a3603a60a70ad7664c88a/";
    sourceInfo = {
      hash = "sha256-egLW0RqYNd7FHlOlYxcrP4L/dI+oDWY+w9N2t4LbqdE=";
      name = "kmods-d1_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/d1/generic/kmods/6.6.133-1-88063115ab4a3603a60a70ad7664c88a/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/d1/generic/packages/";
    sourceInfo = {
      hash = "sha256-aLRcgGYR8FHrl+0+LnbXmGS4SXRm1Dy+Rh+sYIIQvVI=";
      name = "d1_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/d1/generic/packages/Packages";
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
