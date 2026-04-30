# snapshot pistachio/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-LBeDG1YS+4Djlvj+kOg9qsWESBm0DWjXrjDlZdHriEg=";
    name = "pistachio_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "240133d855cbf762d068f0a71e28ab2b64122350cc038e54996dc1eb245780ac";
    filename = "immortalwrt-imagebuilder-pistachio-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-CKzJOBPC/fwP3B81DNDrghhSecQFs2gumldItTkUMuE=";
    name = "pistachio_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc_24kf";
    linux_kernel = {
      release = "1";
      vermagic = "87a15f77e577395f2d216a7e12bfa0c4";
      version = "6.18.21";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.18.21-1-87a15f77e577395f2d216a7e12bfa0c4";
    profiles = {
      img_creator-ci40 = {
        device_packages = [
          "kmod-tpm-i2c-infineon"
          "kmod-ca8210"
          "wpan-tools"
        ];
      };
    };
  };
  kmods."6.18.21-1-87a15f77e577395f2d216a7e12bfa0c4" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/kmods/6.18.21-1-87a15f77e577395f2d216a7e12bfa0c4/";
    sourceInfo = {
      hash = "sha256-RYeG0+pdkk1dLn99Y4j4UTaXcK6pknDFEBsZXFUSQxc=";
      name = "kmods-pistachio_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/kmods/6.18.21-1-87a15f77e577395f2d216a7e12bfa0c4/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/packages/";
    sourceInfo = {
      hash = "sha256-6s9vserkWYcp5h6B7L62SrU0ZcoVRRTm+c9mL2x1TWY=";
      name = "pistachio_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_24kc_24kf";
  feeds = import ./../../../packages/mipsel_24kc_24kf.nix;
}
