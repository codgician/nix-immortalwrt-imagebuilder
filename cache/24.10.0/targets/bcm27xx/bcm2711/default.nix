# 24.10.0 bcm27xx/bcm2711
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2711/";
  sha256sums = {
    hash = "sha256-Y3Zl5x8GKAOC9qQqZ8ITF+N+6j6UcL+pB9DBoO9mZqI=";
    name = "bcm27xx_bcm2711-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2711/sha256sums";
  };
  imagebuilder = {
    sha256 = "2c47f685508c690c3999702bc02c4e8f59d686db7a61bde3da72bc1251077cf9";
    filename = "immortalwrt-imagebuilder-24.10.0-bcm27xx-bcm2711.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-6taKlmlyj+2c1RFscrSh4xSHxZBEqBX3kc8CM/O6/wc=";
    name = "bcm27xx_bcm2711-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2711/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "05dc7915fefe987543db2a4b9ba8b39d";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-05dc7915fefe987543db2a4b9ba8b39d";
    profiles = {
      rpi-4 = {
        device_packages = [
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-basic-openssl"
          "kmod-usb-net-lan78xx"
          "kmod-r8169"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.73-1-05dc7915fefe987543db2a4b9ba8b39d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2711/kmods/6.6.73-1-05dc7915fefe987543db2a4b9ba8b39d/";
    sourceInfo = {
      hash = "sha256-wt+qGEFq0EhSIDYxaK6kYC18IMbKJqMab5tmtEsFRB8=";
      name = "kmods-bcm27xx_bcm2711-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2711/kmods/6.6.73-1-05dc7915fefe987543db2a4b9ba8b39d/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2711/packages/";
    sourceInfo = {
      hash = "sha256-8dLKoZ0Th8uZPrLlL+R+eSC56gHz/d2oNaxxDoMS/2I=";
      name = "bcm27xx_bcm2711-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2711/packages/Packages";
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
