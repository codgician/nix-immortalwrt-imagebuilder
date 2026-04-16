# 25.12.0-rc2 layerscape/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/layerscape/armv7/";
  sha256sums = {
    hash = "sha256-ttk9Bnzg7iwLI/GtCHF58OWkgYLZ5MNZbpvTWVuD7GY=";
    name = "layerscape_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/layerscape/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "49f429f33e5aaeb087f2cdfd04857b07089bd7d433c013f72c9090bf88227a2a";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-layerscape-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-5t7NZzqbNJ1Akq5PY5fr2yrf1b6vDMY35Y5osiINKTU=";
    name = "layerscape_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/layerscape/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "f29a568d1b28fea5644bdf4555e5411d";
      version = "6.12.79";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "kmod-usb-dwc3"
      "kmod-usb-storage"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.79-1-f29a568d1b28fea5644bdf4555e5411d";
    profiles = {
      fsl_ls1021a-iot-sdboot = {
        device_packages = [ ];
      };
      fsl_ls1021a-twr = {
        device_packages = [ ];
      };
      fsl_ls1021a-twr-sdboot = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.79-1-f29a568d1b28fea5644bdf4555e5411d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/layerscape/armv7/kmods/6.12.79-1-f29a568d1b28fea5644bdf4555e5411d/";
    sourceInfo = {
      hash = "sha256-VXG23b1Y/tApGTe5yHDSSxacV9ON8Yl3O/xdlWPpvmw=";
      name = "kmods-layerscape_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/layerscape/armv7/kmods/6.12.79-1-f29a568d1b28fea5644bdf4555e5411d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/layerscape/armv7/packages/";
    sourceInfo = {
      hash = "sha256-Fh8WzJh7qncodyIJUToxWQrupn9/dPpkGhoCWjNT4NA=";
      name = "layerscape_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/layerscape/armv7/packages/packages.adb";
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
