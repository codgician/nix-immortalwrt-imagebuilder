# 23.05.6 pistachio/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-JFntUXF80116h3JdaMfo6fvWZOLN8Iisuz5Jyw5UArE=";
    name = "pistachio_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "bd069325bd5dae8f1f675d33189192253b1e5a6154fb3b45bd1c91f65780fa13";
    filename = "immortalwrt-imagebuilder-23.05.6-pistachio-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-YR3MaC4UB5wGwasRpedGTL5fHBcJ6TXQoIaUqQwu3nc=";
    name = "pistachio_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/pistachio/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc_24kf";
    linux_kernel = {
      release = "1";
      vermagic = "e59f4ab17ee78c5f044109c5d3dbb2cc";
      version = "5.15.189";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.189-1-e59f4ab17ee78c5f044109c5d3dbb2cc";
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
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/pistachio/generic/packages/";
    sourceInfo = {
      hash = "sha256-gohI5h0/ri8hfbSu6dt0e3VipvmwzguhDeUpS3XWyeY=";
      name = "pistachio_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/pistachio/generic/packages/Packages";
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
