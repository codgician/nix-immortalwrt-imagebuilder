# snapshot bcm27xx/bcm2711
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2711/";
  sha256sums = {
    hash = "sha256-faLWJY0PpFk1Rtt1UhH4v67BYUqhux6xy5izUrHbbjA=";
    name = "bcm27xx_bcm2711-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2711/sha256sums";
  };
  imagebuilder = {
    sha256 = "6027ba49416e8e3f0804c4e5dff54c9be5151f87d5faed6a20d69afaa5d555af";
    filename = "immortalwrt-imagebuilder-bcm27xx-bcm2711.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-TZcwHUEAVDtV6IIDFMBQFDi76ziEqPhkv8Qpn4Uizc4=";
    name = "bcm27xx_bcm2711-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2711/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "ccb8b2234844b9fbcbdb391668675460";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "bcm27xx-gpu-fw"
      "bcm27xx-utils"
      "ca-bundle"
      "cpufreq"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-fs-vfat"
      "kmod-nft-offload"
      "kmod-nls-cp437"
      "kmod-nls-iso8859-1"
      "kmod-sound-arm-bcm2835"
      "kmod-sound-core"
      "kmod-usb-hid"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
    ];
    kmods_target = "6.12.94-1-ccb8b2234844b9fbcbdb391668675460";
    profiles = {
      rpi-4 = {
        device_packages = [
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-i2c-bcm2835"
          "kmod-spi-bcm2835"
          "kmod-spi-bcm2835-aux"
          "kmod-i2c-brcmstb"
          "kmod-usb-net-lan78xx"
          "kmod-usb-net-rtl8152"
          "kmod-r8169"
        ];
      };
    };
  };
  kmods."6.12.94-1-ccb8b2234844b9fbcbdb391668675460" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2711/kmods/6.12.94-1-ccb8b2234844b9fbcbdb391668675460/";
    sourceInfo = {
      hash = "sha256-Dw84PAvk9uCouoN3kqm9F7j96eTVsxBdlECSQwqHXX0=";
      name = "kmods-bcm27xx_bcm2711-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2711/kmods/6.12.94-1-ccb8b2234844b9fbcbdb391668675460/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2711/packages/";
    sourceInfo = {
      hash = "sha256-+in4/UrFvyaZXEkVqeNG99aDbDohO6KgikXX6Z9kl3M=";
      name = "bcm27xx_bcm2711-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2711/packages/packages.adb";
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
