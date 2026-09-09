# 25.12.2 mediatek/mt7629
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mediatek/mt7629/";
  sha256sums = {
    hash = "sha256-28pg6AcUr7ZDHhZgfkMFjiqGoCn2MkY7O3Q3VkA1A7Y=";
    name = "mediatek_mt7629-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mediatek/mt7629/sha256sums";
  };
  imagebuilder = {
    sha256 = "bc356232489d4255a89260485289b4ff3986ea02ea15e1e3a15783122b801805";
    filename = "immortalwrt-imagebuilder-25.12.2-mediatek-mt7629.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-maCCOXKMxs/vcNUwvzjsxpzNag2K3+BZb48tDFqpfXE=";
    name = "mediatek_mt7629-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mediatek/mt7629/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7";
    linux_kernel = {
      release = "1";
      vermagic = "41eef23ad397fc7a180cffa443ba7d24";
      version = "6.12.103";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.103-1-41eef23ad397fc7a180cffa443ba7d24";
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
  kmods."6.12.103-1-41eef23ad397fc7a180cffa443ba7d24" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mediatek/mt7629/kmods/6.12.103-1-41eef23ad397fc7a180cffa443ba7d24/";
    sourceInfo = {
      hash = "sha256-Tuuyb765mOf++BndPv/sy0mdwNjoMYX2/rq1RHfHERE=";
      name = "kmods-mediatek_mt7629-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mediatek/mt7629/kmods/6.12.103-1-41eef23ad397fc7a180cffa443ba7d24/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mediatek/mt7629/packages/";
    sourceInfo = {
      hash = "sha256-LfyKnxSAdqsLj/tZ9yb995v8jSfXwnKV4IXIobPtxdA=";
      name = "mediatek_mt7629-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mediatek/mt7629/packages/packages.adb";
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
