# 25.12.0-rc1 layerscape/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/layerscape/armv7/";
  sha256sums = {
    hash = "sha256-0ll9WcfmfiqxuatzBRpct9sIeHRnphEr3DaGoiiU/U4=";
    name = "layerscape_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/layerscape/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "1d52dfec308c63f4c4e96ee660e3ba14d06a69c303c1f892b0fbf1c178a2c190";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-layerscape-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-2I/EDV4hw44Yj+M+wW289ynaI3yrMkJGVyMgPAHX96U=";
    name = "layerscape_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/layerscape/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "2e0024c4c6e354d80c1ec6d19cf2849d";
      version = "6.12.74";
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
      "kmod-usb-dwc3"
      "kmod-usb-storage"
      "kmod-usb3"
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
    kmods_target = "6.12.74-1-2e0024c4c6e354d80c1ec6d19cf2849d";
    profiles = {
      fsl_ls1021a-iot-sdboot = {
        device_packages = [ ];
      };
      fsl_ls1021a-twr = {
        device_packages = [ ];
      };
      fsl_ls1021a-twr-sdboot = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.74-1-2e0024c4c6e354d80c1ec6d19cf2849d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/layerscape/armv7/kmods/6.12.74-1-2e0024c4c6e354d80c1ec6d19cf2849d/";
    sourceInfo = {
      hash = "sha256-R2CN8npn7hWvFQziSBwEZdIgw/bZ8cbh76VOF7/3o78=";
      name = "kmods-layerscape_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/layerscape/armv7/kmods/6.12.74-1-2e0024c4c6e354d80c1ec6d19cf2849d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/layerscape/armv7/packages/";
    sourceInfo = {
      hash = "sha256-aArvgtR28H7qC3AyP2zUMI1XuBvpWfFeTQSMyslSmZE=";
      name = "layerscape_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/layerscape/armv7/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_neon-vfpv4.nix;
}
