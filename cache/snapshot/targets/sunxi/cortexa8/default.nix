# snapshot sunxi/cortexa8
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/";
  sha256sums = {
    hash = "sha256-5V3/YlXkCmO/FN5YxJwDsgFISewDVGt6C0cHlNVqRwg=";
    name = "sunxi_cortexa8-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/sha256sums";
  };
  imagebuilder = {
    sha256 = "1b7397018c86b6b0a283c44e6377534f0c3616a4627fc16deaff98773daf0456";
    filename = "immortalwrt-imagebuilder-sunxi-cortexa8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-4VV1mfWX1xRP2ZgQ25irCO6DEc8UH6KiX7AohVxARXs=";
    name = "sunxi_cortexa8-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "c9c9aa6c7f984103cde3f3f943f89e8c";
      version = "6.18.37";
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
    kmods_target = "6.18.37-1-c9c9aa6c7f984103cde3f3f943f89e8c";
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
  kmods."6.18.37-1-c9c9aa6c7f984103cde3f3f943f89e8c" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/kmods/6.18.37-1-c9c9aa6c7f984103cde3f3f943f89e8c/";
    sourceInfo = {
      hash = "sha256-2C2H/hnNU1Hf2CPXHHbCRJcjpSNclc5xENdm+ryjrfY=";
      name = "kmods-sunxi_cortexa8-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/kmods/6.18.37-1-c9c9aa6c7f984103cde3f3f943f89e8c/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/packages/";
    sourceInfo = {
      hash = "sha256-MDNpLPy8IFMyhV9pRux66BHahhWdQMfV7WSAuR0ReME=";
      name = "sunxi_cortexa8-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/packages/packages.adb";
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
