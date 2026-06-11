# snapshot mpc85xx/p2020
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-JQlZH8nnpw9r5qh7lkq1fHxrsiIgGpx+dRLvRKlC24c=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "30c149828de3f9a636435ca54b32e51f26b4d895d03fed456e395484e4f4c091";
    filename = "immortalwrt-imagebuilder-mpc85xx-p2020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-X2NdaomEin0dIpIZja4MOpvGV/lXcbw//nRxSqQoy2c=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "1cdbbd66c1639fb42bf6cf9d70e8de62";
      version = "6.12.92";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-crypto-hw-talitos"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "kmod-usb2"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.12.92-1-1cdbbd66c1639fb42bf6cf9d70e8de62";
    profiles = {
      freescale_p2020rdb = {
        device_packages = [
          "kmod-dsa-vsc73xx-platform"
          "kmod-gpio-pca953x"
          "kmod-hwmon-lm90"
          "kmod-rtc-ds1307"
        ];
      };
      watchguard_xtm330 = {
        device_packages = [
          "kmod-dsa-mv88e6xxx"
          "kmod-hwmon-w83793"
          "kmod-rtc-rs5c372a"
        ];
      };
    };
  };
  kmods."6.12.92-1-1cdbbd66c1639fb42bf6cf9d70e8de62" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/kmods/6.12.92-1-1cdbbd66c1639fb42bf6cf9d70e8de62/";
    sourceInfo = {
      hash = "sha256-+VlAPJJf8wqqO/PZ6pEXNZ/iOGTgg7tOEZr0WPSPaQA=";
      name = "kmods-mpc85xx_p2020-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/kmods/6.12.92-1-1cdbbd66c1639fb42bf6cf9d70e8de62/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/packages/";
    sourceInfo = {
      hash = "sha256-eJXkKDvDqpLexE8btR0okXSh025fm28vfP+pMPtuT+g=";
      name = "mpc85xx_p2020-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/packages/packages.adb";
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
