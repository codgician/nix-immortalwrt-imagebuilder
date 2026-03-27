# 23.05.6 layerscape/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/layerscape/armv7/";
  sha256sums = {
    hash = "sha256-EGdJexKqAU3sfURPntTh5uxVL9UpzJj/g913dRYMNnc=";
    name = "layerscape_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/layerscape/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "70e6c8e72c8716c562d37cbef08430b07c84fdae7aa36a56a9c9b963d540bdf8";
    filename = "immortalwrt-imagebuilder-23.05.6-layerscape-armv7.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-A1QAc6c4nRg3RnI9J9ByDIVjnPPOxuS6jdMWFd1WXTo=";
    name = "layerscape_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/layerscape/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "811c82f0da26ddc3ee4a7d7b5c75c7f2";
      version = "5.15.189";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
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
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
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
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.189-1-811c82f0da26ddc3ee4a7d7b5c75c7f2";
    profiles = {
      fsl_ls1021a-iot-sdboot = {
        device_packages = [ ];
      };
      fsl_ls1021a-twr = {
        device_packages = [ "layerscape-rcw" ];
      };
      fsl_ls1021a-twr-sdboot = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/layerscape/armv7/packages/";
    sourceInfo = {
      hash = "sha256-3h/FAchjvgJzALnlxwqbNBibnQP+GpJgx7ayiwxmTb4=";
      name = "layerscape_armv7-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/layerscape/armv7/packages/Packages";
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
