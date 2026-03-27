# 24.10.0 bcm27xx/bcm2712
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2712/";
  sha256sums = {
    hash = "sha256-3UcvVE3xYRJv3g6oohQ0LJp+nlnS0SWgyfIa8m3p3fI=";
    name = "bcm27xx_bcm2712-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2712/sha256sums";
  };
  imagebuilder = {
    sha256 = "5c3ec53c26f0013372fbcc4a25e8d88514398068138726afc490a7abf5e12d95";
    filename = "immortalwrt-imagebuilder-24.10.0-bcm27xx-bcm2712.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-4BRfTGQFHYogGUq8mwnvEEBeXdfiA2p+Duk2iQ0lf2E=";
    name = "bcm27xx_bcm2712-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2712/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a76";
    linux_kernel = {
      release = "1";
      vermagic = "f8438e4beb1a9ceabdbbc86a225772b2";
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
    kmods_target = "6.6.73-1-f8438e4beb1a9ceabdbbc86a225772b2";
    profiles = {
      rpi-5 = {
        device_packages = [
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-basic-mbedtls"
          "kmod-hwmon-pwmfan"
          "kmod-thermal"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.73-1-f8438e4beb1a9ceabdbbc86a225772b2" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2712/kmods/6.6.73-1-f8438e4beb1a9ceabdbbc86a225772b2/";
    sourceInfo = {
      hash = "sha256-TakwcAguBmsURT6djBwBKG/SV4HDpogO3VuTF9TNiOY=";
      name = "kmods-bcm27xx_bcm2712-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2712/kmods/6.6.73-1-f8438e4beb1a9ceabdbbc86a225772b2/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2712/packages/";
    sourceInfo = {
      hash = "sha256-Ln63++cn7WI2EqQCpTACkdbq2KDjeQAPZoWr7rkzPEw=";
      name = "bcm27xx_bcm2712-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2712/packages/Packages";
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
