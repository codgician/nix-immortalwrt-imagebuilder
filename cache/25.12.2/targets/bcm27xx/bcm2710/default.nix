# 25.12.2 bcm27xx/bcm2710
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2710/";
  sha256sums = {
    hash = "sha256-8+jU3vG8KAEgom+A6/+T3xOFyNXDZ0DguLkxWuqIV5U=";
    name = "bcm27xx_bcm2710-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2710/sha256sums";
  };
  imagebuilder = {
    sha256 = "3ddde57ee15e51fd8e0014abd46968be5f893122d5e4e5fc48f2b0763e71d89a";
    filename = "immortalwrt-imagebuilder-25.12.2-bcm27xx-bcm2710.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-kJsu9OvLUFFTPfFDsxUg+w59x73OEt7BH+qecs+NMUs=";
    name = "bcm27xx_bcm2710-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2710/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "a556fa27f2db3d7215c0e0df5aec671f";
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
    kmods_target = "6.12.103-1-a556fa27f2db3d7215c0e0df5aec671f";
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
  kmods."6.12.103-1-a556fa27f2db3d7215c0e0df5aec671f" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2710/kmods/6.12.103-1-a556fa27f2db3d7215c0e0df5aec671f/";
    sourceInfo = {
      hash = "sha256-QBkpO0Kz+y7haUWvS935IrA779I3BNH9+4ijojxxDwY=";
      name = "kmods-bcm27xx_bcm2710-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2710/kmods/6.12.103-1-a556fa27f2db3d7215c0e0df5aec671f/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2710/packages/";
    sourceInfo = {
      hash = "sha256-ymffhcocnWfU5MIdFDRfzEkcJMHawIq+fKb6w1IjqmU=";
      name = "bcm27xx_bcm2710-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2710/packages/packages.adb";
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
