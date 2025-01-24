{
  apm821xx = {
    sata = {
      arch_packages = "powerpc_464fp";
      default_packages = [
        "badblocks"
        "base-files"
        "block-mount"
        "block-mount"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dropbear"
        "e2fsprogs"
        "f2fsck"
        "fdisk"
        "fstools"
        "kmod-dm"
        "kmod-gpio-button-hotplug"
        "kmod-hw-crypto-4xx"
        "kmod-hwmon-drivetemp"
        "kmod-i2c-core"
        "kmod-leds-gpio"
        "kmod-md-mod"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "lsblk"
        "luci-app-package-manager"
        "luci-compat"
        "luci-lib-base"
        "luci-lib-ipkg"
        "luci-light"
        "mdadm"
        "mkf2fs"
        "mtd"
        "netifd"
        "opkg"
        "partx-utils"
        "procd-ujail"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "9091dc159e2b188a157fbea9b3b3ce61";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        wd_mybooklive = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-ata-dwc"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb-storage"
            "kmod-fs-vfat"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-apm821xx-sata-wd_mybooklive";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-apm821xx-sata-wd_mybooklive-ext4-sysupgrade.img.gz";
              sha256 = "dd0258472a8edaaf2d091c996c251c9aadd9eec8d1542045e1791a724d3d80dd";
              sha256_unsigned = "10ca3b6b48eed546e332295610f0e42c8abdff08cbf547d65e651a7b8c360d14";
              type = "sysupgrade";
            }
            {
              name = "immortalwrt-24.10.0-rc4-apm821xx-sata-wd_mybooklive-apollo3g.dtb";
              sha256 = "8d8fbe80392732e15d8d7439cead6b71b9f3fac9a8248ad5e02cf35869b2ad19";
              sha256_unsigned = "8d8fbe80392732e15d8d7439cead6b71b9f3fac9a8248ad5e02cf35869b2ad19";
              type = "apollo3g.dtb";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-apm821xx-sata-wd_mybooklive-squashfs-factory.img.gz";
              sha256 = "b9e4b4caf0c1d9dc4becd3fba579853f38438a1eb64a1e52a4e662a3b4c201e2";
              sha256_unsigned = "b9e4b4caf0c1d9dc4becd3fba579853f38438a1eb64a1e52a4e662a3b4c201e2";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-apm821xx-sata-wd_mybooklive-initramfs-kernel.bin";
              sha256 = "18a46ce1e43b3a27f4229e4d71adb05d3daef7428906ec40e820222eba7cd035";
              sha256_unsigned = "18a46ce1e43b3a27f4229e4d71adb05d3daef7428906ec40e820222eba7cd035";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-apm821xx-sata-wd_mybooklive-squashfs-sysupgrade.img.gz";
              sha256 = "84f92d429d3388c78912ff844a22c60bf622f450d9405b3198bc3de1f379218b";
              sha256_unsigned = "2ba923bc649787dbb792ca3143e2ccadbe19c33708a7f91a411cb553ff498f8b";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-apm821xx-sata-wd_mybooklive-ext4-factory.img.gz";
              sha256 = "8c926e0cbe03723f4af9de75de25934aed4a15683423f80f7d18733c9a7877f4";
              sha256_unsigned = "8c926e0cbe03723f4af9de75de25934aed4a15683423f80f7d18733c9a7877f4";
              type = "factory";
            }
          ];
          supported_devices = [
            "wd,mybooklive"
            "mbl"
            "wd,mybooklive-duo"
          ];
          titles = [
            {
              model = "My Book Live";
              vendor = "Western Digital";
            }
            {
              model = "My Book Live Duo";
              vendor = "Western Digital";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "apm821xx/sata";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
  armsr = {
    armv7 = {
      arch_packages = "arm_cortex-a15_neon-vfpv4";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "blkid"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "e2fsprogs"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
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
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "c276645ed35e675f9c9c7bef1069c78f";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        generic = {
          device_packages = [
            "kmod-amazon-ena"
            "kmod-e1000e"
            "kmod-vmxnet3"
            "kmod-rtc-rx8025"
            "kmod-i2c-mux-pca954x"
            "kmod-gpio-pca953x"
            "partx-utils"
            "kmod-wdt-sp805"
            "kmod-mvneta"
            "kmod-mvpp2"
            "kmod-fsl-dpaa1-net"
            "kmod-fsl-dpaa2-net"
            "kmod-fsl-enetc-net"
            "kmod-dwmac-imx"
            "kmod-fsl-fec"
            "kmod-dwmac-rockchip"
            "kmod-dwmac-sun8i"
            "kmod-phy-aquantia"
            "kmod-phy-broadcom"
            "kmod-phy-marvell"
            "kmod-phy-marvell-10g"
            "kmod-sfp"
            "kmod-atlantic"
            "kmod-bcmgenet"
            "kmod-octeontx2-net"
            "kmod-renesas-net-avb"
            "kmod-phy-realtek"
            "kmod-phy-smsc"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-armsr-armv7-generic";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-armsr-armv7-generic-ext4-rootfs.img.gz";
              sha256 = "e10cbb6da18a5c3cd3050eb81b8d09dda264961c698a5142f16d7886a11f0935";
              sha256_unsigned = "e10cbb6da18a5c3cd3050eb81b8d09dda264961c698a5142f16d7886a11f0935";
              type = "rootfs";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-armsr-armv7-generic-squashfs-combined-efi.img.gz";
              sha256 = "8cb7b5f951497bb9da6123651b6ede967c7592d2f3a2be7b77a62db188d75813";
              sha256_unsigned = "6b80032fa87c5bbdd6a58d10c83d3c307568ff097ae058f39f2b7fde25ace5c1";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-armsr-armv7-generic-ext4-combined-efi.img.gz";
              sha256 = "58774e0245ec940492b91d48698991a14f82d178144753ba1c5d8942ae323875";
              sha256_unsigned = "4ff5ab78d7ba7556e7d39ad4a86fb9810e40938fed587ca08ebd285be61970f0";
              type = "combined-efi";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-armsr-armv7-generic-initramfs-kernel.bin";
              sha256 = "ccf697c78dcef16f6ba5f9da85c78253400fa57f97780b09f2d20c40a7190d3c";
              sha256_unsigned = "ccf697c78dcef16f6ba5f9da85c78253400fa57f97780b09f2d20c40a7190d3c";
              type = "kernel";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-armsr-armv7-generic-ext4-combined-efi.vmdk";
              sha256 = "f9b0adfe2b57aa49b42024b414ef2fcb0a61f04ef6f2d658ecada64683e6ea5e";
              sha256_unsigned = "f9b0adfe2b57aa49b42024b414ef2fcb0a61f04ef6f2d658ecada64683e6ea5e";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-armsr-armv7-generic-ext4-combined-efi.qcow2";
              sha256 = "6502b684c9538183a1429aee6296f01c429ac9848ccec8f8a1241a4d963f5dec";
              sha256_unsigned = "6502b684c9538183a1429aee6296f01c429ac9848ccec8f8a1241a4d963f5dec";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-armsr-armv7-generic-squashfs-combined-efi.vmdk";
              sha256 = "ba2221fa97281da7dd8f3ad3e6940b53991125575ab80eb8a035458d619bdc51";
              sha256_unsigned = "ba2221fa97281da7dd8f3ad3e6940b53991125575ab80eb8a035458d619bdc51";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-armsr-armv7-generic-squashfs-rootfs.img.gz";
              sha256 = "4275c9c23c6f85926e91442bf40441c707d9317ad3d4a97b2af84c775e1de4b9";
              sha256_unsigned = "4275c9c23c6f85926e91442bf40441c707d9317ad3d4a97b2af84c775e1de4b9";
              type = "rootfs";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-armsr-armv7-generic-squashfs-combined-efi.qcow2";
              sha256 = "dd8b373547881a0189e6e5121f149b0c719e9b6bc673124ba878952e045e2bbd";
              sha256_unsigned = "dd8b373547881a0189e6e5121f149b0c719e9b6bc673124ba878952e045e2bbd";
              type = "combined-efi";
            }
          ];
          supported_devices = [ ];
          titles = [
            {
              title = "Generic EFI Boot";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "armsr/armv7";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    armv8 = {
      arch_packages = "aarch64_generic";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "blkid"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "e2fsprogs"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
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
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "a7eafb055ecc4891236a188e564e21ff";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        generic = {
          device_packages = [
            "kmod-amazon-ena"
            "kmod-e1000e"
            "kmod-vmxnet3"
            "kmod-rtc-rx8025"
            "kmod-i2c-mux-pca954x"
            "kmod-gpio-pca953x"
            "partx-utils"
            "kmod-wdt-sp805"
            "kmod-mvneta"
            "kmod-mvpp2"
            "kmod-fsl-dpaa1-net"
            "kmod-fsl-dpaa2-net"
            "kmod-fsl-enetc-net"
            "kmod-dwmac-imx"
            "kmod-fsl-fec"
            "kmod-dwmac-rockchip"
            "kmod-dwmac-sun8i"
            "kmod-phy-aquantia"
            "kmod-phy-broadcom"
            "kmod-phy-marvell"
            "kmod-phy-marvell-10g"
            "kmod-sfp"
            "kmod-atlantic"
            "kmod-bcmgenet"
            "kmod-octeontx2-net"
            "kmod-renesas-net-avb"
            "kmod-phy-realtek"
            "kmod-phy-smsc"
            "kmod-thunderx-net"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-armsr-armv8-generic";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-armsr-armv8-generic-squashfs-rootfs.img.gz";
              sha256 = "1e1d94b32f5a9397778cc5d287c4f8cdbae7811bfc33ab65ccadc30856eda9d5";
              sha256_unsigned = "1e1d94b32f5a9397778cc5d287c4f8cdbae7811bfc33ab65ccadc30856eda9d5";
              type = "rootfs";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-armsr-armv8-generic-squashfs-combined-efi.qcow2";
              sha256 = "321b4a1704d30451176d509cf4abc9686eea2556b03e8c09422be3b04bc1557a";
              sha256_unsigned = "321b4a1704d30451176d509cf4abc9686eea2556b03e8c09422be3b04bc1557a";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-armsr-armv8-generic-ext4-combined-efi.img.gz";
              sha256 = "d27cc0dd1cf60cac8bd64c7bb2c18895196e4ac440b1165271d8102d36d61525";
              sha256_unsigned = "491e1b33be5e65af93f0f144bee97bfde93e2346ba3c6583f34cd2063061a793";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-armsr-armv8-generic-ext4-combined-efi.qcow2";
              sha256 = "36ca1feaec8fe109d73a6ea6f7708fc43fe9eee11ae4bfecddafae3488b2461e";
              sha256_unsigned = "36ca1feaec8fe109d73a6ea6f7708fc43fe9eee11ae4bfecddafae3488b2461e";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-armsr-armv8-generic-squashfs-combined-efi.img.gz";
              sha256 = "92cab7f6fda26d8023c5c31a742bc241cbeb366884117a2babbd7e3c344cf472";
              sha256_unsigned = "5eadb7e654f1eeefc393a19593627589fa7313599120bf3c21f3cca733f9cfda";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-armsr-armv8-generic-squashfs-combined-efi.vmdk";
              sha256 = "928cd35d810bd23f082af5e1dd187a5b16338f57bc5bc72beee31c051a30bac2";
              sha256_unsigned = "928cd35d810bd23f082af5e1dd187a5b16338f57bc5bc72beee31c051a30bac2";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-armsr-armv8-generic-ext4-combined-efi.vmdk";
              sha256 = "6fe64ce0b8a06d3c221a0f79ba227ecdf620abe3ad57b6c7b0547cbc1e184b08";
              sha256_unsigned = "6fe64ce0b8a06d3c221a0f79ba227ecdf620abe3ad57b6c7b0547cbc1e184b08";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-armsr-armv8-generic-ext4-rootfs.img.gz";
              sha256 = "57aa2647554c2e2fad9d6293921c31f4f8cc23d4aee1213e9c34fa66e6e6300a";
              sha256_unsigned = "57aa2647554c2e2fad9d6293921c31f4f8cc23d4aee1213e9c34fa66e6e6300a";
              type = "rootfs";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-armsr-armv8-generic-initramfs-kernel.bin";
              sha256 = "91ea3d9cd9a6bb3c3c2fb3f31216dd0a54cc86d0a071620661975773e557d25b";
              sha256_unsigned = "91ea3d9cd9a6bb3c3c2fb3f31216dd0a54cc86d0a071620661975773e557d25b";
              type = "kernel";
            }
          ];
          supported_devices = [ ];
          titles = [
            {
              title = "Generic EFI Boot";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "armsr/armv8";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
  at91 = {
    sam9x = {
      arch_packages = "arm_arm926ej-s";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-at91-udc"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-gadget-eth"
        "kmod-usb-ohci"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
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
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "4e86aa288c124f90927bba15ca6dfc5a";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        atmel_at91sam9263ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9263ek";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9263ek-ubifs-root.ubi";
              sha256 = "d8e4c98ee92b95db7609f3e35ce6892bbcbc3ff2072cd0f7cac8aedf46648d1f";
              sha256_unsigned = "d8e4c98ee92b95db7609f3e35ce6892bbcbc3ff2072cd0f7cac8aedf46648d1f";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9263ek-ext4-root.ubi";
              sha256 = "c06da77a98d4bef3936794919878c7376c71aefae610aa991c396c84ed081a84";
              sha256_unsigned = "c06da77a98d4bef3936794919878c7376c71aefae610aa991c396c84ed081a84";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9263ek-squashfs-root.ubi";
              sha256 = "d00a497f85c1ea9470e379ffcfe6cb06ecf7cca22f779c102bd557a9b915a147";
              sha256_unsigned = "d00a497f85c1ea9470e379ffcfe6cb06ecf7cca22f779c102bd557a9b915a147";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9263ek"
          ];
          titles = [
            {
              model = "AT91SAM9263-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g15ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9g15ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9g15ek-ext4-root.ubi";
              sha256 = "c06da77a98d4bef3936794919878c7376c71aefae610aa991c396c84ed081a84";
              sha256_unsigned = "c06da77a98d4bef3936794919878c7376c71aefae610aa991c396c84ed081a84";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9g15ek-squashfs-root.ubi";
              sha256 = "d00a497f85c1ea9470e379ffcfe6cb06ecf7cca22f779c102bd557a9b915a147";
              sha256_unsigned = "d00a497f85c1ea9470e379ffcfe6cb06ecf7cca22f779c102bd557a9b915a147";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9g15ek-ubifs-root.ubi";
              sha256 = "d8e4c98ee92b95db7609f3e35ce6892bbcbc3ff2072cd0f7cac8aedf46648d1f";
              sha256_unsigned = "d8e4c98ee92b95db7609f3e35ce6892bbcbc3ff2072cd0f7cac8aedf46648d1f";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g15ek"
          ];
          titles = [
            {
              model = "AT91SAM9G15-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g20ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9g20ek";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9g20ek-ubifs-root.ubi";
              sha256 = "d8e4c98ee92b95db7609f3e35ce6892bbcbc3ff2072cd0f7cac8aedf46648d1f";
              sha256_unsigned = "d8e4c98ee92b95db7609f3e35ce6892bbcbc3ff2072cd0f7cac8aedf46648d1f";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9g20ek-squashfs-root.ubi";
              sha256 = "d00a497f85c1ea9470e379ffcfe6cb06ecf7cca22f779c102bd557a9b915a147";
              sha256_unsigned = "d00a497f85c1ea9470e379ffcfe6cb06ecf7cca22f779c102bd557a9b915a147";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9g20ek-ext4-root.ubi";
              sha256 = "c06da77a98d4bef3936794919878c7376c71aefae610aa991c396c84ed081a84";
              sha256_unsigned = "c06da77a98d4bef3936794919878c7376c71aefae610aa991c396c84ed081a84";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g20ek"
          ];
          titles = [
            {
              model = "AT91SAM9G20-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g20ek-2mmc = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9g20ek-2mmc";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9g20ek-2mmc-squashfs-root.ubi";
              sha256 = "d00a497f85c1ea9470e379ffcfe6cb06ecf7cca22f779c102bd557a9b915a147";
              sha256_unsigned = "d00a497f85c1ea9470e379ffcfe6cb06ecf7cca22f779c102bd557a9b915a147";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9g20ek-2mmc-ubifs-root.ubi";
              sha256 = "d8e4c98ee92b95db7609f3e35ce6892bbcbc3ff2072cd0f7cac8aedf46648d1f";
              sha256_unsigned = "d8e4c98ee92b95db7609f3e35ce6892bbcbc3ff2072cd0f7cac8aedf46648d1f";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9g20ek-2mmc-ext4-root.ubi";
              sha256 = "c06da77a98d4bef3936794919878c7376c71aefae610aa991c396c84ed081a84";
              sha256_unsigned = "c06da77a98d4bef3936794919878c7376c71aefae610aa991c396c84ed081a84";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g20ek_2mmc"
          ];
          titles = [
            {
              model = "AT91SAM9G20-EK";
              variant = "2MMC";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g25ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9g25ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9g25ek-squashfs-root.ubi";
              sha256 = "d00a497f85c1ea9470e379ffcfe6cb06ecf7cca22f779c102bd557a9b915a147";
              sha256_unsigned = "d00a497f85c1ea9470e379ffcfe6cb06ecf7cca22f779c102bd557a9b915a147";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9g25ek-ubifs-root.ubi";
              sha256 = "d8e4c98ee92b95db7609f3e35ce6892bbcbc3ff2072cd0f7cac8aedf46648d1f";
              sha256_unsigned = "d8e4c98ee92b95db7609f3e35ce6892bbcbc3ff2072cd0f7cac8aedf46648d1f";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9g25ek-ext4-root.ubi";
              sha256 = "c06da77a98d4bef3936794919878c7376c71aefae610aa991c396c84ed081a84";
              sha256_unsigned = "c06da77a98d4bef3936794919878c7376c71aefae610aa991c396c84ed081a84";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g25ek"
          ];
          titles = [
            {
              model = "AT91SAM9G25-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g35ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9g35ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9g35ek-ext4-root.ubi";
              sha256 = "c06da77a98d4bef3936794919878c7376c71aefae610aa991c396c84ed081a84";
              sha256_unsigned = "c06da77a98d4bef3936794919878c7376c71aefae610aa991c396c84ed081a84";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9g35ek-ubifs-root.ubi";
              sha256 = "d8e4c98ee92b95db7609f3e35ce6892bbcbc3ff2072cd0f7cac8aedf46648d1f";
              sha256_unsigned = "d8e4c98ee92b95db7609f3e35ce6892bbcbc3ff2072cd0f7cac8aedf46648d1f";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9g35ek-squashfs-root.ubi";
              sha256 = "d00a497f85c1ea9470e379ffcfe6cb06ecf7cca22f779c102bd557a9b915a147";
              sha256_unsigned = "d00a497f85c1ea9470e379ffcfe6cb06ecf7cca22f779c102bd557a9b915a147";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g35ek"
          ];
          titles = [
            {
              model = "AT91SAM9G35-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9m10g45ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9m10g45ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9m10g45ek-squashfs-root.ubi";
              sha256 = "d00a497f85c1ea9470e379ffcfe6cb06ecf7cca22f779c102bd557a9b915a147";
              sha256_unsigned = "d00a497f85c1ea9470e379ffcfe6cb06ecf7cca22f779c102bd557a9b915a147";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9m10g45ek-ubifs-root.ubi";
              sha256 = "d8e4c98ee92b95db7609f3e35ce6892bbcbc3ff2072cd0f7cac8aedf46648d1f";
              sha256_unsigned = "d8e4c98ee92b95db7609f3e35ce6892bbcbc3ff2072cd0f7cac8aedf46648d1f";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9m10g45ek-ext4-root.ubi";
              sha256 = "c06da77a98d4bef3936794919878c7376c71aefae610aa991c396c84ed081a84";
              sha256_unsigned = "c06da77a98d4bef3936794919878c7376c71aefae610aa991c396c84ed081a84";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9m10g45ek"
          ];
          titles = [
            {
              model = "AT91SAM9M10G45-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9x25ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9x25ek";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9x25ek-ubifs-root.ubi";
              sha256 = "d8e4c98ee92b95db7609f3e35ce6892bbcbc3ff2072cd0f7cac8aedf46648d1f";
              sha256_unsigned = "d8e4c98ee92b95db7609f3e35ce6892bbcbc3ff2072cd0f7cac8aedf46648d1f";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9x25ek-ext4-sdcard.img.gz";
              sha256 = "e6f85f4939a7f2a38734927b2ee1350409634c5a028837668ee980d99753384b";
              sha256_unsigned = "e6f85f4939a7f2a38734927b2ee1350409634c5a028837668ee980d99753384b";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9x25ek-ext4-root.ubi";
              sha256 = "c06da77a98d4bef3936794919878c7376c71aefae610aa991c396c84ed081a84";
              sha256_unsigned = "c06da77a98d4bef3936794919878c7376c71aefae610aa991c396c84ed081a84";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9x25ek-squashfs-root.ubi";
              sha256 = "d00a497f85c1ea9470e379ffcfe6cb06ecf7cca22f779c102bd557a9b915a147";
              sha256_unsigned = "d00a497f85c1ea9470e379ffcfe6cb06ecf7cca22f779c102bd557a9b915a147";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9x25ek"
          ];
          titles = [
            {
              model = "AT91SAM9X25-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9x35ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9x35ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9x35ek-ext4-root.ubi";
              sha256 = "c06da77a98d4bef3936794919878c7376c71aefae610aa991c396c84ed081a84";
              sha256_unsigned = "c06da77a98d4bef3936794919878c7376c71aefae610aa991c396c84ed081a84";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9x35ek-ubifs-root.ubi";
              sha256 = "d8e4c98ee92b95db7609f3e35ce6892bbcbc3ff2072cd0f7cac8aedf46648d1f";
              sha256_unsigned = "d8e4c98ee92b95db7609f3e35ce6892bbcbc3ff2072cd0f7cac8aedf46648d1f";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9x35ek-squashfs-root.ubi";
              sha256 = "d00a497f85c1ea9470e379ffcfe6cb06ecf7cca22f779c102bd557a9b915a147";
              sha256_unsigned = "d00a497f85c1ea9470e379ffcfe6cb06ecf7cca22f779c102bd557a9b915a147";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-atmel_at91sam9x35ek-ext4-sdcard.img.gz";
              sha256 = "14c98d8d2dacea7eba880012d4f7e1308a08eac401ce5ff417df1393895751d5";
              sha256_unsigned = "14c98d8d2dacea7eba880012d4f7e1308a08eac401ce5ff417df1393895751d5";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "atmel,at91sam9x35ek"
          ];
          titles = [
            {
              model = "AT91SAM9X35-EK";
              vendor = "Atmel";
            }
          ];
        };
        calamp_lmu5000 = {
          device_packages = [
            "kmod-rtc-pcf2123"
            "kmod-usb-acm"
            "kmod-usb-serial-option"
            "kmod-usb-serial-sierrawireless"
            "kmod-pinctrl-mcp23s08-spi"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sam9x-calamp_lmu5000";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-calamp_lmu5000-squashfs-factory.bin";
              sha256 = "ee5ace64508ea988476bd2e56242030b2a64a7d20551d20027be633e648fca35";
              sha256_unsigned = "ee5ace64508ea988476bd2e56242030b2a64a7d20551d20027be633e648fca35";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-calamp_lmu5000-ext4-factory.bin";
              sha256 = "d3bc413281464f538e1ad257ee03e357e329d08a4f41201ce4e5ecccac75b9b6";
              sha256_unsigned = "d3bc413281464f538e1ad257ee03e357e329d08a4f41201ce4e5ecccac75b9b6";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-calamp_lmu5000-ubifs-factory.bin";
              sha256 = "fadf05525533fa438b3fdfe6677ce93c86ff69ab2ee44324f024bf8fc259e74b";
              sha256_unsigned = "fadf05525533fa438b3fdfe6677ce93c86ff69ab2ee44324f024bf8fc259e74b";
              type = "factory";
            }
          ];
          supported_devices = [
            "calamp,lmu5000"
          ];
          titles = [
            {
              model = "LMU5000";
              vendor = "CalAmp";
            }
          ];
        };
        calao_tny-a9260 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_tny-a9260";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_tny-a9260-squashfs-factory.bin";
              sha256 = "7dfd1db92956f3a75d86db7efd29b4f6ac2caae480c83156aa974751b20b700a";
              sha256_unsigned = "7dfd1db92956f3a75d86db7efd29b4f6ac2caae480c83156aa974751b20b700a";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_tny-a9260-ubifs-factory.bin";
              sha256 = "d4f3f023a298e579007a656ff34217a370e1f8a953d815a1a314553cc26241b7";
              sha256_unsigned = "d4f3f023a298e579007a656ff34217a370e1f8a953d815a1a314553cc26241b7";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_tny-a9260-ext4-factory.bin";
              sha256 = "16ea11876900f909799950e69829f2234b31baae8f7beb51f3b1825103876d0d";
              sha256_unsigned = "16ea11876900f909799950e69829f2234b31baae8f7beb51f3b1825103876d0d";
              type = "factory";
            }
          ];
          supported_devices = [
            "calao,tny-a9260"
          ];
          titles = [
            {
              model = "TNY A9260";
              vendor = "Calao";
            }
          ];
        };
        calao_tny-a9263 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_tny-a9263";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_tny-a9263-squashfs-factory.bin";
              sha256 = "acf08bc1d5c737f0b0e474d3f39b699e38e96a76029f7941a05da485a1406270";
              sha256_unsigned = "acf08bc1d5c737f0b0e474d3f39b699e38e96a76029f7941a05da485a1406270";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_tny-a9263-ubifs-factory.bin";
              sha256 = "4beed8d8d5082e3eaac6abb0ac81d57f4a6acf4c93c713404c707830e8d0c811";
              sha256_unsigned = "4beed8d8d5082e3eaac6abb0ac81d57f4a6acf4c93c713404c707830e8d0c811";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_tny-a9263-ext4-factory.bin";
              sha256 = "4647a9f2c0d1566641441ad375676683e748d71d517fc13abfe2e405d7bd1a13";
              sha256_unsigned = "4647a9f2c0d1566641441ad375676683e748d71d517fc13abfe2e405d7bd1a13";
              type = "factory";
            }
          ];
          supported_devices = [
            "atmel,tny-a9263"
          ];
          titles = [
            {
              model = "TNY A9263";
              vendor = "Calao";
            }
          ];
        };
        calao_tny-a9g20 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_tny-a9g20";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_tny-a9g20-squashfs-factory.bin";
              sha256 = "8b1f6345b534231d840e53d42e6c604e7bb562dc3b80759e73b5dc200cbda6e7";
              sha256_unsigned = "8b1f6345b534231d840e53d42e6c604e7bb562dc3b80759e73b5dc200cbda6e7";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_tny-a9g20-ubifs-factory.bin";
              sha256 = "e3558a248a13f32465385f29e7520216a89228d4b6e847e53f24fe4579a990aa";
              sha256_unsigned = "e3558a248a13f32465385f29e7520216a89228d4b6e847e53f24fe4579a990aa";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_tny-a9g20-ext4-factory.bin";
              sha256 = "c15ce2ebe4d6157cf2d24efd79c2b2d4ac1eedd9257df96ef48a1f527cfa6ac6";
              sha256_unsigned = "c15ce2ebe4d6157cf2d24efd79c2b2d4ac1eedd9257df96ef48a1f527cfa6ac6";
              type = "factory";
            }
          ];
          supported_devices = [
            "calao,tny-a9g20"
          ];
          titles = [
            {
              model = "TNY A9G20";
              vendor = "Calao";
            }
          ];
        };
        calao_usb-a9260 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_usb-a9260";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_usb-a9260-squashfs-factory.bin";
              sha256 = "3ae8e3b65627259a4c4f6483c785802a6cebb04e98dc028c99c7e14efd665f96";
              sha256_unsigned = "3ae8e3b65627259a4c4f6483c785802a6cebb04e98dc028c99c7e14efd665f96";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_usb-a9260-ext4-factory.bin";
              sha256 = "30747a2bbcf285e6803b287dfd66bc7d8bbaf38c4d920744ed4eec5d292f8f42";
              sha256_unsigned = "30747a2bbcf285e6803b287dfd66bc7d8bbaf38c4d920744ed4eec5d292f8f42";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_usb-a9260-ubifs-factory.bin";
              sha256 = "9566c47174a37c1c8cc35c2befc4912ab275b198acb9432f1820bc82dcc901b0";
              sha256_unsigned = "9566c47174a37c1c8cc35c2befc4912ab275b198acb9432f1820bc82dcc901b0";
              type = "factory";
            }
          ];
          supported_devices = [
            "calao,usb-a9260"
          ];
          titles = [
            {
              model = "USB A9260";
              vendor = "Calao";
            }
          ];
        };
        calao_usb-a9263 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_usb-a9263";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_usb-a9263-ext4-factory.bin";
              sha256 = "61213d5daec597d2933600688b84c381191b77954c46f47935096f69b97894aa";
              sha256_unsigned = "61213d5daec597d2933600688b84c381191b77954c46f47935096f69b97894aa";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_usb-a9263-squashfs-factory.bin";
              sha256 = "eeb7057b433c8ac6237bb3f538fa6130463144874df0fe8e3b37131e6ea2bad3";
              sha256_unsigned = "eeb7057b433c8ac6237bb3f538fa6130463144874df0fe8e3b37131e6ea2bad3";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_usb-a9263-ubifs-factory.bin";
              sha256 = "1d076a9a9c3cacf1ed0a50d3924172bd86e9eefe7e9a1e93f109e818b118d5bc";
              sha256_unsigned = "1d076a9a9c3cacf1ed0a50d3924172bd86e9eefe7e9a1e93f109e818b118d5bc";
              type = "factory";
            }
          ];
          supported_devices = [
            "atmel,usb-a9263"
          ];
          titles = [
            {
              model = "USB A9263";
              vendor = "Calao";
            }
          ];
        };
        calao_usb-a9g20 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_usb-a9g20";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_usb-a9g20-squashfs-factory.bin";
              sha256 = "8a8a1375ff521f756358184a142d9168565423f3f9a76b669bf04d7e2cc14d7f";
              sha256_unsigned = "8a8a1375ff521f756358184a142d9168565423f3f9a76b669bf04d7e2cc14d7f";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_usb-a9g20-ubifs-factory.bin";
              sha256 = "2c67fd231d0e1f9c9bfa0e23f9ccf1bfcc733e8f2d0075b384f4b7f81dce753b";
              sha256_unsigned = "2c67fd231d0e1f9c9bfa0e23f9ccf1bfcc733e8f2d0075b384f4b7f81dce753b";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-calao_usb-a9g20-ext4-factory.bin";
              sha256 = "16955ce955d2964a9960ff15744e6fdc695bfd7b6e8145e89c0ac7cb66d73d04";
              sha256_unsigned = "16955ce955d2964a9960ff15744e6fdc695bfd7b6e8145e89c0ac7cb66d73d04";
              type = "factory";
            }
          ];
          supported_devices = [
            "calao,usb-a9g20"
          ];
          titles = [
            {
              model = "USB A9G20";
              vendor = "Calao";
            }
          ];
        };
        egnite_ethernut5 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sam9x-egnite_ethernut5";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-egnite_ethernut5-squashfs-root.ubi";
              sha256 = "6a9f63987ae403e6e21f9a7b2fbdf9eb2cfa35be2eb40160e346cf9133aca176";
              sha256_unsigned = "6a9f63987ae403e6e21f9a7b2fbdf9eb2cfa35be2eb40160e346cf9133aca176";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-egnite_ethernut5-ext4-root.ubi";
              sha256 = "1f279404f07efad0e31ae0ea3e001fe3dd79c32a690909432975607322b22491";
              sha256_unsigned = "1f279404f07efad0e31ae0ea3e001fe3dd79c32a690909432975607322b22491";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-egnite_ethernut5-ubifs-root.ubi";
              sha256 = "f227459f61cec838663547a5c2a1bcf45052ae830be875c27160b1a2a20d32f7";
              sha256_unsigned = "f227459f61cec838663547a5c2a1bcf45052ae830be875c27160b1a2a20d32f7";
              type = "root";
            }
          ];
          supported_devices = [
            "egnite,ethernut5"
          ];
          titles = [
            {
              model = "Ethernut 5";
              vendor = "egnite";
            }
          ];
        };
        laird_wb45n = {
          device_packages = [
            "kmod-mmc-at91"
            "kmod-ath6kl-sdio"
            "ath6k-firmware"
            "kmod-usb-storage"
            "kmod-fs-vfat"
            "kmod-fs-msdos"
            "kmod-leds-gpio"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sam9x-laird_wb45n";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-laird_wb45n-ext4-root.ubi";
              sha256 = "e67e343d9af2e233a13348eb5ec09ebebb2489454d54db7006131f12461f578d";
              sha256_unsigned = "e67e343d9af2e233a13348eb5ec09ebebb2489454d54db7006131f12461f578d";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-laird_wb45n-ubifs-root.ubi";
              sha256 = "f43cf49c4113519ef630634cca02f50dfd47c9d6b5a702488c08df42cdae9880";
              sha256_unsigned = "f43cf49c4113519ef630634cca02f50dfd47c9d6b5a702488c08df42cdae9880";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-laird_wb45n-squashfs-root.ubi";
              sha256 = "37fb873b2a8321f41ef2735e6c8adee0ce94014b69b6f270b784da04e498112b";
              sha256_unsigned = "37fb873b2a8321f41ef2735e6c8adee0ce94014b69b6f270b784da04e498112b";
              type = "root";
            }
          ];
          supported_devices = [
            "laird,wb45n"
          ];
          titles = [
            {
              model = "WB45N";
              vendor = "Laird";
            }
          ];
        };
        microchip_sam9x60ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sam9x-microchip_sam9x60ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-microchip_sam9x60ek-ext4-root.ubi";
              sha256 = "c06da77a98d4bef3936794919878c7376c71aefae610aa991c396c84ed081a84";
              sha256_unsigned = "c06da77a98d4bef3936794919878c7376c71aefae610aa991c396c84ed081a84";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-microchip_sam9x60ek-ubifs-root.ubi";
              sha256 = "d8e4c98ee92b95db7609f3e35ce6892bbcbc3ff2072cd0f7cac8aedf46648d1f";
              sha256_unsigned = "d8e4c98ee92b95db7609f3e35ce6892bbcbc3ff2072cd0f7cac8aedf46648d1f";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-microchip_sam9x60ek-ext4-sdcard.img.gz";
              sha256 = "048c21c9c048f8965d931be5795cd009ca9af68fd7ec3ec9214e9b2855bb3113";
              sha256_unsigned = "048c21c9c048f8965d931be5795cd009ca9af68fd7ec3ec9214e9b2855bb3113";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sam9x-microchip_sam9x60ek-squashfs-root.ubi";
              sha256 = "d00a497f85c1ea9470e379ffcfe6cb06ecf7cca22f779c102bd557a9b915a147";
              sha256_unsigned = "d00a497f85c1ea9470e379ffcfe6cb06ecf7cca22f779c102bd557a9b915a147";
              type = "root";
            }
          ];
          supported_devices = [
            "microchip,sam9x60ek"
          ];
          titles = [
            {
              model = "SAM9X60-EK";
              vendor = "Microchip";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "at91/sam9x";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    sama5 = {
      arch_packages = "arm_cortex-a5_vfpv4";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-at91-udc"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-gadget-eth"
        "kmod-usb-ohci"
        "kmod-usb2"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
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
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "ab9c46841c9174acda08459d561db521";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        microchip_sama5d2-icp = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d2-icp";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d2-icp-ext4-root.ubi";
              sha256 = "3795c47ced9a2f48c3a8cc3cb8264b6530b9c052ce952451e4755c593b464171";
              sha256_unsigned = "3795c47ced9a2f48c3a8cc3cb8264b6530b9c052ce952451e4755c593b464171";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d2-icp-ubifs-root.ubi";
              sha256 = "14341ccdc892706e834140e319e803ce3f5e046b76a7bab14269d8ee1f2196af";
              sha256_unsigned = "14341ccdc892706e834140e319e803ce3f5e046b76a7bab14269d8ee1f2196af";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d2-icp-squashfs-root.ubi";
              sha256 = "1e27fc78844cfadd004aa6bcc9ea801c11d74d56c31eb89e2f4d5bf35ac27037";
              sha256_unsigned = "1e27fc78844cfadd004aa6bcc9ea801c11d74d56c31eb89e2f4d5bf35ac27037";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d2-icp-ext4-sdcard.img.gz";
              sha256 = "27b5d2a90eeb1c4b11e86562bd3fbc2010da3b75223422b381842ffb547fcb12";
              sha256_unsigned = "27b5d2a90eeb1c4b11e86562bd3fbc2010da3b75223422b381842ffb547fcb12";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "microchip,sama5d2-icp"
          ];
          titles = [
            {
              model = "SAMA5D2 ICP";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d2-ptc-ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d2-ptc-ek";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d2-ptc-ek-ubifs-root.ubi";
              sha256 = "14341ccdc892706e834140e319e803ce3f5e046b76a7bab14269d8ee1f2196af";
              sha256_unsigned = "14341ccdc892706e834140e319e803ce3f5e046b76a7bab14269d8ee1f2196af";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d2-ptc-ek-squashfs-root.ubi";
              sha256 = "1e27fc78844cfadd004aa6bcc9ea801c11d74d56c31eb89e2f4d5bf35ac27037";
              sha256_unsigned = "1e27fc78844cfadd004aa6bcc9ea801c11d74d56c31eb89e2f4d5bf35ac27037";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d2-ptc-ek-ext4-root.ubi";
              sha256 = "3795c47ced9a2f48c3a8cc3cb8264b6530b9c052ce952451e4755c593b464171";
              sha256_unsigned = "3795c47ced9a2f48c3a8cc3cb8264b6530b9c052ce952451e4755c593b464171";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d2-ptc-ek-ext4-sdcard.img.gz";
              sha256 = "f78dd4de155301b2312b3339e3f883ee102f01ad3f994486b2d49cdccdfb0b88";
              sha256_unsigned = "f78dd4de155301b2312b3339e3f883ee102f01ad3f994486b2d49cdccdfb0b88";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "atmel,sama5d2-ptc_ek"
          ];
          titles = [
            {
              model = "SAMA5D2 PTC Ek";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d2-xplained = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d2-xplained";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d2-xplained-ubifs-root.ubi";
              sha256 = "14341ccdc892706e834140e319e803ce3f5e046b76a7bab14269d8ee1f2196af";
              sha256_unsigned = "14341ccdc892706e834140e319e803ce3f5e046b76a7bab14269d8ee1f2196af";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d2-xplained-squashfs-root.ubi";
              sha256 = "1e27fc78844cfadd004aa6bcc9ea801c11d74d56c31eb89e2f4d5bf35ac27037";
              sha256_unsigned = "1e27fc78844cfadd004aa6bcc9ea801c11d74d56c31eb89e2f4d5bf35ac27037";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d2-xplained-ext4-root.ubi";
              sha256 = "3795c47ced9a2f48c3a8cc3cb8264b6530b9c052ce952451e4755c593b464171";
              sha256_unsigned = "3795c47ced9a2f48c3a8cc3cb8264b6530b9c052ce952451e4755c593b464171";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d2-xplained-ext4-sdcard.img.gz";
              sha256 = "8551522699ab41be9ef0d488f57c7ff72b801634e915ef2c04110e1f150cca3d";
              sha256_unsigned = "8551522699ab41be9ef0d488f57c7ff72b801634e915ef2c04110e1f150cca3d";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "atmel,sama5d2-xplained"
          ];
          titles = [
            {
              model = "SAMA5D2 Xplained";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d27-som1-ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d27-som1-ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d27-som1-ek-ext4-root.ubi";
              sha256 = "3795c47ced9a2f48c3a8cc3cb8264b6530b9c052ce952451e4755c593b464171";
              sha256_unsigned = "3795c47ced9a2f48c3a8cc3cb8264b6530b9c052ce952451e4755c593b464171";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d27-som1-ek-ubifs-root.ubi";
              sha256 = "14341ccdc892706e834140e319e803ce3f5e046b76a7bab14269d8ee1f2196af";
              sha256_unsigned = "14341ccdc892706e834140e319e803ce3f5e046b76a7bab14269d8ee1f2196af";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d27-som1-ek-squashfs-root.ubi";
              sha256 = "1e27fc78844cfadd004aa6bcc9ea801c11d74d56c31eb89e2f4d5bf35ac27037";
              sha256_unsigned = "1e27fc78844cfadd004aa6bcc9ea801c11d74d56c31eb89e2f4d5bf35ac27037";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d27-som1-ek-ext4-sdcard.img.gz";
              sha256 = "6c2902d0f78e1b2cf652fda4c35b1e2d1b980c35597a0474b687d684395cba4f";
              sha256_unsigned = "6c2902d0f78e1b2cf652fda4c35b1e2d1b980c35597a0474b687d684395cba4f";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "atmel,sama5d27-som1-ek"
          ];
          titles = [
            {
              model = "SAMA5D27 SOM1 Ek";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d27-wlsom1-ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d27-wlsom1-ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d27-wlsom1-ek-ext4-root.ubi";
              sha256 = "3795c47ced9a2f48c3a8cc3cb8264b6530b9c052ce952451e4755c593b464171";
              sha256_unsigned = "3795c47ced9a2f48c3a8cc3cb8264b6530b9c052ce952451e4755c593b464171";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d27-wlsom1-ek-ext4-sdcard.img.gz";
              sha256 = "b5915079a4a18202bc8c79ebdb1adb632cdcea7f321badee4d07a917976749b3";
              sha256_unsigned = "b5915079a4a18202bc8c79ebdb1adb632cdcea7f321badee4d07a917976749b3";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d27-wlsom1-ek-squashfs-root.ubi";
              sha256 = "1e27fc78844cfadd004aa6bcc9ea801c11d74d56c31eb89e2f4d5bf35ac27037";
              sha256_unsigned = "1e27fc78844cfadd004aa6bcc9ea801c11d74d56c31eb89e2f4d5bf35ac27037";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d27-wlsom1-ek-ubifs-root.ubi";
              sha256 = "14341ccdc892706e834140e319e803ce3f5e046b76a7bab14269d8ee1f2196af";
              sha256_unsigned = "14341ccdc892706e834140e319e803ce3f5e046b76a7bab14269d8ee1f2196af";
              type = "root";
            }
          ];
          supported_devices = [
            "microchip,sama5d27-wlsom1-ek"
          ];
          titles = [
            {
              model = "SAMA5D27 WSOM1 Ek";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d3-xplained = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d3-xplained";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d3-xplained-ubifs-root.ubi";
              sha256 = "14341ccdc892706e834140e319e803ce3f5e046b76a7bab14269d8ee1f2196af";
              sha256_unsigned = "14341ccdc892706e834140e319e803ce3f5e046b76a7bab14269d8ee1f2196af";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d3-xplained-ext4-sdcard.img.gz";
              sha256 = "fbe04ec3d83ad2a2ccdd739894311ab1e75828e758aefd48825cd369daada7df";
              sha256_unsigned = "fbe04ec3d83ad2a2ccdd739894311ab1e75828e758aefd48825cd369daada7df";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d3-xplained-squashfs-root.ubi";
              sha256 = "1e27fc78844cfadd004aa6bcc9ea801c11d74d56c31eb89e2f4d5bf35ac27037";
              sha256_unsigned = "1e27fc78844cfadd004aa6bcc9ea801c11d74d56c31eb89e2f4d5bf35ac27037";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d3-xplained-ext4-root.ubi";
              sha256 = "3795c47ced9a2f48c3a8cc3cb8264b6530b9c052ce952451e4755c593b464171";
              sha256_unsigned = "3795c47ced9a2f48c3a8cc3cb8264b6530b9c052ce952451e4755c593b464171";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,sama5d3-xplained"
          ];
          titles = [
            {
              model = "SAMA5D3 Xplained";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d4-xplained = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d4-xplained";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d4-xplained-ext4-sdcard.img.gz";
              sha256 = "24d7cb6da41a2152f05d036ac6fb1df5eadb0de2465d52c431f25781ebfed54e";
              sha256_unsigned = "24d7cb6da41a2152f05d036ac6fb1df5eadb0de2465d52c431f25781ebfed54e";
              type = "sdcard";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d4-xplained-ubifs-root.ubi";
              sha256 = "4d16d581765620c9783bc2f8bbcbd7b8684f2120b8d484dd833b25ad9dad65fd";
              sha256_unsigned = "4d16d581765620c9783bc2f8bbcbd7b8684f2120b8d484dd833b25ad9dad65fd";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d4-xplained-squashfs-root.ubi";
              sha256 = "c26660cf18b447d8435be862d7cc66ca9ca60ea7854ea4d473b1ee9495505944";
              sha256_unsigned = "c26660cf18b447d8435be862d7cc66ca9ca60ea7854ea4d473b1ee9495505944";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sama5-microchip_sama5d4-xplained-ext4-root.ubi";
              sha256 = "a8c193da5c78507a4bde8c31db9da64fadc7e76f0e7a524bf288dbe3be981ece";
              sha256_unsigned = "a8c193da5c78507a4bde8c31db9da64fadc7e76f0e7a524bf288dbe3be981ece";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,sama5d4-xplained"
          ];
          titles = [
            {
              model = "SAMA5D4 Xplained";
              vendor = "Microchip";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "at91/sama5";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    sama7 = {
      arch_packages = "arm_cortex-a7_vfpv4";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-at91-udc"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-gadget-eth"
        "kmod-usb-ohci"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
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
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "0439f1084d6ad1a4b38f6f42f590b74b";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        microchip_sama7g5-ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-at91-sama7-microchip_sama7g5-ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-at91-sama7-microchip_sama7g5-ek-squashfs-root.ubi";
              sha256 = "1e0396d7fc250753351f6d568ff7fe1873024b340e72d4a208617f0634d9a299";
              sha256_unsigned = "1e0396d7fc250753351f6d568ff7fe1873024b340e72d4a208617f0634d9a299";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc4-at91-sama7-microchip_sama7g5-ek-ubifs-root.ubi";
              sha256 = "a3af3cd63fa3d056da7d27ca7301fc460561d285da8c3e611829cc11f1616087";
              sha256_unsigned = "a3af3cd63fa3d056da7d27ca7301fc460561d285da8c3e611829cc11f1616087";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sama7-microchip_sama7g5-ek-ext4-root.ubi";
              sha256 = "72ef7dab520f959847564c85a6b44499a4134d998212c52af6aec576e2268336";
              sha256_unsigned = "72ef7dab520f959847564c85a6b44499a4134d998212c52af6aec576e2268336";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-at91-sama7-microchip_sama7g5-ek-ext4-sdcard.img.gz";
              sha256 = "ad210ce741baa167807c5e51df80416da6e8b2e264a512b9e601857c73deaebe";
              sha256_unsigned = "ad210ce741baa167807c5e51df80416da6e8b2e264a512b9e601857c73deaebe";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "microchip,sama7g5ek"
          ];
          titles = [
            {
              model = "SAMA7G5-EK";
              vendor = "Microchip";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "at91/sama7";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
  ath79 = {
    mikrotik = {
      arch_packages = "mips_24kc";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-ath9k"
        "kmod-gpio-button-hotplug"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
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
        "ppp-mod-pppoe"
        "procd-ujail"
        "swconfig"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
        "yafut"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "bf7ec5c1be2710509694c44d956f3cd1";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        mikrotik_routerboard-493g = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-493g";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-493g-squashfs-sysupgrade.bin";
              sha256 = "c066eb3d17d596e2479aa03d9fef0e3a72209e058586a13598e6bce653a7b19c";
              sha256_unsigned = "a1a44c1b200615d59a5bb778e482d227e4b428aa3093015215d1222d43fc1953";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-493g-initramfs-kernel.bin";
              sha256 = "bd94ae2f5541097ce773f0f2491fbffe6e23bbbeacd2a3ac5ea2ac079fc5f08f";
              sha256_unsigned = "bd94ae2f5541097ce773f0f2491fbffe6e23bbbeacd2a3ac5ea2ac079fc5f08f";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-493g"
            "rb-493g"
          ];
          titles = [
            {
              model = "RouterBOARD 493G";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-750-r2 = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-750-r2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-750-r2-squashfs-sysupgrade.bin";
              sha256 = "61c6b61917967f3b77929f101e7bf03a05206959cdc0796d8244b5da3c2d4c55";
              sha256_unsigned = "514f125b465e8b3d51edd4efb3c2f998a9d467f281c4992f92dc8c8a622170c8";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-750-r2-initramfs-kernel.bin";
              sha256 = "a7ad3b196314ae249a0d4d43bc681faaba166a2982a136719f6ed4d4e96283aa";
              sha256_unsigned = "a7ad3b196314ae249a0d4d43bc681faaba166a2982a136719f6ed4d4e96283aa";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-750-r2"
            "rb-750-r2"
          ];
          titles = [
            {
              model = "RouterBOARD 750 r2 (hEX lite)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-911-lite = {
          device_packages = [
            "-yafut"
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-911-lite";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-911-lite-squashfs-sysupgrade.bin";
              sha256 = "5c6301718e1917f18349dbc1b119bd3dbca0be1ce4478d57ccf487599689e5f1";
              sha256_unsigned = "f87e520086cea96752443262909ccd511ec1eb652ef22e156a264e964f9d8b64";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-911-lite-initramfs-kernel.bin";
              sha256 = "bd2106c6d967fb8be417fd4248678aa8e8e4ce4cbfea8ad420050e2c5a6dee4b";
              sha256_unsigned = "bd2106c6d967fb8be417fd4248678aa8e8e4ce4cbfea8ad420050e2c5a6dee4b";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-911-lite"
            "rb-911-2hn"
            "rb-911-5hn"
          ];
          titles = [
            {
              model = "RouterBOARD 911 Lite2/Lite5 (2Hn/5Hn)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-911g-5hpacd = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-911g-5hpacd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-911g-5hpacd-squashfs-sysupgrade.bin";
              sha256 = "7017b9cdbf7c58d494ba1887abab5f1ca1220e6f45cef80d9b70208cdcfd439c";
              sha256_unsigned = "e469f12dde7e5c03a5ef29e88265b84279af23821d5dcc99d6c012fcc6ca54b2";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-911g-5hpacd-initramfs-kernel.bin";
              sha256 = "908e673f243604113436a8125994c7935069f47ad7c6a19f5fe43f2e5359e692";
              sha256_unsigned = "908e673f243604113436a8125994c7935069f47ad7c6a19f5fe43f2e5359e692";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-911g-5hpacd"
            "rb-921gs-5hpacd-r2"
          ];
          titles = [
            {
              model = "RouterBOARD 911G-5HPacD";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-911g-xhpnd = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-911g-xhpnd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-911g-xhpnd-squashfs-sysupgrade.bin";
              sha256 = "a2f6a571e02edd38a4557295059cbdb2ab9e3e39e168ed8f883086e4729e409f";
              sha256_unsigned = "8265e71a59986781ee42495ce6550e38d773d2f5d7af0c94fa395372e1455aa6";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-911g-xhpnd-initramfs-kernel.bin";
              sha256 = "186eb06ecc17d0fa37d1854e19c4736facc6c7c1b42622e3ede154cbbca2f02c";
              sha256_unsigned = "186eb06ecc17d0fa37d1854e19c4736facc6c7c1b42622e3ede154cbbca2f02c";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-911g-xhpnd"
            "rb-912uag-2hpnd"
          ];
          titles = [
            {
              model = "RouterBOARD 911G-2HPnD";
              vendor = "MikroTik";
            }
            {
              model = "RouterBOARD 911G-5HPnD";
              vendor = "Mikrotik";
            }
          ];
        };
        mikrotik_routerboard-912uag-2hpnd = {
          device_packages = [
            "kmod-usb-ehci"
            "kmod-usb2"
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-912uag-2hpnd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-912uag-2hpnd-squashfs-sysupgrade.bin";
              sha256 = "1571631fa0416e8f22588ad9e86d6ccd252c29b22e9c0a6f414efe6b4fca2b07";
              sha256_unsigned = "144515a9e43db3b2edafa85479b9b6b3d5c11793364f0ca93dcc5d9c9acd946f";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-912uag-2hpnd-initramfs-kernel.bin";
              sha256 = "d038e71b33b43b73c317834195a68be39ed4f087cecfa38bcf1d4cbe436f2d44";
              sha256_unsigned = "d038e71b33b43b73c317834195a68be39ed4f087cecfa38bcf1d4cbe436f2d44";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-912uag-2hpnd"
            "rb-912uag-2hpnd"
          ];
          titles = [
            {
              model = "RouterBOARD 912UAG-2HPnD";
              vendor = "MikroTik";
            }
            {
              model = "RouterBOARD 912UAG-5HPnD";
              vendor = "Mikrotik";
            }
          ];
        };
        mikrotik_routerboard-921gs-5hpacd-15s = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-i2c-gpio"
            "kmod-sfp"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-921gs-5hpacd-15s";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-921gs-5hpacd-15s-initramfs-kernel.bin";
              sha256 = "dee8692ffed2ef732cfbf1d1b3aceaf71ab7999f312e3cf4dfa514c615b7353e";
              sha256_unsigned = "dee8692ffed2ef732cfbf1d1b3aceaf71ab7999f312e3cf4dfa514c615b7353e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-921gs-5hpacd-15s-squashfs-sysupgrade.bin";
              sha256 = "25891343c62b4a996a1fe8080a02d26633e1adcb92794b942f04bddf867c265e";
              sha256_unsigned = "b64b213327904c1bee5285b6213a3a3e82ed8ed9b46607afc6f5723ee1b59891";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-921gs-5hpacd-15s"
            "rb-921gs-5hpacd-r2"
          ];
          titles = [
            {
              model = "RouterBOARD 921GS-5HPacD-15s (mANTBox 15s)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-922uags-5hpacd = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-usb2"
            "kmod-i2c-gpio"
            "kmod-sfp"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-922uags-5hpacd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-922uags-5hpacd-squashfs-sysupgrade.bin";
              sha256 = "e634adfeb85a11df953471c5dae5a1990639961ee6f0e557c6cb82edbc919c5e";
              sha256_unsigned = "bfd04642d495adc384b94efd36724c64a0756cff23fabddf8b2abd1b223dce1a";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-922uags-5hpacd-initramfs-kernel.bin";
              sha256 = "4af6e3e04ad57af8c1f1a2213a0b5116c38e1df4660fd879935af5894fd6cc3d";
              sha256_unsigned = "4af6e3e04ad57af8c1f1a2213a0b5116c38e1df4660fd879935af5894fd6cc3d";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-922uags-5hpacd"
            "rb-922uags-5hpacd"
          ];
          titles = [
            {
              model = "RouterBOARD 922UAGS-5HPacD";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-951g-2hnd = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-951g-2hnd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-951g-2hnd-initramfs-kernel.bin";
              sha256 = "48cb996e435079434311aa95f9cfde95b94522fbfdc7202976d4c02f9d7f1533";
              sha256_unsigned = "48cb996e435079434311aa95f9cfde95b94522fbfdc7202976d4c02f9d7f1533";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-951g-2hnd-squashfs-sysupgrade.bin";
              sha256 = "b20321b5e69064a4c64779e64c0bf0c0a25e52aadea992ca2ab13a5ad83b0957";
              sha256_unsigned = "beecf8e42acd98ff27dafb4956458c46c9505f9002c8ab8bfcc16cce0a6a50c0";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-951g-2hnd"
            "rb-951g-2hnd"
          ];
          titles = [
            {
              model = "RouterBOARD 951G-2HnD";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-951ui-2hnd = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-951ui-2hnd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-951ui-2hnd-squashfs-sysupgrade.bin";
              sha256 = "52e7e9405b3de96c25ad983607814d5376bd3cc90732d6aadc5fc3c493a99004";
              sha256_unsigned = "326399e723d3016c1e7fd61417c5abc59b1ee6b4cd6170d86035692d96e03d0b";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-951ui-2hnd-initramfs-kernel.bin";
              sha256 = "17c5d6f67d9a0aa05ef796f9616586fb2f2f36f28141cb706d7f421e8d17107a";
              sha256_unsigned = "17c5d6f67d9a0aa05ef796f9616586fb2f2f36f28141cb706d7f421e8d17107a";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-951ui-2hnd"
            "rb-951ui-2hnd"
          ];
          titles = [
            {
              model = "RouterBOARD 951Ui-2HnD";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-951ui-2nd = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-951ui-2nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-951ui-2nd-initramfs-kernel.bin";
              sha256 = "fe38cd9325e0e29613533e64fa223c088e2fc87c11b5dd589cd7652481fc11dd";
              sha256_unsigned = "fe38cd9325e0e29613533e64fa223c088e2fc87c11b5dd589cd7652481fc11dd";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-951ui-2nd-squashfs-sysupgrade.bin";
              sha256 = "d7c1c769d72a30190b2f48c41a577a45b4ac4357500a83c8d0f41f26a1b8bf1d";
              sha256_unsigned = "acc9d9a7cdef206dde36ecec951f291d1d632c01dbd6a4a7e025c5b61acbd7a3";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-951ui-2nd"
            "rb-951ui-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD 951Ui-2nD (hAP)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-952ui-5ac2nd = {
          device_packages = [
            "-yafut"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca9887-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-952ui-5ac2nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-952ui-5ac2nd-initramfs-kernel.bin";
              sha256 = "b185ea1ee996abc16c4455bc7f3c4b554d2ded24b2d956f670585033adef4740";
              sha256_unsigned = "b185ea1ee996abc16c4455bc7f3c4b554d2ded24b2d956f670585033adef4740";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-952ui-5ac2nd-squashfs-sysupgrade.bin";
              sha256 = "31b392c3b54d4ff2cb4fd8d52c4336d292b998572ca2386b811a1139b1d04375";
              sha256_unsigned = "74c246425b54540c0117c79ed3c3d71afe1793e4cd65a573e4b7fef73bbd0728";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-952ui-5ac2nd"
            "rb-952ui-5ac2nd"
          ];
          titles = [
            {
              model = "RouterBOARD 952Ui-5ac2nD (hAP ac lite)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-962uigs-5hact2hnt = {
          device_packages = [
            "-yafut"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-usb2"
            "kmod-i2c-gpio"
            "kmod-sfp"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-962uigs-5hact2hnt";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-962uigs-5hact2hnt-initramfs-kernel.bin";
              sha256 = "9a419616e4e1ab7b48fd67d017709667360574013d4af9ec1272f6dafec0a9ca";
              sha256_unsigned = "9a419616e4e1ab7b48fd67d017709667360574013d4af9ec1272f6dafec0a9ca";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-962uigs-5hact2hnt-squashfs-sysupgrade.bin";
              sha256 = "607a4c8270c84be3edd107216a24ea1e88f26171c657a41787919c5057f9aa81";
              sha256_unsigned = "e37cfebd385a658b068af42a6dab443d7033dd840f2545d8a3398dd22332488d";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-962uigs-5hact2hnt"
            "rb-962uigs-5hact2hnt"
          ];
          titles = [
            {
              model = "RouterBOARD 962UiGS-5HacT2HnT (hAP ac)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-lhg-2nd = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-lhg-2nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-lhg-2nd-initramfs-kernel.bin";
              sha256 = "ea84b0d7872fbc602cc7b6fc531104340f30912985f20598bdd02a7b06a76c34";
              sha256_unsigned = "ea84b0d7872fbc602cc7b6fc531104340f30912985f20598bdd02a7b06a76c34";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-lhg-2nd-squashfs-sysupgrade.bin";
              sha256 = "cb58e8d3fd1f6c5643ff0cb688a061a4ce0e76f86054ba6d7bfe686b39359d4f";
              sha256_unsigned = "11e35d1d46c3c42e6c80e6384bf0992243d44d7d761ee054e83a28e2e7070e10";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-lhg-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD LHG 2nD (LHG 2)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-lhg-5nd = {
          device_packages = [
            "-yafut"
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-lhg-5nd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-lhg-5nd-squashfs-sysupgrade.bin";
              sha256 = "83dbeec9d2ba749fdeeb7a2792f7528a96188ab9b382b92f041faf51d62aca1b";
              sha256_unsigned = "295324d636c4e8c6c030f782c814cf0788b7b4257a4518864ac35e161ae160d0";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-lhg-5nd-initramfs-kernel.bin";
              sha256 = "6ede223131d0bdf2fc5799d5da4fb22735142e97c717ee51a05f78e1409ebcbe";
              sha256_unsigned = "6ede223131d0bdf2fc5799d5da4fb22735142e97c717ee51a05f78e1409ebcbe";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-lhg-5nd"
          ];
          titles = [
            {
              model = "RouterBOARD LHG 5nD (LHG 5)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-map-2nd = {
          device_packages = [
            "-yafut"
            "kmod-usb2"
            "kmod-ledtrig-gpio"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-map-2nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-map-2nd-initramfs-kernel.bin";
              sha256 = "c5a00da26fb4e6a5fa2854ab4ad1843924273656a6b3054f1b1a71a4c1b62ed6";
              sha256_unsigned = "c5a00da26fb4e6a5fa2854ab4ad1843924273656a6b3054f1b1a71a4c1b62ed6";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-map-2nd-squashfs-sysupgrade.bin";
              sha256 = "8b1f4eb7db3763e30014d20d5a78fdaa5f73fbe702ce018ae1bfc8aefc2a7650";
              sha256_unsigned = "30774c6cf457ed92fca22700dc6e49ec722e3ffa4a159b0a0401ad4e791b7bf6";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-map-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD mAP-2nD (mAP)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-mapl-2nd = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-mapl-2nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-mapl-2nd-initramfs-kernel.bin";
              sha256 = "ebb5af56df86a013a1658d3a099d80e3497427445f8e72c63f92cb1d85712df6";
              sha256_unsigned = "ebb5af56df86a013a1658d3a099d80e3497427445f8e72c63f92cb1d85712df6";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-mapl-2nd-squashfs-sysupgrade.bin";
              sha256 = "1d6a397c44787084e131473b6998661af64b7962cd45b9a17bce2e46b6a1b74b";
              sha256_unsigned = "9f8abd1b934b1b2edc453d8d2242d500f45aa4ff01401b71f2dbc239da4b1f4c";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-mapl-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD mAPL-2nD (mAP lite)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-sxt-5nd-r2 = {
          device_packages = [
            "rssileds"
            "kmod-gpio-beeper"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-sxt-5nd-r2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-sxt-5nd-r2-squashfs-sysupgrade.bin";
              sha256 = "9c047997df17942ac227784f2f6e0e659ab8bcebe027a4ff817804d03a66201a";
              sha256_unsigned = "1ae844613a110a4eacad0bea21f4600ab17aacea59544fb0935cf49f0b3ef7b0";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-sxt-5nd-r2-initramfs-kernel.bin";
              sha256 = "24c8316a0cbec46a7d2bd000c9a400fb3e3d0ded8b0df120fd1471dc73922ce1";
              sha256_unsigned = "24c8316a0cbec46a7d2bd000c9a400fb3e3d0ded8b0df120fd1471dc73922ce1";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-sxt-5nd-r2"
            "rb-sxt5n"
          ];
          titles = [
            {
              model = "RouterBOARD SXT 5nD r2 (SXT Lite5)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-wap-2nd = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-wap-2nd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-wap-2nd-squashfs-sysupgrade.bin";
              sha256 = "f31c3aa539e3ae326d8f5fba92220106214ed2137efa128498593d9f5fbaeb81";
              sha256_unsigned = "23842f085a8639e0be5e0c9d42178f51c3a9b2993e9ac8e167cfd59bc00000d8";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-wap-2nd-initramfs-kernel.bin";
              sha256 = "d17e4f4e1441a840677ab482c039bd30a387724af35403b113cfedfc2692719f";
              sha256_unsigned = "d17e4f4e1441a840677ab482c039bd30a387724af35403b113cfedfc2692719f";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-wap-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD wAP-2nD (wAP)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-wap-g-5hact2hnd = {
          device_packages = [
            "-yafut"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-wap-g-5hact2hnd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-wap-g-5hact2hnd-squashfs-sysupgrade.bin";
              sha256 = "d1f5aef3ca128372a83565b20adedfd503051a380d5a85a03b2bc2d6ab71f52d";
              sha256_unsigned = "0e320822cdc3283449f5592e3c9d5ce427e728c4d1adade6c606d9067a3b86bb";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-wap-g-5hact2hnd-initramfs-kernel.bin";
              sha256 = "e6c50a354f52829d00596cdf97b48f473fe501ec64190a860f1b3a6b41994a67";
              sha256_unsigned = "e6c50a354f52829d00596cdf97b48f473fe501ec64190a860f1b3a6b41994a67";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-wap-g-5hact2hnd"
            "rb-wapg-5hact2hnd"
          ];
          titles = [
            {
              model = "RouterBOARD wAP G-5HacT2HnD (wAP AC)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-wapr-2nd = {
          device_packages = [
            "-yafut"
            "kmod-usb2"
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-wapr-2nd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-wapr-2nd-squashfs-sysupgrade.bin";
              sha256 = "b20ca3acbca9e33106769e829df3c805916a6db3f300b421291d6bfd9e798ffe";
              sha256_unsigned = "0fc1d293f5a3c16f9715e5587ed1207abec2a11114e8d7e3bd3ea21705325895";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-mikrotik-mikrotik_routerboard-wapr-2nd-initramfs-kernel.bin";
              sha256 = "3e669239dac79fe7700c52e35d8bf68936f6bd4c1d57373bd71dc0d8ad212371";
              sha256_unsigned = "3e669239dac79fe7700c52e35d8bf68936f6bd4c1d57373bd71dc0d8ad212371";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-wapr-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD wAPR-2nD (wAP R)";
              vendor = "MikroTik";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "ath79/mikrotik";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    tiny = {
      arch_packages = "mips_24kc";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-ath9k"
        "kmod-gpio-button-hotplug"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
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
        "ppp-mod-pppoe"
        "swconfig"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "f72615a35b2631a11f1cae8037055909";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        dlink_dap-1720-a1 = {
          device_packages = [
            "-swconfig"
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct-smallbuffers"
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-tiny-dlink_dap-1720-a1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-dlink_dap-1720-a1-squashfs-sysupgrade.bin";
              sha256 = "7e37d1e0b9cd545bd62ceb53dfb5553c034eb1591d6d0da8acb79471f25eba1b";
              sha256_unsigned = "ebbcbd25bd4a850f94a4c929cf24a3fed8f79448b0dc911a51f172460a911ccc";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-dlink_dap-1720-a1-initramfs-kernel.bin";
              sha256 = "1f491ee0c6c330e6c8de2ef6ca8fb50d7722cade56a18fc7cbe92988818ae173";
              sha256_unsigned = "1f491ee0c6c330e6c8de2ef6ca8fb50d7722cade56a18fc7cbe92988818ae173";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-dlink_dap-1720-a1-squashfs-factory.bin";
              sha256 = "0b9c9e92d4ae98af43510961adf6b5dbced15c7d3bd78835c0415e900e19e81b";
              sha256_unsigned = "0b9c9e92d4ae98af43510961adf6b5dbced15c7d3bd78835c0415e900e19e81b";
              type = "factory";
            }
          ];
          supported_devices = [
            "dlink,dap-1720-a1"
          ];
          titles = [
            {
              model = "DAP-1720";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-859-a1 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-tiny-dlink_dir-859-a1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-dlink_dir-859-a1-initramfs-kernel.bin";
              sha256 = "f1365d252399e436f32cac0e892f5e224d5572e984de0a02212e5170e79749bc";
              sha256_unsigned = "f1365d252399e436f32cac0e892f5e224d5572e984de0a02212e5170e79749bc";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-dlink_dir-859-a1-squashfs-factory.bin";
              sha256 = "748dd1805dacde625c42bccefb5ee7ab77ba520dc45ba65f2e7b5fa6d2c3fae2";
              sha256_unsigned = "748dd1805dacde625c42bccefb5ee7ab77ba520dc45ba65f2e7b5fa6d2c3fae2";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-dlink_dir-859-a1-squashfs-sysupgrade.bin";
              sha256 = "669f30ef04e950fc84ef0b116bd6042b0bf7c811ccd2ec1af278f3ee69a6ca22";
              sha256_unsigned = "6acd6354c5f044211bff6a6bbd667b259b94f8d9354893fd1db7f25047a8c273";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "dlink,dir-859-a1"
          ];
          titles = [
            {
              model = "DIR-859";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-859-a3 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-tiny-dlink_dir-859-a3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-dlink_dir-859-a3-squashfs-sysupgrade.bin";
              sha256 = "db2e98e63c725275bf91cfa02fa50cf2fa4eeb66e8584a31de1af6c447091667";
              sha256_unsigned = "aa004f19fc513d2548c5d3cb6efc5f43315bc1dc79122386005efd4d05eac84a";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-dlink_dir-859-a3-squashfs-factory.bin";
              sha256 = "353ce4fbf8bff01d1c6a2d5b2c9bef1bdd850db9e5ab8cd532297050138b5388";
              sha256_unsigned = "353ce4fbf8bff01d1c6a2d5b2c9bef1bdd850db9e5ab8cd532297050138b5388";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-dlink_dir-859-a3-initramfs-kernel.bin";
              sha256 = "a0610ffb1bab32138410bcf82e55c0805f92edd64a77220f20c19a18a57b5578";
              sha256_unsigned = "a0610ffb1bab32138410bcf82e55c0805f92edd64a77220f20c19a18a57b5578";
              type = "kernel";
            }
          ];
          supported_devices = [
            "dlink,dir-859-a3"
          ];
          titles = [
            {
              model = "DIR-859";
              variant = "A3";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-869-a1 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-tiny-dlink_dir-869-a1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-dlink_dir-869-a1-squashfs-factory.bin";
              sha256 = "3d361031545abeb85547b869820d0302ee8a06f82b558d8d86f1db08037bcea7";
              sha256_unsigned = "3d361031545abeb85547b869820d0302ee8a06f82b558d8d86f1db08037bcea7";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-dlink_dir-869-a1-squashfs-sysupgrade.bin";
              sha256 = "bdde4fe317daf08eaf21599b30d131934ec9a739e03e7f03135c43ee50549142";
              sha256_unsigned = "fb2fa8113382aa686147d24a2ee0bf19eddb73d1537d094887c8b8fa93ec4d85";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-dlink_dir-869-a1-initramfs-kernel.bin";
              sha256 = "807dad49a63f48aee5e0aa6760a19765586b2220d61dae776e8d66e94b493471";
              sha256_unsigned = "807dad49a63f48aee5e0aa6760a19765586b2220d61dae776e8d66e94b493471";
              type = "kernel";
            }
          ];
          supported_devices = [
            "dlink,dir-869-a1"
            "dir-869-a1"
          ];
          titles = [
            {
              model = "DIR-869";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        nec_wg600hp = {
          device_packages = [
            "kmod-usb2"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-tiny-nec_wg600hp";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-nec_wg600hp-initramfs-kernel.bin";
              sha256 = "b0db46fc5aeb72ad0f51c489ca94fcc26f3efcf52bfdc9fd7f2f65425f5e1390";
              sha256_unsigned = "b0db46fc5aeb72ad0f51c489ca94fcc26f3efcf52bfdc9fd7f2f65425f5e1390";
              type = "kernel";
            }
            {
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-nec_wg600hp-uboot.bin";
              sha256 = "117ae6222150cc17e32b6246a677947e7643bd892ac0b8eb060cac2467ce36f0";
              sha256_unsigned = "117ae6222150cc17e32b6246a677947e7643bd892ac0b8eb060cac2467ce36f0";
              type = "uboot.bin";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-nec_wg600hp-squashfs-sysupgrade.bin";
              sha256 = "07e04d6ad6c74f63d6bfb87cbfb6cdf4acecef8da5ef9b99557bd5c0449b0d05";
              sha256_unsigned = "06a66ed39c5a9529583bea94508b27b2a087622ab1d9ec5e4542b7933d9a0e3f";
              type = "sysupgrade";
            }
            {
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-nec_wg600hp-initramfs-factory.bin";
              sha256 = "4523e4b8c1fcf5cdc616ddfed7d8c3706fbd8a56fc0f4a9f6dce33b4f5a1a61e";
              sha256_unsigned = "4523e4b8c1fcf5cdc616ddfed7d8c3706fbd8a56fc0f4a9f6dce33b4f5a1a61e";
              type = "initramfs-factory.bin";
            }
          ];
          supported_devices = [
            "nec,wg600hp"
          ];
          titles = [
            {
              model = "Aterm WG600HP";
              vendor = "NEC";
            }
          ];
        };
        nec_wr8750n = {
          device_packages = [
            "kmod-usb2"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-tiny-nec_wr8750n";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-nec_wr8750n-initramfs-kernel.bin";
              sha256 = "daba0ae10097d687d0df9c1c71c6319358b472bdf0e5232143aa3c060accf366";
              sha256_unsigned = "daba0ae10097d687d0df9c1c71c6319358b472bdf0e5232143aa3c060accf366";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-nec_wr8750n-squashfs-sysupgrade.bin";
              sha256 = "84cf427a5f79f520be21758cde5279877760c59653ca54eb41941e071e4ee7cc";
              sha256_unsigned = "db139e2dafebe4422c1ed3e6e44dc745ac3f7b1d5434a56cf23e46ed049a4401";
              type = "sysupgrade";
            }
            {
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-nec_wr8750n-uboot.bin";
              sha256 = "117ae6222150cc17e32b6246a677947e7643bd892ac0b8eb060cac2467ce36f0";
              sha256_unsigned = "117ae6222150cc17e32b6246a677947e7643bd892ac0b8eb060cac2467ce36f0";
              type = "uboot.bin";
            }
            {
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-nec_wr8750n-initramfs-factory.bin";
              sha256 = "3f73223f1d071eaa3c1c845d4fcb6ab8b7a80a20a52b4b1f3772b566b55062a8";
              sha256_unsigned = "3f73223f1d071eaa3c1c845d4fcb6ab8b7a80a20a52b4b1f3772b566b55062a8";
              type = "initramfs-factory.bin";
            }
          ];
          supported_devices = [
            "nec,wr8750n"
          ];
          titles = [
            {
              model = "Aterm WR8750N";
              vendor = "NEC";
            }
          ];
        };
        nec_wr9500n = {
          device_packages = [
            "kmod-usb2"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ath79-tiny-nec_wr9500n";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-nec_wr9500n-initramfs-kernel.bin";
              sha256 = "1d3264f7e91e1ac50686589570964d21afb932ae9d6fd89110ad5ab23bcb7e16";
              sha256_unsigned = "1d3264f7e91e1ac50686589570964d21afb932ae9d6fd89110ad5ab23bcb7e16";
              type = "kernel";
            }
            {
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-nec_wr9500n-uboot.bin";
              sha256 = "117ae6222150cc17e32b6246a677947e7643bd892ac0b8eb060cac2467ce36f0";
              sha256_unsigned = "117ae6222150cc17e32b6246a677947e7643bd892ac0b8eb060cac2467ce36f0";
              type = "uboot.bin";
            }
            {
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-nec_wr9500n-initramfs-factory.bin";
              sha256 = "44769632b8f49590133d8f9985136de74bdf8e0a0d163abc19d7d1a8108a2f4b";
              sha256_unsigned = "44769632b8f49590133d8f9985136de74bdf8e0a0d163abc19d7d1a8108a2f4b";
              type = "initramfs-factory.bin";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ath79-tiny-nec_wr9500n-squashfs-sysupgrade.bin";
              sha256 = "55e5a4654834ef15dbde68a6706979e156317b2e5e76f42001e908a470d09a51";
              sha256_unsigned = "9412426d046aeac864c079e8bb79ea0493f724b85df39fc096588f144af979f6";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "nec,wr9500n"
          ];
          titles = [
            {
              model = "Aterm WR9500N";
              vendor = "NEC";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "ath79/tiny";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
  bcm27xx = {
    bcm2708 = {
      arch_packages = "arm_arm1176jzf-s_vfp";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "bcm27xx-gpu-fw"
        "bcm27xx-utils"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-nls-cp437"
        "kmod-nls-iso8859-1"
        "kmod-sound-arm-bcm2835"
        "kmod-sound-core"
        "kmod-usb-hid"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci-app-cpufreq"
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
      ];
      linux_kernel = {
        release = "1";
        vermagic = "4358b2d1867bfbe14830b9d15e4ac967";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        rpi = {
          device_packages = [
            "cypress-firmware-43430-sdio"
            "brcmfmac-nvram-43430-sdio"
            "kmod-brcmfmac"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2708-rpi";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2708-rpi-squashfs-factory.img.gz";
              sha256 = "9624e495cd886ec9c4296a7af847cdee1041b451fd64803901011b72aa6cc9b0";
              sha256_unsigned = "9624e495cd886ec9c4296a7af847cdee1041b451fd64803901011b72aa6cc9b0";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2708-rpi-ext4-factory.img.gz";
              sha256 = "0638b86fe1aade94dc884df4a74d26302cd44c0dac8da705e676ca75e1ffd502";
              sha256_unsigned = "0638b86fe1aade94dc884df4a74d26302cd44c0dac8da705e676ca75e1ffd502";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2708-rpi-squashfs-sysupgrade.img.gz";
              sha256 = "68881edde7e4c9b69406d3e16ca84769c0f23ad36d60dd184bfab00defc67f45";
              sha256_unsigned = "d5fc1a55630a359cffb60e5e4edc80d36de3c28749702cc963ca83a5d1ec5bd4";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2708-rpi-ext4-sysupgrade.img.gz";
              sha256 = "405b98910d1d152e68ea3ca4a1c3409f3a514a9d9236b9cf696b210007cb0449";
              sha256_unsigned = "0b634706b1e1d7b6d647f72eca89bbb91fd9ed03d24ab4731ffeba82c944770a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "rpi-a"
            "rpi-a-plus"
            "rpi-b"
            "rpi-b-plus"
            "rpi-cm"
            "rpi-zero"
            "rpi-zero-w"
            "raspberrypi,model-a"
            "raspberrypi,model-a-plus"
            "raspberrypi,model-b"
            "raspberrypi,model-b-plus"
            "raspberrypi,model-b-rev2"
            "raspberrypi,compute-module"
            "raspberrypi,compute-module-1"
            "raspberrypi,model-zero"
            "raspberrypi,model-zero-w"
          ];
          titles = [
            {
              model = "A/A+/B/B+/CM/Zero/ZeroW";
              vendor = "Raspberry Pi";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "bcm27xx/bcm2708";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    bcm2709 = {
      arch_packages = "arm_cortex-a7_neon-vfpv4";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "bcm27xx-gpu-fw"
        "bcm27xx-utils"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-nls-cp437"
        "kmod-nls-iso8859-1"
        "kmod-sound-arm-bcm2835"
        "kmod-sound-core"
        "kmod-usb-hid"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci-app-cpufreq"
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
      ];
      linux_kernel = {
        release = "1";
        vermagic = "6dba4a647e68fe50131b4ddb6cb85bad";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        rpi-2 = {
          device_packages = [
            "cypress-firmware-43430-sdio"
            "brcmfmac-nvram-43430-sdio"
            "cypress-firmware-43455-sdio"
            "brcmfmac-nvram-43455-sdio"
            "kmod-brcmfmac"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2709-rpi-2";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2709-rpi-2-ext4-sysupgrade.img.gz";
              sha256 = "eb36708ac79e1df22bc3559def84d60ae654772cb802fd7850e7cbaf068bc528";
              sha256_unsigned = "db8fa415eac7693efcfd130839cb073b85598bf3aae32e8cd7fbc75f92e03e82";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2709-rpi-2-ext4-factory.img.gz";
              sha256 = "2c75ec90b55f36f8249313dce94c9cb20c9727923c155b5839546ae81cd20565";
              sha256_unsigned = "2c75ec90b55f36f8249313dce94c9cb20c9727923c155b5839546ae81cd20565";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2709-rpi-2-squashfs-factory.img.gz";
              sha256 = "7f3eeaba7339979b52cd7b19c2fd7eba04ffe8ddb147b91f43d7838a12d23817";
              sha256_unsigned = "7f3eeaba7339979b52cd7b19c2fd7eba04ffe8ddb147b91f43d7838a12d23817";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2709-rpi-2-squashfs-sysupgrade.img.gz";
              sha256 = "89beafaa663a9eb775ef380a239f4d418e4f1fa3585a60581518dafa63fdac96";
              sha256_unsigned = "3d40e83468b183f9b615069cebb97b13d6430286d2a3c76cec5a7103a96d1aff";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "rpi-2-b"
            "rpi-3-a-plus"
            "rpi-3-b"
            "rpi-3-b-plus"
            "rpi-4-b"
            "rpi-400"
            "rpi-cm"
            "rpi-zero-2"
            "rpi-zero-2-w"
            "raspberrypi,2-model-b"
            "raspberrypi,2-model-b-rev2"
            "raspberrypi,3-model-a-plus"
            "raspberrypi,3-model-b"
            "raspberrypi,3-model-b-plus"
            "raspberrypi,3-compute-module"
            "raspberrypi,compute-module-3"
            "raspberrypi,400"
            "raspberrypi,4-compute-module"
            "raspberrypi,4-model-b"
            "raspberrypi,model-zero-2"
            "raspberrypi,model-zero-2-w"
          ];
          titles = [
            {
              model = "2B/2B 1.2";
              variant = "(32bit)";
              vendor = "Raspberry Pi";
            }
            {
              model = "3A+/3B/3B+/CM3/Zero2/Zero2W";
              variant = "(32bit)";
              vendor = "Raspberry Pi";
            }
            {
              model = "4B/400/CM4";
              variant = "(32bit)";
              vendor = "Raspberry Pi";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "bcm27xx/bcm2709";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    bcm2710 = {
      arch_packages = "aarch64_cortex-a53";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "bcm27xx-gpu-fw"
        "bcm27xx-utils"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-nls-cp437"
        "kmod-nls-iso8859-1"
        "kmod-sound-arm-bcm2835"
        "kmod-sound-core"
        "kmod-usb-hid"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci-app-cpufreq"
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
      ];
      linux_kernel = {
        release = "1";
        vermagic = "bd2b7555472b170865f7125d43d63ad1";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        rpi-3 = {
          device_packages = [
            "cypress-firmware-43430-sdio"
            "brcmfmac-nvram-43430-sdio"
            "cypress-firmware-43455-sdio"
            "brcmfmac-nvram-43455-sdio"
            "kmod-brcmfmac"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2710-rpi-3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2710-rpi-3-squashfs-sysupgrade.img.gz";
              sha256 = "74d630363fd70bbd5bb3435392f82794c5b8ee154949ecc0d1b2ea609b5504b0";
              sha256_unsigned = "881e6d226dcc7eb1d1d4aa9406cfc10caf68db332eaf4a897a145d09b3fdc6dc";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2710-rpi-3-ext4-sysupgrade.img.gz";
              sha256 = "f3f68904ed8df85d61a0f2a051c4f8c6b803ba75bc6705d9b8c22d269ef83e1b";
              sha256_unsigned = "db1a32aa1c4de7c85d457ef54cf295c1e7fcc617de07202f395d29eae735813a";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2710-rpi-3-ext4-factory.img.gz";
              sha256 = "7000bddd244e51b9462451646af6913981dd9c53241567fcc17fd730b226ec73";
              sha256_unsigned = "7000bddd244e51b9462451646af6913981dd9c53241567fcc17fd730b226ec73";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2710-rpi-3-squashfs-factory.img.gz";
              sha256 = "4a6276b1b09da701503a46ae52fb5cd281f17ee095f94c12f6b50271d948674b";
              sha256_unsigned = "4a6276b1b09da701503a46ae52fb5cd281f17ee095f94c12f6b50271d948674b";
              type = "factory";
            }
          ];
          supported_devices = [
            "rpi-3-a-plus"
            "rpi-3-b"
            "rpi-3-b-plus"
            "rpi-zero-2"
            "rpi-zero-2-w"
            "raspberrypi,2-model-b-rev2"
            "raspberrypi,3-model-a-plus"
            "raspberrypi,3-model-b"
            "raspberrypi,3-model-b-plus"
            "raspberrypi,3-compute-module"
            "raspberrypi,compute-module-3"
            "raspberrypi,model-zero-2"
            "raspberrypi,model-zero-2-w"
          ];
          titles = [
            {
              model = "3A+/3B/3B+/CM3/Zero2/Zero2W";
              variant = "(64bit)";
              vendor = "Raspberry Pi";
            }
            {
              model = "2B-1.2";
              variant = "(64bit)";
              vendor = "Raspberry Pi";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "bcm27xx/bcm2710";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    bcm2711 = {
      arch_packages = "aarch64_cortex-a72";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "bcm27xx-gpu-fw"
        "bcm27xx-utils"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-nls-cp437"
        "kmod-nls-iso8859-1"
        "kmod-sound-arm-bcm2835"
        "kmod-sound-core"
        "kmod-usb-hid"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci-app-cpufreq"
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
      ];
      linux_kernel = {
        release = "1";
        vermagic = "05dc7915fefe987543db2a4b9ba8b39d";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        rpi-4 = {
          device_packages = [
            "cypress-firmware-43455-sdio"
            "brcmfmac-nvram-43455-sdio"
            "kmod-brcmfmac"
            "wpad-basic-openssl"
            "kmod-usb-net-lan78xx"
            "kmod-r8169"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2711-rpi-4";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2711-rpi-4-ext4-factory.img.gz";
              sha256 = "cebea867c25a4d7ce5f6623856dcdec60d93e3fd1be467cea769c40c9f2cdab6";
              sha256_unsigned = "cebea867c25a4d7ce5f6623856dcdec60d93e3fd1be467cea769c40c9f2cdab6";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2711-rpi-4-squashfs-sysupgrade.img.gz";
              sha256 = "37e330303f1fd656b86a3191eeaa1a377184413a2fd8ff3ab39eb51d88bb7522";
              sha256_unsigned = "af079dcd68bc73b71dff9e34054e5b2a8335acc79418597559ef32f1f4f3ce33";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2711-rpi-4-squashfs-factory.img.gz";
              sha256 = "ea940b5a3a50cafa3715bc760274eeb869999f7c0817f68ce33ec306ee6982ac";
              sha256_unsigned = "ea940b5a3a50cafa3715bc760274eeb869999f7c0817f68ce33ec306ee6982ac";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2711-rpi-4-ext4-sysupgrade.img.gz";
              sha256 = "bd712f3a0a4c83b58d36c0e21d0345c3ca3f7118fe119cbb80052d4bc28ecf04";
              sha256_unsigned = "aa011faacbde258f83d55489c1ecca16d25c2d88917caa74116bf6186a3e1430";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "raspberrypi,400"
            "raspberrypi,4-compute-module"
            "raspberrypi,4-model-b"
          ];
          titles = [
            {
              model = "4B/400/CM4";
              variant = "(64bit)";
              vendor = "Raspberry Pi";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "bcm27xx/bcm2711";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    bcm2712 = {
      arch_packages = "aarch64_cortex-a76";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "bcm27xx-gpu-fw"
        "bcm27xx-utils"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-nls-cp437"
        "kmod-nls-iso8859-1"
        "kmod-sound-arm-bcm2835"
        "kmod-sound-core"
        "kmod-usb-hid"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci-app-cpufreq"
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
      ];
      linux_kernel = {
        release = "1";
        vermagic = "f8438e4beb1a9ceabdbbc86a225772b2";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        rpi-5 = {
          device_packages = [
            "cypress-firmware-43455-sdio"
            "brcmfmac-nvram-43455-sdio"
            "kmod-brcmfmac"
            "wpad-basic-mbedtls"
            "kmod-hwmon-pwmfan"
            "kmod-thermal"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2712-rpi-5";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2712-rpi-5-squashfs-sysupgrade.img.gz";
              sha256 = "fe9c4ca75ab008896965477906fa06ed0aae1b50410f754ff2312be8d23a187f";
              sha256_unsigned = "78b7e07f6285f10638d1ff870c60daeff1e34515d72781159995e22977a04c20";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2712-rpi-5-ext4-factory.img.gz";
              sha256 = "9b91ef987116441451c931ae3d1a1c97a1401d7b67cddb25a29e8d1d32f65614";
              sha256_unsigned = "9b91ef987116441451c931ae3d1a1c97a1401d7b67cddb25a29e8d1d32f65614";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2712-rpi-5-ext4-sysupgrade.img.gz";
              sha256 = "52390610baf450929a66c6e78ebdbb184ec1c39bef30022dd1cabccce3797fc9";
              sha256_unsigned = "c1a0d0662a2fdac83160a4c71183f19aa826396307bf8073e1885a974af9e39d";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm27xx-bcm2712-rpi-5-squashfs-factory.img.gz";
              sha256 = "3e31b47b19ecfeeadb6fa09109b368162b055f99523bc900c000dfea406ebec8";
              sha256_unsigned = "3e31b47b19ecfeeadb6fa09109b368162b055f99523bc900c000dfea406ebec8";
              type = "factory";
            }
          ];
          supported_devices = [
            "raspberrypi,5-model-b"
          ];
          titles = [
            {
              model = "5";
              vendor = "Raspberry Pi";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "bcm27xx/bcm2712";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
  bcm47xx = {
    generic = {
      arch_packages = "mipsel_mips32";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-gpio-button-hotplug"
        "kmod-leds-gpio"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci-app-package-manager"
        "luci-compat"
        "luci-lib-base"
        "luci-lib-ipkg"
        "luci-light"
        "mtd"
        "netifd"
        "nftables"
        "nvram"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "otrx"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "swconfig"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "c89eebfa90373fe5164888f90d5133d0";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        linksys_e3000-v1 = {
          device_packages = [
            "kmod-bgmac"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-generic-linksys_e3000-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-generic-linksys_e3000-v1-squashfs.bin";
              sha256 = "cc877f552c415d3b171a7b7238ef5c5127e7c9370bafdc8f58d80de5208d511f";
              sha256_unsigned = "cc877f552c415d3b171a7b7238ef5c5127e7c9370bafdc8f58d80de5208d511f";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e3000-v1"
          ];
          titles = [
            {
              model = "E3000";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_wrt610n-v1 = {
          device_packages = [
            "kmod-tg3"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-generic-linksys_wrt610n-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-generic-linksys_wrt610n-v1-squashfs.bin";
              sha256 = "8a5a586a2cdb046b131ab4d68c451317caebf1a7578c8f045290b89284d91a91";
              sha256_unsigned = "8a5a586a2cdb046b131ab4d68c451317caebf1a7578c8f045290b89284d91a91";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,wrt610n-v1"
          ];
          titles = [
            {
              model = "WRT610N";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_wrt610n-v2 = {
          device_packages = [
            "kmod-bgmac"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-generic-linksys_wrt610n-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-generic-linksys_wrt610n-v2-squashfs.bin";
              sha256 = "de8d6466d7b35188c38d6e60d6f8b7830a397a04f59c492780c766b6a6fa3586";
              sha256_unsigned = "de8d6466d7b35188c38d6e60d6f8b7830a397a04f59c492780c766b6a6fa3586";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,wrt610n-v2"
          ];
          titles = [
            {
              model = "WRT610N";
              variant = "v2";
              vendor = "Linksys";
            }
          ];
        };
        standard = {
          device_packages = [
            "kmod-b44"
            "kmod-bgmac"
            "kmod-tg3"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-generic-standard";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-generic-standard-squashfs.trx";
              sha256 = "85df2aa88b3afe3aa270bd79994ca7ee25eb1f492f2b057276bdc67c845fd421";
              sha256_unsigned = "85df2aa88b3afe3aa270bd79994ca7ee25eb1f492f2b057276bdc67c845fd421";
              type = "trx";
            }
          ];
          supported_devices = [
            "standard"
          ];
          titles = [
            {
              model = "Image with LZMA loader and LZMA compressed kernel";
              vendor = "Generic";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "bcm47xx/generic";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    legacy = {
      arch_packages = "mipsel_mips32";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-gpio-button-hotplug"
        "kmod-leds-gpio"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci-app-package-manager"
        "luci-compat"
        "luci-lib-base"
        "luci-lib-ipkg"
        "luci-light"
        "mtd"
        "netifd"
        "nftables"
        "nvram"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "otrx"
        "ppp"
        "ppp-mod-pppoe"
        "swconfig"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "d19055388e2499fdfaf7b040658aacfd";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        dlink_dwl-3150 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-legacy-dlink_dwl-3150";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-legacy-dlink_dwl-3150-squashfs.bin";
              sha256 = "239db426d2d4a3d1406d6a10f8bfd04b904161e316302e66610d00a31494985d";
              sha256_unsigned = "239db426d2d4a3d1406d6a10f8bfd04b904161e316302e66610d00a31494985d";
              type = "bin";
            }
          ];
          supported_devices = [
            "dlink,dwl-3150"
          ];
          titles = [
            {
              model = "DWL-3150";
              vendor = "D-Link";
            }
          ];
        };
        standard = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-legacy-standard";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-legacy-standard-squashfs.trx";
              sha256 = "51580c87e8c9bc5cd50f56cf3580d3c9209c568ba86dfcdb748a661ad319cdf4";
              sha256_unsigned = "51580c87e8c9bc5cd50f56cf3580d3c9209c568ba86dfcdb748a661ad319cdf4";
              type = "trx";
            }
          ];
          supported_devices = [
            "standard"
          ];
          titles = [
            {
              model = "Image with LZMA loader and LZMA compressed kernel";
              vendor = "Generic";
            }
          ];
        };
        standard-noloader-gz = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-legacy-standard-noloader-gz";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-legacy-standard-noloader-gz-squashfs.trx";
              sha256 = "dc85b896b83ca4d68f912ef3fe040903a55abec094a99b4ac40331a46ea82016";
              sha256_unsigned = "dc85b896b83ca4d68f912ef3fe040903a55abec094a99b4ac40331a46ea82016";
              type = "trx";
            }
          ];
          supported_devices = [
            "standard-noloader-gz"
          ];
          titles = [
            {
              model = "Image with gzipped kernel";
              vendor = "Generic";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "bcm47xx/legacy";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    mips74k = {
      arch_packages = "mipsel_74kc";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-gpio-button-hotplug"
        "kmod-leds-gpio"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci-app-package-manager"
        "luci-compat"
        "luci-lib-base"
        "luci-lib-ipkg"
        "luci-light"
        "mtd"
        "netifd"
        "nftables"
        "nvram"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "otrx"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "swconfig"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "ef51d2086ecf89ce0ddc8dcda2397b9a";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        asus_rt-ac53u = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-asus_rt-ac53u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-asus_rt-ac53u-squashfs.trx";
              sha256 = "5835153d5b12ad24d5aa5dc6552815dcce2cf1a6263331e0adb2d4fad587153f";
              sha256_unsigned = "5835153d5b12ad24d5aa5dc6552815dcce2cf1a6263331e0adb2d4fad587153f";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac53u"
          ];
          titles = [
            {
              model = "RT-AC53U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-n14uhp = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-asus_rt-n14uhp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-asus_rt-n14uhp-squashfs.trx";
              sha256 = "4703a6024dc71015de8a10719d041e56589be938257fa6c73a9e0e37ddd5bca5";
              sha256_unsigned = "4703a6024dc71015de8a10719d041e56589be938257fa6c73a9e0e37ddd5bca5";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-n14uhp"
          ];
          titles = [
            {
              model = "RT-N14UHP";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-n15u = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-asus_rt-n15u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-asus_rt-n15u-squashfs.trx";
              sha256 = "3a1691094aeb66a8e82e473a04ee0e495defc67d0b74f896a686bff46593693f";
              sha256_unsigned = "3a1691094aeb66a8e82e473a04ee0e495defc67d0b74f896a686bff46593693f";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-n15u"
          ];
          titles = [
            {
              model = "RT-N15U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-n16 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-asus_rt-n16";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-asus_rt-n16-squashfs.trx";
              sha256 = "67127d1d728aa86ad4622577c2bb4470dc3dea276f1b53132662f70efde70c12";
              sha256_unsigned = "67127d1d728aa86ad4622577c2bb4470dc3dea276f1b53132662f70efde70c12";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-n16"
          ];
          titles = [
            {
              model = "RT-N16";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-n66u = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-asus_rt-n66u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-asus_rt-n66u-squashfs.trx";
              sha256 = "6d6542246e23b44d0fc8f20390cc240f7f62832102e672b10d2ec8e95882e2e7";
              sha256_unsigned = "6d6542246e23b44d0fc8f20390cc240f7f62832102e672b10d2ec8e95882e2e7";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-n66u"
          ];
          titles = [
            {
              model = "RT-N66U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-n66w = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-asus_rt-n66w";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-asus_rt-n66w-squashfs.trx";
              sha256 = "6d6542246e23b44d0fc8f20390cc240f7f62832102e672b10d2ec8e95882e2e7";
              sha256_unsigned = "6d6542246e23b44d0fc8f20390cc240f7f62832102e672b10d2ec8e95882e2e7";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-n66w"
          ];
          titles = [
            {
              model = "RT-N66W";
              vendor = "ASUS";
            }
          ];
        };
        linksys_e1550-v1 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-linksys_e1550-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-linksys_e1550-v1-squashfs.bin";
              sha256 = "244f71c13335d3b7da3ca540f09040bfda736a1ea35f2d42a7d27417481997e4";
              sha256_unsigned = "244f71c13335d3b7da3ca540f09040bfda736a1ea35f2d42a7d27417481997e4";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e1550-v1"
          ];
          titles = [
            {
              model = "E1550";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_e2500-v1 = {
          device_packages = [
            "kmod-b43"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-linksys_e2500-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-linksys_e2500-v1-squashfs.bin";
              sha256 = "8ea4e4547ccdb6e48ebb221d9e171eb89d712fcbbcbf10d223c54040f0c3ab5a";
              sha256_unsigned = "8ea4e4547ccdb6e48ebb221d9e171eb89d712fcbbcbf10d223c54040f0c3ab5a";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e2500-v1"
          ];
          titles = [
            {
              model = "E2500";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_e2500-v2 = {
          device_packages = [
            "kmod-b43"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-linksys_e2500-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-linksys_e2500-v2-squashfs.bin";
              sha256 = "b6fda5207c3b3083995341d2a9d1f65bd0d71833c6ece804decea74ad6754c38";
              sha256_unsigned = "b6fda5207c3b3083995341d2a9d1f65bd0d71833c6ece804decea74ad6754c38";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e2500-v2"
          ];
          titles = [
            {
              model = "E2500";
              variant = "v2";
              vendor = "Linksys";
            }
          ];
        };
        "linksys_e2500-v2.1" = {
          device_packages = [
            "kmod-b43"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-linksys_e2500-v2.1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-linksys_e2500-v2.1-squashfs.bin";
              sha256 = "7cf052bd93223f2de8c11901aa07dc87d764cc91cd3253b11bd5ade0a5b7429b";
              sha256_unsigned = "7cf052bd93223f2de8c11901aa07dc87d764cc91cd3253b11bd5ade0a5b7429b";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e2500-v2.1"
          ];
          titles = [
            {
              model = "E2500";
              variant = "v2.1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_e2500-v3 = {
          device_packages = [
            "kmod-b43"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-linksys_e2500-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-linksys_e2500-v3-squashfs.bin";
              sha256 = "b2b2bb2f961a2c35d121704161ce7748cfa133f05287b70d7045b7247a560a49";
              sha256_unsigned = "b2b2bb2f961a2c35d121704161ce7748cfa133f05287b70d7045b7247a560a49";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e2500-v3"
          ];
          titles = [
            {
              model = "E2500";
              variant = "v3";
              vendor = "Linksys";
            }
          ];
        };
        linksys_e3200-v1 = {
          device_packages = [
            "kmod-b43"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-linksys_e3200-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-linksys_e3200-v1-squashfs.bin";
              sha256 = "379fa262a81c3d44f95a76048c85f7ee2450dbb7f952d2d07310f66b9b90bdf7";
              sha256_unsigned = "379fa262a81c3d44f95a76048c85f7ee2450dbb7f952d2d07310f66b9b90bdf7";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e3200-v1"
          ];
          titles = [
            {
              model = "E3200";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_e4200-v1 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-linksys_e4200-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-linksys_e4200-v1-squashfs.bin";
              sha256 = "0ba94aa19deb45b880506e0213bbe9e546bd2b42111341df0deff16d131b1b5e";
              sha256_unsigned = "0ba94aa19deb45b880506e0213bbe9e546bd2b42111341df0deff16d131b1b5e";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e4200-v1"
          ];
          titles = [
            {
              model = "E4200";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        netgear_r6200-v1 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-netgear_r6200-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-netgear_r6200-v1-squashfs.chk";
              sha256 = "bcf539ebd40c6e74b986269e614a948219d2ce3439bc8e2beac8d2e5f7cb5d45";
              sha256_unsigned = "bcf539ebd40c6e74b986269e614a948219d2ce3439bc8e2beac8d2e5f7cb5d45";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r6200-v1"
          ];
          titles = [
            {
              model = "R6200";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wn2500rp-v1 = {
          device_packages = [
            "kmod-b43"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-netgear_wn2500rp-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-netgear_wn2500rp-v1-squashfs.chk";
              sha256 = "bcf7eba9b9f2f7f06df2e8a62f5124cb19f733e4dd74d5e577b7a5933005b69f";
              sha256_unsigned = "bcf7eba9b9f2f7f06df2e8a62f5124cb19f733e4dd74d5e577b7a5933005b69f";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wn2500rp-v1"
          ];
          titles = [
            {
              model = "WN2500RP";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr3400-v1 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-netgear_wndr3400-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-netgear_wndr3400-v1-squashfs.chk";
              sha256 = "49c4ad982bd3b522f31a12b2e5005cd9ec0ee2ef1e3172a1e284ed7fd99099a3";
              sha256_unsigned = "49c4ad982bd3b522f31a12b2e5005cd9ec0ee2ef1e3172a1e284ed7fd99099a3";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wndr3400-v1"
          ];
          titles = [
            {
              model = "WNDR3400";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr3400-v2 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-netgear_wndr3400-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-netgear_wndr3400-v2-squashfs.chk";
              sha256 = "e25d9e279169ac208ba85c80fabb365a1dbe309d002e28238606df7c1c79a722";
              sha256_unsigned = "e25d9e279169ac208ba85c80fabb365a1dbe309d002e28238606df7c1c79a722";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wndr3400-v2"
          ];
          titles = [
            {
              model = "WNDR3400";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr3400-v3 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-netgear_wndr3400-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-netgear_wndr3400-v3-squashfs.chk";
              sha256 = "e8d61f07e9fb0c426262a02abc87681a2ff232a44c3e392f2380e99e09384a50";
              sha256_unsigned = "e8d61f07e9fb0c426262a02abc87681a2ff232a44c3e392f2380e99e09384a50";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wndr3400-v3"
          ];
          titles = [
            {
              model = "WNDR3400";
              variant = "v3";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr3700-v3 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-netgear_wndr3700-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-netgear_wndr3700-v3-squashfs.chk";
              sha256 = "7885ed6a5826972379ff69e38e044405951cd2969074940fab334956cc0e28cb";
              sha256_unsigned = "7885ed6a5826972379ff69e38e044405951cd2969074940fab334956cc0e28cb";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wndr3700-v3"
          ];
          titles = [
            {
              model = "WNDR3700";
              variant = "v3";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr4000 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-netgear_wndr4000";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-netgear_wndr4000-squashfs.chk";
              sha256 = "5ccd17e62b0568ca2897a77f2d56982ab6735caf850a3024b4e51de3d15a0189";
              sha256_unsigned = "5ccd17e62b0568ca2897a77f2d56982ab6735caf850a3024b4e51de3d15a0189";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wndr4000"
          ];
          titles = [
            {
              model = "WNDR4000";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wnr3500l-v1 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-netgear_wnr3500l-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-netgear_wnr3500l-v1-squashfs.chk";
              sha256 = "1ef2b31401620bdde04f0ac6f52118fc064d8281d108c1cef94bfe0c1f48effb";
              sha256_unsigned = "1ef2b31401620bdde04f0ac6f52118fc064d8281d108c1cef94bfe0c1f48effb";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wnr3500l-v1"
          ];
          titles = [
            {
              model = "WNR3500L";
              variant = "v1 (ROW)";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wnr3500l-v1-na = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-netgear_wnr3500l-v1-na";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-netgear_wnr3500l-v1-na-squashfs.chk";
              sha256 = "315d4a89d1c35af8c4865b0c316070773c914f7c1b45ea6e4f24af1316999b6f";
              sha256_unsigned = "315d4a89d1c35af8c4865b0c316070773c914f7c1b45ea6e4f24af1316999b6f";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wnr3500l-v1-na"
          ];
          titles = [
            {
              model = "WNR3500L";
              variant = "v1 (NA)";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wnr3500l-v2 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-netgear_wnr3500l-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-netgear_wnr3500l-v2-squashfs.chk";
              sha256 = "80fe095c22c2104225ccedbb38dbefc4c8197916cccf73e8ae0f1b2f85906cd9";
              sha256_unsigned = "80fe095c22c2104225ccedbb38dbefc4c8197916cccf73e8ae0f1b2f85906cd9";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wnr3500l-v2"
          ];
          titles = [
            {
              model = "WNR3500L";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        standard = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-standard";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-standard-squashfs.trx";
              sha256 = "0de640992d1dca42abf510f9b02fe8eda3edbda55d47915d3983d8f15499c122";
              sha256_unsigned = "0de640992d1dca42abf510f9b02fe8eda3edbda55d47915d3983d8f15499c122";
              type = "trx";
            }
          ];
          supported_devices = [
            "standard"
          ];
          titles = [
            {
              model = "Image with LZMA loader and LZMA compressed kernel";
              vendor = "Generic";
            }
          ];
        };
        standard-noloader-nodictionarylzma = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-standard-noloader-nodictionarylzma";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm47xx-mips74k-standard-noloader-nodictionarylzma-squashfs.trx";
              sha256 = "221de16f134c7450d3c137c2071dcd0e77f0d4bfffee0dde430924910f977956";
              sha256_unsigned = "221de16f134c7450d3c137c2071dcd0e77f0d4bfffee0dde430924910f977956";
              type = "trx";
            }
          ];
          supported_devices = [
            "standard-noloader-nodictionarylzma"
          ];
          titles = [
            {
              model = "Image with LZMA compressed kernel matching CFE decompressor";
              vendor = "Generic";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "bcm47xx/mips74k";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
  bcm4908 = {
    generic = {
      arch_packages = "aarch64_cortex-a53";
      default_packages = [
        "base-files"
        "bcm4908img"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "fdt-utils"
        "firewall4"
        "fstools"
        "kmod-gpio-button-hotplug"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-ledtrig-usbport"
        "kmod-usb-ohci"
        "kmod-usb2"
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
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "b378cfc59ce3f3c5af144a02e9df870d";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        asus_gt-ac5300 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm4908-generic-asus_gt-ac5300";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm4908-generic-asus_gt-ac5300-squashfs.bin";
              sha256 = "52a77cab01bdcd1a2215801086bfd9f7ff9b657290f9a3597ad309a274bf786d";
              sha256_unsigned = "52a77cab01bdcd1a2215801086bfd9f7ff9b657290f9a3597ad309a274bf786d";
              type = "bin";
            }
          ];
          supported_devices = [
            "asus,gt-ac5300"
          ];
          titles = [
            {
              model = "GT-AC5300";
              vendor = "ASUS";
            }
          ];
        };
        netgear_r8000p = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm4908-generic-netgear_r8000p";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm4908-generic-netgear_r8000p-squashfs.bin";
              sha256 = "6a7f3c3b7473c3985636102f42bda4648039908bbb410252afb1015717ad9983";
              sha256_unsigned = "6a7f3c3b7473c3985636102f42bda4648039908bbb410252afb1015717ad9983";
              type = "bin";
            }
          ];
          supported_devices = [
            "netgear,r8000p"
          ];
          titles = [
            {
              model = "R8000P";
              vendor = "Netgear";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "bcm4908/generic";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
  bcm53xx = {
    generic = {
      arch_packages = "arm_cortex-a9";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-gpio-button-hotplug"
        "kmod-leds-gpio"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci-app-package-manager"
        "luci-compat"
        "luci-lib-base"
        "luci-lib-ipkg"
        "luci-light"
        "mtd"
        "netifd"
        "nftables"
        "nvram"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "osafeloader"
        "oseama"
        "otrx"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "495200fcbf5ac25ae7d40996af581598";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        asus_rt-ac3100 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366b1-pcie"
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-asus_rt-ac3100";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-asus_rt-ac3100-squashfs.trx";
              sha256 = "392ab94b22536fc9262c975b2d3894b560469298a39222b04e1bc7cd718a2e26";
              sha256_unsigned = "392ab94b22536fc9262c975b2d3894b560469298a39222b04e1bc7cd718a2e26";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac3100"
          ];
          titles = [
            {
              model = "RT-AC3100";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-ac56u = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-asus_rt-ac56u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-asus_rt-ac56u-squashfs.trx";
              sha256 = "43406935a078135f9df61a992beeed06bd69af6674eb8c7fded7eec9e0c072d4";
              sha256_unsigned = "43406935a078135f9df61a992beeed06bd69af6674eb8c7fded7eec9e0c072d4";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac56u"
          ];
          titles = [
            {
              model = "RT-AC56U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-ac68u = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-asus_rt-ac68u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-asus_rt-ac68u-squashfs.trx";
              sha256 = "e1cbcab436f1e03a494ae913c8f0bf0af039fb0656bc3f17b59bf2942ac8faf6";
              sha256_unsigned = "e1cbcab436f1e03a494ae913c8f0bf0af039fb0656bc3f17b59bf2942ac8faf6";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac68u"
          ];
          titles = [
            {
              model = "RT-AC68U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-ac87u = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-asus_rt-ac87u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-asus_rt-ac87u-squashfs.trx";
              sha256 = "1f466e3ef615368e109aa9e554f3265b43c5c61414ad98faa29230fa706534a0";
              sha256_unsigned = "1f466e3ef615368e109aa9e554f3265b43c5c61414ad98faa29230fa706534a0";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac87u"
          ];
          titles = [
            {
              model = "RT-AC87U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-ac88u = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366b1-pcie"
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-asus_rt-ac88u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-asus_rt-ac88u-squashfs.trx";
              sha256 = "80afb4837d4477d87eccb4018dee685d58e2d13f86be521d50dd92a9fb83fa64";
              sha256_unsigned = "80afb4837d4477d87eccb4018dee685d58e2d13f86be521d50dd92a9fb83fa64";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac88u"
          ];
          titles = [
            {
              model = "RT-AC88U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-n18u = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-asus_rt-n18u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-asus_rt-n18u-squashfs.trx";
              sha256 = "b744c1202aa16c6baf3397fc6576351318d418e254468b3c21a7ecb85e3df5bb";
              sha256_unsigned = "b744c1202aa16c6baf3397fc6576351318d418e254468b3c21a7ecb85e3df5bb";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-n18u"
          ];
          titles = [
            {
              model = "RT-N18U";
              vendor = "ASUS";
            }
          ];
        };
        buffalo_wxr-1900dhp = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-buffalo_wxr-1900dhp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-buffalo_wxr-1900dhp-squashfs.trx";
              sha256 = "46649ec33c59f89c5f99bcd76d0835eec5647143a6b5c6181b5ab92ef90a3059";
              sha256_unsigned = "46649ec33c59f89c5f99bcd76d0835eec5647143a6b5c6181b5ab92ef90a3059";
              type = "trx";
            }
          ];
          supported_devices = [
            "buffalo,wxr-1900dhp"
          ];
          titles = [
            {
              model = "WXR-1900DHP";
              vendor = "Buffalo";
            }
          ];
        };
        buffalo_wzr-1750dhp = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-buffalo_wzr-1750dhp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-buffalo_wzr-1750dhp-squashfs.trx";
              sha256 = "917f5baa6b7dbc5317a579ca3812d0df9f381153be3246cf9f25c8852f4d47c7";
              sha256_unsigned = "917f5baa6b7dbc5317a579ca3812d0df9f381153be3246cf9f25c8852f4d47c7";
              type = "trx";
            }
          ];
          supported_devices = [
            "buffalo,wzr-1750dhp"
          ];
          titles = [
            {
              model = "WZR-1750DHP";
              vendor = "Buffalo";
            }
          ];
        };
        buffalo_wzr-600dhp2 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-buffalo_wzr-600dhp2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-buffalo_wzr-600dhp2-squashfs.trx";
              sha256 = "4268db5cc64d74bb938f6d2df8a4ed4c9acb69c9b819e0e699c6f8182ddd54a0";
              sha256_unsigned = "4268db5cc64d74bb938f6d2df8a4ed4c9acb69c9b819e0e699c6f8182ddd54a0";
              type = "trx";
            }
          ];
          supported_devices = [
            "buffalo,wzr-600dhp2"
          ];
          titles = [
            {
              model = "WZR-600DHP2";
              vendor = "Buffalo";
            }
          ];
        };
        buffalo_wzr-900dhp = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-buffalo_wzr-900dhp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-buffalo_wzr-900dhp-squashfs.trx";
              sha256 = "2d1da3489e3591133bcea1b04649e4f00c3954ce1d1f75d7e4bc8f0e8c0e2609";
              sha256_unsigned = "2d1da3489e3591133bcea1b04649e4f00c3954ce1d1f75d7e4bc8f0e8c0e2609";
              type = "trx";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-buffalo_wzr-900dhp-squashfs.factory-DHP-EU.bin";
              sha256 = "11c5531bb41b4b597e61ae9ceb7fe5cf536378470dadf8db7705a8d937b741e8";
              sha256_unsigned = "11c5531bb41b4b597e61ae9ceb7fe5cf536378470dadf8db7705a8d937b741e8";
              type = "factory-DHP-EU";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-buffalo_wzr-900dhp-squashfs.factory-DHP2-JP.bin";
              sha256 = "ba25c98da568fb8f348eb8c81d62559e5011897aa7db01ac128ab4f9321f2001";
              sha256_unsigned = "ba25c98da568fb8f348eb8c81d62559e5011897aa7db01ac128ab4f9321f2001";
              type = "factory-DHP2-JP";
            }
          ];
          supported_devices = [
            "buffalo,wzr-900dhp"
          ];
          titles = [
            {
              model = "WZR-900DHP";
              vendor = "Buffalo";
            }
          ];
        };
        dlink_dir-885l = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366b1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-dlink_dir-885l";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-dlink_dir-885l-squashfs.bin";
              sha256 = "0cd38a65b37a21eef8914445c39611d191746307ad442d2f068ba63ac4607199";
              sha256_unsigned = "0cd38a65b37a21eef8914445c39611d191746307ad442d2f068ba63ac4607199";
              type = "bin";
            }
          ];
          supported_devices = [
            "dlink,dir-885l"
          ];
          titles = [
            {
              model = "DIR-885L";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-890l = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-43602a1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-dlink_dir-890l";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-dlink_dir-890l-squashfs.bin";
              sha256 = "9ef4eef74d6d2b47315367be173ce16274e6a772e44f7fe5c1a5ecef2a410581";
              sha256_unsigned = "9ef4eef74d6d2b47315367be173ce16274e6a772e44f7fe5c1a5ecef2a410581";
              type = "bin";
            }
          ];
          supported_devices = [
            "dlink,dir-890l"
          ];
          titles = [
            {
              model = "DIR-890L";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dwl-8610ap = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-dlink_dwl-8610ap";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-dlink_dwl-8610ap-squashfs.factory.tar";
              sha256 = "808dbf798ee6560a23e08bc554452dc24919b409aec496dbcdf1699510341b48";
              sha256_unsigned = "808dbf798ee6560a23e08bc554452dc24919b409aec496dbcdf1699510341b48";
              type = "factory";
            }
          ];
          supported_devices = [
            "dlink,dwl-8610ap"
          ];
          titles = [
            {
              model = "DWL-8610AP";
              vendor = "D-Link";
            }
          ];
        };
        linksys_ea6300-v1 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-linksys_ea6300-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-linksys_ea6300-v1-squashfs.trx";
              sha256 = "bb54171aeae158abe98bff064889bf410deebff33638fa30c433ec796f473c5d";
              sha256_unsigned = "bb54171aeae158abe98bff064889bf410deebff33638fa30c433ec796f473c5d";
              type = "trx";
            }
          ];
          supported_devices = [
            "linksys,ea6300-v1"
          ];
          titles = [
            {
              model = "EA6300";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea6500-v2 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-linksys_ea6500-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-linksys_ea6500-v2-squashfs.trx";
              sha256 = "f66859906609cc410c4e1ad37efb06e21983d63bc0e453989a24168952e6fc53";
              sha256_unsigned = "f66859906609cc410c4e1ad37efb06e21983d63bc0e453989a24168952e6fc53";
              type = "trx";
            }
          ];
          supported_devices = [
            "linksys,ea6500-v2"
          ];
          titles = [
            {
              model = "EA6500";
              variant = "v2";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea9200 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-43602a1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-linksys_ea9200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-linksys_ea9200-squashfs.trx";
              sha256 = "11b6df39980f0b27d6497490e852b4742be6d73ecc6b3b4f2aabaa9812240ce1";
              sha256_unsigned = "11b6df39980f0b27d6497490e852b4742be6d73ecc6b3b4f2aabaa9812240ce1";
              type = "trx";
            }
          ];
          supported_devices = [
            "linksys,ea9200"
          ];
          titles = [
            {
              model = "EA9200";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea9500 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-linksys_ea9500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-linksys_ea9500-squashfs.trx";
              sha256 = "f42308ae128c5ebf8ee7bc0f0fa7dc9004cea9e2f2c5919703de1f0f45e088a8";
              sha256_unsigned = "f42308ae128c5ebf8ee7bc0f0fa7dc9004cea9e2f2c5919703de1f0f45e088a8";
              type = "trx";
            }
          ];
          supported_devices = [
            "linksys,ea9500"
          ];
          titles = [
            {
              model = "EA9500";
              vendor = "Linksys";
            }
          ];
        };
        luxul_abr-4500 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-luxul_abr-4500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-luxul_abr-4500-squashfs.lxl";
              sha256 = "3f81cf82da704c9b9695485380d30b611ac2b6c9627ff3948d50c983dc19a45f";
              sha256_unsigned = "3f81cf82da704c9b9695485380d30b611ac2b6c9627ff3948d50c983dc19a45f";
              type = "lxl";
            }
          ];
          supported_devices = [
            "luxul,abr-4500"
          ];
          titles = [
            {
              model = "ABR-4500";
              vendor = "Luxul";
            }
          ];
        };
        luxul_xap-1610 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-luxul_xap-1610";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-luxul_xap-1610-squashfs.lxl";
              sha256 = "4f75c3151d4d05517aab052f1bac07ef95ac202609ce99c48dc2ad056e6f4564";
              sha256_unsigned = "4f75c3151d4d05517aab052f1bac07ef95ac202609ce99c48dc2ad056e6f4564";
              type = "lxl";
            }
          ];
          supported_devices = [
            "luxul,xap-1610"
          ];
          titles = [
            {
              model = "XAP-1610";
              vendor = "Luxul";
            }
          ];
        };
        luxul_xbr-4500 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-luxul_xbr-4500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-luxul_xbr-4500-squashfs.lxl";
              sha256 = "b915804cd63bb6c02a002075f194c6a3673ae89b257057e48dd88982de7476f1";
              sha256_unsigned = "b915804cd63bb6c02a002075f194c6a3673ae89b257057e48dd88982de7476f1";
              type = "lxl";
            }
          ];
          supported_devices = [
            "luxul,xbr-4500"
          ];
          titles = [
            {
              model = "XBR-4500";
              vendor = "Luxul";
            }
          ];
        };
        luxul_xwr-3150 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-luxul_xwr-3150";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-luxul_xwr-3150-squashfs.lxl";
              sha256 = "7ad58cbe5751eddc181983692351f10cda459e7e4b0dbb9cd69696f209097368";
              sha256_unsigned = "7ad58cbe5751eddc181983692351f10cda459e7e4b0dbb9cd69696f209097368";
              type = "lxl";
            }
          ];
          supported_devices = [
            "luxul,xwr-3150"
          ];
          titles = [
            {
              model = "XWR-3150";
              vendor = "Luxul";
            }
          ];
        };
        meraki_mr26 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "kmod-hwmon-ina2xx"
            "kmod-leds-uleds"
            "nu801"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-meraki_mr26";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-meraki_mr26-squashfs.trx";
              sha256 = "c0964b71acee624bb0e1af7a430aaab32bf3061ed387a6b28ad9f7afc88b2f85";
              sha256_unsigned = "c0964b71acee624bb0e1af7a430aaab32bf3061ed387a6b28ad9f7afc88b2f85";
              type = "trx";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-meraki_mr26-squashfs.sysupgrade.bin";
              sha256 = "1c962ffb23230cbbdf03319e720bd3adcc15d774b884446c731b97110040e735";
              sha256_unsigned = "48c67ef608e6dfa6a79e3ce146307a35c4b6b4040e66d60c3e4e615afa79068a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mr26"
          ];
          titles = [
            {
              model = "MR26";
              vendor = "Meraki";
            }
          ];
        };
        meraki_mr32 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "kmod-leds-pwm"
            "kmod-hwmon-ina2xx"
            "kmod-bluetooth"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-meraki_mr32";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-meraki_mr32-squashfs.sysupgrade.bin";
              sha256 = "6c605804fe9e0e54828eb3fd4bf49c580c6f477aa316d5cf4bbed97aa7460535";
              sha256_unsigned = "6528c3c9b78f77f9f45d0ba943ff9c30b39e8e890dfd4408ae59954b5817f1ef";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-meraki_mr32-squashfs.trx";
              sha256 = "bb576144e83ca25b5b4e4c26f121f7846a5bf4c3f50931e0dc60c2183fc04255";
              sha256_unsigned = "bb576144e83ca25b5b4e4c26f121f7846a5bf4c3f50931e0dc60c2183fc04255";
              type = "trx";
            }
          ];
          supported_devices = [
            "meraki,mr32"
          ];
          titles = [
            {
              model = "MR32";
              vendor = "Meraki";
            }
          ];
        };
        meraki_mx64 = {
          device_packages = [
            "-oseama"
            "kmod-leds-pwm"
            "kmod-usb-ehci"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-meraki_mx64";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-meraki_mx64-squashfs.sysupgrade.bin";
              sha256 = "ef889a7988dcb3ad9bfddffbbc27d6d2d7cb6a66b970e4d88f5b3f9a648f75bf";
              sha256_unsigned = "40557a7443dcf486e45e50b9d192eb6d6f0a394a4d5516866f03e6eaaa7ed8e2";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mx64"
          ];
          titles = [
            {
              model = "MX64";
              vendor = "Cisco Meraki";
            }
          ];
        };
        meraki_mx64_a0 = {
          device_packages = [
            "-oseama"
            "kmod-leds-pwm"
            "kmod-usb-ehci"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-meraki_mx64_a0";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-meraki_mx64_a0-squashfs.sysupgrade.bin";
              sha256 = "a1b3bed39496eed6bd2e0f8ed15f24a11a6e2566e315f770b89cadb88f80b811";
              sha256_unsigned = "94bb5e8306e5424d737714a83d3e951a7566c6d44e101c41327bd44ee65e26ee";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mx64,a0"
          ];
          titles = [
            {
              model = "MX64";
              variant = "A0";
              vendor = "Cisco Meraki";
            }
          ];
        };
        meraki_mx65 = {
          device_packages = [
            "-oseama"
            "kmod-leds-pwm"
            "kmod-usb-ehci"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-meraki_mx65";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-meraki_mx65-squashfs.sysupgrade.bin";
              sha256 = "675f6dbd76c54cfcdfe86b1fc0cb3b58557a84865344054ba71eed56cf6638cd";
              sha256_unsigned = "ac548a287dd66710db6854e915d6b385580392cac40a049856a52c1b2b1b98c3";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mx65"
          ];
          titles = [
            {
              model = "MX65";
              vendor = "Cisco Meraki";
            }
          ];
        };
        netgear_r6250 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-netgear_r6250";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-netgear_r6250-squashfs.chk";
              sha256 = "4df5552cb20f6df75396be9cfee93b578bee4890053609d1ea43c7b2eda0bb33";
              sha256_unsigned = "4df5552cb20f6df75396be9cfee93b578bee4890053609d1ea43c7b2eda0bb33";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r6250"
          ];
          titles = [
            {
              model = "R6250";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r6300-v2 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-netgear_r6300-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-netgear_r6300-v2-squashfs.chk";
              sha256 = "5f758e4031ee2b201d0b74c57db5af00b2f8760433b1cfda9b2bdad3d47393b4";
              sha256_unsigned = "5f758e4031ee2b201d0b74c57db5af00b2f8760433b1cfda9b2bdad3d47393b4";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r6300-v2"
          ];
          titles = [
            {
              model = "R6300";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r7000 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-netgear_r7000";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-netgear_r7000-squashfs.chk";
              sha256 = "8c2e0d3e7dbd45d728c23d5b96034560ec1f8a9e45813b157614701ee18d149e";
              sha256_unsigned = "8c2e0d3e7dbd45d728c23d5b96034560ec1f8a9e45813b157614701ee18d149e";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r7000"
          ];
          titles = [
            {
              model = "R7000";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r7900 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-43602a1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-netgear_r7900";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-netgear_r7900-squashfs.chk";
              sha256 = "1aedefacc5c94043443275621f427c535c87ccf2164c617c6dc0ae0fa0942dfd";
              sha256_unsigned = "1aedefacc5c94043443275621f427c535c87ccf2164c617c6dc0ae0fa0942dfd";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r7900"
          ];
          titles = [
            {
              model = "R7900";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r8000 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-43602a1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-netgear_r8000";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-netgear_r8000-squashfs.chk";
              sha256 = "f851989253fa9277b16c8af3c696e99a03ff1ca7beb80e99d8a610f79371947c";
              sha256_unsigned = "f851989253fa9277b16c8af3c696e99a03ff1ca7beb80e99d8a610f79371947c";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r8000"
          ];
          titles = [
            {
              model = "R8000";
              vendor = "NETGEAR";
            }
          ];
        };
        phicomm_k3 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "-brcmfmac-firmware-4366c0-pcie"
            "brcmfmac-firmware-4366c0-pcie-k3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-phicomm_k3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-phicomm_k3-squashfs.trx";
              sha256 = "5f70394647b3f3524406997ef1e7f41dd22bb6f79bea56f129cd540f260f2337";
              sha256_unsigned = "5f70394647b3f3524406997ef1e7f41dd22bb6f79bea56f129cd540f260f2337";
              type = "trx";
            }
          ];
          supported_devices = [
            "phicomm,k3"
          ];
          titles = [
            {
              model = "K3";
              vendor = "PHICOMM";
            }
            {
              model = "QUANTUM DAX";
              vendor = "Wavlink";
            }
            {
              model = "WL-WN538A8";
              vendor = "Wavlink";
            }
          ];
        };
        smartrg_sr400ac = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-43602a1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-smartrg_sr400ac";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-smartrg_sr400ac-squashfs.trx";
              sha256 = "d571ded648d8a8cb5415419cdc7e99a538b4597a99c63afcdc35a08bd4d9098e";
              sha256_unsigned = "d571ded648d8a8cb5415419cdc7e99a538b4597a99c63afcdc35a08bd4d9098e";
              type = "trx";
            }
          ];
          supported_devices = [
            "smartrg,sr400ac"
          ];
          titles = [
            {
              model = "SR400ac";
              vendor = "SmartRG";
            }
          ];
        };
        tenda_ac9 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bcm53xx-generic-tenda_ac9";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bcm53xx-generic-tenda_ac9-squashfs.trx";
              sha256 = "bf520b16616ca32a10c1db6bdb80312c7a462f2030d6f9c916dd08903d549c52";
              sha256_unsigned = "bf520b16616ca32a10c1db6bdb80312c7a462f2030d6f9c916dd08903d549c52";
              type = "trx";
            }
          ];
          supported_devices = [
            "tenda,ac9"
          ];
          titles = [
            {
              model = "AC9";
              vendor = "Tenda";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "bcm53xx/generic";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
  bmips = {
    bcm6318 = {
      arch_packages = "mips_mips32";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "ethtool"
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
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "cee476db5a3f7bdc3047abf183ee7ff1";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        comtrend_ar-5315u = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-43217-sprom"
            "kmod-leds-bcm6328"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm6318-comtrend_ar-5315u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6318-comtrend_ar-5315u-squashfs-sysupgrade.bin";
              sha256 = "6826604762164cad1bea9a305c78fa9c1cb146a585f2957bb787865a16da5c16";
              sha256_unsigned = "ec893b9085c1f586e818c027cedede9d02b93766ee8312eb91b52739c650c72d";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6318-comtrend_ar-5315u-squashfs-cfe.bin";
              sha256 = "f762708d4e90119ff393efbc16d94144fdfafaf645510b4bb601ae1920db735b";
              sha256_unsigned = "f762708d4e90119ff393efbc16d94144fdfafaf645510b4bb601ae1920db735b";
              type = "cfe";
            }
          ];
          supported_devices = [
            "comtrend,ar-5315u"
          ];
          titles = [
            {
              model = "AR-5315u";
              vendor = "Comtrend";
            }
          ];
        };
        tp-link_td-w8968-v3 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-43217-sprom"
            "kmod-leds-bcm6328"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm6318-tp-link_td-w8968-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6318-tp-link_td-w8968-v3-squashfs-sysupgrade.bin";
              sha256 = "8249cb3ac69fd2c2ab6b4f23ef5df132fcf83b25865d1f9e3d11a7b062e02ef7";
              sha256_unsigned = "11a7d5d1cf8a281c23c72ecdaf37caffc47ba1c3fdf277ca7368645e4f651d75";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6318-tp-link_td-w8968-v3-squashfs-cfe.bin";
              sha256 = "efa2436ccacea0eeeab0d7915d3d584890f16c45780085a0440cb5a56e810216";
              sha256_unsigned = "efa2436ccacea0eeeab0d7915d3d584890f16c45780085a0440cb5a56e810216";
              type = "cfe";
            }
          ];
          supported_devices = [
            "tp-link,td-w8968-v3"
          ];
          titles = [
            {
              model = "TD-W8968";
              variant = "V3";
              vendor = "TP-Link";
            }
            {
              model = "TD-W8968";
              variant = "V4";
              vendor = "TP-Link";
            }
            {
              model = "TD-W8960N";
              variant = "V5";
              vendor = "TP-Link";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "bmips/bcm6318";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    bcm63268 = {
      arch_packages = "mips_mips32";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "ethtool"
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
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "9f4288b310e9274b01f81c582cd90b5c";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        comtrend_vg-8050 = {
          device_packages = [
            "nand-utils"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-leds-bcm6328"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm63268-comtrend_vg-8050";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm63268-comtrend_vg-8050-squashfs-sysupgrade.bin";
              sha256 = "4136d5af6cd16b0306c3ec57521b0a05905fee978ede07cc56de8ab784da8829";
              sha256_unsigned = "360bc82fd7c603b28ac7267a003f68794250013cd159aa10e2323a0a96e3e083";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm63268-comtrend_vg-8050-squashfs-cfe.bin";
              sha256 = "23b2e1047ced9f3952eb4ecbdd43ad5273400c74e5951408e928336db80be199";
              sha256_unsigned = "23b2e1047ced9f3952eb4ecbdd43ad5273400c74e5951408e928336db80be199";
              type = "cfe";
            }
          ];
          supported_devices = [
            "comtrend,vg-8050"
          ];
          titles = [
            {
              model = "VG-8050";
              vendor = "Comtrend";
            }
          ];
        };
        comtrend_vr-3032u = {
          device_packages = [
            "nand-utils"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-leds-bcm6328"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm63268-comtrend_vr-3032u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm63268-comtrend_vr-3032u-squashfs-cfe.bin";
              sha256 = "a8033a99dc1d68b2a0a193a3713372cc8fdfbddec418a7962a2520fa6913c06c";
              sha256_unsigned = "a8033a99dc1d68b2a0a193a3713372cc8fdfbddec418a7962a2520fa6913c06c";
              type = "cfe";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm63268-comtrend_vr-3032u-squashfs-sysupgrade.bin";
              sha256 = "4a40e95ab3d83651ce42497cacb66aec023d93579b2616afbefee873187cefaf";
              sha256_unsigned = "285fa51e72afe09e83c33c8bdef75c081528e988d7a980963b738e9919261199";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "comtrend,vr-3032u"
          ];
          titles = [
            {
              model = "VR-3032u";
              vendor = "Comtrend";
            }
          ];
        };
        sagem_fast-3864-op = {
          device_packages = [
            "nand-utils"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-leds-bcm6328"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm63268-sagem_fast-3864-op";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm63268-sagem_fast-3864-op-squashfs-sysupgrade.bin";
              sha256 = "cea09e4a417f2795dbfdfa6fda2e54032e5f1e20d866f83d78b1d7e495fe38a2";
              sha256_unsigned = "2241035b36d4b18a4bda6c845a000030b402faef02605ce74b20e05c45cc8267";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm63268-sagem_fast-3864-op-squashfs-cfe.bin";
              sha256 = "d9ad139763511ebf1d117b3a927d1b5376ea2308eb7134f7dd9dd3c37abbf8bc";
              sha256_unsigned = "d9ad139763511ebf1d117b3a927d1b5376ea2308eb7134f7dd9dd3c37abbf8bc";
              type = "cfe";
            }
          ];
          supported_devices = [
            "sagem,fast-3864-op"
          ];
          titles = [
            {
              model = "F@ST 3864";
              variant = "OP";
              vendor = "Sagemcom";
            }
          ];
        };
        sercomm_h500-s-lowi = {
          device_packages = [
            "nand-utils"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-leds-bcm6328"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm63268-sercomm_h500-s-lowi";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm63268-sercomm_h500-s-lowi-squashfs-factory.img";
              sha256 = "e268742742696eb73d6d89436d95b46ed708097be8b93b8569019b7543a9f8e4";
              sha256_unsigned = "e268742742696eb73d6d89436d95b46ed708097be8b93b8569019b7543a9f8e4";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm63268-sercomm_h500-s-lowi-squashfs-sysupgrade.bin";
              sha256 = "08fc1302ba5667ce9ba76a6b2000fb6ecb967052388322d75c5b7cf6308d532e";
              sha256_unsigned = "c73e5e6b5dce26dc8e1f5d2dca7c644981af0ffe889e32f7a7151dd2f5112b46";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "sercomm,h500-s-lowi"
          ];
          titles = [
            {
              model = "H500-s";
              variant = "lowi";
              vendor = "Sercomm";
            }
          ];
        };
        sercomm_h500-s-vfes = {
          device_packages = [
            "nand-utils"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-leds-bcm6328"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm63268-sercomm_h500-s-vfes";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm63268-sercomm_h500-s-vfes-squashfs-factory.img";
              sha256 = "8e8b8955ac9b1c791efd99d5590ce9dd46a5906e75651f92d55d7aa479069ce0";
              sha256_unsigned = "8e8b8955ac9b1c791efd99d5590ce9dd46a5906e75651f92d55d7aa479069ce0";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm63268-sercomm_h500-s-vfes-squashfs-sysupgrade.bin";
              sha256 = "5977bcefc4cace0d2501f188b82ccb174a29a70103d8fd4366e310b694797097";
              sha256_unsigned = "2b72248843a8cd3b4a0c40e0f8ea2a9746a1ae39b90eae5db9303f5733d214c2";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "sercomm,h500-s-vfes"
          ];
          titles = [
            {
              model = "H500-s";
              variant = "vfes";
              vendor = "Sercomm";
            }
          ];
        };
        sercomm_shg2500 = {
          device_packages = [
            "nand-utils"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "broadcom-4360-sprom"
            "kmod-i2c-gpio"
            "kmod-leds-sercomm-msp430"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm63268-sercomm_shg2500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm63268-sercomm_shg2500-squashfs-sysupgrade.bin";
              sha256 = "4e32646fc127ff9bd7185c643b886d41c5f64d7ef95037d8a0ed40516aeeabdc";
              sha256_unsigned = "69b6467a8c4de05a505335bb50f9a13f9b2452d1b74304095cef8619d3e45d3e";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm63268-sercomm_shg2500-squashfs-factory.img";
              sha256 = "17a210a86bdb5b642a9f813b04aaba4c91a62faa84e4d2c893877d37309b8e0f";
              sha256_unsigned = "17a210a86bdb5b642a9f813b04aaba4c91a62faa84e4d2c893877d37309b8e0f";
              type = "factory";
            }
          ];
          supported_devices = [
            "sercomm,shg2500"
          ];
          titles = [
            {
              model = "SHG2500";
              vendor = "Sercomm";
            }
          ];
        };
        smartrg_sr505n = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-leds-bcm6328"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm63268-smartrg_sr505n";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm63268-smartrg_sr505n-squashfs-cfe.bin";
              sha256 = "1bcc18a8522c2bc9fb54ddc03133d12f4b20563407a1e87c0261f91f84d71f55";
              sha256_unsigned = "1bcc18a8522c2bc9fb54ddc03133d12f4b20563407a1e87c0261f91f84d71f55";
              type = "cfe";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm63268-smartrg_sr505n-squashfs-sysupgrade.bin";
              sha256 = "62c3096a6fa228a834704f1817e344d2d52f36a48650b5ccde3a40be504f45fd";
              sha256_unsigned = "7acd84fa4a3b4f8dbbbaf1f461d24b934d81ffdc4b52f81461311f2c82c8c3ec";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "smartrg,sr505n"
          ];
          titles = [
            {
              model = "SR505n";
              vendor = "SmartRG";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "bmips/bcm63268";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    bcm6328 = {
      arch_packages = "mips_mips32";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "ethtool"
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
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "d9aef9e53eb9421f6fa5d0864763c1db";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        arcadyan_ar7516 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-43227-sprom"
            "kmod-leds-bcm6328"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm6328-arcadyan_ar7516";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6328-arcadyan_ar7516-squashfs-sysupgrade.bin";
              sha256 = "5b200286b44151cf47d115a887b13bd03f7f871f10faade10648519655b2f8b7";
              sha256_unsigned = "014d803a37ea0957a0cced90ff672c774ab977113f7f42be84c6acd64af9340a";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6328-arcadyan_ar7516-squashfs-cfe.bin";
              sha256 = "c496157f82b70e0597e0b519c9fecbf2b6f870acc3b609f43c9a30a1cec4b1fa";
              sha256_unsigned = "c496157f82b70e0597e0b519c9fecbf2b6f870acc3b609f43c9a30a1cec4b1fa";
              type = "cfe";
            }
          ];
          supported_devices = [
            "arcadyan,ar7516"
          ];
          titles = [
            {
              model = "AR7516";
              vendor = "Arcadyan";
            }
          ];
        };
        comtrend_ar-5381u = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-43225-sprom"
            "kmod-leds-bcm6328"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm6328-comtrend_ar-5381u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6328-comtrend_ar-5381u-squashfs-cfe.bin";
              sha256 = "dfd0eed64970d9aa00488d7f72f9b477da4e472a5aa5dba1f29db8d3cf4c9f4c";
              sha256_unsigned = "dfd0eed64970d9aa00488d7f72f9b477da4e472a5aa5dba1f29db8d3cf4c9f4c";
              type = "cfe";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6328-comtrend_ar-5381u-squashfs-sysupgrade.bin";
              sha256 = "96ef7b078b047e1a6af4bbbc0f90c0f850fa119163fa9957e21ddb4bd8582d86";
              sha256_unsigned = "f9b3ac7d0e90188ef261457e20b8765d5afcffddc93c3dd1bd10cba3b26a0c91";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "comtrend,ar-5381u"
          ];
          titles = [
            {
              model = "AR-5381u";
              vendor = "Comtrend";
            }
          ];
        };
        comtrend_ar-5387un = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-43225-sprom"
            "kmod-leds-bcm6328"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm6328-comtrend_ar-5387un";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6328-comtrend_ar-5387un-squashfs-sysupgrade.bin";
              sha256 = "510698275e8096f7f21535aee1a4ab55bdd85d1c34847ce729afab64db993423";
              sha256_unsigned = "f325b1fb246ff3745f6c0251793a6caa68fed80b375f3f807c06d3fe3897cd2a";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6328-comtrend_ar-5387un-squashfs-cfe.bin";
              sha256 = "a1056842bd67e99cf62c2bbf37eca6dbc0b977200167553e32e779ea36d19936";
              sha256_unsigned = "a1056842bd67e99cf62c2bbf37eca6dbc0b977200167553e32e779ea36d19936";
              type = "cfe";
            }
          ];
          supported_devices = [
            "comtrend,ar-5387un"
          ];
          titles = [
            {
              model = "AR-5387un";
              vendor = "Comtrend";
            }
          ];
        };
        dlink_dsl-2750b-b1 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "kmod-leds-gpio"
            "kmod-leds-bcm6328"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm6328-dlink_dsl-2750b-b1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6328-dlink_dsl-2750b-b1-squashfs-cfe-EU.bin";
              sha256 = "e1300a68a95631d54b8fced90ff7f5d39a2036a64805b0b8cdb4c5cbe9e2d6c4";
              sha256_unsigned = "e1300a68a95631d54b8fced90ff7f5d39a2036a64805b0b8cdb4c5cbe9e2d6c4";
              type = "cfe-EU";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6328-dlink_dsl-2750b-b1-squashfs-cfe-AU.bin";
              sha256 = "f73ca3d5fb0810e7abdeaced0ef4b7b57c08afd38a6a3d7f2beaf9057b3ddcbf";
              sha256_unsigned = "f73ca3d5fb0810e7abdeaced0ef4b7b57c08afd38a6a3d7f2beaf9057b3ddcbf";
              type = "cfe-AU";
            }
          ];
          supported_devices = [
            "dlink,dsl-2750b-b1"
          ];
          titles = [
            {
              model = "DSL-2750B";
              variant = "B1";
              vendor = "D-Link";
            }
            {
              model = "DSL-2740B";
              variant = "F1";
              vendor = "D-Link";
            }
            {
              model = "DSL-2741B";
              variant = "F1";
              vendor = "D-Link";
            }
          ];
        };
        innacomm_w3400v6 = {
          device_packages = [
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-4318-sprom"
            "kmod-leds-bcm6328"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm6328-innacomm_w3400v6";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6328-innacomm_w3400v6-squashfs-sysupgrade.bin";
              sha256 = "1155704bbc1e5a109ffd5dae7fee7720559a02f3076c38f3dd74f83535541b46";
              sha256_unsigned = "de48e091f028899e588720d8cde8f6c3f85c21658616a92fb740bfe2f52218a6";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6328-innacomm_w3400v6-squashfs-cfe.bin";
              sha256 = "cf33bb2104b7a859ab50918f68535540c409398c0552f4d9f5acd28cd12bf6e0";
              sha256_unsigned = "cf33bb2104b7a859ab50918f68535540c409398c0552f4d9f5acd28cd12bf6e0";
              type = "cfe";
            }
          ];
          supported_devices = [
            "innacomm,w3400v6"
          ];
          titles = [
            {
              model = "W3400V6";
              vendor = "Innacomm";
            }
          ];
        };
        inteno_xg6846 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-i2c-core"
            "kmod-i2c-gpio"
            "kmod-leds-bcm6328"
            "kmod-dsa-mv88e6xxx"
            "kmod-sfp"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm6328-inteno_xg6846";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6328-inteno_xg6846-squashfs-cfe.bin";
              sha256 = "2b994aceb4453bd0fa2eaee5ddacc31c8c3642b7ccb260541a8133c583a0f6c7";
              sha256_unsigned = "2b994aceb4453bd0fa2eaee5ddacc31c8c3642b7ccb260541a8133c583a0f6c7";
              type = "cfe";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6328-inteno_xg6846-squashfs-sysupgrade.bin";
              sha256 = "7516dd1052938906e8e077dc2f70580580e3a2ec074dae654406a82a73051d49";
              sha256_unsigned = "ef0a781f36117821b526bd49884e668c31be296e1ddc565b7fc4d9737074ccb5";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "inteno,xg6846"
          ];
          titles = [
            {
              model = "XG6846";
              vendor = "Inteno";
            }
          ];
        };
        nucom_r5010unv2 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-43217-sprom"
            "kmod-leds-bcm6328"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm6328-nucom_r5010unv2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6328-nucom_r5010unv2-squashfs-sysupgrade.bin";
              sha256 = "5c5f88540d7825a8c80fe415489c076f93bb064b52832e7bbf1db3958823cdfa";
              sha256_unsigned = "eccef4e9ddb9705d6867d7cfa3c88c951f9b967529f40131a79ee5cf9f9bbb3c";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6328-nucom_r5010unv2-squashfs-cfe.bin";
              sha256 = "48ee284b91309b7ccd8a0c0eafac2e3e0c3f7d19107fa570cba809b7c82518db";
              sha256_unsigned = "48ee284b91309b7ccd8a0c0eafac2e3e0c3f7d19107fa570cba809b7c82518db";
              type = "cfe";
            }
          ];
          supported_devices = [
            "nucom,r5010unv2"
          ];
          titles = [
            {
              model = "R5010UNv2";
              vendor = "NuCom";
            }
          ];
        };
        sercomm_ad1018 = {
          device_packages = [
            "nand-utils"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-43217-sprom"
            "kmod-leds-bcm6328"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm6328-sercomm_ad1018";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6328-sercomm_ad1018-squashfs-factory.img";
              sha256 = "6ee545cc1aa1e8f5aba1e003e9c5d69af1d055d7cb706e66e13d7fb3e9da8036";
              sha256_unsigned = "6ee545cc1aa1e8f5aba1e003e9c5d69af1d055d7cb706e66e13d7fb3e9da8036";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6328-sercomm_ad1018-squashfs-sysupgrade.bin";
              sha256 = "cf250774d77e82129f058fbb169fde6176ea9029ebd68c12d96f56d7f968ea18";
              sha256_unsigned = "a95e8ebd58e799d76229f6e6f291be9040040287bea274963ce7aefa39642a00";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "sercomm,ad1018"
          ];
          titles = [
            {
              model = "AD1018";
              vendor = "Sercomm";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "bmips/bcm6328";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    bcm6358 = {
      arch_packages = "mips_mips32";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "ethtool"
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
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "2c023636d9b54931c92cc5ca45b370f2";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        huawei_hg556a-b = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "kmod-leds-gpio"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm6358-huawei_hg556a-b";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6358-huawei_hg556a-b-squashfs-sysupgrade.bin";
              sha256 = "7e83e836f0b7f0fa7c110e2e67bf54caa7e384c7e0bf47fa8f9fa51856b83bd7";
              sha256_unsigned = "4af69015283705074dbca931775210813b3ce4a34e8cc4c666b11771dab26d8c";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6358-huawei_hg556a-b-squashfs-cfe.bin";
              sha256 = "64f6f5335e6739fcbce5649d1fe9348d21983e47fc30f8603bd63dd4c7fefdf3";
              sha256_unsigned = "64f6f5335e6739fcbce5649d1fe9348d21983e47fc30f8603bd63dd4c7fefdf3";
              type = "cfe";
            }
          ];
          supported_devices = [
            "huawei,hg556a-b"
          ];
          titles = [
            {
              model = "EchoLife HG556a";
              variant = "B";
              vendor = "Huawei";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "bmips/bcm6358";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
}