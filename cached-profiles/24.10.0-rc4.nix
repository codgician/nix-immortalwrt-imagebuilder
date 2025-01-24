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
    bcm6362 = {
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
        vermagic = "9c21513072f4767a0eee9363a455c98d";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        huawei_hg253s-v2 = {
          device_packages = [
            "nand-utils"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-leds-bcm6328"
            "kmod-leds-gpio"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm6362-huawei_hg253s-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6362-huawei_hg253s-v2-squashfs-sysupgrade.bin";
              sha256 = "2051d36181ba2d77770cbddc79fb4ae4b7b0b93fcdb71613e80d5feb895331e2";
              sha256_unsigned = "ebbf38041a11a36d4d8a22c68f1d0494b6fdd0170a33c4ae9f7ef68ae8a064c3";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6362-huawei_hg253s-v2-squashfs-flash.bin";
              sha256 = "47ba02320212b466d99713b180a57e709da08ba52ab7e675a39b15860253029c";
              sha256_unsigned = "47ba02320212b466d99713b180a57e709da08ba52ab7e675a39b15860253029c";
              type = "flash";
            }
          ];
          supported_devices = [
            "huawei,hg253s-v2"
          ];
          titles = [
            {
              model = "HG253s";
              variant = "v2";
              vendor = "Huawei";
            }
          ];
        };
        netgear_dgnd3700-v2 = {
          device_packages = [
            "nand-utils"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "kmod-leds-bcm6328"
            "kmod-leds-gpio"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm6362-netgear_dgnd3700-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6362-netgear_dgnd3700-v2-squashfs-cfe.bin";
              sha256 = "068227036c15e03712060e65f8e78c8070d4897f22637ea5d9ca4bd48d23e327";
              sha256_unsigned = "068227036c15e03712060e65f8e78c8070d4897f22637ea5d9ca4bd48d23e327";
              type = "cfe";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6362-netgear_dgnd3700-v2-squashfs-sysupgrade.bin";
              sha256 = "aca8a57b3df16c803cdac1d31873f7b6469c6e02eac4c55e6b765431e43a7e9f";
              sha256_unsigned = "e3db1e6d3fc5a4724fa756d0ace2582e2cfc61585e0dddabae580e3787e5a968";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,dgnd3700-v2"
          ];
          titles = [
            {
              model = "DGND3700";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "bmips/bcm6362";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    bcm6368 = {
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
        vermagic = "8bf37186806cc2213d88f6562c5f8908";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        actiontec_r1000h = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "kmod-leds-gpio"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm6368-actiontec_r1000h";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6368-actiontec_r1000h-squashfs-sysupgrade.bin";
              sha256 = "2ad95bf98e2abfd89d9f07c5cbaef6ed1ac9112d0ca2b4a2f03c6049e20e8b26";
              sha256_unsigned = "2b0811429be36a25f4d2d91235802c6628d65e10c79f5f536fa0858c02b5ac75";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6368-actiontec_r1000h-squashfs-cfe.bin";
              sha256 = "0b630f07173a1c78fca45e30204a09af301733847d54459c12ae79f16ad1d403";
              sha256_unsigned = "0b630f07173a1c78fca45e30204a09af301733847d54459c12ae79f16ad1d403";
              type = "cfe";
            }
          ];
          supported_devices = [
            "actiontec,r1000h"
          ];
          titles = [
            {
              model = "R1000H";
              vendor = "Actiontec";
            }
          ];
        };
        comtrend_vr-3025u = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-43222-sprom"
            "kmod-leds-gpio"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm6368-comtrend_vr-3025u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6368-comtrend_vr-3025u-squashfs-cfe.bin";
              sha256 = "10a9313bdae70d5c495219faf88021b689d7d35dac900241cbd02d57212218d1";
              sha256_unsigned = "10a9313bdae70d5c495219faf88021b689d7d35dac900241cbd02d57212218d1";
              type = "cfe";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6368-comtrend_vr-3025u-squashfs-sysupgrade.bin";
              sha256 = "efbdfa7e69c5bcdf84cccd4d4470fd0a58a76752485c0602fe9cdd69ef6ddd94";
              sha256_unsigned = "1196b2e89107d04f7731bfedd8afef9a1c0cef10ee6e16535606b6bc5ef32119";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "comtrend,vr-3025u"
          ];
          titles = [
            {
              model = "VR-3025u";
              vendor = "Comtrend";
            }
          ];
        };
        comtrend_vr-3025un = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-43222-sprom"
            "kmod-leds-gpio"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm6368-comtrend_vr-3025un";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6368-comtrend_vr-3025un-squashfs-cfe.bin";
              sha256 = "035545febc2fa69e3a4941520c6836a7d9bcfb071c426b99681b8ceaf27c9690";
              sha256_unsigned = "035545febc2fa69e3a4941520c6836a7d9bcfb071c426b99681b8ceaf27c9690";
              type = "cfe";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6368-comtrend_vr-3025un-squashfs-sysupgrade.bin";
              sha256 = "71ef70068f010273a899c9897f43ab505b9d4fb20e684028ad62ca7c9e74326f";
              sha256_unsigned = "d4c5e342b3c2de542eec64b3ca2277775838032f4edb7947101ddad22e87ec9a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "comtrend,vr-3025un"
          ];
          titles = [
            {
              model = "VR-3025un";
              vendor = "Comtrend";
            }
          ];
        };
        comtrend_wap-5813n = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-4322-sprom"
            "kmod-leds-gpio"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm6368-comtrend_wap-5813n";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6368-comtrend_wap-5813n-squashfs-cfe.bin";
              sha256 = "af32e8d1f40a3564ec394f6585c182b886c000b17cb6059ef97e72b5ed55718d";
              sha256_unsigned = "af32e8d1f40a3564ec394f6585c182b886c000b17cb6059ef97e72b5ed55718d";
              type = "cfe";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6368-comtrend_wap-5813n-squashfs-sysupgrade.bin";
              sha256 = "13a87796b1e99f93952a5fb1e35315775ef1d5406fd2f39ca20ecec0227ee460";
              sha256_unsigned = "4c555321507b4299a8bf81edd2f82976758f6be1d0606c32c7aeeb2e938f7fb7";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "comtrend,wap-5813n"
          ];
          titles = [
            {
              model = "WAP-5813n";
              vendor = "Comtrend";
            }
          ];
        };
        netgear_dgnd3700-v1 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "kmod-leds-gpio"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm6368-netgear_dgnd3700-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6368-netgear_dgnd3700-v1-squashfs-factory.chk";
              sha256 = "1bdf25729befb15aa5ce3b0ea24aea5c63f53a4a8b21cb4d3f6fde0e007e4019";
              sha256_unsigned = "1bdf25729befb15aa5ce3b0ea24aea5c63f53a4a8b21cb4d3f6fde0e007e4019";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6368-netgear_dgnd3700-v1-squashfs-sysupgrade.bin";
              sha256 = "70ee89814ab560f6ef4747948620c6f78c21ef532662a9b20591e0160e6e2413";
              sha256_unsigned = "23bdea799a4efc69483bbecbe58092f4ee63a57fb51828fb15ff3593feeb0eb3";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,dgnd3700-v1"
          ];
          titles = [
            {
              model = "DGND3700";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_dgnd3800b = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "kmod-leds-gpio"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm6368-netgear_dgnd3800b";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6368-netgear_dgnd3800b-squashfs-factory.chk";
              sha256 = "27e5610aa9540f80de0fc36ae71c702b7a94c7ca9ad8556c3a2ce4a29c886a55";
              sha256_unsigned = "27e5610aa9540f80de0fc36ae71c702b7a94c7ca9ad8556c3a2ce4a29c886a55";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6368-netgear_dgnd3800b-squashfs-sysupgrade.bin";
              sha256 = "cc508303db7e8d8765903802f9f5a9935a56fe8d0de710539e75b9365166ca79";
              sha256_unsigned = "5035a332f96d6265a47de529c1e997a6402cc4010d6d777c9d4dd2ae4a244de7";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,dgnd3800b"
          ];
          titles = [
            {
              model = "DGND3800B";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_evg2000 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-4322-sprom"
            "kmod-leds-gpio"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm6368-netgear_evg2000";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6368-netgear_evg2000-squashfs-sysupgrade.bin";
              sha256 = "b6ab3ad27be192f486dbc2cef4d98f2facae1a1fa9440507eb761327e7dddcbf";
              sha256_unsigned = "a402f0e3711a8cdadf453e3faf9d217aef0e200f22111aee2b7430203d4764cb";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6368-netgear_evg2000-squashfs-factory.chk";
              sha256 = "5b650209b21f07d5ca3ced4773e84636868ef2bac1cd5dd8de06cc3a88404c5d";
              sha256_unsigned = "5b650209b21f07d5ca3ced4773e84636868ef2bac1cd5dd8de06cc3a88404c5d";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,evg2000"
          ];
          titles = [
            {
              model = "EVG2000";
              vendor = "NETGEAR";
            }
          ];
        };
        observa_vh4032n = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-43222-sprom"
            "kmod-leds-gpio"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-bmips-bcm6368-observa_vh4032n";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6368-observa_vh4032n-squashfs-sysupgrade.bin";
              sha256 = "54107d1856520326216ec4617039b60fd43d20447cccc7f9977ae9434b81aa84";
              sha256_unsigned = "c0904613983cdd7a1f3dc9cab404e6ba4c4d57f26f3758ae94a2f32b9ef26c60";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-bmips-bcm6368-observa_vh4032n-squashfs-cfe.bin";
              sha256 = "4fe8efd92015c038cae0e7712efcb136ed55db175da7d748418a3f559ff9c075";
              sha256_unsigned = "4fe8efd92015c038cae0e7712efcb136ed55db175da7d748418a3f559ff9c075";
              type = "cfe";
            }
          ];
          supported_devices = [
            "observa,vh4032n"
          ];
          titles = [
            {
              model = "VH4032N";
              vendor = "Observa";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "bmips/bcm6368";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
  d1 = {
    generic = {
      arch_packages = "riscv64_riscv64";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
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
        vermagic = "42e3dfa825470e42f7d546af54a93633";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        "100ask_dongshan-nezha-stu" = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-d1-generic-100ask_dongshan-nezha-stu";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-d1-generic-100ask_dongshan-nezha-stu-squashfs-sdcard.img.gz";
              sha256 = "153450930ce025525de18763d69f7472bfde84b7953380768dcafe71b4265d93";
              sha256_unsigned = "8593607d7f7b562b6f4d8bc80e91dd38b9fed03a37e89b4c2db1635306c37c83";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-d1-generic-100ask_dongshan-nezha-stu-ext4-sdcard.img.gz";
              sha256 = "fb2bbb662198982c9d3037ed78f4d1ad07145bf80e68516e606f589c6af27f90";
              sha256_unsigned = "517e4c01181f3c62622ef59e05c14d02581f07f32cd693592695ad13dfd9dddc";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "100ask,dongshan-nezha-stu"
            "dongshan_nezha_stu"
          ];
          titles = [
            {
              model = "Nezha STU devkit";
              vendor = "Dongshan";
            }
          ];
        };
        allwinner_d1-nezha = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-d1-generic-allwinner_d1-nezha";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-d1-generic-allwinner_d1-nezha-ext4-sdcard.img.gz";
              sha256 = "2fb6a70cc364c3e3df8a868871b49ebac1d300047bd1c8993f756467db420b6a";
              sha256_unsigned = "04c25656e601a882781e0c1a34a7c082ae641203fefdb61037333062830f0f49";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-d1-generic-allwinner_d1-nezha-squashfs-sdcard.img.gz";
              sha256 = "0e81d506bb8bc453a899194d0fa2d5dc9c7e9f43f42c8bb968484ed73c6ad372";
              sha256_unsigned = "fafe5fca1f109c8219e7c04ee106ab46b8b745bce174f6286e946c5c956371dc";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "allwinner,d1-nezha"
            "nezha"
          ];
          titles = [
            {
              model = "D1";
              vendor = "Nezha";
            }
          ];
        };
        sipeed_lichee-rv-dock = {
          device_packages = [
            "kmod-rtw88-8723ds"
            "wpad-basic-mbedtls"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-d1-generic-sipeed_lichee-rv-dock";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-d1-generic-sipeed_lichee-rv-dock-ext4-sdcard.img.gz";
              sha256 = "9ae81980a0564ffdba85ade1cde1adb24080c4332653a7c41ee4f92aa4ad0a6f";
              sha256_unsigned = "65b710dcfe3a657e1a0a4a142f2478364d07ee95b9e0f50aa7926a27ba6e50a3";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-d1-generic-sipeed_lichee-rv-dock-squashfs-sdcard.img.gz";
              sha256 = "eca026cbb399835cee6aa6484f55e1c9241edfa4fc338f7ab0bedc256a4a22d6";
              sha256_unsigned = "0f4b4bf28372900b2a150ea7dc0a8bd5465c6302fabe88957005369ba74e386e";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "sipeed,lichee-rv-dock"
            "lichee_rv_dock"
          ];
          titles = [
            {
              model = "LicheePi RV (dock)";
              vendor = "Sipeed";
            }
          ];
        };
        widora_mangopi-mq-pro = {
          device_packages = [
            "kmod-rtw88-8723ds"
            "wpad-basic-mbedtls"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-d1-generic-widora_mangopi-mq-pro";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-d1-generic-widora_mangopi-mq-pro-squashfs-sdcard.img.gz";
              sha256 = "db39faebc9e018920ef363fc77ef02a656549549d1753a0027f9b1c4631a2050";
              sha256_unsigned = "a191c6a920f9b4c7517d4fd9f05ea63122b69176a4a3451a630c0872aaad55a3";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-d1-generic-widora_mangopi-mq-pro-ext4-sdcard.img.gz";
              sha256 = "6312a45a13698652734d8ea873626323bb2e38ef95f0631fdb497e278f368ada";
              sha256_unsigned = "adced6a345de4e60baedec0146cc7da111d120156406802ef9b8ce8dda33fca5";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "widora,mangopi-mq-pro"
            "mangopi_mq_pro"
          ];
          titles = [
            {
              model = "MQ Pro";
              vendor = "MangoPi";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "d1/generic";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
  gemini = {
    generic = {
      arch_packages = "arm_fa526";
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
        "kmod-usb-fotg210"
        "kmod-usb-ledtrig-usbport"
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
        vermagic = "93de7fd64378909934ed749f21e74f48";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        dlink_dir-685 = {
          device_packages = [
            "block-mount"
            "fdisk"
            "lsblk"
            "mdadm"
            "kmod-md-mod"
            "kmod-md-linear"
            "kmod-md-multipath"
            "kmod-md-raid0"
            "kmod-md-raid1"
            "kmod-md-raid10"
            "kmod-md-raid456"
            "kmod-fs-btrfs"
            "kmod-fs-cifs"
            "kmod-fs-nfs"
            "kmod-fs-nfsd"
            "kmod-fs-ntfs"
            "kmod-fs-reiserfs"
            "kmod-fs-vfat"
            "kmod-nls-utf8"
            "kmod-usb-storage-extras"
            "kmod-hwmon-drivetemp"
            "cfdisk"
            "e2fsprogs"
            "badblocks"
            "partx-utils"
            "kmod-rt2800-pci"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-gemini-generic-dlink_dir-685";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-gemini-generic-dlink_dir-685-ext4-sysupgrade.bin";
              sha256 = "447314e1bc9ce9e933bc5cf1c0b532f346948ba6ee52f7672d9688a9bc32274e";
              sha256_unsigned = "56a6956e886a27f04f0e58d925b2eaeb580e929fca4a0022a438787586532898";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-gemini-generic-dlink_dir-685-squashfs-sysupgrade.bin";
              sha256 = "100e6d6db45dc257b4d8131c8e5870421709b5b66a2fb86e8f464921f1cbb049";
              sha256_unsigned = "73acce4533c377678c49198e551d046608365a89d3764a806ea4b17fe6fc3603";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-gemini-generic-dlink_dir-685-squashfs-factory.bin";
              sha256 = "8cbea1df6a13bd2f3f2a9cb44f20ada3ebc186af2ca9ace096b25bf4aa87f046";
              sha256_unsigned = "8cbea1df6a13bd2f3f2a9cb44f20ada3ebc186af2ca9ace096b25bf4aa87f046";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-gemini-generic-dlink_dir-685-ext4-factory.bin";
              sha256 = "63edcdaab37af9a1fd8883100100f72c0b2673a44ef656ce3b476c81fb3d4a89";
              sha256_unsigned = "63edcdaab37af9a1fd8883100100f72c0b2673a44ef656ce3b476c81fb3d4a89";
              type = "factory";
            }
          ];
          supported_devices = [
            "dlink,dir-685"
          ];
          titles = [
            {
              model = "DIR-685 Xtreme N Storage Router";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dns-313 = {
          device_packages = [
            "block-mount"
            "fdisk"
            "lsblk"
            "mdadm"
            "kmod-md-mod"
            "kmod-md-linear"
            "kmod-md-multipath"
            "kmod-md-raid0"
            "kmod-md-raid1"
            "kmod-md-raid10"
            "kmod-md-raid456"
            "kmod-fs-btrfs"
            "kmod-fs-cifs"
            "kmod-fs-nfs"
            "kmod-fs-nfsd"
            "kmod-fs-ntfs"
            "kmod-fs-reiserfs"
            "kmod-fs-vfat"
            "kmod-nls-utf8"
            "kmod-usb-storage-extras"
            "kmod-hwmon-drivetemp"
            "cfdisk"
            "e2fsprogs"
            "badblocks"
            "partx-utils"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-gemini-generic-dlink_dns-313";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-gemini-generic-dlink_dns-313-ext4-factory.bin.gz";
              sha256 = "b61730a278964d55ce3aa43a144a569a11345e2ef01218161e2c84eb96fada6c";
              sha256_unsigned = "b61730a278964d55ce3aa43a144a569a11345e2ef01218161e2c84eb96fada6c";
              type = "factory";
            }
          ];
          supported_devices = [
            "dlink,dns-313"
          ];
          titles = [
            {
              model = "DNS-313 1-Bay Network Storage Enclosure";
              vendor = "D-Link";
            }
          ];
        };
        itian_sq201 = {
          device_packages = [
            "block-mount"
            "fdisk"
            "lsblk"
            "mdadm"
            "kmod-md-mod"
            "kmod-md-linear"
            "kmod-md-multipath"
            "kmod-md-raid0"
            "kmod-md-raid1"
            "kmod-md-raid10"
            "kmod-md-raid456"
            "kmod-fs-btrfs"
            "kmod-fs-cifs"
            "kmod-fs-nfs"
            "kmod-fs-nfsd"
            "kmod-fs-ntfs"
            "kmod-fs-reiserfs"
            "kmod-fs-vfat"
            "kmod-nls-utf8"
            "kmod-usb-storage-extras"
            "kmod-hwmon-drivetemp"
            "cfdisk"
            "e2fsprogs"
            "badblocks"
            "partx-utils"
            "kmod-rt61-pci"
            "kmod-usb2-pci"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-gemini-generic-itian_sq201";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-gemini-generic-itian_sq201-squashfs-factory.bin";
              sha256 = "d0c655811f099547b882362552164ccd49d3322fe0a90dbf9ee4033261f55620";
              sha256_unsigned = "d0c655811f099547b882362552164ccd49d3322fe0a90dbf9ee4033261f55620";
              type = "factory";
            }
          ];
          supported_devices = [
            "itian,sq201"
          ];
          titles = [
            {
              model = "Square One SQ201";
              vendor = "ITian";
            }
          ];
        };
        raidsonic_ib-4220-b = {
          device_packages = [
            "block-mount"
            "fdisk"
            "lsblk"
            "mdadm"
            "kmod-md-mod"
            "kmod-md-linear"
            "kmod-md-multipath"
            "kmod-md-raid0"
            "kmod-md-raid1"
            "kmod-md-raid10"
            "kmod-md-raid456"
            "kmod-fs-btrfs"
            "kmod-fs-cifs"
            "kmod-fs-nfs"
            "kmod-fs-nfsd"
            "kmod-fs-ntfs"
            "kmod-fs-reiserfs"
            "kmod-fs-vfat"
            "kmod-nls-utf8"
            "kmod-usb-storage-extras"
            "kmod-hwmon-drivetemp"
            "cfdisk"
            "e2fsprogs"
            "badblocks"
            "partx-utils"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-gemini-generic-raidsonic_ib-4220-b";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-gemini-generic-raidsonic_ib-4220-b-squashfs-factory.bin";
              sha256 = "bb28e647fc55b7b5cdd890ffcc0d57b1636590678b94372d38efe03cfafe8bcd";
              sha256_unsigned = "bb28e647fc55b7b5cdd890ffcc0d57b1636590678b94372d38efe03cfafe8bcd";
              type = "factory";
            }
          ];
          supported_devices = [
            "raidsonic,ib-4220-b"
          ];
          titles = [
            {
              model = "NAS IB-4220-B";
              vendor = "Raidsonic";
            }
          ];
        };
        storlink_sl93512r = {
          device_packages = [
            "block-mount"
            "fdisk"
            "lsblk"
            "mdadm"
            "kmod-md-mod"
            "kmod-md-linear"
            "kmod-md-multipath"
            "kmod-md-raid0"
            "kmod-md-raid1"
            "kmod-md-raid10"
            "kmod-md-raid456"
            "kmod-fs-btrfs"
            "kmod-fs-cifs"
            "kmod-fs-nfs"
            "kmod-fs-nfsd"
            "kmod-fs-ntfs"
            "kmod-fs-reiserfs"
            "kmod-fs-vfat"
            "kmod-nls-utf8"
            "kmod-usb-storage-extras"
            "kmod-hwmon-drivetemp"
            "cfdisk"
            "e2fsprogs"
            "badblocks"
            "partx-utils"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-gemini-generic-storlink_sl93512r";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-gemini-generic-storlink_sl93512r-squashfs-factory.bin";
              sha256 = "6c0ff742df9a2c2e73c9594176f66afe12fc37b14dc2a7fec1f2f3becd772f2e";
              sha256_unsigned = "6c0ff742df9a2c2e73c9594176f66afe12fc37b14dc2a7fec1f2f3becd772f2e";
              type = "factory";
            }
          ];
          supported_devices = [
            "storlink,sl93512r"
          ];
          titles = [
            {
              model = "SL93512r";
              vendor = "StorLink";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "gemini/generic";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
  imx = {
    cortexa53 = {
      arch_packages = "aarch64_cortex-a53";
      default_packages = [
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
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "450f04f8379385447f77d7387b9a5d62";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        gateworks_venice = {
          device_packages = [
            "kmod-hwmon-gsc"
            "kmod-rtc-ds1672"
            "kmod-eeprom-at24"
            "kmod-gpio-button-hotplug"
            "kmod-leds-gpio"
            "kmod-pps-gpio"
            "kmod-lan743x"
            "kmod-sky2"
            "kmod-iio-st_accel-i2c"
            "kmod-can"
            "kmod-can-flexcan"
            "kmod-can-mcp251x"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-imx-cortexa53-gateworks_venice";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-imx-cortexa53-gateworks_venice-squashfs-img.gz";
              sha256 = "5a6cbb8d36b9fde7477bfbebd7e07c769a8c5a920022658e77bf0e204c119d98";
              sha256_unsigned = "ce0b0c40f9c85b100a2141bf69bc964e83049196aa0ce102548554fa0ceea691";
              type = "img";
            }
          ];
          supported_devices = [
            "gateworks,venice"
          ];
          titles = [
            {
              model = "i.MX8M Venice";
              vendor = "Gateworks";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "imx/cortexa53";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    cortexa7 = {
      arch_packages = "arm_cortex-a7_neon-vfpv4";
      default_packages = [
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
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "87e636f3167e487c3639904567b70d67";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        technexion_imx7d-pico-pi = {
          device_packages = [
            "kmod-sound-core"
            "kmod-sound-soc-imx"
            "kmod-sound-soc-imx-sgtl5000"
            "kmod-can"
            "kmod-can-flexcan"
            "kmod-can-raw"
            "kmod-leds-gpio"
            "kmod-input-touchscreen-edt-ft5x06"
            "kmod-usb-hid"
            "kmod-btsdio"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4339-sdio"
            "cypress-nvram-4339-sdio"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-imx-cortexa7-technexion_imx7d-pico-pi";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-imx-cortexa7-technexion_imx7d-pico-pi-squashfs-sysupgrade.bin";
              sha256 = "0a4275315384e4a32d0354033372c75ba9cb2712dff01b2e385ddf388d8344ab";
              sha256_unsigned = "1f32ccebf89df5da5b56316d1113027b0cfee5d32417c1e0b7b77e5f4f2bb549";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-imx-cortexa7-technexion_imx7d-pico-pi-squashfs-combined.bin";
              sha256 = "5813ff02e29e3d6826cbd137e283c1977e31c433f15f4d7045d1684c92f235f3";
              sha256_unsigned = "5813ff02e29e3d6826cbd137e283c1977e31c433f15f4d7045d1684c92f235f3";
              type = "combined";
            }
          ];
          supported_devices = [
            "technexion,imx7d-pico-pi"
          ];
          titles = [
            {
              model = "PICO-PI-IMX7D";
              vendor = "TechNexion";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "imx/cortexa7";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    cortexa9 = {
      arch_packages = "arm_cortex-a9_neon";
      default_packages = [
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
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "fa1956f080f53e389c94655ddf62060b";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        solidrun_cubox-i = {
          device_packages = [
            "kmod-drm-imx"
            "kmod-drm-imx-hdmi"
            "kmod-usb-hid"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-imx-cortexa9-solidrun_cubox-i";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-imx-cortexa9-solidrun_cubox-i-squashfs-combined.bin";
              sha256 = "954a0eaac1a166620a5adab2f2357ea33768f53e7105909ab27631c2d709ea30";
              sha256_unsigned = "954a0eaac1a166620a5adab2f2357ea33768f53e7105909ab27631c2d709ea30";
              type = "combined";
            }
          ];
          supported_devices = [
            "solidrun,cubox-i"
          ];
          titles = [
            {
              model = "CuBox-i";
              vendor = "SolidRun";
            }
          ];
        };
        toradex_apalis = {
          device_packages = [
            "kmod-can"
            "kmod-can-flexcan"
            "kmod-can-raw"
            "kmod-leds-gpio"
            "kmod-gpio-button-hotplug"
            "kmod-pps-gpio"
            "kmod-rtc-ds1307"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-imx-cortexa9-toradex_apalis";
          images = [
            {
              name = "immortalwrt-24.10.0-rc4-imx-cortexa9-toradex_apalis-recovery.scr";
              sha256 = "c93aaee91b967f2afd3e933cd5170bea86ccdf33be998b8f04417e2184faa2bf";
              sha256_unsigned = "c93aaee91b967f2afd3e933cd5170bea86ccdf33be998b8f04417e2184faa2bf";
              type = "recovery.scr";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-imx-cortexa9-toradex_apalis-squashfs.sysupgrade.bin";
              sha256 = "c84f3df7f2c446a3370314fe756f944b24141f1bdf1e048d410fb914d2b209a2";
              sha256_unsigned = "c61fd3f8e17e5377ef41c99afa98e401d134a654cb0cd7c6d042b87bc4b2d73a";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-imx-cortexa9-toradex_apalis-squashfs.combined.bin";
              sha256 = "be7c28bebb8da16f62a09a2f4f7057fad5e61b9e3d5a4ae6135c436a1bda4e2e";
              sha256_unsigned = "be7c28bebb8da16f62a09a2f4f7057fad5e61b9e3d5a4ae6135c436a1bda4e2e";
              type = "combined";
            }
          ];
          supported_devices = [
            "apalis,ixora"
            "apalis,eval"
          ];
          titles = [
            {
              model = "Apalis family";
              vendor = "Toradex";
            }
          ];
        };
        ventana = {
          device_packages = [
            "kmod-sky2"
            "kmod-sound-core"
            "kmod-sound-soc-imx"
            "kmod-sound-soc-imx-sgtl5000"
            "kmod-can"
            "kmod-can-flexcan"
            "kmod-can-raw"
            "kmod-hwmon-gsc"
            "kmod-leds-gpio"
            "kmod-pps-gpio"
            "kobs-ng"
            "kmod-gpio-button-hotplug"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-imx-cortexa9-gateworks_ventana-large";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-imx-cortexa9-gateworks_ventana-large-squashfs-nand.ubi";
              sha256 = "589f131687f5882e1913de7cada805e1c4c24ac3c8103004d088b59c4e22da1b";
              sha256_unsigned = "589f131687f5882e1913de7cada805e1c4c24ac3c8103004d088b59c4e22da1b";
              type = "nand";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-imx-cortexa9-gateworks_ventana-squashfs-nand.ubi";
              sha256 = "d8be5d0ad4ad6a16908effa4566374ce86a88d17028be0f03c435d8bd2870157";
              sha256_unsigned = "d8be5d0ad4ad6a16908effa4566374ce86a88d17028be0f03c435d8bd2870157";
              type = "nand";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-imx-cortexa9-gateworks_ventana-squashfs-bootfs.tar.gz";
              sha256 = "dff91a18385b79d83745b5529e1913f5b8f4fdfaff884532f50017c783a175ee";
              sha256_unsigned = "dff91a18385b79d83745b5529e1913f5b8f4fdfaff884532f50017c783a175ee";
              type = "bootfs";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-imx-cortexa9-gateworks_ventana-squashfs-img.gz";
              sha256 = "465e5248da1201710fd87969dcb09417b2da603e5744872dae167dc02e012971";
              sha256_unsigned = "465e5248da1201710fd87969dcb09417b2da603e5744872dae167dc02e012971";
              type = "img";
            }
          ];
          supported_devices = [
            "gateworks,ventana-large"
          ];
          titles = [
            {
              model = "Ventana family";
              variant = "large NAND flash";
              vendor = "Gateworks";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "imx/cortexa9";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
  ipq40xx = {
    chromium = {
      arch_packages = "arm_cortex-a7_neon-vfpv4";
      default_packages = [
        "ath10k-board-qca4019"
        "ath10k-firmware-qca4019-ct"
        "autocore"
        "automount"
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-ath10k-ct"
        "kmod-gpio-button-hotplug"
        "kmod-leds-gpio"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-dwc3"
        "kmod-usb-dwc3-qcom"
        "kmod-usb3"
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
        "wpad-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "094d8b16bb529404580d3a4f9ed4cba1";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        google_wifi = {
          device_packages = [
            "partx-utils"
            "mkf2fs"
            "e2fsprogs"
            "kmod-fs-ext4"
            "kmod-fs-f2fs"
            "kmod-google-firmware"
            "kmod-ramoops"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq40xx-chromium-google_wifi";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq40xx-chromium-google_wifi-initramfs-fit-zImage.itb.vboot";
              sha256 = "7a5e21dcfde7612dadc0a70730eab583b8e38ed0a0bec786d8bfc8ef2c03977d";
              sha256_unsigned = "7a5e21dcfde7612dadc0a70730eab583b8e38ed0a0bec786d8bfc8ef2c03977d";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq40xx-chromium-google_wifi-squashfs-sysupgrade.bin";
              sha256 = "8e552975b608b27517b51ff3e448243ab48c79b42643d42bf9f05c09bdfbfd8f";
              sha256_unsigned = "acfeffba827de05b3c6219f9bb9d871f86e0a1e9063e67d1fffbc7f9459600cf";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq40xx-chromium-google_wifi-squashfs-factory.bin";
              sha256 = "bbbb05e027c2842b37f55e390358ad86fcfbec4918095a2bf8fb6239242bbdd7";
              sha256_unsigned = "bbbb05e027c2842b37f55e390358ad86fcfbec4918095a2bf8fb6239242bbdd7";
              type = "factory";
            }
          ];
          supported_devices = [
            "google,wifi"
          ];
          titles = [
            {
              model = "WiFi (Gale)";
              vendor = "Google";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "ipq40xx/chromium";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    mikrotik = {
      arch_packages = "arm_cortex-a7_neon-vfpv4";
      default_packages = [
        "ath10k-firmware-qca4019-ct"
        "autocore"
        "automount"
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-ath10k-ct"
        "kmod-gpio-button-hotplug"
        "kmod-leds-gpio"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-dwc3"
        "kmod-usb-dwc3-qcom"
        "kmod-usb3"
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
        "wpad-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "3583ba0dd6baf6903ff3c88aa70e0693";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        mikrotik_cap-ac = {
          device_packages = [
            "-kmod-ath10k-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_cap-ac";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_cap-ac-squashfs-sysupgrade.bin";
              sha256 = "d19fd7b4565a49b9f252a8ed75bd8b72125e94782320db0dfaf51e2c32de42d1";
              sha256_unsigned = "c8216cc58990718f66393e3e3b3215ad3fa6c3c15751a28a0183858594ef26bf";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_cap-ac-initramfs-kernel.bin";
              sha256 = "79ca9b1df8e50ba7e2cdac8587c682a9c7f85d95c8738d5a70519aeb51c21fd7";
              sha256_unsigned = "79ca9b1df8e50ba7e2cdac8587c682a9c7f85d95c8738d5a70519aeb51c21fd7";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,cap-ac"
          ];
          titles = [
            {
              model = "cAP ac";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_hap-ac2 = {
          device_packages = [
            "-kmod-ath10k-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_hap-ac2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_hap-ac2-squashfs-sysupgrade.bin";
              sha256 = "73e54877caaeb9bb413d12bee162db92f2f74cc412af9f59810b694309b0b32f";
              sha256_unsigned = "d202d43f7fdbae66b74d3dfa79fd4d00e9dfa0fc2458a38ff7631f23474298eb";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_hap-ac2-initramfs-kernel.bin";
              sha256 = "f7ce3ce3d8a8bdad8ac771178ca5b94027e855e7548744326a248f954836ee58";
              sha256_unsigned = "f7ce3ce3d8a8bdad8ac771178ca5b94027e855e7548744326a248f954836ee58";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,hap-ac2"
          ];
          titles = [
            {
              model = "hAP ac2";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_hap-ac3 = {
          device_packages = [
            "kmod-ledtrig-gpio"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_hap-ac3";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_hap-ac3-initramfs-kernel.bin";
              sha256 = "acd14a40a796654abcddde716cbdd64ec30d199d8177a5ebad0a6e228e98cfb0";
              sha256_unsigned = "acd14a40a796654abcddde716cbdd64ec30d199d8177a5ebad0a6e228e98cfb0";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_hap-ac3-squashfs-sysupgrade.bin";
              sha256 = "75fbda2b164fdeff1cc837f0c4c797da96dbe69f0efde8e3ab4815676fa5f712";
              sha256_unsigned = "abf5aa18c01800d6ea004deb6500a62a23028d6f3b208cfb14430c759ca2a7b7";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,hap-ac3"
          ];
          titles = [
            {
              model = "hAP ac3";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_hap-ac3-lte6-kit = {
          device_packages = [
            "kmod-ledtrig-gpio"
            "kmod-usb-acm"
            "kmod-usb-net-rndis"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_hap-ac3-lte6-kit";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_hap-ac3-lte6-kit-squashfs-sysupgrade.bin";
              sha256 = "e41ad92ae50b769cdb944b1527b494eab8a9ac91544c7e5f408273fdb29b4940";
              sha256_unsigned = "c2842290516ef67f7c4a3eb3d77ae3384bb962745a556a091f7dfd7bd63b4b27";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_hap-ac3-lte6-kit-initramfs-kernel.bin";
              sha256 = "0bdd5ce2f61d7296e67287203afd3136f015bfe5473b3b2a7c9ad6a1277f9527";
              sha256_unsigned = "0bdd5ce2f61d7296e67287203afd3136f015bfe5473b3b2a7c9ad6a1277f9527";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,hap-ac3-lte6-kit"
          ];
          titles = [
            {
              model = "hAP ac3 LTE6 kit";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_lhgg-60ad = {
          device_packages = [
            "-kmod-ath10k-ct"
            "-ath10k-firmware-qca4019-ct"
            "kmod-wil6210"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_lhgg-60ad";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_lhgg-60ad-squashfs-sysupgrade.bin";
              sha256 = "6199ef24fc01db4494f4dab976ebca0fcf85e4d2caf9f2df8644a9b6ca97e6ed";
              sha256_unsigned = "412374996ca20d88039cb21cef7c331387bf2949e9504fdd3cc5542bddce1a14";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_lhgg-60ad-initramfs-kernel.bin";
              sha256 = "1582598e1d80db3530fe914d84ddcd6e06b997e8b5f53894b60b99d74fabea0c";
              sha256_unsigned = "1582598e1d80db3530fe914d84ddcd6e06b997e8b5f53894b60b99d74fabea0c";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,lhgg-60ad"
          ];
          titles = [
            {
              model = "Wireless Wire Dish LHGG-60ad";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_sxtsq-5-ac = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_sxtsq-5-ac";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_sxtsq-5-ac-squashfs-sysupgrade.bin";
              sha256 = "be90995a0a9749c956829208328e64ae80024a14efc7dc130ed74957abf142d1";
              sha256_unsigned = "c2b5c18bdbb8ba01d568c06e6351417ce311f9a4ac68e1496eb4a70909f99bf2";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_sxtsq-5-ac-initramfs-kernel.bin";
              sha256 = "b976c6a71d6ba6116452847e286546d5fdcfcc3f27dbe388aafedec122fa8c6e";
              sha256_unsigned = "b976c6a71d6ba6116452847e286546d5fdcfcc3f27dbe388aafedec122fa8c6e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,sxtsq-5-ac"
          ];
          titles = [
            {
              model = "SXTsq 5 ac (RBSXTsqG-5acD)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_wap-ac = {
          device_packages = [
            "-kmod-ath10k-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_wap-ac";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_wap-ac-squashfs-sysupgrade.bin";
              sha256 = "06ad01ec7dc43f91f4fe41d667d23def42f72e3ad85bee85a0a456c3b6267d62";
              sha256_unsigned = "11d7b5650370314dc1bf6f09f0318079be478f38a7bbe420dd0ae36e97867424";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_wap-ac-initramfs-kernel.bin";
              sha256 = "18f5408c6af9b3e4d749805d01c4bf44ce4894e98c5a08e3c77e63aeb36b6523";
              sha256_unsigned = "18f5408c6af9b3e4d749805d01c4bf44ce4894e98c5a08e3c77e63aeb36b6523";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,wap-ac"
          ];
          titles = [
            {
              model = "wAP ac";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_wap-ac-lte = {
          device_packages = [
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
            "kmod-usb-acm"
            "kmod-usb-net-rndis"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_wap-ac-lte";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_wap-ac-lte-squashfs-sysupgrade.bin";
              sha256 = "a5e89730dfd78b142be150eb9aaf94bdf1a5c51937998cc814be301683e2d6e2";
              sha256_unsigned = "417ef556be70c8f5e86b8939897c76216b41cd3ae0146417933b487eee830bf5";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_wap-ac-lte-initramfs-kernel.bin";
              sha256 = "0ad7ab546cef762413d034076637b53ccd09cdd40491538f63f20c9ec9bce8fe";
              sha256_unsigned = "0ad7ab546cef762413d034076637b53ccd09cdd40491538f63f20c9ec9bce8fe";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,wap-ac-lte"
          ];
          titles = [
            {
              model = "wAP ac LTE";
              vendor = "MikroTik";
            }
            {
              model = "wAP ac LTE6";
              vendor = "Mikrotik";
            }
          ];
        };
        mikrotik_wap-r-ac = {
          device_packages = [
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
            "kmod-usb-acm"
            "kmod-usb-net-rndis"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_wap-r-ac";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_wap-r-ac-initramfs-kernel.bin";
              sha256 = "3093dab1f5f3625c08d3e33631fbcbe59d9ed68bbc58d750f879dd8fe84d1803";
              sha256_unsigned = "3093dab1f5f3625c08d3e33631fbcbe59d9ed68bbc58d750f879dd8fe84d1803";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq40xx-mikrotik-mikrotik_wap-r-ac-squashfs-sysupgrade.bin";
              sha256 = "adf476fdee68784c44b51577e34d766603191570f0ffe9acd9448da432b3bbfb";
              sha256_unsigned = "43912a3fce152f8634d67ccbbe3bacfdc528ddb58129da2705da75192da52ea8";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,wap-r-ac"
          ];
          titles = [
            {
              model = "wAP R ac";
              vendor = "MikroTik";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "ipq40xx/mikrotik";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
  ipq806x = {
    chromium = {
      arch_packages = "arm_cortex-a15_neon-vfpv4";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-ata-ahci"
        "kmod-ata-ahci-platform"
        "kmod-ath10k-ct"
        "kmod-gpio-button-hotplug"
        "kmod-leds-gpio"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-phy-qcom-ipq806x-usb"
        "kmod-usb-dwc3-qcom"
        "kmod-usb-ledtrig-usbport"
        "kmod-usb-ohci"
        "kmod-usb2"
        "kmod-usb3"
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
        "wpad-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "b2ae979ba0bb5d3b38a8232bac368b90";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        asus_onhub = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "e2fsprogs"
            "kmod-fs-ext4"
            "losetup"
            "partx-utils"
            "mkf2fs"
            "kmod-fs-f2fs"
            "ucode"
            "kmod-google-firmware"
            "kmod-tpm-i2c-infineon"
            "kmod-sound-soc-ipq8064-storm"
            "kmod-usb-storage"
            "kmod-ramoops"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-chromium-asus_onhub";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-chromium-asus_onhub-initramfs-fit-zImage.itb.vboot";
              sha256 = "738948cd081fed273c430efcb8f8bd4404914008c6937a4e0b69f9fc01120666";
              sha256_unsigned = "738948cd081fed273c430efcb8f8bd4404914008c6937a4e0b69f9fc01120666";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-chromium-asus_onhub-squashfs-sysupgrade.bin";
              sha256 = "0da90406820e65b8a4b1dc094b2a7cd83b50a843a6635679b547ab5b23c1e9e9";
              sha256_unsigned = "88b6e043ab89a7a30c6a8b125a825db359add535e7567e3e339d3d2fd83af9b0";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-chromium-asus_onhub-squashfs-factory.bin";
              sha256 = "15d6f16d5334b90bf95192efbf287c81d8d759758fa41be69b70774ca0bcc28f";
              sha256_unsigned = "15d6f16d5334b90bf95192efbf287c81d8d759758fa41be69b70774ca0bcc28f";
              type = "factory";
            }
          ];
          supported_devices = [
            "asus,onhub"
          ];
          titles = [
            {
              model = "OnHub SRT-AC1900";
              vendor = "ASUS";
            }
          ];
        };
        tplink_onhub = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "e2fsprogs"
            "kmod-fs-ext4"
            "losetup"
            "partx-utils"
            "mkf2fs"
            "kmod-fs-f2fs"
            "ucode"
            "kmod-google-firmware"
            "kmod-tpm-i2c-infineon"
            "kmod-sound-soc-ipq8064-storm"
            "kmod-usb-storage"
            "kmod-ramoops"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-chromium-tplink_onhub";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-chromium-tplink_onhub-initramfs-fit-zImage.itb.vboot";
              sha256 = "283b1c2855f5697d98904816a7d0b89bd97c5a91f3fb90a615d635d1b4d82d85";
              sha256_unsigned = "283b1c2855f5697d98904816a7d0b89bd97c5a91f3fb90a615d635d1b4d82d85";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-chromium-tplink_onhub-squashfs-factory.bin";
              sha256 = "de258a13d0ead1d8d1d675ff310391271e1f5f93287d9d3bd746ba11369f8ab2";
              sha256_unsigned = "de258a13d0ead1d8d1d675ff310391271e1f5f93287d9d3bd746ba11369f8ab2";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-chromium-tplink_onhub-squashfs-sysupgrade.bin";
              sha256 = "6a9f5372fc0853e346ca92798c5e85a2d02db86a05ea2a63f0ce9f99e7570b76";
              sha256_unsigned = "f36eebbc361aafecd3d2d830b08fc03b6ae9f48ce3c59a36b520a9edd400683d";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,onhub"
          ];
          titles = [
            {
              model = "OnHub AC1900 Cloud Router";
              vendor = "TP-Link";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "ipq806x/chromium";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    generic = {
      arch_packages = "arm_cortex-a15_neon-vfpv4";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-ata-ahci"
        "kmod-ata-ahci-platform"
        "kmod-ath10k-ct"
        "kmod-gpio-button-hotplug"
        "kmod-leds-gpio"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-phy-qcom-ipq806x-usb"
        "kmod-usb-dwc3-qcom"
        "kmod-usb-ledtrig-usbport"
        "kmod-usb-ohci"
        "kmod-usb2"
        "kmod-usb3"
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
        "wpad-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "820e1c1f6e04baa37766405078d58108";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        arris_tr4400-v2 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-arris_tr4400-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-arris_tr4400-v2-initramfs-uImage";
              sha256 = "22abe571b665cbbfe74c4f9a56f9617cc69086aaa075b293ec87d42c05663849";
              sha256_unsigned = "22abe571b665cbbfe74c4f9a56f9617cc69086aaa075b293ec87d42c05663849";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-arris_tr4400-v2-squashfs-sysupgrade.bin";
              sha256 = "5e11193b1dadbc5d4d340d92d98a76846fa39c94ea415c9df7df58c94db4ac6d";
              sha256_unsigned = "56b3e36d301f779e6d65cf95c271f07f8c29a1f95590b04d083c990e6997b4b7";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "arris,tr4400-v2"
          ];
          titles = [
            {
              model = "TR4400";
              variant = "v2";
              vendor = "Arris";
            }
          ];
        };
        askey_rt4230w-rev6 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-askey_rt4230w-rev6";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-askey_rt4230w-rev6-squashfs-sysupgrade.bin";
              sha256 = "1ab2ed819ed6a690b37e7c3a4abd9ed6a9464578123ecd75915f51edd702743b";
              sha256_unsigned = "594ac9f380dab402b2457d3b4de4eb08ab914d00e8baf2835021b0773a290a5e";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-askey_rt4230w-rev6-initramfs-uImage";
              sha256 = "57387f9b5aa47fd6522b56884190032a2be213faa301aad6e440c04139236901";
              sha256_unsigned = "57387f9b5aa47fd6522b56884190032a2be213faa301aad6e440c04139236901";
              type = "kernel";
            }
          ];
          supported_devices = [
            "askey,rt4230w-rev6"
          ];
          titles = [
            {
              model = "RT4230W";
              variant = "REV6";
              vendor = "Askey";
            }
          ];
        };
        asrock_g10 = {
          device_packages = [
            "kmod-i2c-gpio"
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-asrock_g10";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-asrock_g10-squashfs-nand-factory.bin";
              sha256 = "fda1e43a8b18aee1c308c07fe890bef49ba359617362764425f730eab321bda8";
              sha256_unsigned = "fda1e43a8b18aee1c308c07fe890bef49ba359617362764425f730eab321bda8";
              type = "nand-factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-asrock_g10-initramfs-fit-uImage.itb";
              sha256 = "69088ca2e8c7521058e2877f5ba03748520bc8feed37973393e080fafd25a844";
              sha256_unsigned = "69088ca2e8c7521058e2877f5ba03748520bc8feed37973393e080fafd25a844";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-asrock_g10-squashfs-nand-sysupgrade.bin";
              sha256 = "13343cff34f8ea7c8b4b2c9eb7c025aa1bf00861e6077017480616716ae129be";
              sha256_unsigned = "52b5bf209c0e9b60c97add165b8f56470233d5486b3249892b62c7f42223143c";
              type = "nand-sysupgrade";
            }
          ];
          supported_devices = [
            "asrock,g10"
          ];
          titles = [
            {
              model = "G10";
              vendor = "ASRock";
            }
          ];
        };
        buffalo_wxr-2533dhp = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-buffalo_wxr-2533dhp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-buffalo_wxr-2533dhp-squashfs-sysupgrade.bin";
              sha256 = "7c55fa3a417de7e88725b33947ec042a19ac51f26ed1d3737e168b2f736e8ec8";
              sha256_unsigned = "e94fcf8a29f8eed2eea0371f85691036de85eff31a714b87b67604c3b42ccb7e";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-buffalo_wxr-2533dhp-initramfs-uImage";
              sha256 = "8b4706a101c05b8967b1132168ed88f3ef1127a5fe383ad99f0b38101a0edbd9";
              sha256_unsigned = "8b4706a101c05b8967b1132168ed88f3ef1127a5fe383ad99f0b38101a0edbd9";
              type = "kernel";
            }
          ];
          supported_devices = [
            "buffalo,wxr-2533dhp"
          ];
          titles = [
            {
              model = "WXR-2533DHP";
              vendor = "Buffalo";
            }
          ];
        };
        compex_wpq864 = {
          device_packages = [
            "kmod-gpio-beeper"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-compex_wpq864";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-compex_wpq864-initramfs-fit-uImage.itb";
              sha256 = "ab5b5e7cc8369674e919b41f6fad8639fce602ebec6906d128ca8cb6fd9abc32";
              sha256_unsigned = "ab5b5e7cc8369674e919b41f6fad8639fce602ebec6906d128ca8cb6fd9abc32";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-compex_wpq864-squashfs-nand-factory.bin";
              sha256 = "b9e69dd75939cedc505076755d408386dd12d2f1d90f9c0b963fb1d47c8c58e7";
              sha256_unsigned = "b9e69dd75939cedc505076755d408386dd12d2f1d90f9c0b963fb1d47c8c58e7";
              type = "nand-factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-compex_wpq864-squashfs-nand-sysupgrade.bin";
              sha256 = "27cf9d3a0a5fa80aed817864d6dbe468227e5e5e106764c932c93df5bb5f7b0d";
              sha256_unsigned = "0bc4d0f41fc302f45830af00fc80f89cb9ae8ec52d91d6d2040e53f57a2d27c2";
              type = "nand-sysupgrade";
            }
          ];
          supported_devices = [
            "compex,wpq864"
          ];
          titles = [
            {
              model = "WPQ864";
              vendor = "Compex";
            }
          ];
        };
        edgecore_ecw5410 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-edgecore_ecw5410";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-edgecore_ecw5410-squashfs-nand-sysupgrade.bin";
              sha256 = "99e3c72d6baca87f9e9cb4dc06007fb78484b9f537e363b481c1a87cfc76ff8f";
              sha256_unsigned = "70d2118a74a1fdc5a88ff40824b7d4bd683da15e126a5b345b2b2eac092cc728";
              type = "nand-sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-edgecore_ecw5410-squashfs-nand-factory.bin";
              sha256 = "37d5b5ff3fbfbacb22873f0772e99a949e418cede4f6b8348cd4d34f82358f4e";
              sha256_unsigned = "37d5b5ff3fbfbacb22873f0772e99a949e418cede4f6b8348cd4d34f82358f4e";
              type = "nand-factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-edgecore_ecw5410-initramfs-fit-uImage.itb";
              sha256 = "b73d99a76b3f535056831a4ff08e81c0abd46651d2b760f2ced8de0b2f4849be";
              sha256_unsigned = "b73d99a76b3f535056831a4ff08e81c0abd46651d2b760f2ced8de0b2f4849be";
              type = "kernel";
            }
          ];
          supported_devices = [
            "edgecore,ecw5410"
          ];
          titles = [
            {
              model = "ECW5410";
              vendor = "Edgecore";
            }
          ];
        };
        extreme_ap3935 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-extreme_ap3935";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-extreme_ap3935-squashfs-nand-sysupgrade.bin";
              sha256 = "e875c9e20ccb13f32db7d0225dacfcada4209117da395bfcdf507d3374961c16";
              sha256_unsigned = "802f40ea5d4a92d57ed829655f4ecf370cfec1c141d6ff46cdcaa3fc29bb8596";
              type = "nand-sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-extreme_ap3935-squashfs-nand-factory.bin";
              sha256 = "75547eb71fe54459d59806e0ff00add4065358f16c082812208572751bf9186b";
              sha256_unsigned = "75547eb71fe54459d59806e0ff00add4065358f16c082812208572751bf9186b";
              type = "nand-factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-extreme_ap3935-initramfs-uImage";
              sha256 = "410d617c34f97fe570326160084019b0ea29a31ae9d65797a5309f268202c6cc";
              sha256_unsigned = "410d617c34f97fe570326160084019b0ea29a31ae9d65797a5309f268202c6cc";
              type = "kernel";
            }
          ];
          supported_devices = [
            "extreme,ap3935"
          ];
          titles = [
            {
              model = "AP3935";
              vendor = "Extreme Networks";
            }
          ];
        };
        fortinet_fap-421e = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-fortinet_fap-421e";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-fortinet_fap-421e-initramfs-fit-uImage.itb";
              sha256 = "7150bf9e51ef410354cb55df9286aacd50dc1915287972943b39460f6d7f8aa3";
              sha256_unsigned = "7150bf9e51ef410354cb55df9286aacd50dc1915287972943b39460f6d7f8aa3";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-fortinet_fap-421e-squashfs-sysupgrade.bin";
              sha256 = "42e41c220c50ede3ac8f48d776db3aa9c71bb9955a6669e930c9bb8b9a6d051d";
              sha256_unsigned = "00889c05c2d9ac6f58fd3081f07078c1cd2e5377354cd1d652d191d352f8f31d";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "fortinet,fap-421e"
          ];
          titles = [
            {
              model = "FAP-421E";
              vendor = "Fortinet";
            }
          ];
        };
        linksys_e8350-v1 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-linksys_e8350-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-linksys_e8350-v1-squashfs-factory.bin";
              sha256 = "108ac5febac728fac93a55c5c5f1ef3daa8eb31caef2da0e2d2a4ec2dce5cc13";
              sha256_unsigned = "108ac5febac728fac93a55c5c5f1ef3daa8eb31caef2da0e2d2a4ec2dce5cc13";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-linksys_e8350-v1-squashfs-sysupgrade.bin";
              sha256 = "c2afac500fa532e2efbea3e82b9af3e8c0d4e3c2cd44b60f4f6e3d35287c7054";
              sha256_unsigned = "71c0a5bec92c3d40d678df5962ba35007462d028680d42ccc8e16a1343fa7eed";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-linksys_e8350-v1-initramfs-uImage";
              sha256 = "d2ac703232d6687e6d466ecc4ae3c0869d07387a42faf2a34aa199347b50977f";
              sha256_unsigned = "d2ac703232d6687e6d466ecc4ae3c0869d07387a42faf2a34aa199347b50977f";
              type = "kernel";
            }
          ];
          supported_devices = [
            "linksys,e8350-v1"
          ];
          titles = [
            {
              model = "E8350";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea7500-v1 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-linksys_ea7500-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-linksys_ea7500-v1-squashfs-factory.bin";
              sha256 = "8b18a70301c7271c639e415135481a1e3bbf9bb703c1348da1319699db8afa13";
              sha256_unsigned = "8b18a70301c7271c639e415135481a1e3bbf9bb703c1348da1319699db8afa13";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-linksys_ea7500-v1-initramfs-uImage";
              sha256 = "3e711db258c9580ce80862db35d0c39368c5f99cf14c88f7258e2f16520339c1";
              sha256_unsigned = "3e711db258c9580ce80862db35d0c39368c5f99cf14c88f7258e2f16520339c1";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-linksys_ea7500-v1-squashfs-sysupgrade.bin";
              sha256 = "46c8848197d6bd78667892471cb2c287abff9113fa9bfa690e14a97cac2083d3";
              sha256_unsigned = "ab33bb05345b73468cf1c4eca1acc98b59bd29f9fd1844d3d910b24822ee95dd";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "linksys,ea7500-v1"
          ];
          titles = [
            {
              model = "EA7500";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea8500 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-linksys_ea8500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-linksys_ea8500-squashfs-factory.bin";
              sha256 = "5735665d3cac69e73e27b3db6eb7de130750d7a7a8507da2d4b581b8ca86eaa3";
              sha256_unsigned = "5735665d3cac69e73e27b3db6eb7de130750d7a7a8507da2d4b581b8ca86eaa3";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-linksys_ea8500-squashfs-sysupgrade.bin";
              sha256 = "4d4c8c40a74a6cf553c867b778cd5703582247f71f55e35359e7b933e836fecc";
              sha256_unsigned = "f4f599d27da87d3e4792a4d55c4a5de25d5736a171467a2a1f0ea26ce8e6d832";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-linksys_ea8500-initramfs-uImage";
              sha256 = "e5f3a901581310a8dc4fec4f32652a18dc2f4425b982a8b74f0e8bfd7c24fb79";
              sha256_unsigned = "e5f3a901581310a8dc4fec4f32652a18dc2f4425b982a8b74f0e8bfd7c24fb79";
              type = "kernel";
            }
          ];
          supported_devices = [
            "linksys,ea8500"
            "ea8500"
          ];
          titles = [
            {
              model = "EA8500";
              vendor = "Linksys";
            }
          ];
        };
        meraki_mr42 = {
          device_packages = [
            "-kmod-ata-ahci"
            "-kmod-ata-ahci-platform"
            "-kmod-usb-ohci"
            "-kmod-usb2"
            "-kmod-usb-ledtrig-usbport"
            "-kmod-phy-qcom-ipq806x-usb"
            "-kmod-usb3"
            "-kmod-usb-dwc3-qcom"
            "-uboot-envtools"
            "ath10k-firmware-qca9887-ct"
            "ath10k-firmware-qca99x0-ct"
            "kmod-eeprom-at24"
            "kmod-hwmon-ina2xx"
            "kmod-leds-tlc591xx"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-meraki_mr42";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-meraki_mr42-initramfs-fit-uImage.itb";
              sha256 = "e7d1d53cfa7d1b339414062ce1a8a4b23a747becf9da120515a459f414246d9d";
              sha256_unsigned = "e7d1d53cfa7d1b339414062ce1a8a4b23a747becf9da120515a459f414246d9d";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-meraki_mr42-squashfs-sysupgrade.bin";
              sha256 = "8f8596e7fa867f9f3bf22f6e6edcd04d053f43990b074579922d996960e5c3d5";
              sha256_unsigned = "43b134af1e05320ce35615b34de3e5caa6e15af754cb0b310dde2ff81dcf3e93";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mr42"
          ];
          titles = [
            {
              model = "MR42";
              vendor = "Cisco Meraki";
            }
          ];
        };
        meraki_mr52 = {
          device_packages = [
            "-kmod-ata-ahci"
            "-kmod-ata-ahci-platform"
            "-kmod-usb-ohci"
            "-kmod-usb2"
            "-kmod-usb-ledtrig-usbport"
            "-kmod-phy-qcom-ipq806x-usb"
            "-kmod-usb3"
            "-kmod-usb-dwc3-qcom"
            "-uboot-envtools"
            "ath10k-firmware-qca9887-ct"
            "ath10k-firmware-qca9984-ct"
            "kmod-eeprom-at24"
            "kmod-hwmon-ina2xx"
            "kmod-leds-tlc591xx"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-meraki_mr52";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-meraki_mr52-squashfs-sysupgrade.bin";
              sha256 = "e47728d8f2f8f6af1daa21b3b4dac4061a26003be0cb48d41d40d736bb6ba1f7";
              sha256_unsigned = "225156a99d38db60ec8187427d02fad0cc554d6c948e16fbc9ce8def55eedfbd";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-meraki_mr52-initramfs-fit-uImage.itb";
              sha256 = "d03b26d69effcf8fa6bb4558091a2acba841d9e8e6c0c806d4482d89a4eb03e6";
              sha256_unsigned = "d03b26d69effcf8fa6bb4558091a2acba841d9e8e6c0c806d4482d89a4eb03e6";
              type = "kernel";
            }
          ];
          supported_devices = [
            "meraki,mr52"
          ];
          titles = [
            {
              model = "MR52";
              vendor = "Cisco Meraki";
            }
          ];
        };
        nec_wg2600hp = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-nec_wg2600hp";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-nec_wg2600hp-initramfs-uImage";
              sha256 = "1df4f11a6fa635ae0fd8d16097649781025aa30090ae32f608a2d3aeb66fb32b";
              sha256_unsigned = "1df4f11a6fa635ae0fd8d16097649781025aa30090ae32f608a2d3aeb66fb32b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-nec_wg2600hp-squashfs-sysupgrade.bin";
              sha256 = "6495bc5ab65a00320b6faf0d3ff64d30a80a6a1cc1880757974b1a9ea658fbfe";
              sha256_unsigned = "e07f3a6832e6fb10351012760d0d7f6e7c86196505a690fbf2e97cd86d1dfcb4";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "nec,wg2600hp"
          ];
          titles = [
            {
              model = "Aterm WG2600HP";
              vendor = "NEC";
            }
          ];
        };
        nec_wg2600hp3 = {
          device_packages = [
            "-kmod-ata-ahci"
            "-kmod-ata-ahci-platform"
            "-kmod-usb-ohci"
            "-kmod-usb2"
            "-kmod-usb-ledtrig-usbport"
            "-kmod-phy-qcom-ipq806x-usb"
            "-kmod-usb3"
            "-kmod-usb-dwc3-qcom"
            "ath10k-firmware-qca9984-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-nec_wg2600hp3";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-nec_wg2600hp3-initramfs-uImage";
              sha256 = "4c226bc91cb01f9dd6ab5100bcbfc78de606b39b38afb3106b39c0898236d3f0";
              sha256_unsigned = "4c226bc91cb01f9dd6ab5100bcbfc78de606b39b38afb3106b39c0898236d3f0";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-nec_wg2600hp3-squashfs-sysupgrade.bin";
              sha256 = "629ea388d76b9cccc4d48472d25b54d6fcc272470bd5ee4fdf57abdcc72b054f";
              sha256_unsigned = "8f3003e7c0a196665a8c5b6fc45724444e2d624e9215533d70c8d9b97dc80c5d";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "nec,wg2600hp3"
          ];
          titles = [
            {
              model = "Aterm WG2600HP3";
              vendor = "NEC Platforms";
            }
          ];
        };
        netgear_d7800 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_d7800";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_d7800-squashfs-factory.img";
              sha256 = "c2be75b1286cbd7f1b71ea77d265cd69139096710c9bc25acd0ac09bc558da9a";
              sha256_unsigned = "c2be75b1286cbd7f1b71ea77d265cd69139096710c9bc25acd0ac09bc558da9a";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_d7800-initramfs-uImage";
              sha256 = "59b90c97650ef0e7a87a2ad88ca51a5400a4701d831c9801bafe74f81720c42d";
              sha256_unsigned = "59b90c97650ef0e7a87a2ad88ca51a5400a4701d831c9801bafe74f81720c42d";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_d7800-squashfs-sysupgrade.bin";
              sha256 = "ad19c508a107ba1338ef5c57b4e37adaaded912c3f976710e68a955b6e060b41";
              sha256_unsigned = "e9a19abacae84ab5b4338eec9283511c496f8dcff9c96820e47730bf8fd9f3b1";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,d7800"
            "d7800"
          ];
          titles = [
            {
              model = "Nighthawk X4 D7800";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r7500 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_r7500";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_r7500-initramfs-uImage";
              sha256 = "806eb6c074e06556245d020a1c4ec9c2848abc9d56fe06145ef5b3027899b045";
              sha256_unsigned = "806eb6c074e06556245d020a1c4ec9c2848abc9d56fe06145ef5b3027899b045";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_r7500-squashfs-factory.img";
              sha256 = "5ce5fb6c9af6924a7884b34f64ccaa9b9cac5f05319740fd989f5538fba36690";
              sha256_unsigned = "5ce5fb6c9af6924a7884b34f64ccaa9b9cac5f05319740fd989f5538fba36690";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_r7500-squashfs-sysupgrade.bin";
              sha256 = "c32d1054f1a12eb080215ee8032a6e3d69bb99960f8b402782f53fc31b0b9c51";
              sha256_unsigned = "57f2209c5ab0040c6c88cb2d77609771116020fd2a36b7495ea22b4f11de3e41";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,r7500"
            "r7500"
          ];
          titles = [
            {
              model = "Nighthawk X4 R7500";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r7500v2 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_r7500v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_r7500v2-squashfs-factory.img";
              sha256 = "0894cbcabd76dfb71ae905862b48203f384fbaf83d92e720a6afae8acf58ed53";
              sha256_unsigned = "0894cbcabd76dfb71ae905862b48203f384fbaf83d92e720a6afae8acf58ed53";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_r7500v2-initramfs-uImage";
              sha256 = "7255e29afafb04c66148c256ae361c35bc5aea2989ff77b8a0536ac778b41277";
              sha256_unsigned = "7255e29afafb04c66148c256ae361c35bc5aea2989ff77b8a0536ac778b41277";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_r7500v2-squashfs-sysupgrade.bin";
              sha256 = "e9f515631551768b432fd714425b32e2309249754200721c1c5c137993e42f91";
              sha256_unsigned = "60d623b9003ddf5f05e33596dba8d91f173267b0a8379aa048ce013d547d58a9";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,r7500v2"
            "r7500v2"
          ];
          titles = [
            {
              model = "Nighthawk X4 R7500";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r7800 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "kmod-ramoops"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_r7800";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_r7800-squashfs-sysupgrade.bin";
              sha256 = "31ddd580f15a8b4cdd9ad2b9f9aa2e8756bf48f550fa496ac870bf5c284aa999";
              sha256_unsigned = "cd4b3a3db8287f249d95710ea4991690838bbb50096f7f941c08e74f0c7849b5";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_r7800-initramfs-uImage";
              sha256 = "198efbe42562a11d183fdc97124e5936be83878b5429f17282812d46e2ed8a2b";
              sha256_unsigned = "198efbe42562a11d183fdc97124e5936be83878b5429f17282812d46e2ed8a2b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_r7800-squashfs-factory.img";
              sha256 = "17911f6e06cb6518915dfc6a3f3070876cff3cb439086e078431e5adc08d1d04";
              sha256_unsigned = "17911f6e06cb6518915dfc6a3f3070876cff3cb439086e078431e5adc08d1d04";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,r7800"
            "r7800"
          ];
          titles = [
            {
              model = "Nighthawk X4S R7800";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_xr450 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "kmod-ramoops"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_xr450";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_xr450-squashfs-factory.img";
              sha256 = "f8da1cf8e2a62562d62cdf13898bfd41d8bb352720e5d1017879669130c3b0ad";
              sha256_unsigned = "f8da1cf8e2a62562d62cdf13898bfd41d8bb352720e5d1017879669130c3b0ad";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_xr450-squashfs-sysupgrade.bin";
              sha256 = "07f2201142372f732a3bf3179b715a9d4917153d139361f0f5fdfe9026313d7d";
              sha256_unsigned = "5e46660249e2158b25503386e632a49b3f54b120b50fc6511723adeae7a07647";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_xr450-initramfs-uImage";
              sha256 = "0ad3ee3e2ab96d11b8ab6214c35532cf1b14773428f320c8db8cc3d413c98c67";
              sha256_unsigned = "0ad3ee3e2ab96d11b8ab6214c35532cf1b14773428f320c8db8cc3d413c98c67";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,xr450"
          ];
          titles = [
            {
              model = "Nighthawk XR450";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_xr500 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "kmod-ramoops"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_xr500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_xr500-squashfs-sysupgrade.bin";
              sha256 = "1d02cab7a3eda9a0df490470b4de16849658945bf74e702b605174f1e85a0171";
              sha256_unsigned = "6739de73f1bbf723c5cc9d53a4eacacd25b533f5598afc56d962a2b2bb8e440e";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_xr500-squashfs-factory.img";
              sha256 = "ae8b6a4de7688ffdba984341612713e38691f716ec789afcc311ab4d8e29b9c2";
              sha256_unsigned = "ae8b6a4de7688ffdba984341612713e38691f716ec789afcc311ab4d8e29b9c2";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-netgear_xr500-initramfs-uImage";
              sha256 = "96c0a131165e67843d46d2f6d18d455e13dfda0930eaeea5309f03e458e6eb1f";
              sha256_unsigned = "96c0a131165e67843d46d2f6d18d455e13dfda0930eaeea5309f03e458e6eb1f";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,xr500"
          ];
          titles = [
            {
              model = "Nighthawk XR500";
              vendor = "NETGEAR";
            }
          ];
        };
        nokia_ac400i = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-nokia_ac400i";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-nokia_ac400i-initramfs-fit-uImage.itb";
              sha256 = "baaa46df5b7612747805d483da3dc02da5c6cc375392a7ab813d184c8a83c491";
              sha256_unsigned = "baaa46df5b7612747805d483da3dc02da5c6cc375392a7ab813d184c8a83c491";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-nokia_ac400i-squashfs-nand-sysupgrade.bin";
              sha256 = "eb8526e94317537112973a7d8ef3a7bef775297d150392bd167623f22368eefe";
              sha256_unsigned = "dd82e220ab9205cfa14dd1a1bebed09429f87524fe713cc38782041298b74fa5";
              type = "nand-sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-nokia_ac400i-squashfs-nand-factory.bin";
              sha256 = "141af5b73c73d02117940c43f46b248a6b77f4e3e578d93b67543f7603fb3730";
              sha256_unsigned = "141af5b73c73d02117940c43f46b248a6b77f4e3e578d93b67543f7603fb3730";
              type = "nand-factory";
            }
          ];
          supported_devices = [
            "nokia,ac400i"
          ];
          titles = [
            {
              model = "AC400i";
              vendor = "Nokia";
            }
          ];
        };
        qcom_ipq8064-ap148 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-qcom_ipq8064-ap148";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-qcom_ipq8064-ap148-squashfs-nand-factory.bin";
              sha256 = "d4c0bf0a4b2ceaf45f92c0432e814bf1380654bf7873ad1491552ee796d555f3";
              sha256_unsigned = "d4c0bf0a4b2ceaf45f92c0432e814bf1380654bf7873ad1491552ee796d555f3";
              type = "nand-factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-qcom_ipq8064-ap148-squashfs-nand-sysupgrade.bin";
              sha256 = "6cf292beba4e6e2337418290813ce12179607c7545550b39990adb005055e435";
              sha256_unsigned = "2a98b29ff7e7aa2dfc4fc7d8ea8c62be8dd052c84422da6dd6324984d197f6be";
              type = "nand-sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-qcom_ipq8064-ap148-initramfs-fit-uImage.itb";
              sha256 = "54c8b453f15758d6e35005ed38cc95b50a36e20b475466f0c779e902128657b3";
              sha256_unsigned = "54c8b453f15758d6e35005ed38cc95b50a36e20b475466f0c779e902128657b3";
              type = "kernel";
            }
          ];
          supported_devices = [
            "qcom,ipq8064-ap148"
            "ap148"
          ];
          titles = [
            {
              model = "AP148";
              variant = "standard";
              vendor = "Qualcomm";
            }
          ];
        };
        qcom_ipq8064-ap148-legacy = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-qcom_ipq8064-ap148-legacy";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-qcom_ipq8064-ap148-legacy-initramfs-uImage";
              sha256 = "36d638e9d653f335874cf942f65fe35ded0ecf8df649a95160e0a6da8de6a131";
              sha256_unsigned = "36d638e9d653f335874cf942f65fe35ded0ecf8df649a95160e0a6da8de6a131";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-qcom_ipq8064-ap148-legacy-squashfs-nand-sysupgrade.bin";
              sha256 = "fed9d2925b18c341fdef03a7f5fce5cf5c0213e282f94e5f32824c429753c31f";
              sha256_unsigned = "ca06ef4c8d84ffb0536e35e80761cb833e5051426c7ad5da275d0e6dd889644c";
              type = "nand-sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-qcom_ipq8064-ap148-legacy-squashfs-nand-factory.bin";
              sha256 = "b05138965a1aad0b0d63e892cad2266a4549fb6bf2c401082db1b83482048448";
              sha256_unsigned = "b05138965a1aad0b0d63e892cad2266a4549fb6bf2c401082db1b83482048448";
              type = "nand-factory";
            }
          ];
          supported_devices = [
            "qcom,ipq8064-ap148"
            "ap148"
          ];
          titles = [
            {
              model = "AP148";
              variant = "legacy";
              vendor = "Qualcomm";
            }
          ];
        };
        qcom_ipq8064-ap161 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-qcom_ipq8064-ap161";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-qcom_ipq8064-ap161-initramfs-fit-uImage.itb";
              sha256 = "49335eccbbca27ce1752453921bf0f7f363891b04a02e267e88ceb21647dbc4d";
              sha256_unsigned = "49335eccbbca27ce1752453921bf0f7f363891b04a02e267e88ceb21647dbc4d";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-qcom_ipq8064-ap161-squashfs-nand-factory.bin";
              sha256 = "e16c5c6bb6ec26f10eb00e91fed34fa7dce918f21a3eb05af4dcf8e765ce1d75";
              sha256_unsigned = "e16c5c6bb6ec26f10eb00e91fed34fa7dce918f21a3eb05af4dcf8e765ce1d75";
              type = "nand-factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-qcom_ipq8064-ap161-squashfs-nand-sysupgrade.bin";
              sha256 = "d0cedba7550b68c448adc71a85f709f1da30b3c1a3d787b0c958e78a83c9c6e5";
              sha256_unsigned = "db6586aa7e9aa0235a20f4c5be4ad79bb123c88a18f5c843e7120b06ca337bb6";
              type = "nand-sysupgrade";
            }
          ];
          supported_devices = [
            "qcom,ipq8064-ap161"
          ];
          titles = [
            {
              model = "AP161";
              vendor = "Qualcomm";
            }
          ];
        };
        qcom_ipq8064-db149 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-qcom_ipq8064-db149";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-qcom_ipq8064-db149-initramfs-fit-uImage.itb";
              sha256 = "488bd80af852e8a30783b69d03e88d13c66982b8e5ede0418b193a1588539bed";
              sha256_unsigned = "488bd80af852e8a30783b69d03e88d13c66982b8e5ede0418b193a1588539bed";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-qcom_ipq8064-db149-squashfs-sysupgrade.bin";
              sha256 = "3d5e6f57143d3f2216c2d4c256cde38edeaef828c4ba4a0810c909fe776b65ad";
              sha256_unsigned = "050370d67f38bec6cce15385fe58dcc4aa148eff0bd01a3b1542dc5c78395295";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "qcom,ipq8064-db149"
          ];
          titles = [
            {
              model = "DB149";
              vendor = "Qualcomm";
            }
          ];
        };
        ruijie_rg-mtfi-m520 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-hwmon-lm75"
            "kmod-rtc-pcf8563"
            "kmod-fs-f2fs"
            "losetup"
            "mkf2fs"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-ruijie_rg-mtfi-m520";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-ruijie_rg-mtfi-m520-squashfs-sysupgrade.bin";
              sha256 = "8a14f62c6d92b595f7ccc0649085c56a6bd098b8e108640f90bb343aeb58cac4";
              sha256_unsigned = "4f6c16be33ba9806350b513bd7d15fc21a4b6a6403562113d4b8dfd503e3fc66";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-ruijie_rg-mtfi-m520-initramfs-uImage";
              sha256 = "53436cda2e3a82f9dc8cf6023f7a41d8e099a2e458037f8fe950416c94f163cb";
              sha256_unsigned = "53436cda2e3a82f9dc8cf6023f7a41d8e099a2e458037f8fe950416c94f163cb";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-ruijie_rg-mtfi-m520-squashfs-factory.bin";
              sha256 = "b6f9be9547ef55e8abb25f7f535fded1362a1b613ff704a5684ae2b505b7ac83";
              sha256_unsigned = "b6f9be9547ef55e8abb25f7f535fded1362a1b613ff704a5684ae2b505b7ac83";
              type = "factory";
            }
          ];
          supported_devices = [
            "ruijie,rg-mtfi-m520"
          ];
          titles = [
            {
              model = "RG-MTFi-M520";
              vendor = "Ruijie";
            }
          ];
        };
        tplink_ad7200 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
            "kmod-ramoops"
            "kmod-wil6210"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-tplink_ad7200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-tplink_ad7200-squashfs-factory.bin";
              sha256 = "32644941b89fd4111d00dbc184cfad71ec8fdb5a74f42c9aa2e9f246aeecb583";
              sha256_unsigned = "32644941b89fd4111d00dbc184cfad71ec8fdb5a74f42c9aa2e9f246aeecb583";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-tplink_ad7200-squashfs-sysupgrade.bin";
              sha256 = "5254ede9c7c0322a1c00bfd7a854c38c95ed4849b581ba7aa66b39f363807c33";
              sha256_unsigned = "bd2d81b1b8444d61e744d3a31fbf0000fa4437794fea8edc910d717f560ec405";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-tplink_ad7200-initramfs-uImage";
              sha256 = "59869456f60908307c654746f37fab713f0867b3d8142e0f4e74e2d53de8e239";
              sha256_unsigned = "59869456f60908307c654746f37fab713f0867b3d8142e0f4e74e2d53de8e239";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,ad7200"
          ];
          titles = [
            {
              model = "AD7200";
              variant = "v1/v2";
              vendor = "TP-Link";
            }
            {
              model = "Talon AD7200";
              variant = "v1/v2";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_c2600 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
            "kmod-ramoops"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-tplink_c2600";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-tplink_c2600-initramfs-uImage";
              sha256 = "8796246b85a836e66a8d087a7f022855ce7194f97488c0e7665cb0df5efc7c2c";
              sha256_unsigned = "8796246b85a836e66a8d087a7f022855ce7194f97488c0e7665cb0df5efc7c2c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-tplink_c2600-squashfs-sysupgrade.bin";
              sha256 = "449bdc9c446d0ed8b2468818f7aa2160b4817add69a462dc4865737fd847c93f";
              sha256_unsigned = "393eb009f63c9b3c9a83caf57601a0ea9f6f136abb17515159f461a80b7701f8";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-tplink_c2600-squashfs-factory.bin";
              sha256 = "ced24ecf553727f34dbdaf55ba0424975eb63dd55ed56b63d02d5b9f598be41f";
              sha256_unsigned = "ced24ecf553727f34dbdaf55ba0424975eb63dd55ed56b63d02d5b9f598be41f";
              type = "factory";
            }
          ];
          supported_devices = [
            "tplink,c2600"
            "c2600"
          ];
          titles = [
            {
              model = "Archer C2600";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_vr2600v = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-tplink_vr2600v";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-tplink_vr2600v-squashfs-sysupgrade.bin";
              sha256 = "f9d3f3a3050ab79b5f56c8332c0641e2b06f7d8e1444d58dabfb4209f2209e35";
              sha256_unsigned = "7f4ab1f9d3fa2cf37fec656506522bc1759d6d3be4fce4f6126f0e12bd6cd1d6";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-tplink_vr2600v-initramfs-uImage";
              sha256 = "0beeabe3fe90fcfe9f99e70d7d2b21feda326629d46eb6529dd3842782483fc1";
              sha256_unsigned = "0beeabe3fe90fcfe9f99e70d7d2b21feda326629d46eb6529dd3842782483fc1";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,vr2600v"
            "vr2600v"
          ];
          titles = [
            {
              model = "Archer VR2600v";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        ubnt_unifi-ac-hd = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-ubnt_unifi-ac-hd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-ubnt_unifi-ac-hd-initramfs-fit-uImage.itb";
              sha256 = "65b08eee3d81edabbf5fefcbd70f24786b09b4fad1cc49684de3d2cb96389098";
              sha256_unsigned = "65b08eee3d81edabbf5fefcbd70f24786b09b4fad1cc49684de3d2cb96389098";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-ubnt_unifi-ac-hd-squashfs-sysupgrade.bin";
              sha256 = "6466b9508ca0b9cffd804dea848fdc9b709f6a3f0f3f35493e699d7546746eaf";
              sha256_unsigned = "d701478c7f35b57baf837f086a3f251864bf53ceb7991b1710070cd3dc8d5d02";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "ubnt,unifi-ac-hd"
          ];
          titles = [
            {
              model = "UniFi AC HD";
              vendor = "Ubiquiti";
            }
          ];
        };
        xiaomi_mi-router-hd = {
          device_packages = [
            "kmod-i2c-gpio"
            "kmod-hwmon-lm75"
            "kmod-hwmon-drivetemp"
            "ath10k-firmware-qca9984-ct"
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-xiaomi_mi-router-hd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-xiaomi_mi-router-hd-squashfs-factory.bin";
              sha256 = "aa8ca7cb3294839300bf603f40143483452ec0a479b71883c85ccfb008085164";
              sha256_unsigned = "aa8ca7cb3294839300bf603f40143483452ec0a479b71883c85ccfb008085164";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-xiaomi_mi-router-hd-squashfs-sysupgrade.bin";
              sha256 = "1613c0771e29d2076573fc4f24d4667ea16897e4d66d4f4db66bb461d0ba0905";
              sha256_unsigned = "d4f7647dc84165ca54d5fe5287e9d3af663a204b7878453cacfeb10e78c91e30";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-xiaomi_mi-router-hd-initramfs-uImage";
              sha256 = "60d24cd5d66e068fe66e76a7b97e725e7b9006e67b76e148ff0a36715cdc9847";
              sha256_unsigned = "60d24cd5d66e068fe66e76a7b97e725e7b9006e67b76e148ff0a36715cdc9847";
              type = "kernel";
            }
          ];
          supported_devices = [
            "xiaomi,mi-router-hd"
          ];
          titles = [
            {
              model = "Mi Router HD";
              vendor = "Xiaomi";
            }
          ];
        };
        zyxel_nbg6817 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "e2fsprogs"
            "kmod-fs-ext4"
            "losetup"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ipq806x-generic-zyxel_nbg6817";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-zyxel_nbg6817-squashfs-sysupgrade.bin";
              sha256 = "7f668f06a920f249fede93817af941b71ed5386cc9fd9ae2e84b44d5d7ceb02f";
              sha256_unsigned = "10730c2763114263981b8b60108bb616f5a7914bf401b604db2ed1f196ed9270";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-zyxel_nbg6817-squashfs-factory.bin";
              sha256 = "c83be0aface170614a3c35c77fa7361b80acd8488bfb9f3bcf64e4f0af3e4b12";
              sha256_unsigned = "c83be0aface170614a3c35c77fa7361b80acd8488bfb9f3bcf64e4f0af3e4b12";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-ipq806x-generic-zyxel_nbg6817-initramfs-uImage";
              sha256 = "2c4fb9baf63efd50c0ed6083240723849c0c06a027daf54a13ffcf08957f2305";
              sha256_unsigned = "2c4fb9baf63efd50c0ed6083240723849c0c06a027daf54a13ffcf08957f2305";
              type = "kernel";
            }
          ];
          supported_devices = [
            "zyxel,nbg6817"
            "nbg6817"
          ];
          titles = [
            {
              model = "NBG6817";
              vendor = "Zyxel";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "ipq806x/generic";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
  ixp4xx = {
    generic = {
      arch_packages = "armeb_xscale";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "fconfig"
        "firewall4"
        "fstools"
        "kmod-crypto-hw-ixp4xx"
        "kmod-leds-gpio"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-ledtrig-usbport"
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
        vermagic = "f1172ba4833b84a29d24c7875d6f9709";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        dlink_dsm_g600_a = {
          device_packages = [
            "ixp4xx-microcode-ethernet"
            "kmod-rtc-pcf8563"
            "kmod-via-velocity"
            "kmod-ata-artop"
            "kmod-ath5k"
            "wpad-basic-mbedtls"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ixp4xx-generic-dlink_dsm_g600_a";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ixp4xx-generic-dlink_dsm_g600_a-squashfs-kernel.bin";
              sha256 = "6ca51aee13854d8749f9611fdfd8622dba2ca4b62258e437397b6cba70f114d2";
              sha256_unsigned = "6ca51aee13854d8749f9611fdfd8622dba2ca4b62258e437397b6cba70f114d2";
              type = "kernel";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-ixp4xx-generic-dlink_dsm_g600_a-ext4-kernel.bin";
              sha256 = "6ca51aee13854d8749f9611fdfd8622dba2ca4b62258e437397b6cba70f114d2";
              sha256_unsigned = "6ca51aee13854d8749f9611fdfd8622dba2ca4b62258e437397b6cba70f114d2";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ixp4xx-generic-dlink_dsm_g600_a-squashfs-rootfs.bin";
              sha256 = "e1f26c1d78860e0e305e623a12e7812f63e37ef4c1b1ff775e98b0732722433a";
              sha256_unsigned = "e1f26c1d78860e0e305e623a12e7812f63e37ef4c1b1ff775e98b0732722433a";
              type = "rootfs";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-ixp4xx-generic-dlink_dsm_g600_a-ext4-rootfs.bin";
              sha256 = "9aca8ea6cf52c196166417bbbaca9e087535376325176e7eea7e5fca8d222a22";
              sha256_unsigned = "9aca8ea6cf52c196166417bbbaca9e087535376325176e7eea7e5fca8d222a22";
              type = "rootfs";
            }
          ];
          supported_devices = [
            "dlink,dsm,g600,a"
          ];
          titles = [
            {
              model = "DSM G600 A";
              vendor = "D-Link";
            }
          ];
        };
        gateworks_avila = {
          device_packages = [
            "ixp4xx-microcode-ethernet"
            "kmod-rtc-ds1672"
            "kmod-eeprom-at24"
            "kmod-hwmon-ad7418"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ixp4xx-generic-gateworks_avila";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ixp4xx-generic-gateworks_avila-squashfs-kernel.bin";
              sha256 = "49afc6275380dad6de267398b0acfd38650bc31efc16f9eaff5510b7e2bf8372";
              sha256_unsigned = "49afc6275380dad6de267398b0acfd38650bc31efc16f9eaff5510b7e2bf8372";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ixp4xx-generic-gateworks_avila-squashfs-rootfs.bin";
              sha256 = "ee005bc59c50d6dcbb211323b9d90391e6def778f0c69ea5a58db2500873a0a8";
              sha256_unsigned = "ee005bc59c50d6dcbb211323b9d90391e6def778f0c69ea5a58db2500873a0a8";
              type = "rootfs";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-ixp4xx-generic-gateworks_avila-ext4-rootfs.bin";
              sha256 = "4f50360c807e497f3b0c66b05c291dd254dabdfa46f9cdec920915f7b5cd5015";
              sha256_unsigned = "4f50360c807e497f3b0c66b05c291dd254dabdfa46f9cdec920915f7b5cd5015";
              type = "rootfs";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-ixp4xx-generic-gateworks_avila-ext4-kernel.bin";
              sha256 = "49afc6275380dad6de267398b0acfd38650bc31efc16f9eaff5510b7e2bf8372";
              sha256_unsigned = "49afc6275380dad6de267398b0acfd38650bc31efc16f9eaff5510b7e2bf8372";
              type = "kernel";
            }
          ];
          supported_devices = [
            "gateworks,avila"
          ];
          titles = [
            {
              model = "Avila GW2348-4";
              vendor = "Gateworks";
            }
          ];
        };
        gateworks_cambria = {
          device_packages = [
            "ixp4xx-microcode-ethernet"
            "kmod-rtc-ds1672"
            "kmod-eeprom-at24"
            "kmod-hwmon-ad7418"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ixp4xx-generic-gateworks_cambria";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ixp4xx-generic-gateworks_cambria-squashfs-kernel.bin";
              sha256 = "91abae8367d27fec15dde41bd5bf0805762a277daabe2513a44e72928f54b7c4";
              sha256_unsigned = "91abae8367d27fec15dde41bd5bf0805762a277daabe2513a44e72928f54b7c4";
              type = "kernel";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-ixp4xx-generic-gateworks_cambria-ext4-kernel.bin";
              sha256 = "91abae8367d27fec15dde41bd5bf0805762a277daabe2513a44e72928f54b7c4";
              sha256_unsigned = "91abae8367d27fec15dde41bd5bf0805762a277daabe2513a44e72928f54b7c4";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ixp4xx-generic-gateworks_cambria-squashfs-rootfs.bin";
              sha256 = "ee005bc59c50d6dcbb211323b9d90391e6def778f0c69ea5a58db2500873a0a8";
              sha256_unsigned = "ee005bc59c50d6dcbb211323b9d90391e6def778f0c69ea5a58db2500873a0a8";
              type = "rootfs";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-ixp4xx-generic-gateworks_cambria-ext4-rootfs.bin";
              sha256 = "4f50360c807e497f3b0c66b05c291dd254dabdfa46f9cdec920915f7b5cd5015";
              sha256_unsigned = "4f50360c807e497f3b0c66b05c291dd254dabdfa46f9cdec920915f7b5cd5015";
              type = "rootfs";
            }
          ];
          supported_devices = [
            "gateworks,cambria"
          ];
          titles = [
            {
              model = "Cambria GW2358-4";
              vendor = "Gateworks";
            }
          ];
        };
        iomega_nas100d = {
          device_packages = [
            "ixp4xx-microcode-ethernet"
            "kmod-rtc-pcf8563"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ixp4xx-generic-iomega_nas100d";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ixp4xx-generic-iomega_nas100d-squashfs-factory.bin";
              sha256 = "abf1f26f66986bf96f8cd9829c5bd52eeeec982728c521b4423427938f1307b7";
              sha256_unsigned = "abf1f26f66986bf96f8cd9829c5bd52eeeec982728c521b4423427938f1307b7";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-ixp4xx-generic-iomega_nas100d-ext4-factory.bin";
              sha256 = "abf1f26f66986bf96f8cd9829c5bd52eeeec982728c521b4423427938f1307b7";
              sha256_unsigned = "abf1f26f66986bf96f8cd9829c5bd52eeeec982728c521b4423427938f1307b7";
              type = "factory";
            }
          ];
          supported_devices = [
            "iomega,nas100d"
          ];
          titles = [
            {
              model = "NAS100d";
              vendor = "Iomega";
            }
          ];
        };
        usrobotics_usr8200 = {
          device_packages = [
            "ixp4xx-microcode-ethernet"
            "kmod-rtc-r7301"
            "kmod-firewire"
            "kmod-firewire-ohci"
            "kmod-dsa-mv88e6060"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-ixp4xx-generic-usrobotics_usr8200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ixp4xx-generic-usrobotics_usr8200-squashfs-rootfs.bin";
              sha256 = "d41b5fc476c1c4571c330fbbd5cfc12054cb81ab1115e2fa67895d6663ddab74";
              sha256_unsigned = "d41b5fc476c1c4571c330fbbd5cfc12054cb81ab1115e2fa67895d6663ddab74";
              type = "rootfs";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-ixp4xx-generic-usrobotics_usr8200-ext4-rootfs.bin";
              sha256 = "dde0bd0afafeb3987d0e0708ecbe64b5140ae9bba694e719b020e4796204cec4";
              sha256_unsigned = "dde0bd0afafeb3987d0e0708ecbe64b5140ae9bba694e719b020e4796204cec4";
              type = "rootfs";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-ixp4xx-generic-usrobotics_usr8200-squashfs-kernel.bin";
              sha256 = "4e16f8b3b7c27497ee775f298fad8b37f79caa4a02a869858079f1648152de9d";
              sha256_unsigned = "4e16f8b3b7c27497ee775f298fad8b37f79caa4a02a869858079f1648152de9d";
              type = "kernel";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-ixp4xx-generic-usrobotics_usr8200-ext4-kernel.bin";
              sha256 = "4e16f8b3b7c27497ee775f298fad8b37f79caa4a02a869858079f1648152de9d";
              sha256_unsigned = "4e16f8b3b7c27497ee775f298fad8b37f79caa4a02a869858079f1648152de9d";
              type = "kernel";
            }
          ];
          supported_devices = [
            "usrobotics,usr8200"
          ];
          titles = [
            {
              model = "USR8200";
              vendor = "USRobotics";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "ixp4xx/generic";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
  kirkwood = {
    generic = {
      arch_packages = "arm_xscale";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
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
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "3a67e6d734d40f1300b87943743a712d";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        checkpoint_l-50 = {
          device_packages = [
            "kmod-ath9k"
            "kmod-gpio-button-hotplug"
            "kmod-mvsdio"
            "kmod-rtc-s35390a"
            "kmod-usb-ledtrig-usbport"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-checkpoint_l-50";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-checkpoint_l-50-squashfs-sysupgrade.bin";
              sha256 = "0b4d836e68ba60b600a19a4af6d5ae5840dd608887145a3f9dcbe2851e563e33";
              sha256_unsigned = "f2bfe923eabbf4a73701551ff524f1c9b38547e7870684ecf6f91619ea792c0c";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-checkpoint_l-50-initramfs-uImage";
              sha256 = "ace4a4f49c4e82dffa872944b6c54497a2ebaad57345c008a32104d040e13113";
              sha256_unsigned = "ace4a4f49c4e82dffa872944b6c54497a2ebaad57345c008a32104d040e13113";
              type = "kernel";
            }
          ];
          supported_devices = [
            "checkpoint,l-50"
          ];
          titles = [
            {
              model = "L-50";
              vendor = "Check Point";
            }
          ];
        };
        cisco_on100 = {
          device_packages = [
            "kmod-mvsdio"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-cisco_on100";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-cisco_on100-initramfs-uImage";
              sha256 = "388a9e8a2b098b8f12b109bc2e26f6f8cde5df616d31648137c43e5109450059";
              sha256_unsigned = "388a9e8a2b098b8f12b109bc2e26f6f8cde5df616d31648137c43e5109450059";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-cisco_on100-squashfs-factory.bin";
              sha256 = "a416b679ae359db2c8a7ccff084fa56d114c6b3c133be58831e364a5739b3e24";
              sha256_unsigned = "a416b679ae359db2c8a7ccff084fa56d114c6b3c133be58831e364a5739b3e24";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-cisco_on100-squashfs-sysupgrade.bin";
              sha256 = "9ed0d0e33faf5d183438e9dc32aadae7e9f9c9f0e0dc10bccd2b0aaa2690ab15";
              sha256_unsigned = "b4b33b46bcfe366d0638cc032eea28b0795aa2b4bc04f1a4c29fb50ed7b1aa21";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "cisco,on100"
            "on100"
          ];
          titles = [
            {
              model = "ON100";
              vendor = "Cisco Systems";
            }
          ];
        };
        cloudengines_pogoe02 = {
          device_packages = [
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-cloudengines_pogoe02";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-cloudengines_pogoe02-initramfs-uImage";
              sha256 = "08670a23dfb95f525e757a35ce780b7a404f0ea51d28c44540df2ed8a4a92b74";
              sha256_unsigned = "08670a23dfb95f525e757a35ce780b7a404f0ea51d28c44540df2ed8a4a92b74";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-cloudengines_pogoe02-squashfs-factory.bin";
              sha256 = "a10172878486bf143f45159aa58e2f6f0d024ee5a4adfed2ad2735279ec6ef71";
              sha256_unsigned = "a10172878486bf143f45159aa58e2f6f0d024ee5a4adfed2ad2735279ec6ef71";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-cloudengines_pogoe02-squashfs-sysupgrade.bin";
              sha256 = "31e151f1c206711f373f0eb298778d38e874c329a5e8ca0e66536d591a77d727";
              sha256_unsigned = "4a750239e80082f7f48b76a2efa38f850c4740db9faa99c4afe80e502e106765";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "cloudengines,pogoe02"
            "pogo_e02"
          ];
          titles = [
            {
              model = "Pogoplug E02";
              vendor = "Cloud Engines";
            }
          ];
        };
        cloudengines_pogoplugv4 = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-mvsdio"
            "kmod-usb3"
            "kmod-gpio-button-hotplug"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-cloudengines_pogoplugv4";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-cloudengines_pogoplugv4-squashfs-sysupgrade.bin";
              sha256 = "19a43bba90c7bc014348a0c99d1b34523d59de06861c05993b0609e54d59b168";
              sha256_unsigned = "a67fb5f74c14d0fe592f7d94bd262d91770dd6e1231528a7809d5b1811867806";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-cloudengines_pogoplugv4-initramfs-uImage";
              sha256 = "aede5c13d047f939686cf756be1b5243ae40da8e0f5c7672caca00886220822e";
              sha256_unsigned = "aede5c13d047f939686cf756be1b5243ae40da8e0f5c7672caca00886220822e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-cloudengines_pogoplugv4-squashfs-factory.bin";
              sha256 = "d977219bbf47200e42c4bb582147fed3616c869b8e3c79ca7f61d32a40f621d6";
              sha256_unsigned = "d977219bbf47200e42c4bb582147fed3616c869b8e3c79ca7f61d32a40f621d6";
              type = "factory";
            }
          ];
          supported_devices = [
            "cloudengines,pogoplugv4"
          ];
          titles = [
            {
              model = "Pogoplug V4";
              vendor = "Cloud Engines";
            }
          ];
        };
        ctera_c200-v1 = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-gpio-button-hotplug"
            "kmod-hwmon-lm63"
            "kmod-rtc-s35390a"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-ctera_c200-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-ctera_c200-v1-squashfs-sysupgrade.bin";
              sha256 = "5e480d024438adccea28f25beb64b289dc2197000982132f4744b740865baa4a";
              sha256_unsigned = "ccdf865cfde1e991a97008a8d6b2c1aca795ba45fe38618627394aed0105e05e";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-ctera_c200-v1-initramfs-factory.firm";
              sha256 = "a11852bd2dd13aa9d80c0b4377599d88576d25b11f30a009d2a83e7884db83d9";
              sha256_unsigned = "a11852bd2dd13aa9d80c0b4377599d88576d25b11f30a009d2a83e7884db83d9";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ctera,c200-v1"
          ];
          titles = [
            {
              model = "C200";
              variant = "V1";
              vendor = "Ctera";
            }
          ];
        };
        dlink_dns320l = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-gpio-button-hotplug"
            "kmod-usb-storage"
            "kmod-usb-ledtrig-usbport"
            "dns320l-mcu"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-dlink_dns320l";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-dlink_dns320l-squashfs-factory.bin";
              sha256 = "f401ce941bffceffe12ad50e700d4a85224c25d63f9c58fd2cc8ecf534fe5a3a";
              sha256_unsigned = "f401ce941bffceffe12ad50e700d4a85224c25d63f9c58fd2cc8ecf534fe5a3a";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-dlink_dns320l-squashfs-sysupgrade.bin";
              sha256 = "f75640c6e07d7f0f6ad74d53500c0534de525c48d235eb0f729dd51848493f94";
              sha256_unsigned = "09f203713b70c2eef0f94bdc5b9af16c3b0b1c21d65d0e55503ddf6021fc908b";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-dlink_dns320l-initramfs-uImage";
              sha256 = "8c1f08a3e7e1f177f010351bddfa47288bf810083e3968d54e03abac0c4b8e35";
              sha256_unsigned = "8c1f08a3e7e1f177f010351bddfa47288bf810083e3968d54e03abac0c4b8e35";
              type = "kernel";
            }
          ];
          supported_devices = [
            "dlink,dns320l"
          ];
          titles = [
            {
              model = "DNS-320L";
              vendor = "D-Link";
            }
          ];
        };
        endian_4i-edge-200 = {
          device_packages = [
            "kmod-ath9k"
            "kmod-mvsdio"
            "wpad-basic-openssl"
            "kmod-rtc-mv"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-endian_4i-edge-200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-endian_4i-edge-200-squashfs-sysupgrade.bin";
              sha256 = "e3c6f55d2118c568f14730dfd81a12e3dadc9f9d137978693ef4033e4bc4cb16";
              sha256_unsigned = "d7a5529021a309e585ec24121506c3b7b4fbd3283c626f25673749d05278596e";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-endian_4i-edge-200-initramfs-uImage";
              sha256 = "b8c63a153fa5cc9c5b363ad729bf385ae895db35325bcc07146fcf4bdf2029aa";
              sha256_unsigned = "b8c63a153fa5cc9c5b363ad729bf385ae895db35325bcc07146fcf4bdf2029aa";
              type = "kernel";
            }
          ];
          supported_devices = [
            "endian,4i-edge-200"
          ];
          titles = [
            {
              model = "4i Edge 200";
              vendor = "Endian";
            }
            {
              model = "UTM Mini Firewall";
              vendor = "Endian";
            }
          ];
        };
        globalscale_sheevaplug = {
          device_packages = [
            "kmod-mvsdio"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-globalscale_sheevaplug";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-globalscale_sheevaplug-initramfs-uImage";
              sha256 = "12f5d551605cc2e5a0a697bee125e9c0c73940d94f5384883bf7febe0f2cbc1d";
              sha256_unsigned = "12f5d551605cc2e5a0a697bee125e9c0c73940d94f5384883bf7febe0f2cbc1d";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-globalscale_sheevaplug-squashfs-factory.bin";
              sha256 = "6cc36770da955320d4ea9c6d44d413b9ba9ab3319274664ff28addba0076726d";
              sha256_unsigned = "6cc36770da955320d4ea9c6d44d413b9ba9ab3319274664ff28addba0076726d";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-globalscale_sheevaplug-squashfs-sysupgrade.bin";
              sha256 = "c056e095a2f82e4296630b2bc57a19a072c90aca220b7cebdb4d6223e6eb9d34";
              sha256_unsigned = "f7dfdcf677efac69ef4bf9db44f05fc50d1d3520f26281f53ed07ef1e1620c03";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "globalscale,sheevaplug"
          ];
          titles = [
            {
              model = "Sheevaplug";
              vendor = "Globalscale";
            }
          ];
        };
        "iom_iconnect-1.1" = {
          device_packages = [
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-iom_iconnect-1.1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-iom_iconnect-1.1-squashfs-factory.bin";
              sha256 = "cb2d9aac77eb0a202d7908188e0a6585825e3c07b06130aa045fc8daaef77960";
              sha256_unsigned = "cb2d9aac77eb0a202d7908188e0a6585825e3c07b06130aa045fc8daaef77960";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-iom_iconnect-1.1-initramfs-uImage";
              sha256 = "c651839ab2ce245355ec92d767a262dcdda5aa51568ed597fd5640872a331aba";
              sha256_unsigned = "c651839ab2ce245355ec92d767a262dcdda5aa51568ed597fd5640872a331aba";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-iom_iconnect-1.1-squashfs-sysupgrade.bin";
              sha256 = "aa29366a082639bb5b21dda47a6da66a2c80246a7c7b2427e213938b304341f5";
              sha256_unsigned = "5b84cc03ceb4a40772484cf0bb4c97150b5f4ac7b2976552f1544dd2b56f42ee";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "iom,iconnect-1.1"
            "iconnect"
          ];
          titles = [
            {
              model = "Iconnect";
              vendor = "Iomega";
            }
          ];
        };
        iom_ix2-200 = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-gpio-button-hotplug"
            "kmod-hwmon-lm63"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-iom_ix2-200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-iom_ix2-200-squashfs-sysupgrade.bin";
              sha256 = "17e89234e245a3221221b91b9b1cc4b3e295913576534801e50e13fd4bcbae3f";
              sha256_unsigned = "e4331d1d4a0c18b5853b4350f5e2cf52ec8d9a4262561faa3b8a80a1f09d3680";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-iom_ix2-200-initramfs-uImage";
              sha256 = "0cb86943e0e23768f316f63a9783dd76210a7a03a5d4c19c7575a9143036244f";
              sha256_unsigned = "0cb86943e0e23768f316f63a9783dd76210a7a03a5d4c19c7575a9143036244f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-iom_ix2-200-squashfs-factory.bin";
              sha256 = "eddb00a48c258420d63168c95daa022c9660b80598101a1045b5ced718e540d4";
              sha256_unsigned = "eddb00a48c258420d63168c95daa022c9660b80598101a1045b5ced718e540d4";
              type = "factory";
            }
          ];
          supported_devices = [
            "iom,ix2-200"
          ];
          titles = [
            {
              model = "StorCenter ix2-200";
              vendor = "Iomega";
            }
          ];
        };
        iom_ix4-200d = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-gpio-button-hotplug"
            "kmod-gpio-nxp-74hc164"
            "kmod-hwmon-adt7475"
            "kmod-mvsdio"
            "kmod-spi-gpio"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-iom_ix4-200d";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-iom_ix4-200d-squashfs-sysupgrade.bin";
              sha256 = "06fbe0f2bf9a99464f3c69a5d17bf06dd1c538d5b89d23386bac8ee7ceca6cdc";
              sha256_unsigned = "1f8933b26ef790e5059275b3ea4fee6bb7c904483c0ee2fb7509d6735a080d38";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-iom_ix4-200d-initramfs-uImage";
              sha256 = "2e1dfe63953b68bc8219088be5157e2ca3bf9c43c59a48604c4dbb3b62542f48";
              sha256_unsigned = "2e1dfe63953b68bc8219088be5157e2ca3bf9c43c59a48604c4dbb3b62542f48";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-iom_ix4-200d-squashfs-factory.bin";
              sha256 = "dc3f1006e4d20f89cf570e8932b5ef91cc777212c57d7a231260ecd4891480e8";
              sha256_unsigned = "dc3f1006e4d20f89cf570e8932b5ef91cc777212c57d7a231260ecd4891480e8";
              type = "factory";
            }
          ];
          supported_devices = [
            "iom,ix4-200d"
          ];
          titles = [
            {
              model = "StorCenter ix4-200d";
              vendor = "Iomega";
            }
          ];
        };
        iptime_nas1 = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-gpio-button-hotplug"
            "kmod-gpio-pca953x"
            "kmod-hwmon-drivetemp"
            "kmod-hwmon-gpiofan"
            "kmod-usb-ledtrig-usbport"
            "kmod-rtc-mv"
            "kmod-thermal"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-iptime_nas1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-iptime_nas1-squashfs-sysupgrade.bin";
              sha256 = "8ea3dacc519100fd3d7d4c2dbb5f22f5b1ff2f7221ebada20a3a81916f0d6981";
              sha256_unsigned = "fc64c6753889d92d718f9d01180d5a6e1ae5851aab0937952c0c32fdf635e37d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-iptime_nas1-initramfs-uImage";
              sha256 = "bc02a5943f947855c1e67ee758df398513f5c97385a23c2837b1a3d5d35ba78d";
              sha256_unsigned = "bc02a5943f947855c1e67ee758df398513f5c97385a23c2837b1a3d5d35ba78d";
              type = "kernel";
            }
          ];
          supported_devices = [
            "iptime,nas1"
          ];
          titles = [
            {
              model = "NAS1";
              vendor = "ipTIME";
            }
          ];
        };
        linksys_e4200-v2 = {
          device_packages = [
            "kmod-mwl8k"
            "wpad-basic-openssl"
            "kmod-gpio-button-hotplug"
            "kmod-rtc-mv"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-linksys_e4200-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-linksys_e4200-v2-squashfs-factory.bin";
              sha256 = "0969eaab42a3e396fee9bec5fd6c76a4ebd2cf039e2ee9b6512b3807e99a0bed";
              sha256_unsigned = "0969eaab42a3e396fee9bec5fd6c76a4ebd2cf039e2ee9b6512b3807e99a0bed";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-linksys_e4200-v2-squashfs-sysupgrade.bin";
              sha256 = "c518eab2365be2f74477b37a83a777ca13c881fe08d3452a32fc6e47181aeac3";
              sha256_unsigned = "aa9cad6729f0434491cd17f31cf957ccac2c3adaf665b6ed99acfc037f162391";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-linksys_e4200-v2-initramfs-uImage";
              sha256 = "83592ea9dc84dfe49cbbc66871ec61ebeff8be15988e180fbba318aaddcf3065";
              sha256_unsigned = "83592ea9dc84dfe49cbbc66871ec61ebeff8be15988e180fbba318aaddcf3065";
              type = "kernel";
            }
          ];
          supported_devices = [
            "linksys,e4200-v2"
            "linksys,viper"
            "linksys-viper"
          ];
          titles = [
            {
              model = "E4200";
              variant = "v2";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea3500 = {
          device_packages = [
            "kmod-mwl8k"
            "wpad-basic-openssl"
            "kmod-gpio-button-hotplug"
            "kmod-rtc-mv"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-linksys_ea3500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-linksys_ea3500-squashfs-factory.bin";
              sha256 = "401929eed96866ef17d3604aa2f582178a99b2d6611fb75221ab18785505bbae";
              sha256_unsigned = "401929eed96866ef17d3604aa2f582178a99b2d6611fb75221ab18785505bbae";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-linksys_ea3500-initramfs-uImage";
              sha256 = "b352d4a977fda46b866b725f19573b93f87da2405160695a2c5b5d867e958e9f";
              sha256_unsigned = "b352d4a977fda46b866b725f19573b93f87da2405160695a2c5b5d867e958e9f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-linksys_ea3500-squashfs-sysupgrade.bin";
              sha256 = "f4cbd277634c4d9e0de9571397d438fdb02de960a148d5cda1f76534d93c1e8f";
              sha256_unsigned = "9b79d25f3ddc2844a2b548fefac78cb11f7bf4bff9add14fc096db8dc9a97c8d";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "linksys,ea3500"
            "linksys,audi"
            "linksys-audi"
          ];
          titles = [
            {
              model = "EA3500";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea4500 = {
          device_packages = [
            "kmod-mwl8k"
            "wpad-basic-openssl"
            "kmod-gpio-button-hotplug"
            "kmod-rtc-mv"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-linksys_ea4500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-linksys_ea4500-squashfs-factory.bin";
              sha256 = "b5ecfd04bd58b9c6d872545803c789036b28b2a15e1458325ab914383fcaacd2";
              sha256_unsigned = "b5ecfd04bd58b9c6d872545803c789036b28b2a15e1458325ab914383fcaacd2";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-linksys_ea4500-initramfs-uImage";
              sha256 = "486236b445d1ee8774f56c9ac501a3e65677185dd6d7445e60bae0ecdf18c781";
              sha256_unsigned = "486236b445d1ee8774f56c9ac501a3e65677185dd6d7445e60bae0ecdf18c781";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-linksys_ea4500-squashfs-sysupgrade.bin";
              sha256 = "2a5b791e79160d9475731efccb12b74c4306132e0fd2461017a3e2ddd15980e1";
              sha256_unsigned = "eae373c224097552533a1a2a95f7751a08ecf0bb7700dd94543d2323319f4f8f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "linksys,ea4500"
            "linksys,viper"
            "linksys-viper"
          ];
          titles = [
            {
              model = "EA4500";
              vendor = "Linksys";
            }
          ];
        };
        netgear_readynas-duo-v2 = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-gpio-button-hotplug"
            "kmod-hwmon-g762"
            "kmod-rtc-rs5c372a"
            "kmod-usb3"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-netgear_readynas-duo-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-netgear_readynas-duo-v2-squashfs-sysupgrade.bin";
              sha256 = "efce54b56555f6696093d1fda07e5389cd6e7257d01c816ec70ed2599780c2ce";
              sha256_unsigned = "2947f41589df473d89ac84021a7f15d1c37895cfbbd382f8dd4a4fdb44691217";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-netgear_readynas-duo-v2-initramfs-uImage";
              sha256 = "a9e2400e3a18b339bb158e3c425e2d15ef558fd6c60b9b008de44f1636c05802";
              sha256_unsigned = "a9e2400e3a18b339bb158e3c425e2d15ef558fd6c60b9b008de44f1636c05802";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,readynas-duo-v2"
          ];
          titles = [
            {
              model = "ReadyNAS Duo";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_stora = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-rtc-pcf8563"
            "kmod-hwmon-lm75"
            "kmod-hwmon-tc654"
            "kmod-gpio-button-hotplug"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-netgear_stora";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-netgear_stora-squashfs-sysupgrade.bin";
              sha256 = "e93b402d0b851b1fb3f0ed944aa8f9920c1cd8b7c8ed1698037f903618f8a6a3";
              sha256_unsigned = "6ec96fe3e84b8e54f75f514acfaf98a55713167cd6e86eb8de9db1e707bd7076";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-netgear_stora-initramfs-uImage";
              sha256 = "b8d0161a494fabe9b4fbcfda6c2da350ffe465aeb6be4acb7c8f57cf391a2450";
              sha256_unsigned = "b8d0161a494fabe9b4fbcfda6c2da350ffe465aeb6be4acb7c8f57cf391a2450";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-netgear_stora-squashfs-factory.bin";
              sha256 = "c9b759017166b76ee0a8b98907f7034320413976b92ef4e9d2be4530577e0dfb";
              sha256_unsigned = "c9b759017166b76ee0a8b98907f7034320413976b92ef4e9d2be4530577e0dfb";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,stora"
          ];
          titles = [
            {
              model = "Stora (MS2000/2110)";
              vendor = "Netgear";
            }
          ];
        };
        raidsonic_ib-nas62x0 = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-raidsonic_ib-nas62x0";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-raidsonic_ib-nas62x0-initramfs-uImage";
              sha256 = "8cd67e06fb642f50abc8004d4dc5d11f803fb77bb923328c7b3a8e8e795fbb4e";
              sha256_unsigned = "8cd67e06fb642f50abc8004d4dc5d11f803fb77bb923328c7b3a8e8e795fbb4e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-raidsonic_ib-nas62x0-squashfs-factory.bin";
              sha256 = "fdd85872de7c6b4518bca5262cb91d5759a925f2e7156cb71b991d5122ab773c";
              sha256_unsigned = "fdd85872de7c6b4518bca5262cb91d5759a925f2e7156cb71b991d5122ab773c";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-raidsonic_ib-nas62x0-squashfs-sysupgrade.bin";
              sha256 = "b782fcc947484eeba52149c6e8dafa91ef24db306fac1ab2db82be9104e2dc46";
              sha256_unsigned = "f9c1f8da26b8f765421fd71902c1b6888c35a6589a984943e33790509c87f347";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "raidsonic,ib-nas62x0"
            "ib62x0"
          ];
          titles = [
            {
              model = "ICY BOX IB-NAS62x0";
              vendor = "RaidSonic";
            }
          ];
        };
        seagate_blackarmor-nas220 = {
          device_packages = [
            "kmod-hwmon-adt7475"
            "kmod-fs-ext4"
            "kmod-ata-marvell-sata"
            "mdadm"
            "kmod-gpio-button-hotplug"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-seagate_blackarmor-nas220";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-seagate_blackarmor-nas220-squashfs-factory.bin";
              sha256 = "03e89b94d765ed102f5dcdf98907fda21c62c85613cba196e805b3a0963a6fba";
              sha256_unsigned = "03e89b94d765ed102f5dcdf98907fda21c62c85613cba196e805b3a0963a6fba";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-seagate_blackarmor-nas220-squashfs-sysupgrade.bin";
              sha256 = "587180f9fe219426d5746c077a7642000ba231ddafa988da46e1a1e84bdc00fa";
              sha256_unsigned = "71baf61e698690215381f09910a438a01a4277aebfdc2b17f9eed0062f5546a8";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-seagate_blackarmor-nas220-initramfs-uImage";
              sha256 = "9ade6eb3439909f2ec28e5b52ae6f0fd30fd238a825c43b99e533215cf4cdbd5";
              sha256_unsigned = "9ade6eb3439909f2ec28e5b52ae6f0fd30fd238a825c43b99e533215cf4cdbd5";
              type = "kernel";
            }
          ];
          supported_devices = [
            "seagate,blackarmor-nas220"
          ];
          titles = [
            {
              model = "Blackarmor NAS220";
              vendor = "Seagate";
            }
          ];
        };
        seagate_dockstar = {
          device_packages = [
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-seagate_dockstar";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-seagate_dockstar-initramfs-uImage";
              sha256 = "9678bb970184ade81240b669655a69044992a02bff062fe2625906acad406e86";
              sha256_unsigned = "9678bb970184ade81240b669655a69044992a02bff062fe2625906acad406e86";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-seagate_dockstar-squashfs-factory.bin";
              sha256 = "b57ff655c7f7b3f077a5f8cea370c9c31019f6b8cc09d5d7b3bcc1891a42ebef";
              sha256_unsigned = "b57ff655c7f7b3f077a5f8cea370c9c31019f6b8cc09d5d7b3bcc1891a42ebef";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-seagate_dockstar-squashfs-sysupgrade.bin";
              sha256 = "e00cb489d4fa62bd1fa6ba8838bf8626365b4e76c8cd4db62a9a3d71b73dd8ab";
              sha256_unsigned = "acdd8a2e7ad2d86943fc7cc685765ce8b854e9b3fbacfd51b9a84aa065f35905";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "seagate,dockstar"
            "dockstar"
          ];
          titles = [
            {
              model = "FreeAgent Dockstar";
              vendor = "Seagate";
            }
          ];
        };
        seagate_goflexhome = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-seagate_goflexhome";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-seagate_goflexhome-squashfs-sysupgrade.bin";
              sha256 = "6adaa981c41657e8ae185a9a1c549ca4756ad296c53bb5d375c2d7e1866d33dd";
              sha256_unsigned = "cae39b287f1ccef19fbf8eb69e629d1f7eb6b0c3b045266c4a9df2e6ec72d9d9";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-seagate_goflexhome-squashfs-factory.bin";
              sha256 = "fc10ca9925b22061c21181bf6b0e9c5968c4673cac22c0b7fae90d88bc10ebf2";
              sha256_unsigned = "fc10ca9925b22061c21181bf6b0e9c5968c4673cac22c0b7fae90d88bc10ebf2";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-seagate_goflexhome-initramfs-uImage";
              sha256 = "2f1b4f552ae9e73914936cd3d697bb340cc393877f887ae7b21bdbda619d3adf";
              sha256_unsigned = "2f1b4f552ae9e73914936cd3d697bb340cc393877f887ae7b21bdbda619d3adf";
              type = "kernel";
            }
          ];
          supported_devices = [
            "seagate,goflexhome"
            "goflexhome"
          ];
          titles = [
            {
              model = "GoFlexHome";
              vendor = "Seagate";
            }
          ];
        };
        seagate_goflexnet = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-seagate_goflexnet";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-seagate_goflexnet-squashfs-sysupgrade.bin";
              sha256 = "73bab06fb98fd242a37478390792d7808e8d323cc4d1d50ca05eff0df277b45d";
              sha256_unsigned = "ff07f1ab0ba21f4052bb857fb522372cd6312e38fb2a84475169f4b88c18c333";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-seagate_goflexnet-squashfs-factory.bin";
              sha256 = "c85867d236e07181a198f18ba2f16418f079612f47b558ed160dfafbe7402433";
              sha256_unsigned = "c85867d236e07181a198f18ba2f16418f079612f47b558ed160dfafbe7402433";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-seagate_goflexnet-initramfs-uImage";
              sha256 = "963f4dd3081bf58d9cc525cfdee2943f65f59d9d0d98ed8c1c3ce790674a1d76";
              sha256_unsigned = "963f4dd3081bf58d9cc525cfdee2943f65f59d9d0d98ed8c1c3ce790674a1d76";
              type = "kernel";
            }
          ];
          supported_devices = [
            "seagate,goflexnet"
            "goflexnet"
          ];
          titles = [
            {
              model = "GoFlexNet";
              vendor = "Seagate";
            }
          ];
        };
        zyxel_nsa310b = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-r8169"
            "kmod-fs-ext4"
            "kmod-gpio-button-hotplug"
            "kmod-hwmon-lm85"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-zyxel_nsa310b";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-zyxel_nsa310b-initramfs-uImage";
              sha256 = "5f8d6e28ebad1ea2e5dca8987d0d8ef5e2557eea01cc83a95bd8b8a4663d53b9";
              sha256_unsigned = "5f8d6e28ebad1ea2e5dca8987d0d8ef5e2557eea01cc83a95bd8b8a4663d53b9";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-zyxel_nsa310b-squashfs-factory.bin";
              sha256 = "32fa54e8c6659961512b36fc966f2f8d79089c387987a9f757bfd6882c95425d";
              sha256_unsigned = "32fa54e8c6659961512b36fc966f2f8d79089c387987a9f757bfd6882c95425d";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-zyxel_nsa310b-squashfs-sysupgrade.bin";
              sha256 = "9b4e269a3e591168f923361f601e65ca50810515b5d71dd956a21776d40449b7";
              sha256_unsigned = "672861c16dda1e41040a5d6511e15abf26370615c3fa1d88f8a92327af89df77";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zyxel,nsa310b"
            "nsa310b"
          ];
          titles = [
            {
              model = "NSA310b";
              vendor = "Zyxel";
            }
          ];
        };
        zyxel_nsa310s = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-gpio-button-hotplug"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-zyxel_nsa310s";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-zyxel_nsa310s-initramfs-uImage";
              sha256 = "bbea2007dff7bab2f36cdfdf747d7967733c2c4d682e4aef2e90948e6f833a35";
              sha256_unsigned = "bbea2007dff7bab2f36cdfdf747d7967733c2c4d682e4aef2e90948e6f833a35";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-zyxel_nsa310s-squashfs-sysupgrade.bin";
              sha256 = "c210c740340cd71031c4b2f386ba366c636129883a132f3c636630e455fad7a9";
              sha256_unsigned = "9155304059ae43947769efa103c99fc04eaf2c089df66d058f97a59cbdeeaa5d";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-zyxel_nsa310s-squashfs-factory.bin";
              sha256 = "9d122a5b0e8ce7b073dba6f7532f33e3a4a320204e557e46ae91b574c85c22b2";
              sha256_unsigned = "9d122a5b0e8ce7b073dba6f7532f33e3a4a320204e557e46ae91b574c85c22b2";
              type = "factory";
            }
          ];
          supported_devices = [
            "zyxel,nsa310s"
          ];
          titles = [
            {
              model = "NSA310S";
              vendor = "Zyxel";
            }
          ];
        };
        zyxel_nsa325 = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-gpio-button-hotplug"
            "kmod-rtc-pcf8563"
            "kmod-usb3"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-kirkwood-generic-zyxel_nsa325";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-zyxel_nsa325-initramfs-uImage";
              sha256 = "fd67ddf780b9664dd0b6ff6ac262c89c07a056a2810e50752ee81d56b3b6d9db";
              sha256_unsigned = "fd67ddf780b9664dd0b6ff6ac262c89c07a056a2810e50752ee81d56b3b6d9db";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-zyxel_nsa325-squashfs-sysupgrade.bin";
              sha256 = "e054d3bca76639aa6b5989b5e23d2d742e5127dde20f72076210522759c5eaf9";
              sha256_unsigned = "6bb027ced33da6b8842eafb95559a1139bd26025307873872d4f94c9ecc26b85";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-kirkwood-generic-zyxel_nsa325-squashfs-factory.bin";
              sha256 = "eabc581d5342beac3033ecea1478e300935c02969a4e76f6bb9e222238d6bdee";
              sha256_unsigned = "eabc581d5342beac3033ecea1478e300935c02969a4e76f6bb9e222238d6bdee";
              type = "factory";
            }
          ];
          supported_devices = [
            "zyxel,nsa325"
            "nsa325"
          ];
          titles = [
            {
              model = "NSA325";
              variant = "v1/v2";
              vendor = "Zyxel";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "kirkwood/generic";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
  lantiq = {
    xrx200 = {
      arch_packages = "mips_24kc";
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
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "39481852e11e094668d30f39466eef95";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        arcadyan_vgv7510kw22-brn = {
          device_packages = [
            "kmod-rt2800-pci"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "kmod-ltq-tapi"
            "kmod-ltq-vmmc"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-arcadyan_vgv7510kw22-brn";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-arcadyan_vgv7510kw22-brn-initramfs-kernel.bin";
              sha256 = "eeb87b221c8549957f05d03754c0683d6d08ad427835995b68190b7f76373f12";
              sha256_unsigned = "eeb87b221c8549957f05d03754c0683d6d08ad427835995b68190b7f76373f12";
              type = "kernel";
            }
          ];
          supported_devices = [
            "arcadyan,vgv7510kw22-brn"
            "VGV7510KW22BRN"
          ];
          titles = [
            {
              model = "VGV7510KW22";
              variant = "BRN";
              vendor = "Arcadyan";
            }
            {
              model = "Box 6431";
              variant = "BRN";
              vendor = "o2";
            }
          ];
        };
        arcadyan_vgv7510kw22-nor = {
          device_packages = [
            "kmod-rt2800-pci"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "kmod-ltq-tapi"
            "kmod-ltq-vmmc"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-arcadyan_vgv7510kw22-nor";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-arcadyan_vgv7510kw22-nor-squashfs-sysupgrade.bin";
              sha256 = "9c9c30806071bba6e2ab8232388433068629bc08a9463e67057fa44de591fc14";
              sha256_unsigned = "0287e3f713a7aefc9e5a2d6cd1c032c1ffd129e77a873bed753c0b81dd6ed35b";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-arcadyan_vgv7510kw22-nor-initramfs-kernel.bin";
              sha256 = "622272cfc99fa86d7a9a19cf445975b1b26e442a71baaa2a4346bd26b0a07d85";
              sha256_unsigned = "622272cfc99fa86d7a9a19cf445975b1b26e442a71baaa2a4346bd26b0a07d85";
              type = "kernel";
            }
          ];
          supported_devices = [
            "arcadyan,vgv7510kw22-nor"
            "VGV7510KW22NOR"
          ];
          titles = [
            {
              model = "VGV7510KW22";
              variant = "NOR";
              vendor = "Arcadyan";
            }
            {
              model = "Box 6431";
              variant = "NOR";
              vendor = "o2";
            }
          ];
        };
        arcadyan_vgv7519-brn = {
          device_packages = [
            "kmod-rt2800-pci"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "kmod-ltq-tapi"
            "kmod-ltq-vmmc"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-arcadyan_vgv7519-brn";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-arcadyan_vgv7519-brn-initramfs-kernel.bin";
              sha256 = "36deabd952202436b46642ad3d9ab6a12162bb1e28ae702e4e1d3630a2ddeae2";
              sha256_unsigned = "36deabd952202436b46642ad3d9ab6a12162bb1e28ae702e4e1d3630a2ddeae2";
              type = "kernel";
            }
          ];
          supported_devices = [
            "arcadyan,vgv7519-brn"
            "VGV7519BRN"
          ];
          titles = [
            {
              model = "VGV7519";
              variant = "BRN";
              vendor = "Arcadyan";
            }
            {
              model = "Experiabox 8";
              variant = "BRN";
              vendor = "KPN";
            }
          ];
        };
        arcadyan_vgv7519-nor = {
          device_packages = [
            "kmod-rt2800-pci"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "kmod-ltq-tapi"
            "kmod-ltq-vmmc"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-arcadyan_vgv7519-nor";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-arcadyan_vgv7519-nor-squashfs-sysupgrade.bin";
              sha256 = "88fe7d7f9bf7a16120ff00c7e295b32abdf103a1c7f38837f7cce09ee55f1af8";
              sha256_unsigned = "9945b3f2a4554f5edd4db238812e6b2e569c3ca557cd61c77b0dce6741f2c4e5";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-arcadyan_vgv7519-nor-initramfs-kernel.bin";
              sha256 = "225a86df80693f73d6acaa3b8a550cc94c60093bfb97dacf4a6491d50f429022";
              sha256_unsigned = "225a86df80693f73d6acaa3b8a550cc94c60093bfb97dacf4a6491d50f429022";
              type = "kernel";
            }
          ];
          supported_devices = [
            "arcadyan,vgv7519-nor"
            "VGV7519NOR"
          ];
          titles = [
            {
              model = "VGV7519";
              variant = "NOR";
              vendor = "Arcadyan";
            }
            {
              model = "Experiabox 8";
              variant = "NOR";
              vendor = "KPN";
            }
          ];
        };
        arcadyan_vrv9510kwac23 = {
          device_packages = [
            "kmod-b43"
            "wpad-basic-mbedtls"
            "broadcom-43222-sprom"
            "broadcom-4360-sprom"
            "kmod-usb-dwc2"
            "kmod-ltq-tapi"
            "kmod-ltq-vmmc"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-arcadyan_vrv9510kwac23";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-arcadyan_vrv9510kwac23-squashfs-sysupgrade.bin";
              sha256 = "5abe540dc8e1c569c87839a1f6c4217cf90aa85c2f4c06c6590b498d590bc5eb";
              sha256_unsigned = "2ab4a1bdf68b03d75114171b7cbcb0715726b32e5906328cf3ff81fdf05c2e06";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-arcadyan_vrv9510kwac23-initramfs-kernel.bin";
              sha256 = "959ce6a030e26e6224db393e3ef505c1a0fa909c1d224bf996268a650fd052a4";
              sha256_unsigned = "959ce6a030e26e6224db393e3ef505c1a0fa909c1d224bf996268a650fd052a4";
              type = "kernel";
            }
          ];
          supported_devices = [
            "arcadyan,vrv9510kwac23"
            "arcadyan_vrv9510kwac23"
          ];
          titles = [
            {
              model = "VRV9510KWAC23";
              vendor = "Arcadyan";
            }
            {
              model = "Next";
              vendor = "Livebox";
            }
          ];
        };
        avm_fritz3370-rev2-hynix = {
          device_packages = [
            "kmod-ath9k"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "fritz-tffs"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz3370-rev2-hynix";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz3370-rev2-hynix-squashfs-eva-kernel.bin";
              sha256 = "9f3f5e499baf6bcdd3a514f7e53a8b14ab8a8b67d49a65b55c8a6e35ddd4aada";
              sha256_unsigned = "9f3f5e499baf6bcdd3a514f7e53a8b14ab8a8b67d49a65b55c8a6e35ddd4aada";
              type = "eva-kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz3370-rev2-hynix-squashfs-sysupgrade.bin";
              sha256 = "ea173cbf46ea4baa1f07028e2d3ffb3698a1a6027635de4bb7d6ef4345c4bb19";
              sha256_unsigned = "b80915d5f55c782fea838d9311c053d45eed3597093c7ccc5d3892c50d05458e";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz3370-rev2-hynix-initramfs-kernel.bin";
              sha256 = "a7ddd951534f2ae7ba570c696fcc1349e1ca7807b561b91ac7ec1c5649b20312";
              sha256_unsigned = "a7ddd951534f2ae7ba570c696fcc1349e1ca7807b561b91ac7ec1c5649b20312";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz3370-rev2-hynix-squashfs-eva-filesystem.bin";
              sha256 = "3af1d192b401ae76b16b3cd128224ed487a19106e18bc5a29329e75eafaf884c";
              sha256_unsigned = "3af1d192b401ae76b16b3cd128224ed487a19106e18bc5a29329e75eafaf884c";
              type = "eva-filesystem";
            }
          ];
          supported_devices = [
            "avm,fritz3370-rev2-hynix"
          ];
          titles = [
            {
              model = "FRITZ!Box 3370";
              variant = "Rev. 2 (Hynix NAND)";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz3370-rev2-micron = {
          device_packages = [
            "kmod-ath9k"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "fritz-tffs"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz3370-rev2-micron";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz3370-rev2-micron-squashfs-eva-filesystem.bin";
              sha256 = "3af1d192b401ae76b16b3cd128224ed487a19106e18bc5a29329e75eafaf884c";
              sha256_unsigned = "3af1d192b401ae76b16b3cd128224ed487a19106e18bc5a29329e75eafaf884c";
              type = "eva-filesystem";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz3370-rev2-micron-initramfs-kernel.bin";
              sha256 = "1225098839deb7a159469de6aeb82a79796f8702021084695898c6f5f9c65a1e";
              sha256_unsigned = "1225098839deb7a159469de6aeb82a79796f8702021084695898c6f5f9c65a1e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz3370-rev2-micron-squashfs-eva-kernel.bin";
              sha256 = "a569faf683a6b8e35e28b837f1e0cc9a43eaaacaf5dd3696392a7a98fac7d8e9";
              sha256_unsigned = "a569faf683a6b8e35e28b837f1e0cc9a43eaaacaf5dd3696392a7a98fac7d8e9";
              type = "eva-kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz3370-rev2-micron-squashfs-sysupgrade.bin";
              sha256 = "59864743218883a86f8e5223f1979b65f5bd04fad9d8665dd67a45950f2d28a4";
              sha256_unsigned = "524dce62d83d64447b6ff8fae42e48836fe53e8c7ae099c666592918e7d63913";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritz3370-rev2-micron"
          ];
          titles = [
            {
              model = "FRITZ!Box 3370";
              variant = "Rev. 2 (Micron NAND)";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz3390 = {
          device_packages = [
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "fritz-tffs"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz3390";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz3390-initramfs-kernel.bin";
              sha256 = "b9f21e9189c1e27804304b3ac25ceb302677fa3da5647b2627aff7883d1a37f9";
              sha256_unsigned = "b9f21e9189c1e27804304b3ac25ceb302677fa3da5647b2627aff7883d1a37f9";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz3390-squashfs-sysupgrade.bin";
              sha256 = "8144c5ca44d87e57a08557d937e57e5461879c859f48cc778a7c7b9201c0006e";
              sha256_unsigned = "8e86a63785ec3fa36b87fb3887b9ad8e4e47aebe11595eadf555177045dd5e5a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritz3390"
          ];
          titles = [
            {
              model = "FRITZ!Box 3390";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz3490 = {
          device_packages = [
            "kmod-usb3"
            "fritz-tffs"
            "-kmod-owl-loader"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz3490";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz3490-initramfs-kernel.bin";
              sha256 = "e86cd60419ab221a74fc7895452d3bd4f6379eb7c2dfd3fe4bfdb19c538b4805";
              sha256_unsigned = "e86cd60419ab221a74fc7895452d3bd4f6379eb7c2dfd3fe4bfdb19c538b4805";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz3490-squashfs-sysupgrade.bin";
              sha256 = "0d517f36a8c1d8013316d627e918d33a967b851e9498d58d1bb9ad5b539c7f57";
              sha256_unsigned = "8b48d49ed9d4ac37b72c8655805388b9a0e48a1d64f06edcaa6009cec72529a2";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritz3490"
          ];
          titles = [
            {
              model = "FRITZ!Box 3490";
              variant = "Other NAND";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz3490-micron = {
          device_packages = [
            "kmod-usb3"
            "fritz-tffs"
            "-kmod-owl-loader"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz3490-micron";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz3490-micron-initramfs-kernel.bin";
              sha256 = "da0ec59dc1b5c739dd53e0702fe11dd8108b53939e416f18a6edb040723bce09";
              sha256_unsigned = "da0ec59dc1b5c739dd53e0702fe11dd8108b53939e416f18a6edb040723bce09";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz3490-micron-squashfs-sysupgrade.bin";
              sha256 = "e9f37085d461b0b15c86b480c711fd180da645df2e10a0ceef4b1feb9dcf6507";
              sha256_unsigned = "c4c3355a048cb2fb71193eca4948f8ab0f1cf66830ba32423c350948c765b5e8";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritz3490-micron"
          ];
          titles = [
            {
              model = "FRITZ!Box 3490";
              variant = "Micron NAND";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz5490 = {
          device_packages = [
            "kmod-dsa-qca8k"
            "kmod-phy-qca83xx"
            "kmod-usb3"
            "fritz-tffs"
            "-ltq-vdsl-vr9-vectoring-fw-installer"
            "-kmod-ltq-vdsl-vr9-mei"
            "-kmod-ltq-vdsl-vr9"
            "-kmod-ltq-atm-vr9"
            "-kmod-ltq-ptm-vr9"
            "-ltq-vdsl-vr9-app"
            "-kmod-owl-loader"
            "-dsl-vrx200-firmware-xdsl-a"
            "-dsl-vrx200-firmware-xdsl-b-patch"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz5490";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz5490-initramfs-kernel.bin";
              sha256 = "be876f618bb7345ad487086e6b11d573f0de41584b04c226b173a59e18d75f58";
              sha256_unsigned = "be876f618bb7345ad487086e6b11d573f0de41584b04c226b173a59e18d75f58";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz5490-squashfs-sysupgrade.bin";
              sha256 = "5fa63f8ad3e7e95be4cde4042a887da88d9310d62c8e8b47f4fce315654adbe5";
              sha256_unsigned = "0405582921c308ef23b7ed239f9887a3a3d6713f4edea2e0174e411d4fa39432";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritz5490"
          ];
          titles = [
            {
              model = "FRITZ!Box 5490";
              variant = "Other NAND";
              vendor = "AVM";
            }
            {
              model = "FRITZ!Box 5491";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz5490-micron = {
          device_packages = [
            "kmod-dsa-qca8k"
            "kmod-phy-qca83xx"
            "kmod-usb3"
            "fritz-tffs"
            "-ltq-vdsl-vr9-vectoring-fw-installer"
            "-kmod-ltq-vdsl-vr9-mei"
            "-kmod-ltq-vdsl-vr9"
            "-kmod-ltq-atm-vr9"
            "-kmod-ltq-ptm-vr9"
            "-ltq-vdsl-vr9-app"
            "-kmod-owl-loader"
            "-dsl-vrx200-firmware-xdsl-a"
            "-dsl-vrx200-firmware-xdsl-b-patch"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz5490-micron";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz5490-micron-initramfs-kernel.bin";
              sha256 = "7c16c459e4e29a5bcb668ffcfb7acaea0ce949291700267fe26bd74ff37a9378";
              sha256_unsigned = "7c16c459e4e29a5bcb668ffcfb7acaea0ce949291700267fe26bd74ff37a9378";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz5490-micron-squashfs-sysupgrade.bin";
              sha256 = "dd0adb32390c85558169abdad3a388a809f520048468bbffdbc3d2c1cee31ce9";
              sha256_unsigned = "592cab2e01546c9388ff3b8ea860e123f0cc1093fafe07f80b2106ab45f458e7";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritz5490-micron"
          ];
          titles = [
            {
              model = "FRITZ!Box 5490";
              variant = "Micron NAND";
              vendor = "AVM";
            }
            {
              model = "FRITZ!Box 5491";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz7360-v2 = {
          device_packages = [
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "fritz-tffs"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz7360-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz7360-v2-initramfs-kernel.bin";
              sha256 = "145da9db4be854df32916e02bdb16825edee652641a5546c55f42037f0b1cfd9";
              sha256_unsigned = "145da9db4be854df32916e02bdb16825edee652641a5546c55f42037f0b1cfd9";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz7360-v2-squashfs-sysupgrade.bin";
              sha256 = "140318cd11b804712ee2ef03ec7e50cbf06017d31f80a8c6f0caa87bc5532c71";
              sha256_unsigned = "4e2e4f5ef9ded550df956f96335e8a77a88bc551f00639453e2cb582fb7b02ad";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritz7360-v2"
          ];
          titles = [
            {
              model = "FRITZ!Box 7360";
              variant = "v2";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz7360sl = {
          device_packages = [
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "fritz-tffs"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz7360sl";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz7360sl-squashfs-sysupgrade.bin";
              sha256 = "21cb272381e4b29a8ef056357e7ef83667968a0619fd42ae1d1ec683f696ac3a";
              sha256_unsigned = "e0732aa6fd3b3654753d07e0e86541f4bead619e7c697a2c80b75d164181bb8a";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz7360sl-initramfs-kernel.bin";
              sha256 = "2e4e850744442759bb4198ed0330ed432be9cd85cf657bd0467c9238b82b04e4";
              sha256_unsigned = "2e4e850744442759bb4198ed0330ed432be9cd85cf657bd0467c9238b82b04e4";
              type = "kernel";
            }
          ];
          supported_devices = [
            "avm,fritz7360sl"
            "FRITZ7360SL"
          ];
          titles = [
            {
              model = "FRITZ!Box 7360 SL";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz7362sl = {
          device_packages = [
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "fritz-tffs"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz7362sl";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz7362sl-squashfs-sysupgrade.bin";
              sha256 = "c4f7f199988d8b537f0cf96c07851be1f21c49c76bb76df9aa27b4f60c97426c";
              sha256_unsigned = "ea5d8bfb597b8ad6e70aa4c078477b9a0ca6b9eff671113644aff51444581e26";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz7362sl-initramfs-kernel.bin";
              sha256 = "f795c163b04a5a16bb4707381793a61ff4d304dd0939c977b47c8b169bb13d72";
              sha256_unsigned = "f795c163b04a5a16bb4707381793a61ff4d304dd0939c977b47c8b169bb13d72";
              type = "kernel";
            }
          ];
          supported_devices = [
            "avm,fritz7362sl"
          ];
          titles = [
            {
              model = "FRITZ!Box 7362 SL";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz7412 = {
          device_packages = [
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "fritz-tffs-nand"
            "fritz-caldata"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz7412";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz7412-squashfs-sysupgrade.bin";
              sha256 = "cd17bc239f442fdf8685dcec988cc0afc3264203494780f720f0f7d70622ac6c";
              sha256_unsigned = "5cd4c5c7ba6c5765f6e14e06c87f4a662419e1a923184b26824b3a453b9d888f";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz7412-initramfs-kernel.bin";
              sha256 = "6ed47b024f3d6cbc77b17e6beb5173af73bef0a579fcd846707635ee34bbcced";
              sha256_unsigned = "6ed47b024f3d6cbc77b17e6beb5173af73bef0a579fcd846707635ee34bbcced";
              type = "kernel";
            }
          ];
          supported_devices = [
            "avm,fritz7412"
          ];
          titles = [
            {
              model = "FRITZ!Box 7412";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz7430 = {
          device_packages = [
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "fritz-tffs-nand"
            "fritz-caldata"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz7430";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz7430-squashfs-sysupgrade.bin";
              sha256 = "ad438f8ea560937b440df028d7abb68a0c4ca452c2ce14143f92657864a4967f";
              sha256_unsigned = "d9af47170fba3df5498fffda6dde1169d4a937de157734fe263bf02f32c17390";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz7430-initramfs-kernel.bin";
              sha256 = "9a56c18a934ed024bf6ea8b4b282bad0b6fcf742ef3b8492fa5a1bf066f1fef6";
              sha256_unsigned = "9a56c18a934ed024bf6ea8b4b282bad0b6fcf742ef3b8492fa5a1bf066f1fef6";
              type = "kernel";
            }
          ];
          supported_devices = [
            "avm,fritz7430"
          ];
          titles = [
            {
              model = "FRITZ!Box 7430";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz7490 = {
          device_packages = [
            "kmod-usb3"
            "fritz-tffs"
            "-kmod-owl-loader"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz7490";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz7490-squashfs-sysupgrade.bin";
              sha256 = "619656a2494182aa86e5de2f04e802d5336b6222d016140b7981c8916750efbe";
              sha256_unsigned = "8afc0d30e4a787fb74f92ee167da30850d64e0d79ff99119538d97ea5a10fdc7";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz7490-initramfs-kernel.bin";
              sha256 = "686fbc801d7a4c4ebba196fe1fcda57a1c0fb744fd70a343b180b31561e7fa2e";
              sha256_unsigned = "686fbc801d7a4c4ebba196fe1fcda57a1c0fb744fd70a343b180b31561e7fa2e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "avm,fritz7490"
          ];
          titles = [
            {
              model = "FRITZ!Box 7490";
              variant = "Other NAND";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz7490-micron = {
          device_packages = [
            "kmod-usb3"
            "fritz-tffs"
            "-kmod-owl-loader"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz7490-micron";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz7490-micron-squashfs-sysupgrade.bin";
              sha256 = "f1d3c23887d2ea22e2a4e5431d281eb8d4a1325777d6998cd2b685c99a385596";
              sha256_unsigned = "c172e1a0079ad95812052db653efda4d4b68d12b36593eeab6d91b9df28e8633";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-avm_fritz7490-micron-initramfs-kernel.bin";
              sha256 = "f6f5933138c5538575e24d3e6399146beb679bf2221aa07261af7ffe9a2c2cc5";
              sha256_unsigned = "f6f5933138c5538575e24d3e6399146beb679bf2221aa07261af7ffe9a2c2cc5";
              type = "kernel";
            }
          ];
          supported_devices = [
            "avm,fritz7490-micron"
          ];
          titles = [
            {
              model = "FRITZ!Box 7490";
              variant = "Micron NAND";
              vendor = "AVM";
            }
          ];
        };
        bt_homehub-v5a = {
          device_packages = [
            "kmod-ath9k"
            "kmod-owl-loader"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-bt_homehub-v5a";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-bt_homehub-v5a-squashfs-sysupgrade.bin";
              sha256 = "3f6815c0cab737207b64b998491114e1f7ece9f65c1781d35fc687ef75e18513";
              sha256_unsigned = "ba90169427435151a09000979c5628073d0d9304232ceeae38aa16eaff865d4a";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-bt_homehub-v5a-initramfs-kernel.bin";
              sha256 = "71102269909fb1f63050f6f33f3172d47fd722b999cf0333a45b13784ff77895";
              sha256_unsigned = "71102269909fb1f63050f6f33f3172d47fd722b999cf0333a45b13784ff77895";
              type = "kernel";
            }
          ];
          supported_devices = [
            "bt,homehub-v5a"
            "BTHOMEHUBV5A"
          ];
          titles = [
            {
              model = "Home Hub 5";
              variant = "Type A";
              vendor = "British Telecom (BT)";
            }
            {
              model = "Business Hub 5";
              variant = "Type A";
              vendor = "British Telecom (BT)";
            }
            {
              model = "Hub One";
              vendor = "Plusnet";
            }
          ];
        };
        buffalo_wbmr-300hpd = {
          device_packages = [
            "kmod-mt7603"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-buffalo_wbmr-300hpd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-buffalo_wbmr-300hpd-squashfs-sysupgrade.bin";
              sha256 = "2a046edf2914869ea00b658b3fe377c9fba2001844f9111174c03c142ff44a34";
              sha256_unsigned = "0bac67a92012a9f2bbddfcf68c550b24f4a4152ccdf6a85a631acf460b2c81c7";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-buffalo_wbmr-300hpd-initramfs-kernel.bin";
              sha256 = "dea47d7fb9eda29610625e05d5851004dd8bc443dafa51a2ebb80f2211aa68b7";
              sha256_unsigned = "dea47d7fb9eda29610625e05d5851004dd8bc443dafa51a2ebb80f2211aa68b7";
              type = "kernel";
            }
          ];
          supported_devices = [
            "buffalo,wbmr-300hpd"
            "WBMR300"
          ];
          titles = [
            {
              model = "WBMR-300HPD";
              vendor = "Buffalo";
            }
          ];
        };
        lantiq_easy80920-nand = {
          device_packages = [
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-lantiq_easy80920-nand";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-lantiq_easy80920-nand-squashfs-sysupgrade.bin";
              sha256 = "9e6c96b822d5393db313f5c5c40bc8ad7240b0c1a10a3c76f02724d8731f045e";
              sha256_unsigned = "e9c6f760935847f8b3565163800caa36db06ce66ae48251f92be52e3016e7a89";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-lantiq_easy80920-nand-squashfs-fullimage.bin";
              sha256 = "f42ba95d27348fc865194e28f0fe19fba9486b2470e1bece0e2be2e3ae620544";
              sha256_unsigned = "f42ba95d27348fc865194e28f0fe19fba9486b2470e1bece0e2be2e3ae620544";
              type = "fullimage";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-lantiq_easy80920-nand-initramfs-kernel.bin";
              sha256 = "8a1b057fa17c6ebc6acbc4d01512518104bd6beb5171741ea158d1d39f6bc796";
              sha256_unsigned = "8a1b057fa17c6ebc6acbc4d01512518104bd6beb5171741ea158d1d39f6bc796";
              type = "kernel";
            }
          ];
          supported_devices = [
            "lantiq,easy80920-nand"
          ];
          titles = [
            {
              model = "VR9 EASY80920";
              variant = "NAND";
              vendor = "Lantiq";
            }
          ];
        };
        lantiq_easy80920-nor = {
          device_packages = [
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-lantiq_easy80920-nor";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-lantiq_easy80920-nor-initramfs-kernel.bin";
              sha256 = "a49383a7a9953c119050ac0dd66be983ec570e5af046c9ebc3b4177534935b72";
              sha256_unsigned = "a49383a7a9953c119050ac0dd66be983ec570e5af046c9ebc3b4177534935b72";
              type = "kernel";
            }
          ];
          supported_devices = [
            "lantiq,easy80920-nor"
          ];
          titles = [
            {
              model = "VR9 EASY80920";
              variant = "NOR";
              vendor = "Lantiq";
            }
          ];
        };
        tplink_vr200 = {
          device_packages = [
            "kmod-mt76x0e"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-tplink_vr200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-tplink_vr200-squashfs-sysupgrade.bin";
              sha256 = "8c813a02ee85a8dd412ed40c38b71b846bf0d6284a7e900c0a0562c9d8bd86ab";
              sha256_unsigned = "9d8f3d1226132efd5891f6255dacbeb70e0fb701e276ad8e75986c30ba19e54d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-tplink_vr200-initramfs-kernel.bin";
              sha256 = "2b1228c169fef3829d65bc4f97e53a6d269d02cd2f7b116cd8987c033e45b67b";
              sha256_unsigned = "2b1228c169fef3829d65bc4f97e53a6d269d02cd2f7b116cd8987c033e45b67b";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,vr200"
            "VR200"
          ];
          titles = [
            {
              model = "Archer VR200";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_vr200v = {
          device_packages = [
            "kmod-mt76x0e"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ltq-tapi"
            "kmod-ltq-vmmc"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-tplink_vr200v";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-tplink_vr200v-initramfs-kernel.bin";
              sha256 = "77adac8a7bb85f17376de172c3727089350516bedc5efb4520553c77979e2d72";
              sha256_unsigned = "77adac8a7bb85f17376de172c3727089350516bedc5efb4520553c77979e2d72";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-tplink_vr200v-squashfs-sysupgrade.bin";
              sha256 = "3f123562e6ec8f27f0778b80d26367f4ea536fbde4d0ffab99bed4bf47cb5bbf";
              sha256_unsigned = "da4cc167aadb00b05dad009cee37693858fea4ce16e74398e373f009be10f72a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,vr200v"
            "VR200v"
          ];
          titles = [
            {
              model = "Archer VR200v";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        zyxel_p-2812hnu-f1 = {
          device_packages = [
            "kmod-rt2800-pci"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200-zyxel_p-2812hnu-f1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-zyxel_p-2812hnu-f1-initramfs-kernel.bin";
              sha256 = "dc9028c3b274875209f3aea2ed3fb3c8b5ae7e8180ea00636b313649c89eca01";
              sha256_unsigned = "dc9028c3b274875209f3aea2ed3fb3c8b5ae7e8180ea00636b313649c89eca01";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200-zyxel_p-2812hnu-f1-squashfs-sysupgrade.bin";
              sha256 = "2a5a012ec604e09c38a4062e62b604d1f9e756df3641eb6c732586a676c098dd";
              sha256_unsigned = "5ede0a4fef4dbf40ea45573038804406e6084331554369716ac91b24b61beaa2";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zyxel,p-2812hnu-f1"
            "P2812HNUF1"
          ];
          titles = [
            {
              model = "P-2812HNU";
              variant = "F1";
              vendor = "Zyxel";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "lantiq/xrx200";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    xrx200_legacy = {
      arch_packages = "mips_24kc";
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
      linux_kernel = {
        release = "1";
        vermagic = "41c0dd82fae14bf8ea27b671791b5925";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        netgear_dm200 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xrx200_legacy-netgear_dm200";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200_legacy-netgear_dm200-initramfs-kernel.bin";
              sha256 = "c769a9cc3c7827e2c57527fc638380025e6ef85142771e2c0c4c046103a068a4";
              sha256_unsigned = "c769a9cc3c7827e2c57527fc638380025e6ef85142771e2c0c4c046103a068a4";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200_legacy-netgear_dm200-squashfs-sysupgrade.bin";
              sha256 = "012480839e4bb693ad19630acfc8a7f53629cb80160c526e80346c0756845c3d";
              sha256_unsigned = "99a27f5a67d462196e412f143e64d8c4639be4bbb23baaf0dab47b0945eca9b3";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xrx200_legacy-netgear_dm200-squashfs-factory.img";
              sha256 = "616bc541b3664592ac7e54ae84dcf47e2e827918c66efc49502552e54c015bb6";
              sha256_unsigned = "99a27f5a67d462196e412f143e64d8c4639be4bbb23baaf0dab47b0945eca9b3";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,dm200"
          ];
          titles = [
            {
              model = "DM200";
              vendor = "NETGEAR";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "lantiq/xrx200_legacy";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    xway = {
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
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "swconfig"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "66fc4b1fdbab49fcc3059634b2193f39";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        arcadyan_arv7506pw11 = {
          device_packages = [
            "kmod-ltq-adsl-danube-mei"
            "kmod-ltq-adsl-danube"
            "kmod-ltq-adsl-danube-fw-b"
            "kmod-ltq-atm-danube"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "kmod-rt2800-pci"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xway-arcadyan_arv7506pw11";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-arcadyan_arv7506pw11-initramfs-kernel.bin";
              sha256 = "39a7b2192dcbcfedb1fccbb5a2d5acecfb4023658566a3b0b45aec70526d7b7a";
              sha256_unsigned = "39a7b2192dcbcfedb1fccbb5a2d5acecfb4023658566a3b0b45aec70526d7b7a";
              type = "kernel";
            }
          ];
          supported_devices = [
            "arcadyan,arv7506pw11"
            "ARV7506PW11"
          ];
          titles = [
            {
              model = "ARV7506PW11";
              vendor = "Arcadyan";
            }
            {
              model = "IAD 4421";
              vendor = "Alice/O2";
            }
          ];
        };
        arcadyan_arv7510pw22 = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ltq-adsl-danube-mei"
            "kmod-ltq-adsl-danube"
            "kmod-ltq-adsl-danube-fw-a"
            "kmod-ltq-atm-danube"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "kmod-ltq-tapi"
            "kmod-ltq-vmmc"
            "kmod-rt2800-pci"
            "wpad-basic-openssl"
            "kmod-usb-uhci"
            "kmod-usb2"
            "kmod-usb2-pci"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xway-arcadyan_arv7510pw22";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-arcadyan_arv7510pw22-squashfs-sysupgrade.bin";
              sha256 = "aeb2fc4eb37a20ed3a7a3e4268b1894b39f364cfa82a8fda50838ff5a05e9a6a";
              sha256_unsigned = "eb36c2d2234acbaa202f331eb62229e4f745739b0ab6c279f4e5b79fe2d56f37";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-arcadyan_arv7510pw22-initramfs-kernel.bin";
              sha256 = "124b6d85704ed9b0d331069cafd94558b39dbe0db7cb379d03060cb1a49cd92f";
              sha256_unsigned = "124b6d85704ed9b0d331069cafd94558b39dbe0db7cb379d03060cb1a49cd92f";
              type = "kernel";
            }
          ];
          supported_devices = [
            "arcadyan,arv7510pw22"
            "ARV7510PW22"
          ];
          titles = [
            {
              model = "ARV7510PW22";
              vendor = "Arcadyan";
            }
            {
              model = "ARV7510PW22";
              vendor = "Astoria Networks";
            }
          ];
        };
        arcadyan_arv7518pw = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ltq-adsl-danube-mei"
            "kmod-ltq-adsl-danube"
            "kmod-ltq-adsl-danube-fw-a"
            "kmod-ltq-atm-danube"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xway-arcadyan_arv7518pw";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-arcadyan_arv7518pw-initramfs-kernel.bin";
              sha256 = "ca6a90d26abd8e83a59d0a988da8fb1ae9ec2de51ac257c70be9edf9534c9cb9";
              sha256_unsigned = "ca6a90d26abd8e83a59d0a988da8fb1ae9ec2de51ac257c70be9edf9534c9cb9";
              type = "kernel";
            }
          ];
          supported_devices = [
            "arcadyan,arv7518pw"
            "ARV7518PW"
          ];
          titles = [
            {
              model = "ARV7518PW";
              vendor = "Arcadyan";
            }
            {
              model = "ARV7518PW";
              vendor = "Astoria Networks";
            }
          ];
        };
        arcadyan_arv7519pw = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-ltq-adsl-danube-mei"
            "kmod-ltq-adsl-danube"
            "kmod-ltq-adsl-danube-fw-a"
            "kmod-ltq-atm-danube"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "kmod-rt2800-pci"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xway-arcadyan_arv7519pw";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-arcadyan_arv7519pw-initramfs-kernel.bin";
              sha256 = "97d762bfabaa6a0f5900128b7c4050cd17666568bc6db4baa37bc2f6fa2e49c6";
              sha256_unsigned = "97d762bfabaa6a0f5900128b7c4050cd17666568bc6db4baa37bc2f6fa2e49c6";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-arcadyan_arv7519pw-squashfs-sysupgrade.bin";
              sha256 = "cf08245f17db8db929f5b4c8d82a5b37c00ccd2474e811e0b4863e4a21f40f88";
              sha256_unsigned = "f74bd954c1a6ea951fc820d7f15492a1ae61e483436f8cdaaa349d8fc3c9c4f2";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "arcadyan,arv7519pw"
            "ARV7519PW"
          ];
          titles = [
            {
              model = "ARV7519PW";
              vendor = "Arcadyan";
            }
            {
              model = "ARV7519PW";
              vendor = "Astoria Networks";
            }
          ];
        };
        arcadyan_arv752dpw = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ltq-adsl-danube-mei"
            "kmod-ltq-adsl-danube"
            "kmod-ltq-adsl-danube-fw-b"
            "kmod-ltq-atm-danube"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "kmod-ltq-tapi"
            "kmod-ltq-vmmc"
            "kmod-rt2800-pci"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xway-arcadyan_arv752dpw";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-arcadyan_arv752dpw-initramfs-kernel.bin";
              sha256 = "01ab321c336831a3cdf2531df611025c50c7fa2723d124a7c1f70d88f5458292";
              sha256_unsigned = "01ab321c336831a3cdf2531df611025c50c7fa2723d124a7c1f70d88f5458292";
              type = "kernel";
            }
          ];
          supported_devices = [
            "arcadyan,arv752dpw"
            "ARV752DPW"
          ];
          titles = [
            {
              model = "ARV752DPW";
              vendor = "Arcadyan";
            }
            {
              model = "Easybox 802";
              vendor = "Vodafone";
            }
          ];
        };
        arcadyan_arv752dpw22 = {
          device_packages = [
            "kmod-usb2-pci"
            "kmod-usb-uhci"
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ltq-adsl-danube-mei"
            "kmod-ltq-adsl-danube"
            "kmod-ltq-adsl-danube-fw-b"
            "kmod-ltq-atm-danube"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "kmod-ltq-tapi"
            "kmod-ltq-vmmc"
            "kmod-rt2800-pci"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xway-arcadyan_arv752dpw22";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-arcadyan_arv752dpw22-initramfs-kernel.bin";
              sha256 = "9a56611c543769984c2c1b9906c9c86b33007ca14a88d2e129baf9b8ad3d9436";
              sha256_unsigned = "9a56611c543769984c2c1b9906c9c86b33007ca14a88d2e129baf9b8ad3d9436";
              type = "kernel";
            }
          ];
          supported_devices = [
            "arcadyan,arv752dpw22"
            "ARV752DPW22"
          ];
          titles = [
            {
              model = "ARV752DPW22";
              vendor = "Arcadyan";
            }
            {
              model = "Easybox 803";
              vendor = "Vodafone";
            }
          ];
        };
        arcadyan_arv8539pw22 = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-ltq-adsl-danube-mei"
            "kmod-ltq-adsl-danube"
            "kmod-ltq-adsl-danube-fw-b"
            "kmod-ltq-atm-danube"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xway-arcadyan_arv8539pw22";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-arcadyan_arv8539pw22-initramfs-kernel.bin";
              sha256 = "4b26eea2aab75afc1eb3ca3778009361b6baaa25c97d45bd16a42eb03033a9d1";
              sha256_unsigned = "4b26eea2aab75afc1eb3ca3778009361b6baaa25c97d45bd16a42eb03033a9d1";
              type = "kernel";
            }
          ];
          supported_devices = [
            "arcadyan,arv8539pw22"
            "ARV8539PW22"
          ];
          titles = [
            {
              model = "ARV8539PW22";
              vendor = "Arcadyan";
            }
            {
              model = "Speedport W504V Typ A";
              vendor = "Telekom";
            }
          ];
        };
        audiocodes_mp-252 = {
          device_packages = [
            "kmod-ltq-adsl-danube-mei"
            "kmod-ltq-adsl-danube"
            "kmod-ltq-adsl-danube-fw-a"
            "kmod-ltq-atm-danube"
            "kmod-ltq-tapi"
            "kmod-ltq-vmmc"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb-dwc2"
            "kmod-rt2800-pci"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xway-audiocodes_mp-252";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-audiocodes_mp-252-squashfs-sysupgrade.bin";
              sha256 = "3257fcf9fc419be274011db455d6b86dfca80e00de0fb763a324934160429108";
              sha256_unsigned = "bf59a78ff55d88e14aaba9ac3f3e67d8a01b9a4c1e67dfaaf49af14a09f656b8";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-audiocodes_mp-252-initramfs-kernel.bin";
              sha256 = "b8845ac95ca3f0d77473e308df0cfb329aa348a4e1f6594b69ef3235c07af240";
              sha256_unsigned = "b8845ac95ca3f0d77473e308df0cfb329aa348a4e1f6594b69ef3235c07af240";
              type = "kernel";
            }
          ];
          supported_devices = [
            "audiocodes,mp-252"
            "ACMP252"
          ];
          titles = [
            {
              model = "MediaPack MP-252";
              vendor = "AudioCodes";
            }
          ];
        };
        avm_fritz7312 = {
          device_packages = [
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "kmod-ltq-adsl-ar9-mei"
            "kmod-ltq-adsl-ar9"
            "kmod-ltq-adsl-ar9-fw-b"
            "kmod-ltq-atm-ar9"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "kmod-ltq-deu-ar9"
            "fritz-tffs"
            "-swconfig"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xway-avm_fritz7312";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-avm_fritz7312-squashfs-sysupgrade.bin";
              sha256 = "c32188b17354b696acb413e1d23ccce4f435540e21b9dee483688bbf01f6326f";
              sha256_unsigned = "e256f76bac9ea90bf4a82a6e21c0b2fcbf3340eb105a81b7e3a1d1cb234c4296";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-avm_fritz7312-initramfs-kernel.bin";
              sha256 = "d90cf6eb4db7df681d30d3fca56b19f72f1398145df94b8d5612d85f9d5bf267";
              sha256_unsigned = "d90cf6eb4db7df681d30d3fca56b19f72f1398145df94b8d5612d85f9d5bf267";
              type = "kernel";
            }
          ];
          supported_devices = [
            "avm,fritz7312"
          ];
          titles = [
            {
              model = "FRITZ!Box 7312";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz7320 = {
          device_packages = [
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "kmod-ltq-adsl-ar9-mei"
            "kmod-ltq-adsl-ar9"
            "kmod-ltq-adsl-ar9-fw-b"
            "kmod-ltq-atm-ar9"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "kmod-ltq-deu-ar9"
            "kmod-usb-dwc2"
            "fritz-tffs"
            "-swconfig"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xway-avm_fritz7320";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-avm_fritz7320-squashfs-sysupgrade.bin";
              sha256 = "20b18db433351040ea4857a05e3ef4bcef87d08795f7850b4d0738b386c93c45";
              sha256_unsigned = "4c21db1fade613a07e0bf0bbc23fc31db8ec8435a631c619161d45b1088e695e";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-avm_fritz7320-initramfs-kernel.bin";
              sha256 = "04678dd766f4c54b5097daf923bf2188bfb835fbcf5f245384ed99f7ef0beaf0";
              sha256_unsigned = "04678dd766f4c54b5097daf923bf2188bfb835fbcf5f245384ed99f7ef0beaf0";
              type = "kernel";
            }
          ];
          supported_devices = [
            "avm,fritz7320"
            "FRITZ7320"
          ];
          titles = [
            {
              model = "FRITZ!Box 7320";
              vendor = "AVM";
            }
            {
              model = "HomeServer";
              vendor = "1&1";
            }
            {
              model = "Fritz!Box 7330";
              vendor = "AVM";
            }
          ];
        };
        buffalo_wbmr-hp-g300h-a = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ltq-adsl-ar9-mei"
            "kmod-ltq-adsl-ar9"
            "kmod-ltq-adsl-ar9-fw-a"
            "kmod-ltq-atm-ar9"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xway-buffalo_wbmr-hp-g300h-a";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-buffalo_wbmr-hp-g300h-a-initramfs-kernel.bin";
              sha256 = "bfb62e17da4517072e25c1cd43e18eeed5fd6d81eeb3fc467c98b72a2d823669";
              sha256_unsigned = "bfb62e17da4517072e25c1cd43e18eeed5fd6d81eeb3fc467c98b72a2d823669";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-buffalo_wbmr-hp-g300h-a-squashfs-sysupgrade.bin";
              sha256 = "14b1d6fe5ef85e01bf3def40f99bc7411cee38b41a571df9825e9a00c7472ba4";
              sha256_unsigned = "280f7039c9b647c3aaff4777ea71b4a0e74e1b6e5909b63e21da8c29fad452f3";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "WBMR"
            "buffalo,wbmr-hp-g300h"
          ];
          titles = [
            {
              model = "WBMR-HP-G300H";
              variant = "A";
              vendor = "Buffalo";
            }
          ];
        };
        buffalo_wbmr-hp-g300h-b = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ltq-adsl-ar9-mei"
            "kmod-ltq-adsl-ar9"
            "kmod-ltq-adsl-ar9-fw-b"
            "kmod-ltq-atm-ar9"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xway-buffalo_wbmr-hp-g300h-b";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-buffalo_wbmr-hp-g300h-b-squashfs-sysupgrade.bin";
              sha256 = "7814ab42348f8b87a86b94e270458a9ff6fa1abd1b6857ec4550906052817104";
              sha256_unsigned = "feebc955d64fc7eefcd426411bf836a23bc70736bd3b8091ff9473dd7fec48cb";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-buffalo_wbmr-hp-g300h-b-initramfs-kernel.bin";
              sha256 = "7991d0a120cdbfae081bcc0e8d3d00f44c38fa57a64e99274a452221fa537dce";
              sha256_unsigned = "7991d0a120cdbfae081bcc0e8d3d00f44c38fa57a64e99274a452221fa537dce";
              type = "kernel";
            }
          ];
          supported_devices = [
            "WBMR"
            "buffalo,wbmr-hp-g300h"
          ];
          titles = [
            {
              model = "WBMR-HP-G300H";
              variant = "B";
              vendor = "Buffalo";
            }
          ];
        };
        netgear_dgn3500 = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "kmod-ltq-adsl-ar9-mei"
            "kmod-ltq-adsl-ar9"
            "kmod-ltq-adsl-ar9-fw-a"
            "kmod-ltq-atm-ar9"
            "kmod-ltq-deu-ar9"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xway-netgear_dgn3500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-netgear_dgn3500-squashfs-factory.img";
              sha256 = "921706eb3186b4fa6fc3eb34e656f4e16879b027c28c6ab082dfedef73bca776";
              sha256_unsigned = "921706eb3186b4fa6fc3eb34e656f4e16879b027c28c6ab082dfedef73bca776";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-netgear_dgn3500-squashfs-factory-na.img";
              sha256 = "f9fe6c280ba640610c1ae0cb6ee92405c059bbd07b0cd054a72cc68b4566bb49";
              sha256_unsigned = "f9fe6c280ba640610c1ae0cb6ee92405c059bbd07b0cd054a72cc68b4566bb49";
              type = "factory-na";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-netgear_dgn3500-initramfs-kernel.bin";
              sha256 = "8ae9fc911424aa0605a21ac0c1a1ea5436d0845e25d5409f4ea33505afce890a";
              sha256_unsigned = "8ae9fc911424aa0605a21ac0c1a1ea5436d0845e25d5409f4ea33505afce890a";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-netgear_dgn3500-squashfs-sysupgrade-na.bin";
              sha256 = "5a90b18652c2b095d2a86235f1e25bb8d8a11a9ca5ecb036e303a88db733e480";
              sha256_unsigned = "45149095c674f588c118c8ff1a55188a84215ba4555508b9ae974a4d1440ed47";
              type = "sysupgrade-na";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-netgear_dgn3500-squashfs-sysupgrade.bin";
              sha256 = "c796f744153584d95c6014c0c01340b3c17d5071d79b29dd6d9d42701db6fe50";
              sha256_unsigned = "e8bb02451fdfd4415fe7ea661cf20aeeea338b2a03665d75fc71b7062bcd7239";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,dgn3500"
            "DGN3500"
          ];
          titles = [
            {
              model = "DGN3500";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_dgn3500b = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "kmod-ltq-adsl-ar9-mei"
            "kmod-ltq-adsl-ar9"
            "kmod-ltq-adsl-ar9-fw-b"
            "kmod-ltq-atm-ar9"
            "kmod-ltq-deu-ar9"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xway-netgear_dgn3500b";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-netgear_dgn3500b-squashfs-factory.img";
              sha256 = "6074d3d6d23964e86297eaf7a875fb95b68007390cb2ad173dd746df1404da69";
              sha256_unsigned = "6074d3d6d23964e86297eaf7a875fb95b68007390cb2ad173dd746df1404da69";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-netgear_dgn3500b-initramfs-kernel.bin";
              sha256 = "b95ba5869f067d82f9e0f6afdb203f065dd276e40072ce8f6765aebb1dddcea5";
              sha256_unsigned = "b95ba5869f067d82f9e0f6afdb203f065dd276e40072ce8f6765aebb1dddcea5";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-netgear_dgn3500b-squashfs-sysupgrade.bin";
              sha256 = "5c0b6382fbf3ae712fe24553222294818ec4e622097b1919e3ff19887c72e668";
              sha256_unsigned = "00a88d89a9e5fbe335b96a054bfe4ff409f34e538c62d15444473923150dbccc";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,dgn3500b"
            "DGN3500B"
          ];
          titles = [
            {
              model = "DGN3500B";
              vendor = "NETGEAR";
            }
          ];
        };
        zyxel_p-2601hn = {
          device_packages = [
            "kmod-rt2800-usb"
            "wpad-basic-openssl"
            "kmod-ltq-adsl-ar9-mei"
            "kmod-ltq-adsl-ar9"
            "kmod-ltq-adsl-ar9-fw-b"
            "kmod-ltq-atm-ar9"
            "kmod-ltq-deu-ar9"
            "ltq-adsl-app"
            "ppp-mod-pppoe"
            "kmod-usb-dwc2"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-lantiq-xway-zyxel_p-2601hn";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-zyxel_p-2601hn-initramfs-kernel.bin";
              sha256 = "8a113e9dbfcc57853321cdfe74b99d88460efda304eeef2ceef460ccb7c8e144";
              sha256_unsigned = "8a113e9dbfcc57853321cdfe74b99d88460efda304eeef2ceef460ccb7c8e144";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-lantiq-xway-zyxel_p-2601hn-squashfs-sysupgrade.bin";
              sha256 = "298273bdae72b159a8c5e5e553a090be6348b1ff9513e077c304dddb76930439";
              sha256_unsigned = "265e3a391308818861db0ec820e3cfcf53c711f777a9f7a971058608ecd372a1";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zyxel,p-2601hn"
            "P2601HNFX"
          ];
          titles = [
            {
              model = "P-2601HN";
              variant = "F1/F3";
              vendor = "Zyxel";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "lantiq/xway";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
  layerscape = {
    armv7 = {
      arch_packages = "arm_cortex-a7_neon-vfpv4";
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
      linux_kernel = {
        release = "1";
        vermagic = "f1a54324c0df8c116618032f62034c86";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        fsl_ls1021a-iot-sdboot = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-layerscape-armv7-fsl_ls1021a-iot-sdboot";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv7-fsl_ls1021a-iot-sdboot-squashfs-sdcard.img.gz";
              sha256 = "c645be22fdebe1a63f31706246197093851c27521a0a5dd94bb8562856a03321";
              sha256_unsigned = "c645be22fdebe1a63f31706246197093851c27521a0a5dd94bb8562856a03321";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv7-fsl_ls1021a-iot-sdboot-squashfs-sysupgrade.bin";
              sha256 = "c636f38b19627b26d12fd49d79aa1d6a00e4eb42e99ffac9ad3d597c10636f0e";
              sha256_unsigned = "53188d1f4f3c4da9da5cfe239b2de524a8d2b435cc2f1d04a4c966722c0a33e5";
              type = "sysupgrade";
            }
          ];
          supported_devices = [ ];
          titles = [
            {
              model = "LS1021A-IoT";
              variant = "SD Card Boot";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1021a-twr = {
          device_packages = [
            "~layerscape-rcw"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-layerscape-armv7-fsl_ls1021a-twr";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv7-fsl_ls1021a-twr-squashfs-sysupgrade.bin";
              sha256 = "be1766ac8dfd6b5216b8178113cb457819bffff6a8d0724bd20396e91dbc80cb";
              sha256_unsigned = "42cffc5be0f22dd43d319b676d77e6495e64381222f446b61165ff164a2cb65b";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv7-fsl_ls1021a-twr-squashfs-firmware.bin";
              sha256 = "f7a916bee953eeaee87172928dfb439f02379f42ed18d06debae277eb6c895a0";
              sha256_unsigned = "f7a916bee953eeaee87172928dfb439f02379f42ed18d06debae277eb6c895a0";
              type = "firmware";
            }
          ];
          supported_devices = [
            "fsl,ls1021a-twr"
          ];
          titles = [
            {
              model = "TWR-LS1021A";
              variant = "Default";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1021a-twr-sdboot = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-layerscape-armv7-fsl_ls1021a-twr-sdboot";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv7-fsl_ls1021a-twr-sdboot-squashfs-sysupgrade.bin";
              sha256 = "8fd89ee1b26e6456a8fc4aaf578712b2e3a616f2fba40d6c771031c9adcb4dd8";
              sha256_unsigned = "2f6a45224717a52de6fbfe9b2f7b79f8ef1a358df6322756b1fad433676efdfe";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv7-fsl_ls1021a-twr-sdboot-squashfs-sdcard.img.gz";
              sha256 = "3f3f719f036af677e2860ebfb26463bd3ba4084cab747910d23fb4466496f93d";
              sha256_unsigned = "3f3f719f036af677e2860ebfb26463bd3ba4084cab747910d23fb4466496f93d";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "fsl,ls1021a-twr-sdboot"
          ];
          titles = [
            {
              model = "TWR-LS1021A";
              variant = "SD Card Boot";
              vendor = "NXP";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "layerscape/armv7";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    armv8_64b = {
      arch_packages = "aarch64_generic";
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
      linux_kernel = {
        release = "1";
        vermagic = "d1f47808e5ef4e261b2b24ec0d2d4d94";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        fsl_ls1012a-frdm = {
          device_packages = [
            "layerscape-ppfe"
            "~trusted-firmware-a-ls1012a-frdm"
            "kmod-ppfe"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1012a-frdm";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1012a-frdm-squashfs-sysupgrade.bin";
              sha256 = "9173384f7b336e2d1297cdd4d1aeafb858dd5b4e300347c7194fc3073635d7c1";
              sha256_unsigned = "f19cd8262f6dcc396ea7f5e3eacc927848634d33f4f7dfa3cdff4304032feb66";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1012a-frdm-squashfs-firmware.bin";
              sha256 = "5a02768d586c8f1a9898e41655b27e4977e997a081253c8200ea9dbe454fbcd6";
              sha256_unsigned = "5a02768d586c8f1a9898e41655b27e4977e997a081253c8200ea9dbe454fbcd6";
              type = "firmware";
            }
          ];
          supported_devices = [
            "fsl,ls1012a-frdm"
          ];
          titles = [
            {
              model = "FRDM-LS1012A";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1012a-frwy-sdboot = {
          device_packages = [
            "layerscape-ppfe"
            "~trusted-firmware-a-ls1012a-frwy-sdboot"
            "kmod-ppfe"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1012a-frwy-sdboot";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1012a-frwy-sdboot-squashfs-firmware.bin";
              sha256 = "c8c8889612ab763dbfd37e3cdcf5767436387d4b3b456a45c51d1c45de3ab51e";
              sha256_unsigned = "c8c8889612ab763dbfd37e3cdcf5767436387d4b3b456a45c51d1c45de3ab51e";
              type = "firmware";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1012a-frwy-sdboot-squashfs-sdcard.img.gz";
              sha256 = "1547be215bf1568b73f758e09e663ee24b0b2bea5c10065b1754eb655ba989dd";
              sha256_unsigned = "1547be215bf1568b73f758e09e663ee24b0b2bea5c10065b1754eb655ba989dd";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1012a-frwy-sdboot-squashfs-sysupgrade.bin";
              sha256 = "1a0a81c31797c0ca356c70191a0aee117be77bcc9ab0381d4b3946b5c595e427";
              sha256_unsigned = "b905f078fb18a607eb5061de363e6dc2c65123b852c7ab61f2ad08a2ec441550";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "fsl,ls1012a-frwy-sdboot"
          ];
          titles = [
            {
              model = "FRWY-LS1012A";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1012a-rdb = {
          device_packages = [
            "layerscape-ppfe"
            "~trusted-firmware-a-ls1012a-rdb"
            "kmod-hwmon-ina2xx"
            "kmod-iio-fxas21002c-i2c"
            "kmod-iio-fxos8700-i2c"
            "kmod-ppfe"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1012a-rdb";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1012a-rdb-squashfs-sysupgrade.bin";
              sha256 = "c271db534106c1337a27bf64a054f2b266c99861af749dd2554ffee63de8f946";
              sha256_unsigned = "e2c7714bd9aecec46deca4c3ea952ac2110698591569cde1611511b3b87f14e2";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1012a-rdb-squashfs-firmware.bin";
              sha256 = "aa69a51924c1fc95230fb383af9a30b52668b9f122bdb3d3a8643ce30adf7d05";
              sha256_unsigned = "aa69a51924c1fc95230fb383af9a30b52668b9f122bdb3d3a8643ce30adf7d05";
              type = "firmware";
            }
          ];
          supported_devices = [
            "fsl,ls1012a-rdb"
          ];
          titles = [
            {
              model = "LS1012A-RDB";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1028a-rdb = {
          device_packages = [
            "~trusted-firmware-a-ls1028a-rdb"
            "kmod-hwmon-ina2xx"
            "kmod-hwmon-lm90"
            "kmod-rtc-pcf2127"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1028a-rdb";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1028a-rdb-squashfs-firmware.bin";
              sha256 = "05918f05ee3a9565f8295295672809b24080b4f4ec66da6dd7d45d33b995cc51";
              sha256_unsigned = "05918f05ee3a9565f8295295672809b24080b4f4ec66da6dd7d45d33b995cc51";
              type = "firmware";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1028a-rdb-squashfs-sysupgrade.bin";
              sha256 = "de99c8b00b1af063620fb6985e14e421bc0153ed80af0e0db24a6d5d06d13470";
              sha256_unsigned = "bed33a3e8b65f30b4f5fc3a2fecc8e8831978659744ec1705e1ae212d396e5d1";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "fsl,ls1028a-rdb"
          ];
          titles = [
            {
              model = "LS1028A-RDB";
              variant = "Default";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1028a-rdb-sdboot = {
          device_packages = [
            "~trusted-firmware-a-ls1028a-rdb-sdboot"
            "kmod-hwmon-ina2xx"
            "kmod-hwmon-lm90"
            "kmod-rtc-pcf2127"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1028a-rdb-sdboot";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1028a-rdb-sdboot-squashfs-sdcard.img.gz";
              sha256 = "15950ab61e8d8c2b27eaa209f8dc794161148b225300a1e3b5b09afa9435f588";
              sha256_unsigned = "15950ab61e8d8c2b27eaa209f8dc794161148b225300a1e3b5b09afa9435f588";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1028a-rdb-sdboot-squashfs-sysupgrade.bin";
              sha256 = "db1a1aca0d90b48838a8b1ee585b7686d4580fccd51e3f85233c88bda67bdd54";
              sha256_unsigned = "1770d00a962824e23b891501abe19f4be159b3bc9af92af2f59fdd10b3f1f732";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "fsl,ls1028a-rdb-sdboot"
          ];
          titles = [
            {
              model = "LS1028A-RDB";
              variant = "SD Card Boot";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1043a-rdb = {
          device_packages = [
            "~layerscape-fman"
            "~trusted-firmware-a-ls1043a-rdb"
            "kmod-ahci-qoriq"
            "kmod-hwmon-ina2xx"
            "kmod-hwmon-lm90"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1043a-rdb";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1043a-rdb-squashfs-sysupgrade.bin";
              sha256 = "8e5168131fd0f973e3998386e4e304d446700bf7f2fe777a3c5372f258516d1b";
              sha256_unsigned = "f3d1133a01c1cfa48b4dd396708ff4789cb6651297a9106f66789ae64f69f466";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1043a-rdb-squashfs-firmware.bin";
              sha256 = "585c99cb653209d74b90da0d9284ec17536cc5cb90a8ad0e7451d0cfac729106";
              sha256_unsigned = "585c99cb653209d74b90da0d9284ec17536cc5cb90a8ad0e7451d0cfac729106";
              type = "firmware";
            }
          ];
          supported_devices = [
            "fsl,ls1043a-rdb"
          ];
          titles = [
            {
              model = "LS1043A-RDB";
              variant = "Default";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1043a-rdb-sdboot = {
          device_packages = [
            "~layerscape-fman"
            "~trusted-firmware-a-ls1043a-rdb-sdboot"
            "kmod-ahci-qoriq"
            "kmod-hwmon-ina2xx"
            "kmod-hwmon-lm90"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1043a-rdb-sdboot";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1043a-rdb-sdboot-squashfs-sysupgrade.bin";
              sha256 = "793eeaa80b1e78abf2b1d03848901a1252e34b32c77e2eaa5fd644b86c2cf27b";
              sha256_unsigned = "05a00ba9f870b4644dcbf6601eb82efd6970f27b19d04b628786dda20ca22922";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1043a-rdb-sdboot-squashfs-sdcard.img.gz";
              sha256 = "a333d99de1efe15bf35ffbbacdee48bc7fe7dbd210fcc63d42a1fc61a2a1f9e8";
              sha256_unsigned = "a333d99de1efe15bf35ffbbacdee48bc7fe7dbd210fcc63d42a1fc61a2a1f9e8";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "fsl,ls1043a-rdb-sdboot"
          ];
          titles = [
            {
              model = "LS1043A-RDB";
              variant = "SD Card Boot";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1046a-frwy = {
          device_packages = [
            "~layerscape-fman"
            "~trusted-firmware-a-ls1046a-frwy"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1046a-frwy";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1046a-frwy-squashfs-firmware.bin";
              sha256 = "b9b08f5e6f38f71ca3edb006736656e14c8d24b83aed6defd58e5fb2478c8052";
              sha256_unsigned = "b9b08f5e6f38f71ca3edb006736656e14c8d24b83aed6defd58e5fb2478c8052";
              type = "firmware";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1046a-frwy-squashfs-sysupgrade.bin";
              sha256 = "8d5e51f094a8558a72cba7c84e92dd4b318724aac58f5fc1a487809605ec45d4";
              sha256_unsigned = "a69da373ea2c23453abd441d828ca3e2db96dc97a2a29393bbfe86fdad72a042";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "fsl,ls1046a-frwy"
          ];
          titles = [
            {
              model = "FRWY-LS1046A";
              variant = "Default";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1046a-frwy-sdboot = {
          device_packages = [
            "~layerscape-fman"
            "~trusted-firmware-a-ls1046a-frwy-sdboot"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1046a-frwy-sdboot";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1046a-frwy-sdboot-squashfs-sdcard.img.gz";
              sha256 = "8717f34c6d9d4f2461b4a3e33135b55204b6bef700a27bc63ab0bdb5ac3e1105";
              sha256_unsigned = "8717f34c6d9d4f2461b4a3e33135b55204b6bef700a27bc63ab0bdb5ac3e1105";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1046a-frwy-sdboot-squashfs-sysupgrade.bin";
              sha256 = "3c96b81829719d30557589c8d3c63bc341de7d71f542fda6dc7918abe4e50711";
              sha256_unsigned = "5cc15484edef90ae3a0cdf093768c8d4ef47af9806217a303bc4534657fe80d8";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "fsl,ls1046a-frwy-sdboot"
          ];
          titles = [
            {
              model = "FRWY-LS1046A";
              variant = "SD Card Boot";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1046a-rdb = {
          device_packages = [
            "~layerscape-fman"
            "~trusted-firmware-a-ls1046a-rdb"
            "kmod-ahci-qoriq"
            "kmod-hwmon-ina2xx"
            "kmod-hwmon-lm90"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1046a-rdb";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1046a-rdb-squashfs-sysupgrade.bin";
              sha256 = "0728cf538148d37c7ec25b4a3925f99945505b69d69ab58186a9fcacec151a87";
              sha256_unsigned = "9761a67eb88b347bd9bb4652a679bdc75d51874ecb36bf02bd2a4a659106a000";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1046a-rdb-squashfs-firmware.bin";
              sha256 = "e05a256513d1e50c633b00e7f738ca7b033d820bd5a2d1358da6bcf250f4b980";
              sha256_unsigned = "e05a256513d1e50c633b00e7f738ca7b033d820bd5a2d1358da6bcf250f4b980";
              type = "firmware";
            }
          ];
          supported_devices = [
            "fsl,ls1046a-rdb"
          ];
          titles = [
            {
              model = "LS1046A-RDB";
              variant = "Default";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1046a-rdb-sdboot = {
          device_packages = [
            "~layerscape-fman"
            "~trusted-firmware-a-ls1046a-rdb-sdboot"
            "kmod-ahci-qoriq"
            "kmod-hwmon-ina2xx"
            "kmod-hwmon-lm90"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1046a-rdb-sdboot";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1046a-rdb-sdboot-squashfs-sdcard.img.gz";
              sha256 = "5368eff08663d47b7b7274347d651b21219fa0502cd631468f888e37ea58853f";
              sha256_unsigned = "5368eff08663d47b7b7274347d651b21219fa0502cd631468f888e37ea58853f";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1046a-rdb-sdboot-squashfs-sysupgrade.bin";
              sha256 = "c7368d93d565eb60a690f57d2c6b526e7b4ccc88f7c4c5e4139d9c1a12b923bb";
              sha256_unsigned = "23fc0655ebea81683a68061b5998d5a90c38f4bf0b1aaa529b6c75d61a212439";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "fsl,ls1046a-rdb-sdboot"
          ];
          titles = [
            {
              model = "LS1046A-RDB";
              variant = "SD Card Boot";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1088a-rdb = {
          device_packages = [
            "~layerscape-mc"
            "~layerscape-dpl"
            "~trusted-firmware-a-ls1088a-rdb"
            "restool"
            "kmod-ahci-qoriq"
            "kmod-hwmon-ina2xx"
            "kmod-hwmon-lm90"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1088a-rdb";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1088a-rdb-squashfs-sysupgrade.bin";
              sha256 = "52891331881f4355622d169aca8352ff0377371e464519f02da4ddfc0e2abd79";
              sha256_unsigned = "99c8b4f398e0507e7f863f480c1525f53c85dcd9723ffa597fe843960c818446";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1088a-rdb-squashfs-firmware.bin";
              sha256 = "b11e9ad3e841ac80b52a3eca2ea65c3e97ce64d7af2431b652b83cb528b0b7c8";
              sha256_unsigned = "b11e9ad3e841ac80b52a3eca2ea65c3e97ce64d7af2431b652b83cb528b0b7c8";
              type = "firmware";
            }
          ];
          supported_devices = [
            "fsl,ls1088a-rdb"
          ];
          titles = [
            {
              model = "LS1088A-RDB";
              variant = "Default";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1088a-rdb-sdboot = {
          device_packages = [
            "~layerscape-mc"
            "~layerscape-dpl"
            "~trusted-firmware-a-ls1088a-rdb-sdboot"
            "restool"
            "kmod-ahci-qoriq"
            "kmod-hwmon-ina2xx"
            "kmod-hwmon-lm90"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1088a-rdb-sdboot";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1088a-rdb-sdboot-squashfs-sdcard.img.gz";
              sha256 = "d43e26effa936801f4524c9d2c6dc86d300af5f8d1c21e7d35f0ebaf54f0ece8";
              sha256_unsigned = "d43e26effa936801f4524c9d2c6dc86d300af5f8d1c21e7d35f0ebaf54f0ece8";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls1088a-rdb-sdboot-squashfs-sysupgrade.bin";
              sha256 = "647897746096d6b7babe4e880984aa4e70ac2e6b4527726f84291084fd2347ab";
              sha256_unsigned = "60d60698e36ffa5e5c924a43fe4f7db5482afd7b5e2afd41d6a853ead5302776";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "fsl,ls1088a-rdb-sdboot"
          ];
          titles = [
            {
              model = "LS1088A-RDB";
              variant = "SD Card Boot";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls2088a-rdb = {
          device_packages = [
            "~layerscape-mc"
            "~layerscape-dpl"
            "~trusted-firmware-a-ls2088a-rdb"
            "restool"
            "kmod-ahci-qoriq"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls2088a-rdb";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls2088a-rdb-squashfs-sysupgrade.bin";
              sha256 = "6749c9d0ba040948b832e7801687eda618b9158d07bbea9e5cf50689b1ffaae7";
              sha256_unsigned = "5460715dce2da8e2e07a62abf1911c9579d8c6bb1ab043a8be7891d2ae4c96ee";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_ls2088a-rdb-squashfs-firmware.bin";
              sha256 = "0d45e37d6093e2222f9e2982655095660bdb12924e7025fd9e591327b18c032f";
              sha256_unsigned = "0d45e37d6093e2222f9e2982655095660bdb12924e7025fd9e591327b18c032f";
              type = "firmware";
            }
          ];
          supported_devices = [
            "fsl,ls2088a-rdb"
          ];
          titles = [
            {
              model = "LS2088ARDB";
              vendor = "NXP";
            }
          ];
        };
        fsl_lx2160a-rdb = {
          device_packages = [
            "~layerscape-mc"
            "~layerscape-dpl"
            "~layerscape-ddr-phy"
            "~trusted-firmware-a-lx2160a-rdb"
            "restool"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_lx2160a-rdb";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_lx2160a-rdb-squashfs-sysupgrade.bin";
              sha256 = "f90dca7539531902475f4cf975d2fa6228f8e8c4f1324b64e9f5d4dad08bd1d0";
              sha256_unsigned = "3a0ea19cb25b7f5b27eae31df4213c0a182f69f410fad1f2221dbc90e4f76e66";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_lx2160a-rdb-squashfs-firmware.bin";
              sha256 = "b5c59b5cb3374e564b529310655d6b2b92fb57ca975f43e2c708aec3e86c9abd";
              sha256_unsigned = "b5c59b5cb3374e564b529310655d6b2b92fb57ca975f43e2c708aec3e86c9abd";
              type = "firmware";
            }
          ];
          supported_devices = [
            "fsl,lx2160a-rdb"
          ];
          titles = [
            {
              model = "LX2160A-RDB";
              variant = "Rev2.0 silicon";
              vendor = "NXP";
            }
          ];
        };
        fsl_lx2160a-rdb-sdboot = {
          device_packages = [
            "~layerscape-mc"
            "~layerscape-dpl"
            "~layerscape-ddr-phy"
            "~trusted-firmware-a-lx2160a-rdb-sdboot"
            "restool"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_lx2160a-rdb-sdboot";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_lx2160a-rdb-sdboot-squashfs-sdcard.img.gz";
              sha256 = "f3ac65068d18ff2694dee8e0a24df4aac764182c2b1ff0f5352755def650d02a";
              sha256_unsigned = "f3ac65068d18ff2694dee8e0a24df4aac764182c2b1ff0f5352755def650d02a";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-fsl_lx2160a-rdb-sdboot-squashfs-sysupgrade.bin";
              sha256 = "7f31819f2c762a3271397816701f9f149a9cf67811d5115bb42c8c8e28d373a6";
              sha256_unsigned = "95d0dd93aa0a8a73f489d95f2dcb64930af4258b8e2ab15d693d8fa570d3a171";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "fsl,lx2160a-rdb-sdboot"
          ];
          titles = [
            {
              model = "LX2160A-RDB";
              variant = "Rev2.0 silicon SD Card Boot";
              vendor = "NXP";
            }
          ];
        };
        ten64-mtd = {
          device_packages = [
            "uboot-envtools"
            "kmod-rtc-rx8025"
            "kmod-sfp"
            "kmod-i2c-mux-pca954x"
            "restool"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-traverse_ten64_mtd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-traverse_ten64_mtd-squashfs-sysupgrade.bin";
              sha256 = "4740a13d4483c08a1b75339e8bfe2d21309a64acb916f8a2f605e65e9c67d66e";
              sha256_unsigned = "cffb0bf853d2746454a4b5e5ce30ebb51a528c291e31888e937c9d620321d337";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-layerscape-armv8_64b-traverse_ten64_mtd-squashfs-nand.ubi";
              sha256 = "13eae23576b6d2e439f64bdb9ce23c20c0a9bec56bb0ceeca39c49b6d742664a";
              sha256_unsigned = "13eae23576b6d2e439f64bdb9ce23c20c0a9bec56bb0ceeca39c49b6d742664a";
              type = "nand";
            }
          ];
          supported_devices = [
            "traverse,ten64"
          ];
          titles = [
            {
              model = "Ten64 (NAND boot)";
              vendor = "Traverse";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "layerscape/armv8_64b";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
  loongarch64 = {
    generic = {
      arch_packages = "loongarch64_generic";
      default_packages = [
        "automount"
        "base-files"
        "blkid"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "fdisk"
        "firewall4"
        "fstools"
        "grub2-efi-loongarch64"
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
        "partx-utils"
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
        vermagic = "017895cce0441b061a734cecfc6030d4";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        generic = {
          device_packages = [
            "kmod-r8169"
            "kmod-drm-amdgpu"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-loongarch64-generic-generic";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-loongarch64-generic-generic-ext4-combined-efi.img.gz";
              sha256 = "ab2d0a3065b0cf4246734a1ffb7d0728e86162f064c97ce572611d59d5814d39";
              sha256_unsigned = "05ba2296d5d461fb2afd35a4dfffe35856c422eeacc31800e14e146eab8282c9";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-loongarch64-generic-generic-ext4-rootfs.img.gz";
              sha256 = "d277446a8c7b1519828d3afd125c71c8bdae3089b2aaf8b0c8770dfd0c87edb1";
              sha256_unsigned = "d277446a8c7b1519828d3afd125c71c8bdae3089b2aaf8b0c8770dfd0c87edb1";
              type = "rootfs";
            }
          ];
          supported_devices = [ ];
          titles = [
            {
              model = "LoongArch64";
              vendor = "Generic";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "loongarch64/generic";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
  malta = { };
  mediatek = {
    mt7623 = {
      arch_packages = "arm_cortex-a7_neon-vfpv4";
      default_packages = [
        "autocore"
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fitblk"
        "fstools"
        "kmod-crypto-hw-safexcel"
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
        vermagic = "b4f19c04dd04ad7a3cd5721b86066674";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        bananapi_bpi-r2 = {
          device_packages = [
            "mkf2fs"
            "e2fsprogs"
            "kmod-usb3"
            "kmod-ata-ahci"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mediatek-mt7623-bananapi_bpi-r2";
          images = [
            {
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7623-bananapi_bpi-r2-u-boot.bin";
              sha256 = "028ebbaa2d6b2d6f4cad866fbd6ec486a24cb4d87e997c88f8e7bd2825ad932c";
              sha256_unsigned = "028ebbaa2d6b2d6f4cad866fbd6ec486a24cb4d87e997c88f8e7bd2825ad932c";
              type = "u-boot.bin";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7623-bananapi_bpi-r2-squashfs-sysupgrade.itb";
              sha256 = "3462c73eed3139f00d0a26c3f4eb35f819a59062759a05929b62be21fda02b16";
              sha256_unsigned = "e7664f13a3b1498924202b883b6c9494b8e70f53ac5bf47753ba15fe54c08bec";
              type = "sysupgrade";
            }
            {
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7623-bananapi_bpi-r2-sdcard.img.gz";
              sha256 = "c24add57bd7799cc52098f6d0b572a6b09f2a0f52b4d77145d9853b836fc2ffe";
              sha256_unsigned = "c24add57bd7799cc52098f6d0b572a6b09f2a0f52b4d77145d9853b836fc2ffe";
              type = "sdcard.img.gz";
            }
            {
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7623-bananapi_bpi-r2-preloader.bin";
              sha256 = "256c7ecb4f4cdd5fb25772da4bd35968f8081b9752feafc446611ea1b8e36661";
              sha256_unsigned = "256c7ecb4f4cdd5fb25772da4bd35968f8081b9752feafc446611ea1b8e36661";
              type = "preloader.bin";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7623-bananapi_bpi-r2-initramfs-recovery.itb";
              sha256 = "92100b39c7bad9b27ec90109909b43f656d22da55a1af29bc8561b803c201cdc";
              sha256_unsigned = "92100b39c7bad9b27ec90109909b43f656d22da55a1af29bc8561b803c201cdc";
              type = "kernel";
            }
          ];
          supported_devices = [
            "bananapi,bpi-r2"
          ];
          titles = [
            {
              model = "BPi-R2";
              vendor = "Bananapi";
            }
          ];
        };
        unielec_u7623-02 = {
          device_packages = [
            "kmod-fs-vfat"
            "kmod-nls-cp437"
            "kmod-nls-iso8859-1"
            "kmod-mmc"
            "mkf2fs"
            "e2fsprogs"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-usb3"
            "kmod-ata-ahci"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mediatek-mt7623-unielec_u7623-02";
          images = [
            {
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7623-unielec_u7623-02-u-boot.bin";
              sha256 = "b8d7ae4c7eaaa832514fa7966a85c7d9b1ac41a06622083c3599c664d44528c4";
              sha256_unsigned = "b8d7ae4c7eaaa832514fa7966a85c7d9b1ac41a06622083c3599c664d44528c4";
              type = "u-boot.bin";
            }
            {
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7623-unielec_u7623-02-emmc.img.gz";
              sha256 = "f3a883d7f13fe3106216807350cac3310d232b05702ac78409256cd03230bbc0";
              sha256_unsigned = "2ed8751762b4fa30d9ed1d397e1589d8f2d301469ae21b1578623154eae5b0bd";
              type = "emmc.img.gz";
            }
            {
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7623-unielec_u7623-02-scatter.txt";
              sha256 = "a47a24555c07d25d1a4cb7c8e4a19ead6f16476b6d606b7a662d1fd979ae3267";
              sha256_unsigned = "a47a24555c07d25d1a4cb7c8e4a19ead6f16476b6d606b7a662d1fd979ae3267";
              type = "scatter.txt";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7623-unielec_u7623-02-initramfs-recovery.itb";
              sha256 = "8a77cf7260b506679cc23267dc9fb437ff606f33a3886549a50d47b5fea8cdd6";
              sha256_unsigned = "8a77cf7260b506679cc23267dc9fb437ff606f33a3886549a50d47b5fea8cdd6";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7623-unielec_u7623-02-squashfs-sysupgrade.itb";
              sha256 = "da29cf7b882dc4bed91adebdacbf2983331d7a44a653a03574029b143588794b";
              sha256_unsigned = "0223325942f32a9b9994425df079a9fdf4005a5fe45763d36ed36ca5ec8085b9";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "unielec,u7623-02"
            "unielec,u7623-02-emmc-512m"
          ];
          titles = [
            {
              model = "U7623-02";
              vendor = "UniElec";
            }
          ];
        };
        unielec_u7623-02-emmc-512m-legacy = {
          device_packages = [
            "kmod-fs-vfat"
            "kmod-nls-cp437"
            "kmod-nls-iso8859-1"
            "kmod-mmc"
            "mkf2fs"
            "e2fsprogs"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-usb3"
            "kmod-ata-ahci"
            "partx-utils"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mediatek-mt7623-unielec_u7623-02-emmc-512m-legacy";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7623-unielec_u7623-02-emmc-512m-legacy-initramfs-kernel.bin";
              sha256 = "b53a989863eefefaf6de13d3104f504680bc7387f5f5224468076df4d81fc367";
              sha256_unsigned = "b53a989863eefefaf6de13d3104f504680bc7387f5f5224468076df4d81fc367";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7623-unielec_u7623-02-emmc-512m-legacy-squashfs-sysupgrade.bin.gz";
              sha256 = "dcba605dee5f11de8ee7e1f6df36b72025d51374b0fb97af4913263b389736f2";
              sha256_unsigned = "3243479109aeff3a1ce87a5fa870491aa57f685625e872804ae63dbbc996d48b";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "unielec,u7623-02-emmc-512m"
          ];
          titles = [
            {
              model = "U7623-02";
              variant = "eMMC/512MiB RAM (legacy image)";
              vendor = "UniElec";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "mediatek/mt7623";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    mt7629 = {
      arch_packages = "arm_cortex-a7";
      default_packages = [
        "autocore"
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
        vermagic = "8a6c4cc62e2cc36ce55fad6c5d4293c7";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        iptime_a6004mx = {
          device_packages = [
            "kmod-usb3"
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mediatek-mt7629-iptime_a6004mx";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7629-iptime_a6004mx-squashfs-sysupgrade.bin";
              sha256 = "050790e82ff64b18afc47c5907149959cc024a6a2f1b1172e955762139fb327d";
              sha256_unsigned = "bba2b1e76377d121f46708f84382a97f0b5171170c4b1533a5fcd246e9318489";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7629-iptime_a6004mx-initramfs-kernel.bin";
              sha256 = "2ea40b8648d28040f1473f8acc986c50e9117276a3b2219dca4ed57eaa6c7030";
              sha256_unsigned = "2ea40b8648d28040f1473f8acc986c50e9117276a3b2219dca4ed57eaa6c7030";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7629-iptime_a6004mx-squashfs-recovery.bin";
              sha256 = "38938a3b17ffd2baa1257b02b3995ccd53e207b2fc140f5caed579b63d118164";
              sha256_unsigned = "095ddffefa08ee8320a2fdf63697ed041ea6df7f194c57e04b2a0fb98af734d1";
              type = "recovery";
            }
          ];
          supported_devices = [
            "iptime,a6004mx"
          ];
          titles = [
            {
              model = "A6004MX";
              vendor = "ipTIME";
            }
          ];
        };
        linksys_ea7500-v3 = {
          device_packages = [
            "kmod-usb3"
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mediatek-mt7629-linksys_ea7500-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7629-linksys_ea7500-v3-squashfs-sysupgrade.bin";
              sha256 = "6d414b62d6dd3449d2dd9aa59984c549832cbaeae7b5406cbef4040e255165d3";
              sha256_unsigned = "df2391b9161751236b4ae971671338d88c26347658723ab6d467889f1c1b7e21";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7629-linksys_ea7500-v3-initramfs-kernel.bin";
              sha256 = "aa6910b5470edc3eb7b131d2f89d2dc65ddb1cc826020124be552c021e576daa";
              sha256_unsigned = "aa6910b5470edc3eb7b131d2f89d2dc65ddb1cc826020124be552c021e576daa";
              type = "kernel";
            }
          ];
          supported_devices = [
            "linksys,ea7500-v3"
          ];
          titles = [
            {
              model = "EA7500";
              variant = "v3";
              vendor = "Linksys";
            }
          ];
        };
        mediatek_mt7629-rfb = {
          device_packages = [
            "swconfig"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mediatek-mt7629-mediatek_mt7629-rfb";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7629-mediatek_mt7629-rfb-initramfs-kernel.bin";
              sha256 = "83fad21c67071ae827c35edf634bd7ff32884f362f8568a0703d976b53a70061";
              sha256_unsigned = "83fad21c67071ae827c35edf634bd7ff32884f362f8568a0703d976b53a70061";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7629-mediatek_mt7629-rfb-squashfs-sysupgrade.bin";
              sha256 = "4e589c48e606ec03377dbd75114968f9566e49ef2a29dd85de5ff8d72538422b";
              sha256_unsigned = "3192394283683f6317448de54b6d28d06a4fd31afd7b0565230d5009a1d58e3f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mediatek,mt7629-rfb"
          ];
          titles = [
            {
              model = "MT7629 rfb AP";
              vendor = "MediaTek";
            }
          ];
        };
        netgear_ex6250-v2 = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mediatek-mt7629-netgear_ex6250-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7629-netgear_ex6250-v2-squashfs-factory.img";
              sha256 = "b6205c93345a59f764792bb1764cae233183c35aab515d2a27182f2726c8bef4";
              sha256_unsigned = "b6205c93345a59f764792bb1764cae233183c35aab515d2a27182f2726c8bef4";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7629-netgear_ex6250-v2-squashfs-sysupgrade.bin";
              sha256 = "272aba5be3cb05f2701ed961195c9df14feba9ef256d82090a86b5023a2c8b35";
              sha256_unsigned = "c183505344ca3ea775f8fd17973a7688604b70b055ddfdb6b46b3220d3d9932f";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7629-netgear_ex6250-v2-initramfs-kernel.bin";
              sha256 = "c22b9ce8b04b041bb58b1bb4722e9cd2d91f51183dcf8c93889423fe69a5ab7f";
              sha256_unsigned = "c22b9ce8b04b041bb58b1bb4722e9cd2d91f51183dcf8c93889423fe69a5ab7f";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,ex6250-v2"
          ];
          titles = [
            {
              model = "EX6250";
              variant = "v2";
              vendor = "NETGEAR";
            }
            {
              model = "EX6400";
              variant = "v3";
              vendor = "NETGEAR";
            }
            {
              model = "EX6410";
              variant = "v2";
              vendor = "NETGEAR";
            }
            {
              model = "EX6470";
              vendor = "NETGEAR";
            }
          ];
        };
        tplink_eap225-v5 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-mediatek-mt7629-tplink_eap225-v5";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7629-tplink_eap225-v5-squashfs-sysupgrade.bin";
              sha256 = "7ef925771e2704391656ad2c1cd102713b20d8d45eb6ff96de0fc8d9ddf79fdb";
              sha256_unsigned = "3d03373cd301e00aed103992bd6b0d530125e04cb0501381358317be5d3b3244";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mediatek-mt7629-tplink_eap225-v5-initramfs-kernel.bin";
              sha256 = "c6dbb02d504f5968a2838d762630a12998f4947e1839ed17f46186c2044c65be";
              sha256_unsigned = "c6dbb02d504f5968a2838d762630a12998f4947e1839ed17f46186c2044c65be";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,eap225-v5"
          ];
          titles = [
            {
              model = "EAP225";
              variant = "v5";
              vendor = "TP-Link";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "mediatek/mt7629";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
  mpc85xx = {
    p1010 = {
      arch_packages = "powerpc_8548";
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
        "kmod-button-hotplug"
        "kmod-crypto-hw-talitos"
        "kmod-input-core"
        "kmod-input-gpio-keys"
        "kmod-leds-gpio"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
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
        vermagic = "44edc98920a6e8b1814ab1c3d43e10ba";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        aerohive_br200-wp = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-mpc85xx-p1010-aerohive_br200-wp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1010-aerohive_br200-wp-squashfs-fdt.bin";
              sha256 = "e0def4c8024635a322e9a28db74c5f3a7978afb72975b0b090a6e9f506e4ef8e";
              sha256_unsigned = "e0def4c8024635a322e9a28db74c5f3a7978afb72975b0b090a6e9f506e4ef8e";
              type = "fdt";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1010-aerohive_br200-wp-squashfs-sysupgrade.bin";
              sha256 = "aa52bd48ab41e05c1992645d7cfd2e209be776b3a09589ac288f0ad0884697b5";
              sha256_unsigned = "30252e064e6cd72599d1e6f9d1747005e26295f2d75d45e2dba81228d756d4e0";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1010-aerohive_br200-wp-initramfs-kernel.bin";
              sha256 = "70e80ae8910869c8991f1eb66d678750ce62db9c950d5375ff0041b6a2efa874";
              sha256_unsigned = "70e80ae8910869c8991f1eb66d678750ce62db9c950d5375ff0041b6a2efa874";
              type = "kernel";
            }
          ];
          supported_devices = [
            "aerohive,br200-wp"
          ];
          titles = [
            {
              model = "BR200-WP";
              vendor = "Aerohive";
            }
          ];
        };
        enterasys_ws-ap3715i = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-mpc85xx-p1010-enterasys_ws-ap3715i";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1010-enterasys_ws-ap3715i-squashfs-sysupgrade.bin";
              sha256 = "eac6fb82c8b330ac2e9ec39ff14aeaaaa39cc8a9f1ac7851074dfb1f2072ba47";
              sha256_unsigned = "f0884bc6df6432d878840d716254107247ffa0de7327565dd137fb5513aa7e6f";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1010-enterasys_ws-ap3715i-initramfs-kernel.bin";
              sha256 = "ff058bf45c01a44e9d6a80ff9d1b1a3e53692038335b82d07c1a12d49312c148";
              sha256_unsigned = "ff058bf45c01a44e9d6a80ff9d1b1a3e53692038335b82d07c1a12d49312c148";
              type = "kernel";
            }
          ];
          supported_devices = [
            "enterasys,ws-ap3715i"
          ];
          titles = [
            {
              model = "WS-AP3715i";
              vendor = "Enterasys";
            }
          ];
        };
        sophos_red-15w-rev1 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-mpc85xx-p1010-sophos_red-15w-rev1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1010-sophos_red-15w-rev1-squashfs-sysupgrade.bin";
              sha256 = "13ce0b25b1daa5c7c0648ade0ad4095738b9d8d263927ef92c4659eba0d2e5b6";
              sha256_unsigned = "882a720e57d38b75ff7d55cc6c2b27d518f0707828bff697d4b4bdfb1ea87016";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1010-sophos_red-15w-rev1-initramfs-kernel.bin";
              sha256 = "c26d7d88377cf6421e278e17a4f52caa4c06a695871a9ee9d1cb62711527a0c5";
              sha256_unsigned = "c26d7d88377cf6421e278e17a4f52caa4c06a695871a9ee9d1cb62711527a0c5";
              type = "kernel";
            }
          ];
          supported_devices = [
            "sophos,red-15w-rev1"
          ];
          titles = [
            {
              model = "RED 15w";
              variant = "Rev.1";
              vendor = "Sophos";
            }
          ];
        };
        tplink_tl-wdr4900-v1 = {
          device_packages = [
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mpc85xx-p1010-tplink_tl-wdr4900-v1";
          images = [
            {
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1010-tplink_tl-wdr4900-v1-fdt.bin";
              sha256 = "9d816deca7a1969d7892c4cc8fbb21092b5ee01f0abdacdb8d6a2eb4e6161eb9";
              sha256_unsigned = "9d816deca7a1969d7892c4cc8fbb21092b5ee01f0abdacdb8d6a2eb4e6161eb9";
              type = "fdt.bin";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1010-tplink_tl-wdr4900-v1-squashfs-sysupgrade.bin";
              sha256 = "9e5598ad2a941d6e4d49775ca56c707d77dff4253ef2497b8e87f2fc77fde58d";
              sha256_unsigned = "69c931a3892986e7ce3e80083615ffcce904c1190705cecd537fe9db32342edd";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1010-tplink_tl-wdr4900-v1-squashfs-factory.bin";
              sha256 = "df5cad099f8e8fb42b143758005343799aec1802f49fb24c85f3fcdbdaf87673";
              sha256_unsigned = "df5cad099f8e8fb42b143758005343799aec1802f49fb24c85f3fcdbdaf87673";
              type = "factory";
            }
          ];
          supported_devices = [
            "tplink,tl-wdr4900-v1"
            "tl-wdr4900-v1"
          ];
          titles = [
            {
              model = "TL-WDR4900";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        watchguard_firebox-t10 = {
          device_packages = [
            "kmod-rtc-s35390a"
            "kmod-eeprom-at24"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mpc85xx-p1010-watchguard_firebox-t10";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1010-watchguard_firebox-t10-initramfs-kernel.bin";
              sha256 = "9a7938e8fcb59380ee884720866908a6ee18d15fefdb63e4a39f553770cf1b30";
              sha256_unsigned = "9a7938e8fcb59380ee884720866908a6ee18d15fefdb63e4a39f553770cf1b30";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1010-watchguard_firebox-t10-squashfs-sysupgrade.bin";
              sha256 = "5785f8f93119f93c3d6a7766a40b1bb6345950650db9fc6fb168e37ddb1e6b6a";
              sha256_unsigned = "f6ec4ceafddf02788496a843fda27889fcfc112d09aa970367a932d813ddbfd1";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "watchguard,firebox-t10"
          ];
          titles = [
            {
              model = "Firebox T10";
              vendor = "Watchguard";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "mpc85xx/p1010";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    p1020 = {
      arch_packages = "powerpc_8548";
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
        "kmod-button-hotplug"
        "kmod-crypto-hw-talitos"
        "kmod-input-core"
        "kmod-input-gpio-keys"
        "kmod-leds-gpio"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
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
        vermagic = "90bc7ef84ae8ca9f88a6552d190cfc46";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        aerohive_hiveap-330 = {
          device_packages = [
            "kmod-tpm-i2c-atmel"
            "kmod-hwmon-lm70"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mpc85xx-p1020-aerohive_hiveap-330";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1020-aerohive_hiveap-330-squashfs-sysupgrade.bin";
              sha256 = "8af34bd91d40aabb53cfb82475823d522b739a187b18574dbbcb721b86e8d37b";
              sha256_unsigned = "2bde522224e2ae987ffefaf041cb61be06afd30a1f31f08ab2664862e3fbc80d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1020-aerohive_hiveap-330-initramfs-kernel.bin";
              sha256 = "8dc1850dd8913cd0705331fb19708610499d1f775907daa03e1168c99c538959";
              sha256_unsigned = "8dc1850dd8913cd0705331fb19708610499d1f775907daa03e1168c99c538959";
              type = "kernel";
            }
          ];
          supported_devices = [
            "aerohive,hiveap-330"
          ];
          titles = [
            {
              model = "HiveAP-330";
              vendor = "Aerohive";
            }
            {
              model = "HiveAP-350";
              vendor = "Aerohive";
            }
          ];
        };
        enterasys_ws-ap3710i = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-mpc85xx-p1020-enterasys_ws-ap3710i";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1020-enterasys_ws-ap3710i-squashfs-sysupgrade.bin";
              sha256 = "d441ee4710f2c49774fda5273169680b5246ff996db861abe4e3ba0cb896174b";
              sha256_unsigned = "04fce6da74f0ad99193e28ded072787802db1a5cf153c38e8229d3a40781b773";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1020-enterasys_ws-ap3710i-initramfs-kernel.bin";
              sha256 = "fbe3143c8fceed0a42f2beb8b296c0800d3fea480b17353f4d382dfa18d5ddb4";
              sha256_unsigned = "fbe3143c8fceed0a42f2beb8b296c0800d3fea480b17353f4d382dfa18d5ddb4";
              type = "kernel";
            }
          ];
          supported_devices = [
            "enterasys,ws-ap3710i"
          ];
          titles = [
            {
              model = "WS-AP3710i";
              vendor = "Enterasys";
            }
          ];
        };
        extreme-networks_ws-ap3825i = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mpc85xx-p1020-extreme-networks_ws-ap3825i";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1020-extreme-networks_ws-ap3825i-squashfs-sysupgrade.bin";
              sha256 = "7d14f0153cd8b83f90c689434e2b36a76235522cc5e36fa27bc8ace17e28c316";
              sha256_unsigned = "085b71951ec097010ad6c2eeb211b613de6df411c3adf240640e8cee31b1fdee";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1020-extreme-networks_ws-ap3825i-initramfs-kernel.bin";
              sha256 = "2e653daf43d9f345952d867f67481bbd46a4e7944c7f21ca43177721afaf1e44";
              sha256_unsigned = "2e653daf43d9f345952d867f67481bbd46a4e7944c7f21ca43177721afaf1e44";
              type = "kernel";
            }
          ];
          supported_devices = [
            "extreme-networks,ws-ap3825i"
          ];
          titles = [
            {
              model = "WS-AP3825i";
              vendor = "Extreme Networks";
            }
          ];
        };
        hpe_msm460 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-mpc85xx-p1020-hpe_msm460";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1020-hpe_msm460-squashfs-sysupgrade.bin";
              sha256 = "6f52d7477e2d5db5c08f96c08408f0b6205a6f65f594efd8e583e452f4c926af";
              sha256_unsigned = "b5467d60740b09960eedac54c8caddb4e89b759ea857256da3777a4bc0ce35e0";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1020-hpe_msm460-squashfs-factory.bin";
              sha256 = "1f3a4290267069c9ca29d266795a410323564339610e19cc9e107f311e10f341";
              sha256_unsigned = "1f3a4290267069c9ca29d266795a410323564339610e19cc9e107f311e10f341";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1020-hpe_msm460-initramfs-kernel.bin";
              sha256 = "4bb11e555cb16342954c5890836744e00ba5646ac72e9589f1abf1b5221bae22";
              sha256_unsigned = "4bb11e555cb16342954c5890836744e00ba5646ac72e9589f1abf1b5221bae22";
              type = "kernel";
            }
          ];
          supported_devices = [
            "hpe,msm460"
          ];
          titles = [
            {
              model = "MSM460";
              vendor = "Hewlett-Packard";
            }
          ];
        };
        ocedo_panda = {
          device_packages = [
            "kmod-rtc-ds1307"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mpc85xx-p1020-ocedo_panda";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1020-ocedo_panda-initramfs-kernel.bin";
              sha256 = "99e5bb8baff01b85c3e7a2bc7777c06ca4fb7c0684fd3dd9f2d466d728740779";
              sha256_unsigned = "99e5bb8baff01b85c3e7a2bc7777c06ca4fb7c0684fd3dd9f2d466d728740779";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1020-ocedo_panda-squashfs-sysupgrade.bin";
              sha256 = "a50697ee320269d8049a8bcc80fed5487b2ae5048c563ecc169a3a99b6a2618d";
              sha256_unsigned = "cd7a51d0a07599b7d4ee34eb1545078554bd0088cad53fbaf5561f91de75c5a1";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p1020-ocedo_panda-squashfs-fdt.bin";
              sha256 = "d1ceea811a7ba68831b7fbc46b66f1245cfd45098e23289959614b19f485bf89";
              sha256_unsigned = "d1ceea811a7ba68831b7fbc46b66f1245cfd45098e23289959614b19f485bf89";
              type = "fdt";
            }
          ];
          supported_devices = [
            "ocedo,panda"
          ];
          titles = [
            {
              model = "Panda";
              vendor = "OCEDO";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "mpc85xx/p1020";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    p2020 = {
      arch_packages = "powerpc_8548";
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
        "kmod-button-hotplug"
        "kmod-crypto-hw-talitos"
        "kmod-input-core"
        "kmod-input-gpio-keys"
        "kmod-leds-gpio"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
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
        vermagic = "af14059d4f46c26509b62ba361fa838b";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        freescale_p2020rdb = {
          device_packages = [
            "kmod-hwmon-lm90"
            "kmod-rtc-ds1307"
            "kmod-gpio-pca953x"
            "kmod-eeprom-at24"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mpc85xx-p2020-freescale_p2020rdb";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p2020-freescale_p2020rdb-initramfs-kernel.bin";
              sha256 = "a3ba7e933f7d03004a031de59ed6850e4d7349a7a9971bffb7ffcbe508742c8e";
              sha256_unsigned = "a3ba7e933f7d03004a031de59ed6850e4d7349a7a9971bffb7ffcbe508742c8e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mpc85xx-p2020-freescale_p2020rdb-squashfs-sysupgrade.bin";
              sha256 = "9d873728d7ee4ed708bc009d00a77fe9e2f032bd396d5c9ae2f0aa826fdc706d";
              sha256_unsigned = "c21f46ffd4f6da020a8b99cfbdd923ab3b30a1913a03528aacff95878ab4a287";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "fsl,P2020RDB"
          ];
          titles = [
            {
              model = "P2020RDB";
              vendor = "Freescale";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "mpc85xx/p2020";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
  mvebu = {
    cortexa72 = {
      arch_packages = "aarch64_cortex-a72";
      default_packages = [
        "autocore"
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "e2fsprogs"
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
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "d24b4cdd790ab07420abc1fa3477e563";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        globalscale_mochabin = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-globalscale_mochabin";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-globalscale_mochabin-initramfs-kernel.bin";
              sha256 = "e504fda40f9f18b0449e45820ac483c96ccef40eb81524b4f891b6df5900a09f";
              sha256_unsigned = "e504fda40f9f18b0449e45820ac483c96ccef40eb81524b4f891b6df5900a09f";
              type = "kernel";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-globalscale_mochabin-ext4-sdcard.img.gz";
              sha256 = "c60e4652c9703f9905cbeb8f5794b51fc0eae4994fcb867b360acffbbb9efdf8";
              sha256_unsigned = "eb9e311dcac67191726492066e58595fbb8e8df910424f58a8c198caa22bfb41";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-globalscale_mochabin-squashfs-sdcard.img.gz";
              sha256 = "9b443f7d835c33e6ff7f70548cea3a9bbd854f7e57351c5267954427c8918c95";
              sha256_unsigned = "57aa1033b469e649580dda2d35b61920619f26a221fdda340132b1a2151e6b4c";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "globalscale,mochabin"
          ];
          titles = [
            {
              model = "MOCHAbin";
              vendor = "Globalscale";
            }
          ];
        };
        iei_puzzle-m901 = {
          device_packages = [
            "kmod-rtc-ds1307"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-iei_puzzle-m901";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-iei_puzzle-m901-initramfs-kernel.bin";
              sha256 = "f68f721fa1238c31574fcbb223c84cb3cd80298f8a5ddd334d5602e44ee891e8";
              sha256_unsigned = "f68f721fa1238c31574fcbb223c84cb3cd80298f8a5ddd334d5602e44ee891e8";
              type = "kernel";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-iei_puzzle-m901-ext4-sdcard.img.gz";
              sha256 = "0121c65a1be3b416fa4bc9e9f5f7e7642842ec641b902dead7e140ed99062f46";
              sha256_unsigned = "cb994ae800e9004a0cdf9865f16f878aed33732f67744b1010ee2fc3af0cb25b";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-iei_puzzle-m901-squashfs-sdcard.img.gz";
              sha256 = "bf5f2ccbc2258039051b105cbeec11428c6f53997c257830e322b034193cda22";
              sha256_unsigned = "bd3c202a5b2302929e9a00fec845d4eb263d848129906a4bd254160b485b878e";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "iei,puzzle-m901"
          ];
          titles = [
            {
              model = "Puzzle-M901";
              vendor = "iEi";
            }
          ];
        };
        iei_puzzle-m902 = {
          device_packages = [
            "kmod-rtc-ds1307"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-iei_puzzle-m902";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-iei_puzzle-m902-squashfs-sdcard.img.gz";
              sha256 = "5a12b0290e782819ff5f5dcb059a397c7267dbcba464842a255c4189aa7a36a0";
              sha256_unsigned = "84ff41f33c6dff870b800a8a45685a5b21d44302ac06ec77a704a7ddc56e429a";
              type = "sdcard";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-iei_puzzle-m902-initramfs-kernel.bin";
              sha256 = "f68f721fa1238c31574fcbb223c84cb3cd80298f8a5ddd334d5602e44ee891e8";
              sha256_unsigned = "f68f721fa1238c31574fcbb223c84cb3cd80298f8a5ddd334d5602e44ee891e8";
              type = "kernel";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-iei_puzzle-m902-ext4-sdcard.img.gz";
              sha256 = "5b92b018f251c5a990c94f92a0403c2f5546ac9e402728fb2169c7aad940b276";
              sha256_unsigned = "ebd82916769662b1527afb53d2f5c7beb5845be00c3de57a5dddbc354548021b";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "iei,puzzle-m902"
          ];
          titles = [
            {
              model = "Puzzle-M902";
              vendor = "iEi";
            }
          ];
        };
        marvell_armada7040-db = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-marvell_armada7040-db";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-marvell_armada7040-db-squashfs-sdcard.img.gz";
              sha256 = "5df639958b47db10b859bc118100f0361c8ee8883a67222d86876a1c241d4f6b";
              sha256_unsigned = "6a201193e398d202da3a13d9106d6363da759bc33ca652af1677a48c7ea99631";
              type = "sdcard";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-marvell_armada7040-db-initramfs-kernel.bin";
              sha256 = "e504fda40f9f18b0449e45820ac483c96ccef40eb81524b4f891b6df5900a09f";
              sha256_unsigned = "e504fda40f9f18b0449e45820ac483c96ccef40eb81524b4f891b6df5900a09f";
              type = "kernel";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-marvell_armada7040-db-ext4-sdcard.img.gz";
              sha256 = "34febf6383e7d19b47cbac5133303af436ae808df4976bdceb7ed6008fed71d3";
              sha256_unsigned = "e37f2d4fcc335dc82da6ba8ab178ca16701e24e06928b6b503bb5518e3773317";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "marvell,armada7040-db"
          ];
          titles = [
            {
              model = "Armada 7040 Development Board";
              vendor = "Marvell";
            }
          ];
        };
        marvell_armada8040-db = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-marvell_armada8040-db";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-marvell_armada8040-db-ext4-sdcard.img.gz";
              sha256 = "d46877e4f1c1d505d5c47bcbce8e4ed34c8538605fb1c5e960070032420f768a";
              sha256_unsigned = "78eeb6be24b05046676a5e67e2ac7e8ccc05bf0b85d70824ba9b84f78d2b111a";
              type = "sdcard";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-marvell_armada8040-db-initramfs-kernel.bin";
              sha256 = "e504fda40f9f18b0449e45820ac483c96ccef40eb81524b4f891b6df5900a09f";
              sha256_unsigned = "e504fda40f9f18b0449e45820ac483c96ccef40eb81524b4f891b6df5900a09f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-marvell_armada8040-db-squashfs-sdcard.img.gz";
              sha256 = "8f57d5e5ea6b4ad7420374362047d6afd5d181acee7be682eea1ff48801f7369";
              sha256_unsigned = "c2dcf4e57763459568bd6e45d5e5551f2cf6eb1d57f9af1aa903e26c22a8a73d";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "marvell,armada8040-db"
          ];
          titles = [
            {
              model = "Armada 8040 Development Board";
              vendor = "Marvell";
            }
          ];
        };
        marvell_clearfog-gt-8k = {
          device_packages = [
            "kmod-i2c-mux-pca954x"
            "kmod-crypto-hw-safexcel"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-marvell_clearfog-gt-8k";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-marvell_clearfog-gt-8k-initramfs-kernel.bin";
              sha256 = "befc6242b38177de268cb01b60b85048e4b57d6ab2e79839df4eedc3af37a473";
              sha256_unsigned = "befc6242b38177de268cb01b60b85048e4b57d6ab2e79839df4eedc3af37a473";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-marvell_clearfog-gt-8k-squashfs-sdcard.img.gz";
              sha256 = "ed100911174199d109feb4b344486384fae81c7615f2bb1851e5961f972a298f";
              sha256_unsigned = "148704dc2da8a8ada8b859e4ce362e06ec7d50b356a4bcfae7972c49f1162427";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-marvell_clearfog-gt-8k-ext4-sdcard.img.gz";
              sha256 = "62496a61e18532f472b3406c16fe048fd54f99ea92693a5d73ae31249e365e31";
              sha256_unsigned = "2ee533c12e7275ac0e38a7ece3495e71e0912d17780d4f1b16f77323875b5ed2";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "marvell,armada8040-clearfog-gt-8k"
          ];
          titles = [
            {
              model = "Clearfog";
              variant = "GT-8K";
              vendor = "SolidRun";
            }
          ];
        };
        marvell_macchiatobin-doubleshot = {
          device_packages = [
            "kmod-i2c-mux-pca954x"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-marvell_macchiatobin-doubleshot";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-marvell_macchiatobin-doubleshot-ext4-sdcard.img.gz";
              sha256 = "231581944b0ce6847000b94fa55b3c907b447a4b850e3e20a358a36e9344af32";
              sha256_unsigned = "c022be708429c75295fa00699ee3055b37a8b666459f77907cbe8b12f1d2d018";
              type = "sdcard";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-marvell_macchiatobin-doubleshot-initramfs-kernel.bin";
              sha256 = "00b658d3deb009a7882d82e97d468870a6a25d23724bc3e8b9a1731cb0eebd36";
              sha256_unsigned = "00b658d3deb009a7882d82e97d468870a6a25d23724bc3e8b9a1731cb0eebd36";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-marvell_macchiatobin-doubleshot-squashfs-sdcard.img.gz";
              sha256 = "83b5ff01de6b041730e12cb03465895ba35a156b85d51ea1d57452a71723e31d";
              sha256_unsigned = "6b5f70d951aa04e163e44087f177917f1b3efe7ee8d49e230e93304689213f69";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "marvell,armada8040-mcbin-doubleshot"
            "marvell,armada8040-mcbin"
          ];
          titles = [
            {
              model = "MACCHIATObin";
              variant = "Double Shot";
              vendor = "SolidRun";
            }
            {
              model = "Armada 8040 Community Board";
              variant = "Double Shot";
              vendor = "SolidRun";
            }
          ];
        };
        marvell_macchiatobin-singleshot = {
          device_packages = [
            "kmod-i2c-mux-pca954x"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-marvell_macchiatobin-singleshot";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-marvell_macchiatobin-singleshot-squashfs-sdcard.img.gz";
              sha256 = "72050fcca8d4b146ecd9d0697e6d7c7f44a80784925f083fffc16031b3e9dff5";
              sha256_unsigned = "61c7b4ef51458b411a0734d261cace9ed1fefa31ff8ebaf92702b24a9ba5d560";
              type = "sdcard";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-marvell_macchiatobin-singleshot-initramfs-kernel.bin";
              sha256 = "00b658d3deb009a7882d82e97d468870a6a25d23724bc3e8b9a1731cb0eebd36";
              sha256_unsigned = "00b658d3deb009a7882d82e97d468870a6a25d23724bc3e8b9a1731cb0eebd36";
              type = "kernel";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-marvell_macchiatobin-singleshot-ext4-sdcard.img.gz";
              sha256 = "052ead286c782954c33a1c7461cb82c6106c56a3ba9e8997a17f30723cecf4a1";
              sha256_unsigned = "e5f85b95caea9a1173b23fa7144919824348c35c8d5e9808b74443d18601a4b8";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "marvell,armada8040-mcbin-singleshot"
          ];
          titles = [
            {
              model = "MACCHIATObin";
              variant = "Single Shot";
              vendor = "SolidRun";
            }
            {
              model = "Armada 8040 Community Board";
              variant = "Single Shot";
              vendor = "SolidRun";
            }
          ];
        };
        mikrotik_rb5009 = {
          device_packages = [
            "kmod-i2c-gpio"
            "yafut"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-mikrotik_rb5009";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-mikrotik_rb5009-squashfs-factory.ubi";
              sha256 = "3e1a62255401cf7ade66584ba712d305c2a3408cd9922549ca5added04714e28";
              sha256_unsigned = "3e1a62255401cf7ade66584ba712d305c2a3408cd9922549ca5added04714e28";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-mikrotik_rb5009-squashfs-sysupgrade.bin";
              sha256 = "f1c5537dca115f2da9b833114c81e53b9d3c90e6be59ce55a62e24f0e61936f4";
              sha256_unsigned = "c2e415cf891b36596f541b460ab9066cea7d98fc9045ed6490377473eaeebc2a";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-mikrotik_rb5009-ext4-sysupgrade.bin";
              sha256 = "a44e1d9f501aba85cc7347b02ebaf923d9e82333a9503a5b232171e1e0f4dcbe";
              sha256_unsigned = "0b3deab48743fb387a62751058bf3562088d9c4310daed580a57e448febcc05b";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-mikrotik_rb5009-ext4-factory.ubi";
              sha256 = "f42f180af8c234aa84ad0890d3fbd91db6626d91ef83983de36b9361b05c076c";
              sha256_unsigned = "f42f180af8c234aa84ad0890d3fbd91db6626d91ef83983de36b9361b05c076c";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-mikrotik_rb5009-initramfs-uImage.itb";
              sha256 = "bd8bf48f9a1ce0e62e8aa9c399eee7c7355dda3d60be09107f682d4871961b97";
              sha256_unsigned = "bd8bf48f9a1ce0e62e8aa9c399eee7c7355dda3d60be09107f682d4871961b97";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,rb5009"
          ];
          titles = [
            {
              model = "RB5009";
              vendor = "MikroTik";
            }
          ];
        };
        solidrun_clearfog-pro = {
          device_packages = [
            "kmod-i2c-mux-pca954x"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-solidrun_clearfog-pro";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-solidrun_clearfog-pro-squashfs-sdcard.img.gz";
              sha256 = "8ac8576f31b9bc878c1940e566a4f2befedcba29dd381bb6461d2d0de49699e2";
              sha256_unsigned = "f5a7d9c06a1f84f7a81bd49aa8d11b09ded6270f6cf7f8523b05587396bea96c";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-solidrun_clearfog-pro-ext4-sdcard.img.gz";
              sha256 = "955af33b5a40dd9f8dc6fac7ba91bc5a8cd3378bf5d3a9367eeeb585cbcb53ee";
              sha256_unsigned = "5ae229630194532dd380f972cd8e67bc70c8a4e904f463fc311eab922f77671b";
              type = "sdcard";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa72-solidrun_clearfog-pro-initramfs-kernel.bin";
              sha256 = "00b658d3deb009a7882d82e97d468870a6a25d23724bc3e8b9a1731cb0eebd36";
              sha256_unsigned = "00b658d3deb009a7882d82e97d468870a6a25d23724bc3e8b9a1731cb0eebd36";
              type = "kernel";
            }
          ];
          supported_devices = [
            "solidrun,clearfog-pro"
          ];
          titles = [
            {
              model = "ClearFog Pro";
              vendor = "SolidRun";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "mvebu/cortexa72";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
    cortexa9 = {
      arch_packages = "arm_cortex-a9_vfpv3-d16";
      default_packages = [
        "autocore"
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
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "86962da8c6eeda36fde9664e12fe9320";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        buffalo_ls220de = {
          device_packages = [
            "kmod-hwmon-gpiofan"
            "kmod-hwmon-drivetemp"
            "kmod-linkstation-poweroff"
            "kmod-md-mod"
            "kmod-md-raid0"
            "kmod-md-raid1"
            "kmod-md-raid10"
            "kmod-fs-xfs"
            "mdadm"
            "mkf2fs"
            "e2fsprogs"
            "partx-utils"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-buffalo_ls220de";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-buffalo_ls220de-initramfs-kernel.bin";
              sha256 = "fd54b2a5e55d19b0915afac93f4984447881527dab7d23d6625b90e60469d38e";
              sha256_unsigned = "fd54b2a5e55d19b0915afac93f4984447881527dab7d23d6625b90e60469d38e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-buffalo_ls220de-squashfs-sysupgrade.bin";
              sha256 = "484433fec11f43c04409029bd9906ee766c2a985a4946369727379e927b41e12";
              sha256_unsigned = "ed90c34a2c170f11fe40d17ca76e0e51cd88f27aa6bee49e4579c84fee95017d";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "buffalo,ls220de"
          ];
          titles = [
            {
              model = "LinkStation LS220DE";
              vendor = "Buffalo";
            }
          ];
        };
        buffalo_ls421de = {
          device_packages = [
            "kmod-rtc-rs5c372a"
            "kmod-hwmon-gpiofan"
            "kmod-hwmon-drivetemp"
            "kmod-usb3"
            "kmod-linkstation-poweroff"
            "kmod-md-raid0"
            "kmod-md-raid1"
            "kmod-md-mod"
            "kmod-fs-xfs"
            "mkf2fs"
            "e2fsprogs"
            "partx-utils"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-buffalo_ls421de";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-buffalo_ls421de-squashfs-sysupgrade.bin";
              sha256 = "10034c551aec0d76404c88cd22c4d7fb4f6373be6a9750266ecb86cb6efbde3f";
              sha256_unsigned = "53ada3d6821be9380ffbb9399cb3b1cfe71f6c168a924eade76b82788683cd4f";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-buffalo_ls421de-initramfs-kernel.bin";
              sha256 = "8020d3f342a1991debc29d53a0d9b0c2168a08d95f0ae58972c5d4022a79a3be";
              sha256_unsigned = "8020d3f342a1991debc29d53a0d9b0c2168a08d95f0ae58972c5d4022a79a3be";
              type = "kernel";
            }
          ];
          supported_devices = [
            "buffalo,ls421de"
          ];
          titles = [
            {
              model = "LinkStation LS421DE";
              vendor = "Buffalo";
            }
          ];
        };
        ctera_c200-v2 = {
          device_packages = [
            "kmod-gpio-button-hotplug"
            "kmod-hwmon-drivetemp"
            "kmod-hwmon-nct7802"
            "kmod-rtc-s35390a"
            "kmod-usb3"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-ctera_c200-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-ctera_c200-v2-initramfs-factory.firm";
              sha256 = "7f2e2ac47ece245d8e4e64e9c60883d957647fdb9889049766ccd23699c0f8b8";
              sha256_unsigned = "7f2e2ac47ece245d8e4e64e9c60883d957647fdb9889049766ccd23699c0f8b8";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-ctera_c200-v2-squashfs-sysupgrade.bin";
              sha256 = "d049936b0dce8101e300da4b7f52fb4ee1630764fb4dd6d226fcbcd9a8e146d6";
              sha256_unsigned = "b251294c1d5eb5a783374f3dab7b9e3fdea7cfac5a8d522e75e182a9dffd0114";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "ctera,c200-v2"
          ];
          titles = [
            {
              model = "C200";
              variant = "V2";
              vendor = "Ctera";
            }
          ];
        };
        cznic_turris-omnia = {
          device_packages = [
            "mkf2fs"
            "e2fsprogs"
            "kmod-fs-vfat"
            "kmod-nls-cp437"
            "kmod-nls-iso8859-1"
            "wpad-basic-openssl"
            "kmod-ath9k"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-mt7915-firmware"
            "partx-utils"
            "kmod-i2c-mux-pca954x"
            "kmod-leds-turris-omnia"
            "kmod-turris-omnia-mcu"
            "kmod-gpio-button-hotplug"
            "omnia-eeprom"
            "omnia-mcu-firmware"
            "omnia-mcutool"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-cznic_turris-omnia";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-cznic_turris-omnia-initramfs-kernel.bin";
              sha256 = "56c5d19f6d792ffe95f5ef520694bfe1bb40a668bdcd027eaea301273f2d2b80";
              sha256_unsigned = "56c5d19f6d792ffe95f5ef520694bfe1bb40a668bdcd027eaea301273f2d2b80";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-cznic_turris-omnia-squashfs-sysupgrade.img.gz";
              sha256 = "b537105610a111e2b10ef3247050c1a008423db836ed67c39d39cfb194ee2fb9";
              sha256_unsigned = "d5ac9b20c2103acbe059acafeccec27886a8a9bcda034b5ba22fc2706f36d44c";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "cznic,turris-omnia"
            "armada-385-turris-omnia"
          ];
          titles = [
            {
              model = "Turris Omnia";
              vendor = "CZ.NIC";
            }
          ];
        };
        fortinet_fg-30e = {
          device_packages = [
            "kmod-hwmon-nct7802"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-fortinet_fg-30e";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-fortinet_fg-30e-squashfs-sysupgrade.bin";
              sha256 = "3bbae5a9af4ecd263978001cca3208b06d3a8ad9d8b0d28189ef751614c9a26d";
              sha256_unsigned = "0f3f56da2e18864c800d3028560f5cb886cf51f0d6d271a72356a7099f1ad9aa";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-fortinet_fg-30e-initramfs-kernel.bin";
              sha256 = "69d11bfdfce24eb7c01f76879fae7b7d9ed9323a61e7199b4d906943ce8cf569";
              sha256_unsigned = "69d11bfdfce24eb7c01f76879fae7b7d9ed9323a61e7199b4d906943ce8cf569";
              type = "kernel";
            }
          ];
          supported_devices = [
            "fortinet,fg-30e"
          ];
          titles = [
            {
              model = "FortiGate 30E";
              vendor = "Fortinet";
            }
          ];
        };
        fortinet_fg-50e = {
          device_packages = [
            "kmod-hwmon-nct7802"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-fortinet_fg-50e";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-fortinet_fg-50e-squashfs-sysupgrade.bin";
              sha256 = "92e6e9e6c3c83423563b530cd40af25b2ad01f446317a213b06bbb0128749b71";
              sha256_unsigned = "b54cb5804d04b13246caf8abdc1ca97a0dda9d968441189ae9dff6313f3200b9";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-fortinet_fg-50e-initramfs-kernel.bin";
              sha256 = "9368ba83985a54a99c6543a4551e0d6fa119f62e3c90fbf60b2449f120014815";
              sha256_unsigned = "9368ba83985a54a99c6543a4551e0d6fa119f62e3c90fbf60b2449f120014815";
              type = "kernel";
            }
          ];
          supported_devices = [
            "fortinet,fg-50e"
          ];
          titles = [
            {
              model = "FortiGate 50E";
              vendor = "Fortinet";
            }
          ];
        };
        fortinet_fg-51e = {
          device_packages = [
            "kmod-hwmon-nct7802"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-fortinet_fg-51e";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-fortinet_fg-51e-squashfs-sysupgrade.bin";
              sha256 = "19f59999a28f4e4a3eee16b02e0c94161ba8bc2d32200fad1ef27daca474d91f";
              sha256_unsigned = "a886c1ece5e7016ac60c98f5381a18f098f426a73cb537dd3c30eee41a9f58ff";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-fortinet_fg-51e-initramfs-kernel.bin";
              sha256 = "86adf4cfeb859a3b937bbd6886a5e2d801e294735961831383ee7d66974fa555";
              sha256_unsigned = "86adf4cfeb859a3b937bbd6886a5e2d801e294735961831383ee7d66974fa555";
              type = "kernel";
            }
          ];
          supported_devices = [
            "fortinet,fg-51e"
          ];
          titles = [
            {
              model = "FortiGate 51E";
              vendor = "Fortinet";
            }
          ];
        };
        fortinet_fg-52e = {
          device_packages = [
            "kmod-hwmon-nct7802"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-fortinet_fg-52e";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-fortinet_fg-52e-squashfs-sysupgrade.bin";
              sha256 = "77bf85e1524f6139ffb3f1b4eb11e468c92ee9f2353729ce8d46c8436aed1a97";
              sha256_unsigned = "0d6fd9adf7679ee94a01b3d4aa4b5c7426122ddec3769d7072a56180e6762343";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-fortinet_fg-52e-initramfs-kernel.bin";
              sha256 = "360006d17c3a636a641cb94abe066cae088890b6efbce340ecf81a87d9b4ed44";
              sha256_unsigned = "360006d17c3a636a641cb94abe066cae088890b6efbce340ecf81a87d9b4ed44";
              type = "kernel";
            }
          ];
          supported_devices = [
            "fortinet,fg-52e"
          ];
          titles = [
            {
              model = "FortiGate 52E";
              vendor = "Fortinet";
            }
          ];
        };
        fortinet_fwf-50e-2r = {
          device_packages = [
            "kmod-hwmon-nct7802"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "wpad-basic-mbedtls"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-fortinet_fwf-50e-2r";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-fortinet_fwf-50e-2r-squashfs-sysupgrade.bin";
              sha256 = "3aa3554efa4159e3a9c8c1cd15f7f3d451a3faca6a45dd3a875a4e4b28552d7c";
              sha256_unsigned = "cdea6a3ba7420ce1b254c41408531f24039f62dcef2cfb06e1865a1c5ea7b560";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-fortinet_fwf-50e-2r-initramfs-kernel.bin";
              sha256 = "b9752081ad4737fd8226cfe6d7db460fdc59ba2f123afc9698833f9ca4877ded";
              sha256_unsigned = "b9752081ad4737fd8226cfe6d7db460fdc59ba2f123afc9698833f9ca4877ded";
              type = "kernel";
            }
          ];
          supported_devices = [
            "fortinet,fwf-50e-2r"
          ];
          titles = [
            {
              model = "FortiWiFi 50E-2R";
              vendor = "Fortinet";
            }
          ];
        };
        fortinet_fwf-51e = {
          device_packages = [
            "kmod-hwmon-nct7802"
            "kmod-ath9k"
            "wpad-basic-mbedtls"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-fortinet_fwf-51e";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-fortinet_fwf-51e-squashfs-sysupgrade.bin";
              sha256 = "ef9c3b2bff4715cbacb8283819cbb39ef85de2f78f8ca43738452b1993029265";
              sha256_unsigned = "bdfe7096c1136dd835034cca19900bfb1a29cf4745b2dbf54377d12115664368";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-fortinet_fwf-51e-initramfs-kernel.bin";
              sha256 = "35f7964cf1154e87c8f2fb8cf82a993e7dd55ece33d404a1087805a95404d813";
              sha256_unsigned = "35f7964cf1154e87c8f2fb8cf82a993e7dd55ece33d404a1087805a95404d813";
              type = "kernel";
            }
          ];
          supported_devices = [
            "fortinet,fwf-51e"
          ];
          titles = [
            {
              model = "FortiWiFi 51E";
              vendor = "Fortinet";
            }
          ];
        };
        globalscale_mirabox = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-globalscale_mirabox";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-globalscale_mirabox-squashfs-sysupgrade.bin";
              sha256 = "ded42bb0e946937ca1e7707d96059dd90dab925c747f375740a530721552d2c7";
              sha256_unsigned = "167825e6340608c20edc747dded5ccb4df5d72fba797f17cf334bc94799c8999";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-globalscale_mirabox-initramfs-kernel.bin";
              sha256 = "eb6bb06c91a6b60cc12e86f88f68dcf23b5969a09787db51729e1c6e5082d15a";
              sha256_unsigned = "eb6bb06c91a6b60cc12e86f88f68dcf23b5969a09787db51729e1c6e5082d15a";
              type = "kernel";
            }
          ];
          supported_devices = [
            "globalscale,mirabox"
            "mirabox"
          ];
          titles = [
            {
              model = "Mirabox";
              vendor = "Globalscale";
            }
          ];
        };
        iij_sa-w2 = {
          device_packages = [
            "kmod-ath9k"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "wpad-basic-mbedtls"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-iij_sa-w2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-iij_sa-w2-squashfs-sysupgrade.bin";
              sha256 = "b5c34bd9dc539b0a52c0a5c320e3474ce0fd2eacb4c558f30cc17f4ebaf067d4";
              sha256_unsigned = "1a970f4adfc23d26d2aca5813a03557c82c3e645b95e77275495497236fc97ed";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-iij_sa-w2-initramfs-kernel.bin";
              sha256 = "89874a4bb5d7091f54d82a94188c3c6f145b5dcd06b05a98daa8952ce77a02a2";
              sha256_unsigned = "89874a4bb5d7091f54d82a94188c3c6f145b5dcd06b05a98daa8952ce77a02a2";
              type = "kernel";
            }
          ];
          supported_devices = [
            "iij,sa-w2"
          ];
          titles = [
            {
              model = "SA-W2";
              vendor = "IIJ";
            }
          ];
        };
        iptime_nas1dual = {
          device_packages = [
            "kmod-hwmon-drivetemp"
            "kmod-hwmon-gpiofan"
            "kmod-usb3"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-iptime_nas1dual";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-iptime_nas1dual-squashfs-sysupgrade.bin";
              sha256 = "a8f6101779e63661857dc9bb2f5c163e86e7122a2b344ad5dd90df6cf5bc59f7";
              sha256_unsigned = "6af916404b192d60e1dfca2fb44262474a04961dca40ecc6063aa646d06d8fda";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-iptime_nas1dual-initramfs-kernel.bin";
              sha256 = "4e12f1ba261a702a93d0602ec380fa98a73130b4dfc23cb7ce08d1cb02a1ce02";
              sha256_unsigned = "4e12f1ba261a702a93d0602ec380fa98a73130b4dfc23cb7ce08d1cb02a1ce02";
              type = "kernel";
            }
          ];
          supported_devices = [
            "iptime,nas1dual"
          ];
          titles = [
            {
              model = "NAS1dual";
              vendor = "ipTIME";
            }
          ];
        };
        kobol_helios4 = {
          device_packages = [
            "mkf2fs"
            "e2fsprogs"
            "partx-utils"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-kobol_helios4";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-kobol_helios4-initramfs-kernel.bin";
              sha256 = "f381cfe675e33101a9bb3a06ce710a7ba9246e1d2431471aa1053bf3ac701db7";
              sha256_unsigned = "f381cfe675e33101a9bb3a06ce710a7ba9246e1d2431471aa1053bf3ac701db7";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-kobol_helios4-squashfs-sdcard.img.gz";
              sha256 = "165f2cc75b717f08e8e329c681620839e7148255a3e1a2cecdbe771e79589e1c";
              sha256_unsigned = "cfbfcb7ea515356e7a8a83aece03cd21fa55ee303f1bfdada3e6c535bc1750be";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "kobol,helios4"
          ];
          titles = [
            {
              model = "Helios4";
              vendor = "Kobol";
            }
          ];
        };
        linksys_wrt1200ac = {
          device_packages = [
            "kmod-mwlwifi"
            "wpad-basic-openssl"
            "mwlwifi-firmware-88w8864"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt1200ac";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt1200ac-squashfs-sysupgrade.bin";
              sha256 = "c26877db000f852cf7d91987bf4cde87cced8e3e19d0c32cd5cd8660aa7728b9";
              sha256_unsigned = "e09e4bfc2e779107f35f5a514034a974e0d8bf6794ae59be8434066fdb43f51d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt1200ac-initramfs-kernel.bin";
              sha256 = "4e16cfb56e3eede5f7521284b187e2a787122b8df02df7a8bd3edf0ce46b108a";
              sha256_unsigned = "4e16cfb56e3eede5f7521284b187e2a787122b8df02df7a8bd3edf0ce46b108a";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt1200ac-squashfs-factory.img";
              sha256 = "32e4a6369682c0e3b459203bf9ba8c4c5aab59a693744403f386895d576b1cd4";
              sha256_unsigned = "32e4a6369682c0e3b459203bf9ba8c4c5aab59a693744403f386895d576b1cd4";
              type = "factory";
            }
          ];
          supported_devices = [
            "linksys,wrt1200ac"
            "armada-385-linksys-caiman"
            "linksys,caiman"
          ];
          titles = [
            {
              model = "WRT1200AC";
              vendor = "Linksys";
            }
            {
              model = "Caiman";
              vendor = "Linksys";
            }
          ];
        };
        linksys_wrt1900ac-v1 = {
          device_packages = [
            "kmod-mwlwifi"
            "wpad-basic-openssl"
            "mwlwifi-firmware-88w8864"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt1900ac-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt1900ac-v1-squashfs-sysupgrade.bin";
              sha256 = "f9796c13b4b1ab961b4d9c7a356a9ce25549d0c4eea853c584d24814ed254d7a";
              sha256_unsigned = "f61e3a017ddcf717987625dbc18cc6494342e38ecf1aa0b6c96b37cc8d8236ca";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt1900ac-v1-initramfs-kernel.bin";
              sha256 = "c27cbb14fd78e5c2d7d2591286a561e7930a583c74dacc9e46f358adad66236c";
              sha256_unsigned = "c27cbb14fd78e5c2d7d2591286a561e7930a583c74dacc9e46f358adad66236c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt1900ac-v1-squashfs-factory.img";
              sha256 = "e865ea51130a8552fd18fd1a4fdebc482e5329889fdfc04a7de5b2e4d4269e6d";
              sha256_unsigned = "e865ea51130a8552fd18fd1a4fdebc482e5329889fdfc04a7de5b2e4d4269e6d";
              type = "factory";
            }
          ];
          supported_devices = [
            "linksys,wrt1900ac-v1"
            "armada-xp-linksys-mamba"
            "linksys,mamba"
          ];
          titles = [
            {
              model = "WRT1900AC";
              variant = "v1";
              vendor = "Linksys";
            }
            {
              model = "Mamba";
              vendor = "Linksys";
            }
          ];
        };
        linksys_wrt1900ac-v2 = {
          device_packages = [
            "kmod-mwlwifi"
            "wpad-basic-openssl"
            "mwlwifi-firmware-88w8864"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt1900ac-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt1900ac-v2-squashfs-sysupgrade.bin";
              sha256 = "c0a6516a2247c3891cd15ad6c1a4a17f0eb3619f62948bd8db8118dd349deb5f";
              sha256_unsigned = "7377a3c5eb3cba874e5c314a4924294ad2b62c0db49d8a6bc7ffb00ce0e3eaa9";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt1900ac-v2-initramfs-kernel.bin";
              sha256 = "b84536418442b4b5a83ad88986575715ee5264ced62f66264b8ab10db79647bc";
              sha256_unsigned = "b84536418442b4b5a83ad88986575715ee5264ced62f66264b8ab10db79647bc";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt1900ac-v2-squashfs-factory.img";
              sha256 = "f3fd7857d1ea710d1259dd70654f5c2456ac0abbcaa5e8850d7e042c6405f414";
              sha256_unsigned = "f3fd7857d1ea710d1259dd70654f5c2456ac0abbcaa5e8850d7e042c6405f414";
              type = "factory";
            }
          ];
          supported_devices = [
            "linksys,wrt1900ac-v2"
            "armada-385-linksys-cobra"
            "linksys,cobra"
          ];
          titles = [
            {
              model = "WRT1900AC";
              variant = "v2";
              vendor = "Linksys";
            }
            {
              model = "Cobra";
              vendor = "Linksys";
            }
          ];
        };
        linksys_wrt1900acs = {
          device_packages = [
            "kmod-mwlwifi"
            "wpad-basic-openssl"
            "mwlwifi-firmware-88w8864"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt1900acs";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt1900acs-squashfs-factory.img";
              sha256 = "38eaba2db1a53cb98f2d0e13167a0be163fd6acaf750caaa6a5e818d890a15aa";
              sha256_unsigned = "38eaba2db1a53cb98f2d0e13167a0be163fd6acaf750caaa6a5e818d890a15aa";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt1900acs-initramfs-kernel.bin";
              sha256 = "3ce91b9d54dd83f8b2f4167d8194dc15a5c275acc51c8bf6bc14da36d5158137";
              sha256_unsigned = "3ce91b9d54dd83f8b2f4167d8194dc15a5c275acc51c8bf6bc14da36d5158137";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt1900acs-squashfs-sysupgrade.bin";
              sha256 = "680f41d53f56c8708f8a8ab1b5404da6f7dd157589b566735d89571b386d4b7e";
              sha256_unsigned = "f42ecb0c496c2fd74279284d5cc1f4f0b409349ed6f95e9d723dbb9019403a09";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "linksys,wrt1900acs"
            "armada-385-linksys-shelby"
            "linksys,shelby"
          ];
          titles = [
            {
              model = "WRT1900ACS";
              variant = "v1";
              vendor = "Linksys";
            }
            {
              model = "WRT1900ACS";
              variant = "v2";
              vendor = "Linksys";
            }
            {
              model = "Shelby";
              vendor = "Linksys";
            }
          ];
        };
        linksys_wrt3200acm = {
          device_packages = [
            "kmod-mwlwifi"
            "wpad-basic-openssl"
            "kmod-btmrvl"
            "kmod-mwifiex-sdio"
            "mwlwifi-firmware-88w8964"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt3200acm";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt3200acm-squashfs-factory.img";
              sha256 = "e5c1737777d15a385279472232f2784b4ce7db5829765de7abc0045a792fd301";
              sha256_unsigned = "e5c1737777d15a385279472232f2784b4ce7db5829765de7abc0045a792fd301";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt3200acm-initramfs-kernel.bin";
              sha256 = "cb9d785c46ba5634daa20603f4a72a4aae04618595eba02881a7d0e125383227";
              sha256_unsigned = "cb9d785c46ba5634daa20603f4a72a4aae04618595eba02881a7d0e125383227";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt3200acm-squashfs-sysupgrade.bin";
              sha256 = "bff62b17cb17bc8cdaf7b1596944af0e2c30b5f4a2c698dcd5d6f30e5eb1ce54";
              sha256_unsigned = "ada080747f3e2251b84be19c2872ca157bd5a620e9c4568c53447acdccf9fa03";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "linksys,wrt3200acm"
            "armada-385-linksys-rango"
            "linksys,rango"
          ];
          titles = [
            {
              model = "WRT3200ACM";
              vendor = "Linksys";
            }
            {
              model = "Rango";
              vendor = "Linksys";
            }
          ];
        };
        linksys_wrt32x = {
          device_packages = [
            "kmod-mwlwifi"
            "wpad-basic-openssl"
            "kmod-btmrvl"
            "kmod-mwifiex-sdio"
            "mwlwifi-firmware-88w8964"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt32x";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt32x-initramfs-kernel.bin";
              sha256 = "f18191f5e3b3ac3b38970464ef47c8e280af370c60413fc227f0a09256659abc";
              sha256_unsigned = "f18191f5e3b3ac3b38970464ef47c8e280af370c60413fc227f0a09256659abc";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt32x-squashfs-factory.img";
              sha256 = "8a88f39e7e3daaa57955a56b4dd4cf68333aaa951ed7371aea5126fa4b02c75f";
              sha256_unsigned = "8a88f39e7e3daaa57955a56b4dd4cf68333aaa951ed7371aea5126fa4b02c75f";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-linksys_wrt32x-squashfs-sysupgrade.bin";
              sha256 = "6075588d62a9f51d8c4c18b9c8da640b2d5cbcc32830499504b852e7335ba0cc";
              sha256_unsigned = "b6f6b6d5287bdfd672235b99e40701d81bf9f7c9bec8eca59d7740675b58fcf8";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "linksys,wrt32x"
            "armada-385-linksys-venom"
            "linksys,venom"
          ];
          titles = [
            {
              model = "WRT32X";
              vendor = "Linksys";
            }
            {
              model = "Venom";
              vendor = "Linksys";
            }
          ];
        };
        marvell_a370-db = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-marvell_a370-db";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-marvell_a370-db-initramfs-kernel.bin";
              sha256 = "8e2e3480bbaf585a385139777b267d483cb28773ef4c152176a7636e578b4162";
              sha256_unsigned = "8e2e3480bbaf585a385139777b267d483cb28773ef4c152176a7636e578b4162";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-marvell_a370-db-squashfs-sysupgrade.bin";
              sha256 = "0b5a0f373341baab05f6cacff9dff2cf1b39f92e8d04289638a6aaf543459356";
              sha256_unsigned = "4a20ea6ebe50f0bf2d870eb6342bce4561617307c1bb07b37843ed754c52b337";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "marvell,a370-db"
            "armada-370-db"
          ];
          titles = [
            {
              model = "Armada 370 Development Board (DB-88F6710-BP-DDR3)";
              vendor = "Marvell";
            }
          ];
        };
        marvell_a370-rd = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-marvell_a370-rd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-marvell_a370-rd-initramfs-kernel.bin";
              sha256 = "c405f76125666f175fcee3eeea961d1d1cabfdbf93bb5b462008c6c1fd6422a0";
              sha256_unsigned = "c405f76125666f175fcee3eeea961d1d1cabfdbf93bb5b462008c6c1fd6422a0";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-marvell_a370-rd-squashfs-sysupgrade.bin";
              sha256 = "5922ff64c717a2a626366645d7874c7227393122bc6a44c5e41107ff4a26b3b6";
              sha256_unsigned = "de855163732950c126d10cbef8da81102accc2751153683168a25e095e88f06d";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "marvell,a370-rd"
            "armada-370-rd"
          ];
          titles = [
            {
              model = "Armada 370 RD (RD-88F6710-A1)";
              vendor = "Marvell";
            }
          ];
        };
        marvell_a385-db-ap = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-marvell_a385-db-ap";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-marvell_a385-db-ap-squashfs-sysupgrade.bin";
              sha256 = "84e45e55266027e5973a16568bc0ddd099d70ead96a373fb9c37fe84b8275259";
              sha256_unsigned = "36eba54043bc7a8c7bcfd6e0398840577365bbf55c8d0370c6609fb3d8df5928";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-marvell_a385-db-ap-squashfs-factory.img";
              sha256 = "211da97af94e9a06f0f96b5fd86390a7174695582c76506d636212bbd6e98e6d";
              sha256_unsigned = "211da97af94e9a06f0f96b5fd86390a7174695582c76506d636212bbd6e98e6d";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-marvell_a385-db-ap-initramfs-kernel.bin";
              sha256 = "7035448436ed6a344c3a7c3f8c923eba3625938aebc78938a139db6e06c786ab";
              sha256_unsigned = "7035448436ed6a344c3a7c3f8c923eba3625938aebc78938a139db6e06c786ab";
              type = "kernel";
            }
          ];
          supported_devices = [
            "marvell,a385-db-ap"
            "armada-385-db-ap"
          ];
          titles = [
            {
              model = "Armada 385 Development Board AP (DB-88F6820-AP)";
              vendor = "Marvell";
            }
          ];
        };
        marvell_a388-rd = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-marvell_a388-rd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-marvell_a388-rd-initramfs-kernel.bin";
              sha256 = "a87610f7d29e45e22f7f767cd87426f211725f69ea56062d2575d2f39dcada63";
              sha256_unsigned = "a87610f7d29e45e22f7f767cd87426f211725f69ea56062d2575d2f39dcada63";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-marvell_a388-rd-squashfs-firmware.bin";
              sha256 = "c67ef26f92a9cf29469f5c9fc7ba4d893685a3ffba1a975b41c0c3585f1e98ee";
              sha256_unsigned = "c67ef26f92a9cf29469f5c9fc7ba4d893685a3ffba1a975b41c0c3585f1e98ee";
              type = "firmware";
            }
          ];
          supported_devices = [
            "armada-388-rd"
            "marvell,a385-rd"
          ];
          titles = [
            {
              model = "Armada 388 RD (RD-88F6820-AP)";
              vendor = "Marvell";
            }
          ];
        };
        marvell_axp-db = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-marvell_axp-db";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-marvell_axp-db-initramfs-kernel.bin";
              sha256 = "4a664cad50ddec7b69c5de06ae078baf2acd694f15f002611c649d1e188b9df5";
              sha256_unsigned = "4a664cad50ddec7b69c5de06ae078baf2acd694f15f002611c649d1e188b9df5";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-marvell_axp-db-squashfs-sysupgrade.bin";
              sha256 = "05799204ec03fbc54ce43699dbac5db60b9ae7d59c2fa6761fac63e6f01cc17a";
              sha256_unsigned = "fca024faa1dc3a21fd8391df83755ae27b7239ae9d3866f003f6ddf330aac003";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "marvell,axp-db"
            "armada-xp-db"
          ];
          titles = [
            {
              model = "Armada XP Development Board (DB-78460-BP)";
              vendor = "Marvell";
            }
          ];
        };
        marvell_axp-gp = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-marvell_axp-gp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-marvell_axp-gp-squashfs-sysupgrade.bin";
              sha256 = "a6bcce482a6d65fd93f7b15bea89969df40a18b3a0ebc735437a33509d35dfcf";
              sha256_unsigned = "1a384895a49f141fd5a83f92bd9756aec29da3acfdd4c7e5375c1daf85d61dce";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-marvell_axp-gp-initramfs-kernel.bin";
              sha256 = "bb2725852c2cee183fd9bbb18a10a64b458710c8ccc6b8a1ccb10b39d85bf6a6";
              sha256_unsigned = "bb2725852c2cee183fd9bbb18a10a64b458710c8ccc6b8a1ccb10b39d85bf6a6";
              type = "kernel";
            }
          ];
          supported_devices = [
            "marvell,axp-gp"
            "armada-xp-gp"
          ];
          titles = [
            {
              model = "Armada Armada XP GP (DB-MV784MP-GP)";
              vendor = "Marvell";
            }
          ];
        };
        plathome_openblocks-ax3-4 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-plathome_openblocks-ax3-4";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-plathome_openblocks-ax3-4-squashfs-sysupgrade.bin";
              sha256 = "36f6f7927ad1a50c619c58b4aae4170b7b38611ea2117fdb74bea531a6447e60";
              sha256_unsigned = "1b8f3df5bd608776f2aa6aba978ba75b15a72dc2e504b5cbc8fe37583077339f";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-plathome_openblocks-ax3-4-initramfs-kernel.bin";
              sha256 = "f2248bcfe48ab0695768ae863f8af02b1ca5436f98e02092c55c63916e072882";
              sha256_unsigned = "f2248bcfe48ab0695768ae863f8af02b1ca5436f98e02092c55c63916e072882";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-plathome_openblocks-ax3-4-squashfs-factory.img";
              sha256 = "10c5dbe86b4d616a56b1b469399f3eae17f5594238235cabf8538fc7eb705487";
              sha256_unsigned = "10c5dbe86b4d616a56b1b469399f3eae17f5594238235cabf8538fc7eb705487";
              type = "factory";
            }
          ];
          supported_devices = [
            "plathome,openblocks-ax3-4"
            "openblocks-ax3-4"
          ];
          titles = [
            {
              model = "OpenBlocks AX3";
              variant = "4 ports";
              vendor = "Plat'Home";
            }
          ];
        };
        solidrun_clearfog-base-a1 = {
          device_packages = [
            "mkf2fs"
            "e2fsprogs"
            "partx-utils"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-solidrun_clearfog-base-a1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-solidrun_clearfog-base-a1-squashfs-sdcard.img.gz";
              sha256 = "780dd90a46c8c3ea99fdccb8030cd0bb645026ea882c460275a823b39255093c";
              sha256_unsigned = "6d3bb4c5c4cdd0aab46131ccda601d7c20284791abd56a59a4224bc6f9fc7130";
              type = "sdcard";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-solidrun_clearfog-base-a1-initramfs-kernel.bin";
              sha256 = "f381cfe675e33101a9bb3a06ce710a7ba9246e1d2431471aa1053bf3ac701db7";
              sha256_unsigned = "f381cfe675e33101a9bb3a06ce710a7ba9246e1d2431471aa1053bf3ac701db7";
              type = "kernel";
            }
          ];
          supported_devices = [
            "solidrun,clearfog-base-a1"
            "armada-388-clearfog-base"
          ];
          titles = [
            {
              model = "ClearFog Base";
              vendor = "SolidRun";
            }
          ];
        };
        solidrun_clearfog-pro-a1 = {
          device_packages = [
            "mkf2fs"
            "e2fsprogs"
            "partx-utils"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-solidrun_clearfog-pro-a1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-solidrun_clearfog-pro-a1-initramfs-kernel.bin";
              sha256 = "f381cfe675e33101a9bb3a06ce710a7ba9246e1d2431471aa1053bf3ac701db7";
              sha256_unsigned = "f381cfe675e33101a9bb3a06ce710a7ba9246e1d2431471aa1053bf3ac701db7";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-solidrun_clearfog-pro-a1-squashfs-sdcard.img.gz";
              sha256 = "af357c9ad774c25d67845ffcfea4af8da8c216122e326ba450beed6f0cabfb7c";
              sha256_unsigned = "fce3d67d595db8d488371a2d7ba176a912fcbca3e6d9a90a004acf043bcc600b";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "solidrun,clearfog-pro-a1"
            "armada-388-clearfog"
            "armada-388-clearfog-pro"
          ];
          titles = [
            {
              model = "ClearFog Pro";
              vendor = "SolidRun";
            }
          ];
        };
        synology_ds213j = {
          device_packages = [
            "kmod-rtc-s35390a"
            "kmod-hwmon-gpiofan"
            "kmod-hwmon-drivetemp"
            "kmod-md-raid0"
            "kmod-md-raid1"
            "kmod-md-mod"
            "e2fsprogs"
            "mdadm"
            "-ppp"
            "-kmod-nft-offload"
            "-dnsmasq"
            "-odhcpd-ipv6only"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-synology_ds213j";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-synology_ds213j-initramfs-kernel.bin";
              sha256 = "5dcbbe137d9e8e0354e51d7d0432a7f4c69cb99b3024d87ca03de7a07d21c61e";
              sha256_unsigned = "5dcbbe137d9e8e0354e51d7d0432a7f4c69cb99b3024d87ca03de7a07d21c61e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "synology,ds213j"
          ];
          titles = [
            {
              model = "DS213j";
              vendor = "Synology";
            }
          ];
        };
        wd_cloud-mirror-gen2 = {
          device_packages = [
            "-uboot-envtools"
            "mkf2fs"
            "e2fsprogs"
            "partx-utils"
            "kmod-hwmon-drivetemp"
            "-ppp"
            "-kmod-nft-offload"
            "-dnsmasq"
            "-odhcpd-ipv6only"
          ];
          image_prefix = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-wd_cloud-mirror-gen2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-wd_cloud-mirror-gen2-squashfs-image-cfs-factory.bin";
              sha256 = "35a8661714b2038f1674f2ceee64b6a88b85a52ee629a72ad3f86f6937877ce6";
              sha256_unsigned = "35a8661714b2038f1674f2ceee64b6a88b85a52ee629a72ad3f86f6937877ce6";
              type = "image-cfs-factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-wd_cloud-mirror-gen2-squashfs-uImage-factory.bin";
              sha256 = "f7cea923bbcab4043d67b78ae87f42b0fb493815051355524dd51059f7c0e215";
              sha256_unsigned = "f7cea923bbcab4043d67b78ae87f42b0fb493815051355524dd51059f7c0e215";
              type = "uImage-factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-wd_cloud-mirror-gen2-squashfs-sysupgrade.bin";
              sha256 = "c430ee87e3c777df21e4279f2ec424dc0baa5ed9925008c2c6bb2440b1c93369";
              sha256_unsigned = "51010751a9cf3d892bdb976044d3db93a0f33d403f5e642698694feb044d54c3";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc4-mvebu-cortexa9-wd_cloud-mirror-gen2-initramfs-kernel.bin";
              sha256 = "8d99c84281ad3be420c9dab9e84d3fb9a6e17782b85901daabaf277a0f532908";
              sha256_unsigned = "8d99c84281ad3be420c9dab9e84d3fb9a6e17782b85901daabaf277a0f532908";
              type = "kernel";
            }
          ];
          supported_devices = [
            "wd,cloud-mirror-gen2"
          ];
          titles = [
            {
              model = "MyCloud Mirror Gen 2 (BWVZ/Grand Teton)";
              vendor = "Western Digital";
            }
          ];
        };
      };
      source_date_epoch = 1737707208;
      target = "mvebu/cortexa9";
      version_code = "r32779-d475f4e4007b";
      version_number = "24.10.0-rc4";
    };
  };
}