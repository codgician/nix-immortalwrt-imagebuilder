# 25.12.0 bcm27xx/bcm2711
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2711/";
  sha256sums = {
    hash = "sha256-iJpQZlT4EJ+L8fhuL38z5C/OgGEMUnLYn1CkwDLkaXA=";
    name = "bcm27xx_bcm2711-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2711/sha256sums";
  };
  imagebuilder = {
    sha256 = "e834e5bf010b5c1cf7b330329a4f36a0c74460be72ac427f46fe66adf43b318c";
    filename = "immortalwrt-imagebuilder-25.12.0-bcm27xx-bcm2711.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-nsHoJBE7v9oM3QjuGQLpkuFjOSRHazRa8qD7wlgWl/8=";
    name = "bcm27xx_bcm2711-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2711/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "fca780799e6cda0d3de59836087a108c";
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
    kmods_target = "6.12.87-1-fca780799e6cda0d3de59836087a108c";
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
  kmods."6.12.87-1-fca780799e6cda0d3de59836087a108c" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2711/kmods/6.12.87-1-fca780799e6cda0d3de59836087a108c/";
    sourceInfo = {
      hash = "sha256-+L2udyxVlEjaz64GPGmDiqMnkQw8Bi0+wsA24s6eY8I=";
      name = "kmods-bcm27xx_bcm2711-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2711/kmods/6.12.87-1-fca780799e6cda0d3de59836087a108c/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2711/packages/";
    sourceInfo = {
      hash = "sha256-15Pgwk59PND5/hr7w5PR7dcTShL4DpeYgmHyOe93YHc=";
      name = "bcm27xx_bcm2711-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2711/packages/packages.adb";
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
