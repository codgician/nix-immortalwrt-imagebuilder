# 24.10.3 layerscape/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/layerscape/armv7/";
  sha256sums = {
    hash = "sha256-zMP41BFiDyGA1CPFdE6kgbcG7rpROqe1cUKnqgg/+wg=";
    name = "layerscape_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/layerscape/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "d4b0a824cbdb7a4ecdd59f5791f636293094af7e4daa5ed94a3724fc1bbb3412";
    filename = "immortalwrt-imagebuilder-24.10.3-layerscape-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-9cbXAuX1IT6f9j0uJo02EiKYdGaGXPRgy38DJwbbBx4=";
    name = "layerscape_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/layerscape/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "0b84416b2dd9c03a7618f38b55b2a5bf";
      version = "6.6.104";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb-dwc3"
      "kmod-usb-storage"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
      "urngd"
    ];
    kmods_target = "6.6.104-1-0b84416b2dd9c03a7618f38b55b2a5bf";
    profiles = {
      fsl_ls1021a-iot-sdboot = {
        device_packages = [ ];
      };
      fsl_ls1021a-twr = {
        device_packages = [ "~layerscape-rcw" ];
      };
      fsl_ls1021a-twr-sdboot = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.104-1-0b84416b2dd9c03a7618f38b55b2a5bf" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/layerscape/armv7/kmods/6.6.104-1-0b84416b2dd9c03a7618f38b55b2a5bf/";
    sourceInfo = {
      hash = "sha256-SqJD/6kfjEu9SAWuBM6Efo8KR7DjU4xoj35eA4FBjCM=";
      name = "kmods-layerscape_armv7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/layerscape/armv7/kmods/6.6.104-1-0b84416b2dd9c03a7618f38b55b2a5bf/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/layerscape/armv7/packages/";
    sourceInfo = {
      hash = "sha256-ytIR6yYHcGa1aUFhTjGF4OU+L07P89mLBIswGGiizdI=";
      name = "layerscape_armv7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/layerscape/armv7/packages/Packages";
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
