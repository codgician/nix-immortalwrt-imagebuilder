# 25.12.0-rc2 tegra/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/tegra/generic/";
  sha256sums = {
    hash = "sha256-zqx3PgLPXmC5W6GaDe4h+56+h6REs+6pp8h981Fnb+E=";
    name = "tegra_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/tegra/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "9a3af6ae58662019f3281cf33c8fdf3b4bd3fbbf465f1b6a87e2a548af7b57b9";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-tegra-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-pcUTvejb6F+o6hluLAvf8vVbv3bk69bBlXlqioHa1+Q=";
    name = "tegra_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/tegra/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_vfpv3-d16";
    linux_kernel = {
      release = "1";
      vermagic = "275e61f6169693de07a3bc1af835ff35";
      version = "6.12.79";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
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
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.79-1-275e61f6169693de07a3bc1af835ff35";
    profiles = {
      compulab_trimslice = {
        device_packages = [
          "kmod-leds-gpio"
          "kmod-r8169"
          "kmod-rt2800-usb"
          "kmod-rtc-em3027"
          "kmod-usb-hid"
          "kmod-usb-storage"
          "wpad-openssl"
        ];
      };
    };
  };
  kmods."6.12.79-1-275e61f6169693de07a3bc1af835ff35" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/tegra/generic/kmods/6.12.79-1-275e61f6169693de07a3bc1af835ff35/";
    sourceInfo = {
      hash = "sha256-7e5zwDG8qR6kFfOFoXmqL8yTPrgiKXUTQ1AFW9tFD64=";
      name = "kmods-tegra_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/tegra/generic/kmods/6.12.79-1-275e61f6169693de07a3bc1af835ff35/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/tegra/generic/packages/";
    sourceInfo = {
      hash = "sha256-nNref48sO50h1gCT1rRi2jtdBGWxVGDNpHxFiGq0UZg=";
      name = "tegra_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/tegra/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a9_vfpv3-d16";
  feeds = import ./../../../packages/arm_cortex-a9_vfpv3-d16.nix;
}
