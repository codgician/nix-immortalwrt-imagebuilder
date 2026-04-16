# 25.12.0-rc2 pistachio/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-slKsfUty6HRj040cFVc7iCZRv5+Keynf+CH4DyvKI8U=";
    name = "pistachio_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "7114285a1a3f854e6b22d1984c9b3589d240744c38b1859ec5de2f544e7da98f";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-pistachio-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-sio+dpEiqMveFz9rODklx14jMtb7bFVCfmzsF5b+AYg=";
    name = "pistachio_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/pistachio/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc_24kf";
    linux_kernel = {
      release = "1";
      vermagic = "c050d728cd55ddbd5649a0c73b787de4";
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
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
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
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.79-1-c050d728cd55ddbd5649a0c73b787de4";
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
  kmods."6.12.79-1-c050d728cd55ddbd5649a0c73b787de4" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/pistachio/generic/kmods/6.12.79-1-c050d728cd55ddbd5649a0c73b787de4/";
    sourceInfo = {
      hash = "sha256-17Yw17O/+4sKj5zaUNWW/qUWF+aM+E/0P83BJ+vqxOU=";
      name = "kmods-pistachio_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/pistachio/generic/kmods/6.12.79-1-c050d728cd55ddbd5649a0c73b787de4/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/pistachio/generic/packages/";
    sourceInfo = {
      hash = "sha256-tr2JMlVGNY8GJ44obK4o8uCKmUdhLFQFZ6VMYiQTrqw=";
      name = "pistachio_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/pistachio/generic/packages/packages.adb";
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
