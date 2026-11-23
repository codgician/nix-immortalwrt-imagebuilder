# 24.10.7 mpc85xx/p2020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-Xjetzo2VCoVec8BfxUQsHfhJ20aCAES8oiaLhUB2IxY=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "935af3b56bbae42c27b40057cb51b8f90e4b00e8a850bd92fae89e5911835b35";
    filename = "immortalwrt-imagebuilder-24.10.7-mpc85xx-p2020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-xZ1z+jMDO7lwKDNwkfbjWvGJlNcTwWS3IQcnuHiJ/Bk=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/mpc85xx/p2020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "6bcb210a090eae90afc9afd1be8e7b37";
      version = "6.6.159";
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
      "kmod-ath9k"
      "kmod-button-hotplug"
      "kmod-crypto-hw-talitos"
      "kmod-input-core"
      "kmod-input-gpio-keys"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb2"
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
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.6.159-1-6bcb210a090eae90afc9afd1be8e7b37";
    profiles = {
      freescale_p2020rdb = {
        device_packages = [
          "kmod-hwmon-lm90"
          "kmod-rtc-ds1307"
          "kmod-gpio-pca953x"
          "kmod-eeprom-at24"
        ];
      };
    };
  };
  kmods."6.6.159-1-6bcb210a090eae90afc9afd1be8e7b37" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/mpc85xx/p2020/kmods/6.6.159-1-6bcb210a090eae90afc9afd1be8e7b37/";
    sourceInfo = {
      hash = "sha256-S8JYl/ZT2mWN2NtgDUeNFKgjgvtaiH5PjsR55MLKqt4=";
      name = "kmods-mpc85xx_p2020-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/mpc85xx/p2020/kmods/6.6.159-1-6bcb210a090eae90afc9afd1be8e7b37/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/mpc85xx/p2020/packages/";
    sourceInfo = {
      hash = "sha256-Suv3e1J5lzH/N53sssrgLNUvHwwDE4xHCq2+PtZXWtk=";
      name = "mpc85xx_p2020-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/mpc85xx/p2020/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc_8548";
  feeds = import ./../../../packages/powerpc_8548.nix;
}
