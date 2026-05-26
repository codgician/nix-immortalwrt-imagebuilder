# 25.12.0 tegra/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/tegra/generic/";
  sha256sums = {
    hash = "sha256-8vmoCB3zFKVMNhd8CcENks39xdPtgpzq8V5r07Ymj6k=";
    name = "tegra_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/tegra/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "6b544d52ec8c02b7bca39c564ab0e04586b1fc4ae2a9e1cb475aad4135015e7c";
    filename = "immortalwrt-imagebuilder-25.12.0-tegra-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-dYg1b4FNB/+6h8EWnrjfvtstxwiS/kKWUYwYldjDpXU=";
    name = "tegra_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/tegra/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_vfpv3-d16";
    linux_kernel = {
      release = "1";
      vermagic = "e993e4ce36f56003b043a75272ed045b";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-e993e4ce36f56003b043a75272ed045b";
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
  kmods."6.12.87-1-e993e4ce36f56003b043a75272ed045b" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/tegra/generic/kmods/6.12.87-1-e993e4ce36f56003b043a75272ed045b/";
    sourceInfo = {
      hash = "sha256-4xEXapDcyybviS516+W6qJ4PU88BMPdyg0ynUCCIwf8=";
      name = "kmods-tegra_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/tegra/generic/kmods/6.12.87-1-e993e4ce36f56003b043a75272ed045b/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/tegra/generic/packages/";
    sourceInfo = {
      hash = "sha256-LCsXp3roQe8p2zZyJ98FMqjghxbqrHKkPAvbhZ0qQIc=";
      name = "tegra_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/tegra/generic/packages/packages.adb";
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
