# 24.10.4 layerscape/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/layerscape/armv7/";
  sha256sums = {
    hash = "sha256-tlYoDwwikAxUtME/+/v0tGd6htVj4r7R5BEE9rC/6NM=";
    name = "layerscape_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/layerscape/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "f9b85f80cd27b5e57af45e11667d35c0eca5ca65b624299dbb0e4459b210f0f3";
    filename = "immortalwrt-imagebuilder-24.10.4-layerscape-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-sibLc4FuGEJ5FYtNGwUNQS8nwOVJNT9/fkw98tVNrN4=";
    name = "layerscape_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/layerscape/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "86a7ee16573eb57c98348ad9311aa66e";
      version = "6.6.110";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb-dwc3"
      "kmod-usb-storage"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.110-1-86a7ee16573eb57c98348ad9311aa66e";
    profiles = {
      fsl_ls1021a-iot-sdboot = {
        device_packages = [ ];
      };
      fsl_ls1021a-twr = {
        device_packages = [ ];
      };
      fsl_ls1021a-twr-sdboot = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.110-1-86a7ee16573eb57c98348ad9311aa66e" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/layerscape/armv7/kmods/6.6.110-1-86a7ee16573eb57c98348ad9311aa66e/";
    sourceInfo = {
      hash = "sha256-C0SmhnojFVr0hkj2CkHSpRHy+0t0J3JmMggKALL7hAQ=";
      name = "kmods-layerscape_armv7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/layerscape/armv7/kmods/6.6.110-1-86a7ee16573eb57c98348ad9311aa66e/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/layerscape/armv7/packages/";
    sourceInfo = {
      hash = "sha256-PebBEB3FnrUKHq2MH/P5dA9R6NfPpsq/BIM6wywiw14=";
      name = "layerscape_armv7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/layerscape/armv7/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_neon-vfpv4.nix;
}
