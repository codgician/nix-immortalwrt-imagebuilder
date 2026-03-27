# 24.10.4 mediatek/mt7629
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mediatek/mt7629/";
  sha256sums = {
    hash = "sha256-dmPQalGEHI/SkfVQDMTrUJcQUFfBTzbV4XXjPL1yglI=";
    name = "mediatek_mt7629-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mediatek/mt7629/sha256sums";
  };
  imagebuilder = {
    sha256 = "271f1c7b2775f00f44acd1bc2010751401246cbcf0566f7f1e250c63c68d3dca";
    filename = "immortalwrt-imagebuilder-24.10.4-mediatek-mt7629.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-DpM8BwmqwuyaMPWWCZXIqyqAVujyGgRE1XlY9jGron4=";
    name = "mediatek_mt7629-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mediatek/mt7629/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7";
    linux_kernel = {
      release = "1";
      vermagic = "a3b3f145c56b6e011a3e2cb6a492e996";
      version = "6.6.110";
    };
    default_packages = [
      "autocore"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.110-1-a3b3f145c56b6e011a3e2cb6a492e996";
    profiles = {
      iptime_a6004mx = {
        device_packages = [
          "kmod-usb3"
          "uboot-envtools"
        ];
      };
      linksys_ea7500-v3 = {
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
  kmods."6.6.110-1-a3b3f145c56b6e011a3e2cb6a492e996" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mediatek/mt7629/kmods/6.6.110-1-a3b3f145c56b6e011a3e2cb6a492e996/";
    sourceInfo = {
      hash = "sha256-ThsEfUA9kZLdRrM4XSVd6Xc1a4J1QdOE4Z+LVDUZEmg=";
      name = "kmods-mediatek_mt7629-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mediatek/mt7629/kmods/6.6.110-1-a3b3f145c56b6e011a3e2cb6a492e996/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mediatek/mt7629/packages/";
    sourceInfo = {
      hash = "sha256-z6pUtLHAb24BdHFiKASTp+5ahPHzwQXObE3O/FvVDLI=";
      name = "mediatek_mt7629-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mediatek/mt7629/packages/Packages";
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
