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
	{ 0x3c0bac70, "drm_gem_cma_dumb_create" },
	{ 0x637e2cdd, "drm_gem_prime_mmap" },
	{ 0x45aae6be, "drm_gem_cma_prime_import_sg_table_vmap" },
	{ 0x3829b4fe, "drm_gem_prime_fd_to_handle" },
	{ 0xea318498, "drm_gem_prime_handle_to_fd" },
	{ 0xe41687d2, "drm_cma_gem_create_object_default_funcs" },
	{ 0xbda3ec39, "mipi_dbi_debugfs_init" },
	{ 0xbf1bce5d, "mipi_dbi_release" },
	{ 0x3e51fd3b, "drm_release" },
	{ 0xf17e488d, "drm_open" },
	{ 0xed52ccc4, "drm_gem_cma_mmap" },
	{ 0x3e8c4459, "drm_ioctl" },
	{ 0x5028f50b, "drm_poll" },
	{ 0x55bd4ba6, "drm_read" },
	{ 0x604faeb0, "noop_llseek" },
	{ 0xab7aaab6, "drm_gem_fb_simple_display_pipe_prepare_fb" },
	{ 0x7c3ed37c, "mipi_dbi_pipe_disable" },
	{ 0xa12bfd8a, "driver_unregister" },
	{ 0x1490f3a5, "__spi_register_driver" },
	{ 0x7509c474, "drm_fbdev_generic_setup" },
	{ 0x20455344, "drm_dev_register" },
	{ 0x9d86edd4, "drm_mode_config_reset" },
	{ 0xf0ceda5c, "mipi_dbi_dev_init" },
	{ 0xc9e7009e, "mipi_dbi_spi_init" },
	{ 0x7cc46614, "device_property_read_u32_array" },
	{ 0x3916cf5, "drm_dev_printk" },
	{ 0x37a0cba, "kfree" },
	{ 0x624782fb, "devm_of_find_backlight" },
	{ 0xc92c5b01, "devm_regulator_get" },
	{ 0xad98a425, "devm_gpiod_get_optional" },
	{ 0x3ca915be, "drm_mode_config_init" },
	{ 0x90a5ce2f, "devm_drm_dev_init" },
	{ 0xd256e620, "kmem_cache_alloc_trace" },
	{ 0xa307fb1a, "kmalloc_caches" },
	{ 0x4f1dd937, "mipi_dbi_enable_flush" },
	{ 0xf9a482f9, "msleep" },
	{ 0x3a4d904e, "mipi_dbi_poweron_conditional_reset" },
	{ 0xdecd0b29, "__stack_chk_fail" },
	{ 0xad7707bd, "_dev_err" },
	{ 0xe8a034df, "drm_dev_exit" },
	{ 0x9bacea6c, "mipi_dbi_command_buf" },
	{ 0x4e444ad6, "mipi_dbi_command_stackbuf" },
	{ 0xbdcef3e5, "mipi_dbi_buf_copy" },
	{ 0x34a4640a, "drm_dbg" },
	{ 0xf6bc600d, "drm_dev_enter" },
	{ 0x85411116, "drm_fb_cma_get_gem_obj" },
	{ 0xd697e69a, "trace_hardirqs_on" },
	{ 0xa771b49f, "drm_crtc_send_vblank_event" },
	{ 0x2da81bff, "_raw_spin_lock_irq" },
	{ 0x8dccedb3, "drm_atomic_helper_damage_merged" },
	{ 0x8f678b07, "__stack_chk_guard" },
	{ 0x8ccbdb7d, "drm_dev_unplug" },
	{ 0x38075d14, "drm_atomic_helper_shutdown" },
	{ 0xb1ad28e0, "__gnu_mcount_nc" },
};

MODULE_INFO(depends, "drm,drm_mipi_dbi,drm_kms_helper,backlight");

MODULE_ALIAS("spi:st7789vada");
MODULE_ALIAS("of:N*T*Cmulti-inno,mi0283qt");
MODULE_ALIAS("of:N*T*Cmulti-inno,mi0283qtC*");

MODULE_INFO(srcversion, "B2CF3F92AB2993ED5D7212E");
