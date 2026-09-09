# 25.12.2 imx/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/imx/cortexa53/";
  sha256sums = {
    hash = "sha256-iPW7/CwzfJjMoAs5g1kiGwbf00KTBX5r7889JxoifIE=";
    name = "imx_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/imx/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "367adc49e0dda2b52592584ea0447b846966edd89d5e791fed46ccdc1a191e2b";
    filename = "immortalwrt-imagebuilder-25.12.2-imx-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-eLAVXojHJ7C+6IAYBZg81VShYqypBFiemOf5mp1LXDw=";
    name = "imx_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/imx/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "eea8f5b031d339774c1f30770f180003";
      version = "6.12.103";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "blkid"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.103-1-eea8f5b031d339774c1f30770f180003";
    profiles = {
      gateworks_venice = {
        device_packages = [
          "kmod-hwmon-gsc"
          "kmod-rtc-ds1672"
          "kmod-eeprom-at24"
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
          "kmod-pps-gpio"
          "kmod-lan743x"
          "kmod-sky2"
          "kmod-iio-st_accel-i2c"
          "kmod-can"
          "kmod-can-flexcan"
          "kmod-can-mcp251x"
        ];
      };
      imx8m = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.103-1-eea8f5b031d339774c1f30770f180003" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/imx/cortexa53/kmods/6.12.103-1-eea8f5b031d339774c1f30770f180003/";
    sourceInfo = {
      hash = "sha256-MHi6hg2nazpvqF+b3lO40hoi9Gk8p0HZtw1UJhOZ2lk=";
      name = "kmods-imx_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/imx/cortexa53/kmods/6.12.103-1-eea8f5b031d339774c1f30770f180003/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/imx/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-TgqawDIiqPkXs1pY68HioUuLaFCH/VRbEbPBJEFU2Kw=";
      name = "imx_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/imx/cortexa53/packages/packages.adb";
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
