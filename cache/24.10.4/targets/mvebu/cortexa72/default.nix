# 24.10.4 mvebu/cortexa72
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mvebu/cortexa72/";
  sha256sums = {
    hash = "sha256-qIE5zaA6q75aT/ugKthtHAdIE8ETjKJfBl01Qluy4O0=";
    name = "mvebu_cortexa72-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mvebu/cortexa72/sha256sums";
  };
  imagebuilder = {
    sha256 = "711992bf752df633a96812880dcacc203c7b66e8c1a07dade47c09e0f64fffaa";
    filename = "immortalwrt-imagebuilder-24.10.4-mvebu-cortexa72.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-eGO4McrGIPVlsqcji5upvO9c1LByP1O7OvcPqJRhulQ=";
    name = "mvebu_cortexa72-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mvebu/cortexa72/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "3f2b3deea3f68fd8c19e3ede25d6c0f1";
      version = "6.6.110";
    };
    default_packages = [
      "autocore"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
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
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.110-1-3f2b3deea3f68fd8c19e3ede25d6c0f1";
    profiles = {
      globalscale_mochabin = {
        device_packages = [ ];
      };
      iei_puzzle-m901 = {
        device_packages = [ "kmod-rtc-ds1307" ];
      };
      iei_puzzle-m902 = {
        device_packages = [ "kmod-rtc-ds1307" ];
      };
      marvell_armada7040-db = {
        device_packages = [ ];
      };
      marvell_armada8040-db = {
        device_packages = [ ];
      };
      marvell_clearfog-gt-8k = {
        device_packages = [
          "kmod-i2c-mux-pca954x"
          "kmod-crypto-hw-safexcel"
        ];
      };
      marvell_macchiatobin-doubleshot = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
      marvell_macchiatobin-singleshot = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
      mikrotik_rb5009 = {
        device_packages = [
          "kmod-i2c-gpio"
          "yafut"
        ];
      };
      solidrun_clearfog-pro = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
    };
  };
  kmods."6.6.110-1-3f2b3deea3f68fd8c19e3ede25d6c0f1" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mvebu/cortexa72/kmods/6.6.110-1-3f2b3deea3f68fd8c19e3ede25d6c0f1/";
    sourceInfo = {
      hash = "sha256-VYjxKBP8MGnT9quipv1VGpDrLQodPNq/djvABTWb9FY=";
      name = "kmods-mvebu_cortexa72-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mvebu/cortexa72/kmods/6.6.110-1-3f2b3deea3f68fd8c19e3ede25d6c0f1/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mvebu/cortexa72/packages/";
    sourceInfo = {
      hash = "sha256-67BSZOtRRrp72PvyubLAQaINLpfbM/tO9S9lq4XJNsA=";
      name = "mvebu_cortexa72-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mvebu/cortexa72/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a72";
  feeds = import ./../../../packages/aarch64_cortex-a72.nix;
}
