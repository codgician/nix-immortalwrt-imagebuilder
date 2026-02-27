# 23.05.7 bcm4908/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-f1T3BGX2jq44zJ8G7Cpb6FOGxE08BSxIRwPj5ZRCHQA=";
    name = "bcm4908_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "3242b29c80d6120415ac6d3388ec51698ab09a770eb0657e84873a96b496d064";
    filename = "immortalwrt-imagebuilder-23.05.7-bcm4908-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-+sONshuWmq4R0LXNp22kMBDC/a48CK6spcWL9DL8mq4=";
    name = "bcm4908_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm4908/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "87ec2f0c852a3af5932ad97c65a0c82e";
      version = "5.15.195";
    };
    default_packages = [
      "base-files"
      "bcm4908img"
      "block-mount"
      "busybox"
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
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.195-1-87ec2f0c852a3af5932ad97c65a0c82e";
    profiles = {
      asus_gt-ac5300 = {
        device_packages = [ ];
      };
      netgear_r8000p = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm4908/generic/packages/";
    sourceInfo = {
      hash = "sha256-w1vZFgh68P/weTEKbVVDyJhWTKzPvPTT83d3USCt10Q=";
      name = "bcm4908_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm4908/generic/packages/Packages";
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
