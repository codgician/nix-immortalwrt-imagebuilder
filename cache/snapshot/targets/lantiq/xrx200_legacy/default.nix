# snapshot lantiq/xrx200_legacy
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/";
  sha256sums = {
    hash = "sha256-s/RPawSNPk8mdFjWKyauWuWfrgXNPE8j1QlNf0GWlyM=";
    name = "lantiq_xrx200_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "f2ab93d59ad4927137d9bf3107d5064abb5f0aafc8845b2524c785874c2918f0";
    filename = "immortalwrt-imagebuilder-lantiq-xrx200_legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-4O8l7s6LC2RnXKQLwa5c0EiMUqcV9W+3dq2jTHnADq0=";
    name = "lantiq_xrx200_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "cba52e84fc28321e83f8d0592a51ce15";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "dsl-vrx200-firmware-xdsl-a"
      "dsl-vrx200-firmware-xdsl-b-patch"
      "firewall4"
      "fstools"
      "kmod-dsa-gswip"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-ltq-atm-vr9"
      "kmod-ltq-deu-vr9"
      "kmod-ltq-ptm-vr9"
      "kmod-ltq-vdsl-vr9"
      "kmod-ltq-vdsl-vr9-mei"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "ltq-vdsl-vr9-app"
      "ltq-vdsl-vr9-vectoring-fw-installer"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoa"
      "ppp-mod-pppoe"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.94-1-cba52e84fc28321e83f8d0592a51ce15";
    profiles = {
      netgear_dm200 = {
        device_packages = [
          "xrx200-rev1.1-phy22f-firmware"
          "xrx200-rev1.2-phy22f-firmware"
        ];
      };
    };
  };
  kmods."6.12.94-1-cba52e84fc28321e83f8d0592a51ce15" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/kmods/6.12.94-1-cba52e84fc28321e83f8d0592a51ce15/";
    sourceInfo = {
      hash = "sha256-CfwAHVEiTDgymz988Q4vACmpnhbadLBDfj/arExXURQ=";
      name = "kmods-lantiq_xrx200_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/kmods/6.12.94-1-cba52e84fc28321e83f8d0592a51ce15/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/packages/";
    sourceInfo = {
      hash = "sha256-kcJe90j/PUL+JAJ/9u/6/va1RPSCKzHjIBvH7mrMvz4=";
      name = "lantiq_xrx200_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/packages/packages.adb";
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
