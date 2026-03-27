# 24.10.2 lantiq/xrx200_legacy
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/lantiq/xrx200_legacy/";
  sha256sums = {
    hash = "sha256-42WRGvhEMI3XMDC2H6h/KYZWZkV4cUvu7VG5PP1W/Hk=";
    name = "lantiq_xrx200_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/lantiq/xrx200_legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "44e0a622b79147e89d34af32138fc1972e5689aa7ad3b99e5c4770147e8c1b05";
    filename = "immortalwrt-imagebuilder-24.10.2-lantiq-xrx200_legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-InI5Wo8+hnel0HJvYhSCUu9w86rNHDji1O6Wze9XRM8=";
    name = "lantiq_xrx200_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/lantiq/xrx200_legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "959ce2f7aeeb61bd6bc2f9133d55c5e0";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-959ce2f7aeeb61bd6bc2f9133d55c5e0";
    profiles = {
      netgear_dm200 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.93-1-959ce2f7aeeb61bd6bc2f9133d55c5e0" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/lantiq/xrx200_legacy/kmods/6.6.93-1-959ce2f7aeeb61bd6bc2f9133d55c5e0/";
    sourceInfo = {
      hash = "sha256-m8S6f+/5u/1QBkWo4g/9SG/W5TpWDnxQSdusFAhoQzI=";
      name = "kmods-lantiq_xrx200_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/lantiq/xrx200_legacy/kmods/6.6.93-1-959ce2f7aeeb61bd6bc2f9133d55c5e0/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/lantiq/xrx200_legacy/packages/";
    sourceInfo = {
      hash = "sha256-57i1vI959iKJ14GkZmAxWyiJRs0BKvooot2Psh+fw2E=";
      name = "lantiq_xrx200_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/lantiq/xrx200_legacy/packages/Packages";
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
