# 24.10.1 bcm27xx/bcm2710
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2710/";
  sha256sums = {
    hash = "sha256-1Jr6KzIe+OhgIU/NRrBTH9CfAWvsDxwVj9vS9dKCxpg=";
    name = "bcm27xx_bcm2710-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2710/sha256sums";
  };
  imagebuilder = {
    sha256 = "61a694f7b46e488f5d900aa27f0b6ffb3d60dbe7cd92d5a3cf88f145e9fa7314";
    filename = "immortalwrt-imagebuilder-24.10.1-bcm27xx-bcm2710.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-xeDQN8GUwu1s1KXjOCZ3N3jj0HKB2sMtPlj98G15Xkw=";
    name = "bcm27xx_bcm2710-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2710/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "83d8fdbc1bfe48d8c3a61bca1ed895a7";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-83d8fdbc1bfe48d8c3a61bca1ed895a7";
    profiles = {
      rpi-3 = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.86-1-83d8fdbc1bfe48d8c3a61bca1ed895a7" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2710/kmods/6.6.86-1-83d8fdbc1bfe48d8c3a61bca1ed895a7/";
    sourceInfo = {
      hash = "sha256-gcc9t0xSHKacJmlVxWw4xX2smweZbWbZhFh9h0vZcl4=";
      name = "kmods-bcm27xx_bcm2710-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2710/kmods/6.6.86-1-83d8fdbc1bfe48d8c3a61bca1ed895a7/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2710/packages/";
    sourceInfo = {
      hash = "sha256-L6cHgNg3VnUVgy8ONBZwpHn3Bin1gWZBE8eXMwDk/10=";
      name = "bcm27xx_bcm2710-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2710/packages/Packages";
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
