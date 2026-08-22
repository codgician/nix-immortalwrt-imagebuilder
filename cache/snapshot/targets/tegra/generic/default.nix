# snapshot tegra/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/";
  sha256sums = {
    hash = "sha256-2vOwxYRH//KFc2YzJFJ1bsQtVc+maoTEv99N+L07rI4=";
    name = "tegra_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "d84571f1854d8684ec669ca0eddce6a62c105835b10a8210a0cccd6bac53e64b";
    filename = "immortalwrt-imagebuilder-tegra-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-me+3WubUxbD0YRkNTSwm8zCQgoLLkp/qSA9DpXhD5YI=";
    name = "tegra_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_vfpv3-d16";
    linux_kernel = {
      release = "1";
      vermagic = "a89947d72f9e7968c9ec94086393e118";
      version = "6.12.103";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.103-1-a89947d72f9e7968c9ec94086393e118";
    profiles = {
      compulab_trimslice = {
        device_packages = [
          "kmod-leds-gpio"
          "kmod-r8169"
          "kmod-rt2800-usb"
          "kmod-rtc-em3027"
          "kmod-usb-hid"
          "kmod-usb-storage"
          "wpad-openssl"
        ];
      };
    };
  };
  kmods."6.12.103-1-a89947d72f9e7968c9ec94086393e118" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/kmods/6.12.103-1-a89947d72f9e7968c9ec94086393e118/";
    sourceInfo = {
      hash = "sha256-ffRiJAavvsavyRJ6eR7UD5kB7dcIuIY944e94TjzoRg=";
      name = "kmods-tegra_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/kmods/6.12.103-1-a89947d72f9e7968c9ec94086393e118/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/packages/";
    sourceInfo = {
      hash = "sha256-FZvoA81A02pMSRnzK4MT9XQyOfnbH+MBJuOVoH/x+3E=";
      name = "tegra_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a9_vfpv3-d16";
  feeds = import ./../../../packages/arm_cortex-a9_vfpv3-d16.nix;
}
