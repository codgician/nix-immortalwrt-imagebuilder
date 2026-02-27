# snapshot lantiq/xrx200_legacy
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/lantiq/xrx200_legacy/";
  sha256sums = {
    hash = "sha256-0yuZ0GiYpD1uvF4ryc9A2R+6vAipEA8V7XqkHI01Llw=";
    name = "lantiq_xrx200_legacy-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/lantiq/xrx200_legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "24cd433e031af4b37d12b8542916ecbe0a2ca3323ef2904006fe7fc0e7280ad7";
    filename = "immortalwrt-imagebuilder-lantiq-xrx200_legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-EqRBSpb4mOCMuiakSBcCp/mgvH3ZH2S5xgAyoHokEAU=";
    name = "lantiq_xrx200_legacy-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/lantiq/xrx200_legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "1c24bf3b5c3e8d2b6d5e6ae0efd245f7";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-1c24bf3b5c3e8d2b6d5e6ae0efd245f7";
    profiles = {
      netgear_dm200 = {
        device_packages = [
          "xrx200-rev1.1-phy22f-firmware"
          "xrx200-rev1.2-phy22f-firmware"
        ];
      };
    };
  };
  kmods."6.12.67-1-1c24bf3b5c3e8d2b6d5e6ae0efd245f7" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/lantiq/xrx200_legacy/kmods/6.12.67-1-1c24bf3b5c3e8d2b6d5e6ae0efd245f7/";
    sourceInfo = {
      hash = "sha256-WQ2P7fpSBfylN7ZRR1XyY5H9AFIuCrpJd4QXg9sTUnQ=";
      name = "kmods-lantiq_xrx200_legacy-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/lantiq/xrx200_legacy/kmods/6.12.67-1-1c24bf3b5c3e8d2b6d5e6ae0efd245f7/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/lantiq/xrx200_legacy/packages/";
    sourceInfo = {
      hash = "sha256-SjZO9V44ROt4WxRFrwx2AzyyRES7E8G/hmmZclAX3j4=";
      name = "lantiq_xrx200_legacy-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/lantiq/xrx200_legacy/packages/packages.adb";
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
