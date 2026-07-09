# 25.12.1 ramips/rt3883
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ramips/rt3883/";
  sha256sums = {
    hash = "sha256-rhVBydKGqrvt/NnZLNsIdhSefKe+xfQL0rwV9j+2lg8=";
    name = "ramips_rt3883-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ramips/rt3883/sha256sums";
  };
  imagebuilder = {
    sha256 = "b470e39f067fcbd068601af49e72178e366fcfd7b3dc7b84f23ebf658e722e89";
    filename = "immortalwrt-imagebuilder-25.12.1-ramips-rt3883.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-szRoE2TkHt7WGM9vgZy/s1l+fUsPx4A2bgNigI/UH0I=";
    name = "ramips_rt3883-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ramips/rt3883/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_74kc";
    linux_kernel = {
      release = "1";
      vermagic = "e2170efb76dd85c25b5e44d47903b99d";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-rt2800-pci"
      "kmod-rt2800-soc"
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
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.12.94-1-e2170efb76dd85c25b5e44d47903b99d";
    profiles = {
      edimax_br-6475nd = {
        device_packages = [ ];
      };
      engenius_esr600h = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "uboot-envtools"
        ];
      };
      omnima_hpm = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      trendnet_tew-691gr = {
        device_packages = [ ];
      };
      trendnet_tew-692gr = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.94-1-e2170efb76dd85c25b5e44d47903b99d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ramips/rt3883/kmods/6.12.94-1-e2170efb76dd85c25b5e44d47903b99d/";
    sourceInfo = {
      hash = "sha256-mtUlA/m5yok4jFtJwV8A/OPlqMZ7UXw5oEpTK5/2wP0=";
      name = "kmods-ramips_rt3883-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ramips/rt3883/kmods/6.12.94-1-e2170efb76dd85c25b5e44d47903b99d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ramips/rt3883/packages/";
    sourceInfo = {
      hash = "sha256-PEG1fu8PfuoSaxAswGN58xHYxXIoDjtWS+I3JJ8Ftl0=";
      name = "ramips_rt3883-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ramips/rt3883/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_74kc";
  feeds = import ./../../../packages/mipsel_74kc.nix;
}
