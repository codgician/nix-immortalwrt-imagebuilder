# 25.12.1 bcm27xx/bcm2710
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2710/";
  sha256sums = {
    hash = "sha256-yuhzpZ9rrZUs7jQZe+Wzt/OfCN4PD61FZZKj3cSU4eY=";
    name = "bcm27xx_bcm2710-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2710/sha256sums";
  };
  imagebuilder = {
    sha256 = "c8931f5cce42f098ae108a43d41004244089c9d2bed4a2cd57def074c84abf00";
    filename = "immortalwrt-imagebuilder-25.12.1-bcm27xx-bcm2710.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-SJJ/bU/fQP2Et+nkW0n/yQaSnQAR09CTNE+8L61010Q=";
    name = "bcm27xx_bcm2710-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2710/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "a556fa27f2db3d7215c0e0df5aec671f";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-a556fa27f2db3d7215c0e0df5aec671f";
    profiles = {
      rpi-3 = {
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
  kmods."6.12.94-1-a556fa27f2db3d7215c0e0df5aec671f" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2710/kmods/6.12.94-1-a556fa27f2db3d7215c0e0df5aec671f/";
    sourceInfo = {
      hash = "sha256-dCPk3QGzwK6bjnuZfdsBY0JSxOskZnN1oJqDwou9NFw=";
      name = "kmods-bcm27xx_bcm2710-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2710/kmods/6.12.94-1-a556fa27f2db3d7215c0e0df5aec671f/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2710/packages/";
    sourceInfo = {
      hash = "sha256-qCMiDVAm7JUMWRLBJsxCV4xRJDiF8bffYCoSegFw8Gw=";
      name = "bcm27xx_bcm2710-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2710/packages/packages.adb";
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
