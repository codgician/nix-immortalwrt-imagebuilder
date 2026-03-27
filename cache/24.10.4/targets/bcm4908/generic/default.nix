# 24.10.4 bcm4908/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-ukUXR1IMKWI8WxbsZjKiLth/g7Z/fdcVf6r9RO6mp3g=";
    name = "bcm4908_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "591c34a202e6c1281dbf7c37381aadde8e3806aeff681623d8a6f0c47aa2e640";
    filename = "immortalwrt-imagebuilder-24.10.4-bcm4908-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ye9O3EZblseHdqFzUr+F0eXNxH9iVAczs8LQQdDGCTU=";
    name = "bcm4908_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm4908/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "2b4c551556c27c1566d15aa6da26d032";
      version = "6.6.110";
    };
    default_packages = [
      "base-files"
      "bcm4908img"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "fdt-utils"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb-ledtrig-usbport"
      "kmod-usb-ohci"
      "kmod-usb2"
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
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.110-1-2b4c551556c27c1566d15aa6da26d032";
    profiles = {
      asus_gt-ac5300 = {
        device_packages = [ ];
      };
      netgear_r8000p = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.110-1-2b4c551556c27c1566d15aa6da26d032" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm4908/generic/kmods/6.6.110-1-2b4c551556c27c1566d15aa6da26d032/";
    sourceInfo = {
      hash = "sha256-NmIGr3VYiAsOQTGJyJitZ1O6k/WnuZLYXt1Bagd3n/8=";
      name = "kmods-bcm4908_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm4908/generic/kmods/6.6.110-1-2b4c551556c27c1566d15aa6da26d032/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm4908/generic/packages/";
    sourceInfo = {
      hash = "sha256-Hv3poo5VQBJacLq3GsgVzwPmxmCAV+1isB3iAIX3xyI=";
      name = "bcm4908_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm4908/generic/packages/Packages";
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
