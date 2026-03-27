# 24.10.3 lantiq/xrx200_legacy
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/lantiq/xrx200_legacy/";
  sha256sums = {
    hash = "sha256-bRFtFPg2gSsTGMuqU7xIQ6eW0eN2lRN5AA8YM7I+9l4=";
    name = "lantiq_xrx200_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/lantiq/xrx200_legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "5ff3b0813650dff3cef4bcaa5c61fbfdc60655d241e765b3dea4205f29d03a2a";
    filename = "immortalwrt-imagebuilder-24.10.3-lantiq-xrx200_legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-2Nw/6JLAx1Q1W5DxxfdMYdNhtcjmTCReS8WbStP+u+w=";
    name = "lantiq_xrx200_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/lantiq/xrx200_legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "959ce2f7aeeb61bd6bc2f9133d55c5e0";
      version = "6.6.104";
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
    kmods_target = "6.6.104-1-959ce2f7aeeb61bd6bc2f9133d55c5e0";
    profiles = {
      netgear_dm200 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.104-1-959ce2f7aeeb61bd6bc2f9133d55c5e0" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/lantiq/xrx200_legacy/kmods/6.6.104-1-959ce2f7aeeb61bd6bc2f9133d55c5e0/";
    sourceInfo = {
      hash = "sha256-luef2HAo3oFNWfAe9fJwLIGclYHeweksGgbaPhZRruk=";
      name = "kmods-lantiq_xrx200_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/lantiq/xrx200_legacy/kmods/6.6.104-1-959ce2f7aeeb61bd6bc2f9133d55c5e0/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/lantiq/xrx200_legacy/packages/";
    sourceInfo = {
      hash = "sha256-n4zpfbi0n52kkHw+XY51qBouTe6yjFXjKgTTlmYyqfI=";
      name = "lantiq_xrx200_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/lantiq/xrx200_legacy/packages/Packages";
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
