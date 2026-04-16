# 25.12.0-rc2 bcm27xx/bcm2710
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2710/";
  sha256sums = {
    hash = "sha256-p/7fZgo+vzi5Z2W+IM4S+sMoWnqbTZI0YPkH9ByX9V8=";
    name = "bcm27xx_bcm2710-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2710/sha256sums";
  };
  imagebuilder = {
    sha256 = "68dcbc9871dde02b7d3d831d25c5df912ec1572f6fc6817320759d4b33e4e4ad";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-bcm27xx-bcm2710.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-IxdVOK82ej4Hh9onoFlcgZfOJsnZtUU6AOvwvclBQNg=";
    name = "bcm27xx_bcm2710-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2710/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "321b1745a38f2338b0f48540f159e21e";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-321b1745a38f2338b0f48540f159e21e";
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
  kmods."6.12.79-1-321b1745a38f2338b0f48540f159e21e" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2710/kmods/6.12.79-1-321b1745a38f2338b0f48540f159e21e/";
    sourceInfo = {
      hash = "sha256-wQ8u4QBQGUb5qGf7oY9zGuYH59953I/vB75eS+NPSAo=";
      name = "kmods-bcm27xx_bcm2710-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2710/kmods/6.12.79-1-321b1745a38f2338b0f48540f159e21e/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2710/packages/";
    sourceInfo = {
      hash = "sha256-bOkNtkxFp6I4hAOHNrTGKhPA7xgfXDAzu63RY9u8V8A=";
      name = "bcm27xx_bcm2710-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2710/packages/packages.adb";
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
