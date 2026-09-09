# 25.12.2 bcm27xx/bcm2712
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2712/";
  sha256sums = {
    hash = "sha256-qfnzi8zLzbci011uQEo9OirJS1Y3EfwZkRLeF9wBFZ8=";
    name = "bcm27xx_bcm2712-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2712/sha256sums";
  };
  imagebuilder = {
    sha256 = "85ac6ae66a24bb2b912cb08d88883ba6e088a47b2fae1adfe98533d0521f5e95";
    filename = "immortalwrt-imagebuilder-25.12.2-bcm27xx-bcm2712.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-FcWO4cNxxWRbVNU1eI67JfE25uH000Lxpvsy+j2HE1o=";
    name = "bcm27xx_bcm2712-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2712/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a76";
    linux_kernel = {
      release = "1";
      vermagic = "9614b8338b7dea1d5b70340f90254007";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-9614b8338b7dea1d5b70340f90254007";
    profiles = {
      rpi-5 = {
        device_packages = [
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-i2c-bcm2835"
          "kmod-spi-bcm2835"
          "kmod-i2c-brcmstb"
          "kmod-i2c-designware-platform"
          "kmod-spi-dw-mmio"
          "kmod-hwmon-pwmfan"
          "kmod-thermal"
          "kmod-usb-net-lan78xx"
          "kmod-usb-net-rtl8152"
          "kmod-r8169"
        ];
      };
    };
  };
  kmods."6.12.103-1-9614b8338b7dea1d5b70340f90254007" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2712/kmods/6.12.103-1-9614b8338b7dea1d5b70340f90254007/";
    sourceInfo = {
      hash = "sha256-CY9TyLa7lwiiEP1YrvwfShaFz5XfvLVXzVg62lGBmoU=";
      name = "kmods-bcm27xx_bcm2712-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2712/kmods/6.12.103-1-9614b8338b7dea1d5b70340f90254007/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2712/packages/";
    sourceInfo = {
      hash = "sha256-vFtAIkpbyKLji4G/ubsccT/YCbO3Me9xNRtZ093DB0w=";
      name = "bcm27xx_bcm2712-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2712/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a76";
  feeds = import ./../../../packages/aarch64_cortex-a76.nix;
}
