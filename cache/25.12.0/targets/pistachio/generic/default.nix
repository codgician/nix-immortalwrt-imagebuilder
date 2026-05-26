# 25.12.0 pistachio/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-4dIodjU2A4gkZNJrt9kXf84nrebfvHPSJVTe4hcOIe8=";
    name = "pistachio_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "1409422aa778d1a90d04d96a32f91f4f8e601adeb98e3afd7c04a20bf9fec7a1";
    filename = "immortalwrt-imagebuilder-25.12.0-pistachio-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ck7KWFDqE4CSidmYL0jfwV+oQv1CaChLJnR8qtdpQsA=";
    name = "pistachio_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/pistachio/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc_24kf";
    linux_kernel = {
      release = "1";
      vermagic = "8cafc577ba8042bde8a84e3ae787102a";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-8cafc577ba8042bde8a84e3ae787102a";
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
  kmods."6.12.87-1-8cafc577ba8042bde8a84e3ae787102a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/pistachio/generic/kmods/6.12.87-1-8cafc577ba8042bde8a84e3ae787102a/";
    sourceInfo = {
      hash = "sha256-LrRKb/NmNWV5da0If5pNsWcXHj+2mzFSIgNGtFXI40I=";
      name = "kmods-pistachio_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/pistachio/generic/kmods/6.12.87-1-8cafc577ba8042bde8a84e3ae787102a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/pistachio/generic/packages/";
    sourceInfo = {
      hash = "sha256-ZlPS6PMtSyre8z//IJOieBPoXaN0YrLVhuve7lbldnM=";
      name = "pistachio_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/pistachio/generic/packages/packages.adb";
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
