# 24.10.1 mvebu/cortexa72
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mvebu/cortexa72/";
  sha256sums = {
    hash = "sha256-VGVu3bW1t5d0HY4D0VSzr7USHdWPWz60t8qOGHrM8T8=";
    name = "mvebu_cortexa72-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mvebu/cortexa72/sha256sums";
  };
  imagebuilder = {
    sha256 = "0fee6f90fa9f72c5e623dcbd3e7d2edda9eba50b841ee4ee4b6b1a5011eafc28";
    filename = "immortalwrt-imagebuilder-24.10.1-mvebu-cortexa72.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-8WRNJalHjkB4mNQZ6B77qLsFNtNj8JyArbNKeL9YdHU=";
    name = "mvebu_cortexa72-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mvebu/cortexa72/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "f0674b8c7b150c7ae7657c25ba7c6020";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-f0674b8c7b150c7ae7657c25ba7c6020";
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
  kmods."6.6.86-1-f0674b8c7b150c7ae7657c25ba7c6020" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mvebu/cortexa72/kmods/6.6.86-1-f0674b8c7b150c7ae7657c25ba7c6020/";
    sourceInfo = {
      hash = "sha256-N6TI/u6u/kipvWWbnbhI5meSMNf8Ylfinis3j5rRRIU=";
      name = "kmods-mvebu_cortexa72-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mvebu/cortexa72/kmods/6.6.86-1-f0674b8c7b150c7ae7657c25ba7c6020/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mvebu/cortexa72/packages/";
    sourceInfo = {
      hash = "sha256-KCy0/HvV9q/1q9XLxOqhEfYajKk6F30csTYFyq5P05k=";
      name = "mvebu_cortexa72-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mvebu/cortexa72/packages/Packages";
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
