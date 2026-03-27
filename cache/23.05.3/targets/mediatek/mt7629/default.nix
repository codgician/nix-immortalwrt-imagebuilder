# 23.05.3 mediatek/mt7629
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mediatek/mt7629/";
  sha256sums = {
    hash = "sha256-HS4ZNgLjZxColncjOj9pIhFrXYCMmKGJ9TbMJi/2Qtk=";
    name = "mediatek_mt7629-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mediatek/mt7629/sha256sums";
  };
  imagebuilder = {
    sha256 = "2f3455b517418bdea3fd7a729d99ef9668d5df65e1d99653768d741197cb93bf";
    filename = "immortalwrt-imagebuilder-23.05.3-mediatek-mt7629.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-cHR/cARR8POY8ed1DltYAHjOagQujnlQ4M532JCYARM=";
    name = "mediatek_mt7629-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mediatek/mt7629/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7";
    linux_kernel = null;
    default_packages = [
      "autocore"
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
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
      "opkg"
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
    kmods_target = "null-null-null";
    profiles = {
      iptime_a6004mx = {
        device_packages = [
          "kmod-usb3"
          "uboot-envtools"
        ];
      };
      mediatek_mt7629-rfb = {
        device_packages = [ "swconfig" ];
      };
      netgear_ex6250-v2 = {
        device_packages = [ "uboot-envtools" ];
      };
      tplink_eap225-v5 = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mediatek/mt7629/packages/";
    sourceInfo = {
      hash = "sha256-dmk2VVeG/TtUPj42Z95Ki2JcRe3ehEwrTwmaq38Zha8=";
      name = "mediatek_mt7629-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mediatek/mt7629/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7";
  feeds = import ./../../../packages/arm_cortex-a7.nix;
}
