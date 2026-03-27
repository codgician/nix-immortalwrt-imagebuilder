# 24.10.1 lantiq/xrx200_legacy
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/lantiq/xrx200_legacy/";
  sha256sums = {
    hash = "sha256-swpzAVmg3lkvAi9huuGiTYrbhwyjjlDNH7vUWfJkwDc=";
    name = "lantiq_xrx200_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/lantiq/xrx200_legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "14a3fff02ed900f245d701b0ad2d37bf70a205a40e0107ba38c86b37351df688";
    filename = "immortalwrt-imagebuilder-24.10.1-lantiq-xrx200_legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-2eehlEyTPe4ZqWJqVTOfFCcgXLTqxiSKjSvewgpb5Do=";
    name = "lantiq_xrx200_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/lantiq/xrx200_legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "0e711d22bee4403b1d62de26bee87c87";
      version = "6.6.86";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "dsl-vrx200-firmware-xdsl-a"
      "dsl-vrx200-firmware-xdsl-b-patch"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-ltq-atm-vr9"
      "kmod-ltq-deu-vr9"
      "kmod-ltq-ptm-vr9"
      "kmod-ltq-vdsl-vr9"
      "kmod-ltq-vdsl-vr9-mei"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "ltq-vdsl-vr9-app"
      "ltq-vdsl-vr9-vectoring-fw-installer"
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
      "ppp-mod-pppoa"
      "ppp-mod-pppoe"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.86-1-0e711d22bee4403b1d62de26bee87c87";
    profiles = {
      netgear_dm200 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.86-1-0e711d22bee4403b1d62de26bee87c87" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/lantiq/xrx200_legacy/kmods/6.6.86-1-0e711d22bee4403b1d62de26bee87c87/";
    sourceInfo = {
      hash = "sha256-QHM91iGDB8Es8ATX+wwpTQIZ16Wt7NDua11a1uifrSI=";
      name = "kmods-lantiq_xrx200_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/lantiq/xrx200_legacy/kmods/6.6.86-1-0e711d22bee4403b1d62de26bee87c87/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/lantiq/xrx200_legacy/packages/";
    sourceInfo = {
      hash = "sha256-7cm2AKR9kTeBddXmvJoNJ98VgpsTLWMI2dhZzU7aJ4Y=";
      name = "lantiq_xrx200_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/lantiq/xrx200_legacy/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}
