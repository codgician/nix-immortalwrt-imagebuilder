# 24.10.4 lantiq/xrx200_legacy
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/lantiq/xrx200_legacy/";
  sha256sums = {
    hash = "sha256-yPeOjD5aSji7pIqho2S1u0wjZ5BGtMv0pTBbUOzS48c=";
    name = "lantiq_xrx200_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/lantiq/xrx200_legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "a090ee472534ba25a831119411bfd44439f568c2f58602d525b18ec184f62edb";
    filename = "immortalwrt-imagebuilder-24.10.4-lantiq-xrx200_legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-4envbkcP+bhMXspyZk0Iw1iiHCeeK+dUSZAIgiDvPEw=";
    name = "lantiq_xrx200_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/lantiq/xrx200_legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "0ef226b815a46c32c7e718a8dba84f37";
      version = "6.6.110";
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
    kmods_target = "6.6.110-1-0ef226b815a46c32c7e718a8dba84f37";
    profiles = {
      netgear_dm200 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.110-1-0ef226b815a46c32c7e718a8dba84f37" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/lantiq/xrx200_legacy/kmods/6.6.110-1-0ef226b815a46c32c7e718a8dba84f37/";
    sourceInfo = {
      hash = "sha256-kwmZN1u29UNSMhedkXPSq2hQQg0kO9mqbuu7KRWu7L4=";
      name = "kmods-lantiq_xrx200_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/lantiq/xrx200_legacy/kmods/6.6.110-1-0ef226b815a46c32c7e718a8dba84f37/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/lantiq/xrx200_legacy/packages/";
    sourceInfo = {
      hash = "sha256-Hi7Pw7Izy7uClMRarAL7baWVBrHUChjadFDUuIAlZQ0=";
      name = "lantiq_xrx200_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/lantiq/xrx200_legacy/packages/Packages";
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
