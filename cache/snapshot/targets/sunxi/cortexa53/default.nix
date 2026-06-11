# snapshot sunxi/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa53/";
  sha256sums = {
    hash = "sha256-dumhWGQb+XonDnv2RwJ3WiGFRisrLHIABOKmDv7ZsNM=";
    name = "sunxi_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "bb0c43ea6c02f5cbd4b3324a6e7a5230c76aba367cfb17c5c197a6ccb599483d";
    filename = "immortalwrt-imagebuilder-sunxi-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-xjjXEANJ3lrD59Yd4yKTSRVwD8sIO2ewE8qLYEMyxPw=";
    name = "sunxi_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "fee6b7e25d439ee37c025a7238b8eccc";
      version = "6.18.34";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "ca-bundle"
      "cpufreq"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
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
    kmods_target = "6.18.34-1-fee6b7e25d439ee37c025a7238b8eccc";
    profiles = {
      friendlyarm_nanopi-neo-plus2 = {
        device_packages = [ ];
      };
      friendlyarm_nanopi-neo2 = {
        device_packages = [ ];
      };
      friendlyarm_nanopi-r1s-h5 = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-usb-net-rtl8152"
        ];
      };
      libretech_all-h3-cc-h5 = {
        device_packages = [ ];
      };
      olimex_a64-olinuxino = {
        device_packages = [
          "kmod-rtl8723bs"
          "rtl8723bu-firmware"
        ];
      };
      olimex_a64-olinuxino-emmc = {
        device_packages = [
          "kmod-rtl8723bs"
          "rtl8723bu-firmware"
        ];
      };
      pine64_pine64-plus = {
        device_packages = [
          "kmod-rtl8723bs"
          "rtl8723bu-firmware"
        ];
      };
      pine64_sopine-baseboard = {
        device_packages = [
          "kmod-rtl8723bs"
          "rtl8723bu-firmware"
        ];
      };
      radxa_cubie-a5e = {
        device_packages = [
          "kmod-aic8800-sdio"
          "wpad-openssl"
        ];
      };
      xunlong_orangepi-one-plus = {
        device_packages = [ ];
      };
      xunlong_orangepi-pc2 = {
        device_packages = [ ];
      };
      xunlong_orangepi-zero-plus = {
        device_packages = [ ];
      };
      xunlong_orangepi-zero2 = {
        device_packages = [ ];
      };
      xunlong_orangepi-zero2w = {
        device_packages = [ ];
      };
      xunlong_orangepi-zero3 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.34-1-fee6b7e25d439ee37c025a7238b8eccc" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa53/kmods/6.18.34-1-fee6b7e25d439ee37c025a7238b8eccc/";
    sourceInfo = {
      hash = "sha256-9Npc8pSS6Alc5bcoTOcMuZSlIDmhthC1upIPa4v5wr4=";
      name = "kmods-sunxi_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa53/kmods/6.18.34-1-fee6b7e25d439ee37c025a7238b8eccc/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-XNgks9+CBQaksth8MKw5bQ+OIuCw9YUpwnbb6OSI89M=";
      name = "sunxi_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa53/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a53";
  feeds = import ./../../../packages/aarch64_cortex-a53.nix;
}
