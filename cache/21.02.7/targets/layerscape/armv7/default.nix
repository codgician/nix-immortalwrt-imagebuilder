# 21.02.7 layerscape/armv7
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/layerscape/armv7/";
  sha256sums = {
    hash = "sha256-UWEmj8x7Dd8j0kdUUwkInrKy6G53W5NrsU9LY8FBiVI=";
    name = "layerscape_armv7-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/layerscape/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "f06d2343fb6330e10805a2f1f9c6279019e034a5413f1a561c4539982beebb5c";
    filename = "immortalwrt-imagebuilder-21.02.7-layerscape-armv7.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-9oNYEm7ia9//++GjuqrKEqQcaE7HDxCqeW+h59CZ0SE=";
    name = "layerscape_armv7-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/layerscape/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-ipt-raw"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-usb-dwc3"
      "kmod-usb-storage"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/layerscape/armv7/packages/";
    sourceInfo = {
      hash = "sha256-nsXZSLTLP0Fo7d/RPs7w62SmUlH8fwDwVvPAJxStAPI=";
      name = "layerscape_armv7-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/layerscape/armv7/packages/Packages";
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
