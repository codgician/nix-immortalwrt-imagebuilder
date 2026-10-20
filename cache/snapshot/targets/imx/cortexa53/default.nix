# snapshot imx/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/";
  sha256sums = {
    hash = "sha256-V1jL1OOIEoLivV5tAztBJ5p8Cnfp0quasImZxxXMtV8=";
    name = "imx_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "6995ff321a2ff6459f02e0d521b85ce7ef02de07ce6b5031209dbaadcc53ddca";
    filename = "immortalwrt-imagebuilder-imx-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-2AWtGGOBmY1fb9mfgSxPS5AllWJuwKelRJPGaD9JyW0=";
    name = "imx_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "eb7cc39c5606615ae85443db48857ab7";
      version = "6.18.55";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "blkid"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
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
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "video-support"
    ];
    kmods_target = "6.18.55-1-eb7cc39c5606615ae85443db48857ab7";
    profiles = {
      gateworks_venice = {
        device_packages = [
          "kmod-hwmon-gsc"
          "kmod-rtc-ds1672"
          "kmod-eeprom-at24"
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
          "kmod-pps-gpio"
          "kmod-lan743x"
          "kmod-sky2"
          "kmod-iio-st_accel-i2c"
          "kmod-can"
          "kmod-can-flexcan"
          "kmod-can-mcp251x"
          "kmod-dsa-ksz9477-i2c"
        ];
      };
      imx8m = {
        device_packages = [ ];
      };
      kontron_osm-s-imx8mp = {
        device_packages = [
          "kmod-can"
          "kmod-can-flexcan"
          "kmod-eeprom-at24"
          "kmod-leds-gpio"
          "kmod-rtc-rv3028"
        ];
      };
      olimex_imx8mp-som = {
        device_packages = [
          "kmod-eeprom-at24"
          "kmod-leds-gpio"
          "kmod-can"
          "kmod-can-flexcan"
        ];
      };
    };
  };
  kmods."6.18.55-1-eb7cc39c5606615ae85443db48857ab7" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/kmods/6.18.55-1-eb7cc39c5606615ae85443db48857ab7/";
    sourceInfo = {
      hash = "sha256-hfqVTPGuTXbHzP1ifFM6pmTUvdBz9wpdV3Ey2QbNxto=";
      name = "kmods-imx_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/kmods/6.18.55-1-eb7cc39c5606615ae85443db48857ab7/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-QVHifaYTIytKEIuR5s4ciq21ENAcNquSTNMdepKTA/c=";
      name = "imx_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/packages/packages.adb";
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
