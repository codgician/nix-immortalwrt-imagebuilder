# 24.10.6 bcm27xx/bcm2711
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2711/";
  sha256sums = {
    hash = "sha256-fSKL+oLnr7NuqY5QCIfTGhkM+g2i/SLX2JZh/zqG1eg=";
    name = "bcm27xx_bcm2711-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2711/sha256sums";
  };
  imagebuilder = {
    sha256 = "c1160f71c03405f6eeb95641afc095fd746a642b5723f2ff21c41dfc1aec08bc";
    filename = "immortalwrt-imagebuilder-24.10.6-bcm27xx-bcm2711.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-hPyWg6V/T92IxR8szK+uG3DpHmt2e/zPegcmvAG8v1c=";
    name = "bcm27xx_bcm2711-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2711/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "cb9a3b476288e32154c7c84bae3d2e37";
      version = "6.6.133";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
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
      "luci-app-cpufreq"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
    ];
    kmods_target = "6.6.133-1-cb9a3b476288e32154c7c84bae3d2e37";
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
          "kmod-r8169"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.133-1-cb9a3b476288e32154c7c84bae3d2e37" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2711/kmods/6.6.133-1-cb9a3b476288e32154c7c84bae3d2e37/";
    sourceInfo = {
      hash = "sha256-oiODgIo5E4mRF9ybs1RvNljyCUFmLLMYjzOLh0peDBk=";
      name = "kmods-bcm27xx_bcm2711-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2711/kmods/6.6.133-1-cb9a3b476288e32154c7c84bae3d2e37/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2711/packages/";
    sourceInfo = {
      hash = "sha256-NjRBJnnH/ST9JrF4yQdoE2H0PivR0Obp+ca36/8p6xE=";
      name = "bcm27xx_bcm2711-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2711/packages/Packages";
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
