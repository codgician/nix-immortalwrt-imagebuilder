# snapshot sunxi/cortexa8
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/";
  sha256sums = {
    hash = "sha256-oDCcY0wmvGsORXjIVO7P/OPcaCXgmaTxJaLH+Bg6oYI=";
    name = "sunxi_cortexa8-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/sha256sums";
  };
  imagebuilder = {
    sha256 = "ae5289b50ba802b2f3b976d6bfbed72b20cc80a78e6ebb007765ab1916c20d8e";
    filename = "immortalwrt-imagebuilder-sunxi-cortexa8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-+gOJX7AZ172N2MARaOGWvLFnBwtQvG5mZuhJlG1m0g0=";
    name = "sunxi_cortexa8-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "ccfcec03443e3b9334178720b1ab910e";
      version = "6.18.26";
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
    kmods_target = "6.18.26-1-ccfcec03443e3b9334178720b1ab910e";
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
  kmods."6.18.26-1-ccfcec03443e3b9334178720b1ab910e" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/kmods/6.18.26-1-ccfcec03443e3b9334178720b1ab910e/";
    sourceInfo = {
      hash = "sha256-NWd8AcLfQNOpROw42k+9zkHXXsAu42Iwu7bl/7e6SHw=";
      name = "kmods-sunxi_cortexa8-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa8/kmods/6.18.26-1-ccfcec03443e3b9334178720b1ab910e/packages.adb";
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
      hash = "sha256-qVafnAPbPEU8D3C9o7LHQ/oQUQhh+ppakaackyQl07U=";
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
