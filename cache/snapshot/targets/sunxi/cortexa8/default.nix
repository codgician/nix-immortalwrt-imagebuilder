# snapshot sunxi/cortexa8
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sunxi/cortexa8/";
  sha256sums = {
    hash = "sha256-bfKzjlNQ2OHfRdVlf/e8koI5gdAXutXN6CNnCAk4flQ=";
    name = "sunxi_cortexa8-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sunxi/cortexa8/sha256sums";
  };
  imagebuilder = {
    sha256 = "13b0ba1c4a5b9728ab18ebcc5906f122b6ac21c6100dd9fc6b45555d3f782ffe";
    filename = "immortalwrt-imagebuilder-sunxi-cortexa8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-CIzLmDPP2i9jRvA0IZIZJ1V6G4IRJ2zQ0hGbCHPgjKw=";
    name = "sunxi_cortexa8-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sunxi/cortexa8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "59dec82ea6266a49d1cf5499b0da81d5";
      version = "6.12.66";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "ca-bundle"
      "cpufreq"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.66-1-59dec82ea6266a49d1cf5499b0da81d5";
    profiles = {
      cubietech_a10-cubieboard = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
        ];
      };
      haoyu_a10-marsboard = {
        device_packages = [
          "kmod-ata-core"
          "kmod-ata-sunxi"
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
          "kmod-sound-core"
          "kmod-sound-soc-sunxi"
        ];
      };
      linksprite_a10-pcduino = {
        device_packages = [
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
          "kmod-rtl8192cu"
        ];
      };
      olimex_a10-olinuxino-lime = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
        ];
      };
      olimex_a13-olinuxino = {
        device_packages = [ "kmod-rtl8192cu" ];
      };
    };
  };
  kmods."6.12.66-1-59dec82ea6266a49d1cf5499b0da81d5" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sunxi/cortexa8/kmods/6.12.66-1-59dec82ea6266a49d1cf5499b0da81d5/";
    sourceInfo = {
      hash = "sha256-X9oBWezTlJ5j9o7Knq7R3vVS01vTV0aW0lVDqUvIo+w=";
      name = "kmods-sunxi_cortexa8-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sunxi/cortexa8/kmods/6.12.66-1-59dec82ea6266a49d1cf5499b0da81d5/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sunxi/cortexa8/packages/";
    sourceInfo = {
      hash = "sha256-GpBr998/nZet8Hq32dngKV6//rnwKBroTFM4iu9wyMg=";
      name = "sunxi_cortexa8-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sunxi/cortexa8/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a8_vfpv3";
  feeds = import ./../../../packages/arm_cortex-a8_vfpv3.nix;
}
