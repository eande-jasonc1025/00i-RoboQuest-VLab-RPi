#include <linux/build-salt.h>
#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

BUILD_SALT;

MODULE_INFO(vermagic, VERMAGIC_STRING);
MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__section(.gnu.linkonce.this_module) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

#ifdef CONFIG_RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif

static const struct modversion_info ____versions[]
__used __section(__versions) = {
	{ 0xdad1276d, "module_layout" },
	{ 0x74ed8c25, "param_ops_uint" },
	{ 0xc0b3f1bf, "platform_driver_unregister" },
	{ 0xa12bfd8a, "driver_unregister" },
	{ 0x7bfbd2f0, "__platform_driver_register" },
	{ 0x1490f3a5, "__spi_register_driver" },
	{ 0x8e865d3c, "arm_delay_ops" },
	{ 0xc5850110, "printk" },
	{ 0xfece0e44, "fbtft_probe_common" },
	{ 0x950e7b8b, "fbtft_remove_common" },
	{ 0xb1ad28e0, "__gnu_mcount_nc" },
};

MODULE_INFO(depends, "fbtft");

MODULE_ALIAS("of:N*T*Csitronix,st7789v");
MODULE_ALIAS("of:N*T*Csitronix,st7789vC*");

MODULE_INFO(srcversion, "A93A2D5CA9206FEE15D800B");
