# snapshot mpc85xx/p2020
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-e/Ixz5shdqmiog6dRRiifOKPw6ioR2E874WfZr4Zssg=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "5142c258d0c63e580beef836925b4bd7266c6823fd14f60eca85e7d05933b845";
    filename = "immortalwrt-imagebuilder-mpc85xx-p2020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-WU7iLOaAhoqp5h2/qqSb6iI9nSeIySQD1+rrHLyRBk0=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "1a1471108110e66ed1813fd6ef80d783";
      version = "6.18.55";
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
    kmods_target = "6.18.55-1-1a1471108110e66ed1813fd6ef80d783";
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
  kmods."6.18.55-1-1a1471108110e66ed1813fd6ef80d783" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/kmods/6.18.55-1-1a1471108110e66ed1813fd6ef80d783/";
    sourceInfo = {
      hash = "sha256-lN3foKD6zXHRTq1jSxx4Damu90iqm5OQ3YgkhXE+gD0=";
      name = "kmods-mpc85xx_p2020-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/kmods/6.18.55-1-1a1471108110e66ed1813fd6ef80d783/packages.adb";
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
      hash = "sha256-vwW05/80L/SUYP2sy1KMqHYMPT/kRRxcMDZuteG+BvM=";
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
