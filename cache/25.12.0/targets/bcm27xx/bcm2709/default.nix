# 25.12.0 bcm27xx/bcm2709
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2709/";
  sha256sums = {
    hash = "sha256-6eZTKITTP/ZgyMBtPbMO+C24GEljIrWbJey2lvjOP2o=";
    name = "bcm27xx_bcm2709-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2709/sha256sums";
  };
  imagebuilder = {
    sha256 = "5d1e308716ae1ee95b88ac0a1a0fa56103d29b86d466f7ae2df4c4aabb570f05";
    filename = "immortalwrt-imagebuilder-25.12.0-bcm27xx-bcm2709.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-7N+6DpXO+St/NmM57mXxjL3h4wCn87JFQDbpgTt1tEs=";
    name = "bcm27xx_bcm2709-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2709/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "7e705e55a425e313df937f912930f993";
      version = "6.12.87";
    };
    default_packages = [
      "apk-openssl"
      "autocore"
      "automount"
      "base-files"
      "bcm27xx-gpu-fw"
      "bcm27xx-utils"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-fs-vfat"
      "kmod-nf-nathelper"
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
      "luci"
      "luci-app-cpufreq"
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
    kmods_target = "6.12.87-1-7e705e55a425e313df937f912930f993";
    profiles = {
      rpi-2 = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-i2c-bcm2835"
          "kmod-spi-bcm2835"
          "kmod-spi-bcm2835-aux"
        ];
      };
    };
  };
  kmods."6.12.87-1-7e705e55a425e313df937f912930f993" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2709/kmods/6.12.87-1-7e705e55a425e313df937f912930f993/";
    sourceInfo = {
      hash = "sha256-/Jo4g5lEkKMgihtnpJ279NxE7pPsSx6v/qUJTajXxZc=";
      name = "kmods-bcm27xx_bcm2709-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2709/kmods/6.12.87-1-7e705e55a425e313df937f912930f993/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2709/packages/";
    sourceInfo = {
      hash = "sha256-o/zbknFdp7BUqpxBRBLg9tljQfYE3+vR96NX4vPGVyg=";
      name = "bcm27xx_bcm2709-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2709/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_neon-vfpv4.nix;
}
