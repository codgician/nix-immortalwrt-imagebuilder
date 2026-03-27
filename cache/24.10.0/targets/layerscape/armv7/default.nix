# 24.10.0 layerscape/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/layerscape/armv7/";
  sha256sums = {
    hash = "sha256-mc8zcm1uGH6edfTKWDIjpVFSiMJ0qS7MH61MmKLanWE=";
    name = "layerscape_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/layerscape/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "3da69a44720e2bfe0db02e3edf97a200c56d09714eb252dcc462c8b71fe598f5";
    filename = "immortalwrt-imagebuilder-24.10.0-layerscape-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Ybvh9T5pp5cbbXKOks0GPXiTqWYhtL9MjAwTL5UGzXM=";
    name = "layerscape_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/layerscape/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "f1a54324c0df8c116618032f62034c86";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-f1a54324c0df8c116618032f62034c86";
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
  kmods."6.6.73-1-f1a54324c0df8c116618032f62034c86" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/layerscape/armv7/kmods/6.6.73-1-f1a54324c0df8c116618032f62034c86/";
    sourceInfo = {
      hash = "sha256-AyoWAGL3HW8EEac5LHnU4C0fx8uWl8L0Reu8uoFfN6s=";
      name = "kmods-layerscape_armv7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/layerscape/armv7/kmods/6.6.73-1-f1a54324c0df8c116618032f62034c86/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/layerscape/armv7/packages/";
    sourceInfo = {
      hash = "sha256-l6+Oo/Dr2gjluH4O1I3sW/GcO+D6B9fSg9iiTOuMHuo=";
      name = "layerscape_armv7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/layerscape/armv7/packages/Packages";
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
