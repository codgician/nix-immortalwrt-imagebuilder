# snapshot lantiq/xrx200_legacy
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/";
  sha256sums = {
    hash = "sha256-WvX7MgQIr89Jbr/2C2yqsIrfwKN5b/3lJm6J+trFloQ=";
    name = "lantiq_xrx200_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "ad52255eeefca75f53c5b6a87718f88c0f1c1e32390f562392d048829ae7bcac";
    filename = "immortalwrt-imagebuilder-lantiq-xrx200_legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-xNDFmHj3ee64g4mycozYtZoEG0hSKAn+RwXOutASJ8E=";
    name = "lantiq_xrx200_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "183aa3c799cebdf31104a4c45a23477f";
      version = "6.18.52";
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
    kmods_target = "6.18.52-1-183aa3c799cebdf31104a4c45a23477f";
    profiles = {
      netgear_dm200 = {
        device_packages = [
          "xrx200-rev1.1-phy22f-firmware"
          "xrx200-rev1.2-phy22f-firmware"
        ];
      };
    };
  };
  kmods."6.18.52-1-183aa3c799cebdf31104a4c45a23477f" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/kmods/6.18.52-1-183aa3c799cebdf31104a4c45a23477f/";
    sourceInfo = {
      hash = "sha256-I/yLer0QESjb+AJsSj8PllEQ0aeooH5xmKjEqCWdNBw=";
      name = "kmods-lantiq_xrx200_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/kmods/6.18.52-1-183aa3c799cebdf31104a4c45a23477f/packages.adb";
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
      hash = "sha256-P7hdQUW8Tb5XI3gGSLyoo7w9+/8Ot5ciCQ6wJEWnKFc=";
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
