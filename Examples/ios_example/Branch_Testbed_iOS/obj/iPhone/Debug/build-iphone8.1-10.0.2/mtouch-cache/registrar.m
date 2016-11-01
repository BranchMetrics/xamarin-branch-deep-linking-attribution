#include "registrar.h"
static void native_to_managed_trampoline_1 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSNotification * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_2 (id self, SEL _cmd, MonoMethod **managed_method_ptr, void * p0, const char *r0, const char *r1, const char *r2)
{
	void * a0 = p0;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &a0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_3 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static UITextView * native_to_managed_trampoline_4 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UITextView * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_5 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextView * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static UILabel * native_to_managed_trampoline_6 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UILabel * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_7 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UILabel * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static UIButton * native_to_managed_trampoline_8 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIButton * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_9 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIButton * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static UITextField * native_to_managed_trampoline_10 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UITextField * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_11 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextField * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_12 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIStoryboardSegue * p0, NSObject * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_13 (id self, SEL _cmd, MonoMethod **managed_method_ptr, BOOL p0, const char *r0, const char *r1, const char *r2)
{
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &p0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static NSInteger native_to_managed_trampoline_14 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSInteger p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSInteger res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static UITableViewCell * native_to_managed_trampoline_15 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSIndexPath * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UITableViewCell * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static UIWindow * native_to_managed_trampoline_16 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIWindow * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_17 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIWindow * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_18 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIApplication * p0, NSURL * p1, NSString * p2, NSObject * p3, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4, const char *r5)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	NSObject *nsobj3 = NULL;
	MonoObject *mobj3 = NULL;
	int32_t created3 = false;
	MonoType *paramtype3 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [4];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[4] = { r0, r1, r2, r3 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r4, r5, 4, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = p2 ? mono_string_new (mono_domain_get (), [p2 UTF8String]) : NULL;
	nsobj3 = (NSObject *) p3;
	if (nsobj3) {
		paramtype3 = xamarin_get_parameter_type (managed_method, 3);
		mobj3 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj3, false, paramtype3, &created3, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj3, _cmd, self, nsobj3, 3, mono_class_from_mono_type (paramtype3), managed_method);
	}
	arg_ptrs [3] = mobj3;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_19 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIApplication * p0, NSUserActivity * p1, id p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;
	if (p2) {
		arg_ptrs [2] = (void *) xamarin_get_delegate_for_block_parameter (managed_method, 2, p2, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	} else {
		arg_ptrs [2] = NULL;
	}

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_20 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIApplication * p0, NSDictionary * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_21 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIApplication * p0, NSDictionary * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static id native_to_managed_trampoline_22 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1, bool* call_super)
{
	uint8_t flags = NSObjectFlagsNativeRef;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	bool has_nsobject = xamarin_has_nsobject (self, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	if (has_nsobject) {
		*call_super = true;
		goto exception_handling;
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (managed_method));
	xamarin_set_nsobject_handle (mthis, self);
	xamarin_set_nsobject_flags (mthis, flags);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);
	xamarin_create_managed_ref (self, mthis, true);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return self;
}


static BOOL native_to_managed_trampoline_23 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextField * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_24 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextField * p0, NSRange p1, NSString * p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = p2 ? mono_string_new (mono_domain_get (), [p2 UTF8String]) : NULL;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_25 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSObject * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, NULL, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}



@protocol CALayerDelegate
@end

@interface Foundation_InternalNSNotificationHandler : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) post:(NSNotification *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation Foundation_InternalNSNotificationHandler { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) post:(NSNotification *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, "Foundation.NSNotification, Xamarin.iOS", "Foundation.InternalNSNotificationHandler, Xamarin.iOS", "Post");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface __MonoMac_NSActionDispatcher : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) xamarinApplySelector;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation __MonoMac_NSActionDispatcher { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Foundation.NSActionDispatcher, Xamarin.iOS", "Apply");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface __MonoMac_NSAsyncActionDispatcher : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) xamarinApplySelector;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation __MonoMac_NSAsyncActionDispatcher { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Foundation.NSAsyncActionDispatcher, Xamarin.iOS", "Apply");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface UIKit_UIControlEventProxy : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) BridgeSelector;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation UIKit_UIControlEventProxy { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) BridgeSelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "UIKit.UIControlEventProxy, Xamarin.iOS", "Activated");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface ErrorViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UITextView * errorTextView;
	@property (nonatomic, assign) UILabel * errorTitleLabel;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UITextView *) errorTextView;
	-(void) setErrorTextView:(UITextView *)p0;
	-(UILabel *) errorTitleLabel;
	-(void) setErrorTitleLabel:(UILabel *)p0;
	-(void) viewDidLoad;
	-(void) didReceiveMemoryWarning;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation ErrorViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UITextView *) errorTextView
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_4 (self, _cmd, &managed_method, "Branch_Testbed_iOS.ErrorViewController, Branch_Testbed_iOS", "get_errorTextView");
	}

	-(void) setErrorTextView:(UITextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, p0, "UIKit.UITextView, Xamarin.iOS", "Branch_Testbed_iOS.ErrorViewController, Branch_Testbed_iOS", "set_errorTextView");
	}

	-(UILabel *) errorTitleLabel
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_6 (self, _cmd, &managed_method, "Branch_Testbed_iOS.ErrorViewController, Branch_Testbed_iOS", "get_errorTitleLabel");
	}

	-(void) setErrorTitleLabel:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_7 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "Branch_Testbed_iOS.ErrorViewController, Branch_Testbed_iOS", "set_errorTitleLabel");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Branch_Testbed_iOS.ErrorViewController, Branch_Testbed_iOS", "ViewDidLoad");
	}

	-(void) didReceiveMemoryWarning
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Branch_Testbed_iOS.ErrorViewController, Branch_Testbed_iOS", "DidReceiveMemoryWarning");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface BranchViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIButton * btnSetUserID;
	@property (nonatomic, assign) UITextField * inputShortLink;
	@property (nonatomic, assign) UILabel * lblRewardPoints;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) btnSetUserID;
	-(void) setBtnSetUserID:(UIButton *)p0;
	-(UITextField *) inputShortLink;
	-(void) setInputShortLink:(UITextField *)p0;
	-(UILabel *) lblRewardPoints;
	-(void) setLblRewardPoints:(UILabel *)p0;
	-(void) viewDidLoad;
	-(void) didReceiveMemoryWarning;
	-(void) CreateBranchLink:(UIButton *)p0;
	-(void) RedeemPoints:(UIButton *)p0;
	-(void) SetUserID:(UIButton *)p0;
	-(void) RefreshRewards:(UIButton *)p0;
	-(void) SendBuyEvent:(UIButton *)p0;
	-(void) SimulateLogout:(UIButton *)p0;
	-(void) SendComplexEvent:(UIButton *)p0;
	-(void) ShareLink:(UIButton *)p0;
	-(void) ShowRewardHistory:(UIButton *)p0;
	-(void) ViewFirstReferringParams:(UIButton *)p0;
	-(void) ViewLatestReferringParams:(UIButton *)p0;
	-(void) SimulateContentAccess:(UIButton *)p0;
	-(void) RegisterForSpotlight:(UIButton *)p0;
	-(void) prepareForSegue:(UIStoryboardSegue *)p0 sender:(NSObject *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation BranchViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) btnSetUserID
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", "get_btnSetUserID");
	}

	-(void) setBtnSetUserID:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", "set_btnSetUserID");
	}

	-(UITextField *) inputShortLink
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_10 (self, _cmd, &managed_method, "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", "get_inputShortLink");
	}

	-(void) setInputShortLink:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", "set_inputShortLink");
	}

	-(UILabel *) lblRewardPoints
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_6 (self, _cmd, &managed_method, "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", "get_lblRewardPoints");
	}

	-(void) setLblRewardPoints:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_7 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", "set_lblRewardPoints");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", "ViewDidLoad");
	}

	-(void) didReceiveMemoryWarning
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", "DidReceiveMemoryWarning");
	}

	-(void) CreateBranchLink:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", "CreateBranchLink");
	}

	-(void) RedeemPoints:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", "RedeemPoints");
	}

	-(void) SetUserID:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", "SetUserID");
	}

	-(void) RefreshRewards:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", "RefreshRewards");
	}

	-(void) SendBuyEvent:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", "SendBuyEvent");
	}

	-(void) SimulateLogout:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", "SimulateLogout");
	}

	-(void) SendComplexEvent:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", "SendComplexEvent");
	}

	-(void) ShareLink:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", "ShareLink");
	}

	-(void) ShowRewardHistory:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", "ShowRewardHistory");
	}

	-(void) ViewFirstReferringParams:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", "ViewFirstReferringParams");
	}

	-(void) ViewLatestReferringParams:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", "ViewLatestReferringParams");
	}

	-(void) SimulateContentAccess:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", "SimulateContentAccess");
	}

	-(void) RegisterForSpotlight:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", "RegisterForSpotlight");
	}

	-(void) prepareForSegue:(UIStoryboardSegue *)p0 sender:(NSObject *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, p1, "UIKit.UIStoryboardSegue, Xamarin.iOS", "Foundation.NSObject, Xamarin.iOS", "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", "PrepareForSegue");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface LogViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UITextView * lblLog;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UITextView *) lblLog;
	-(void) setLblLog:(UITextView *)p0;
	-(void) viewDidLoad;
	-(void) viewWillAppear:(BOOL)p0;
	-(void) didReceiveMemoryWarning;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation LogViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UITextView *) lblLog
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_4 (self, _cmd, &managed_method, "Branch_Testbed_iOS.LogViewController, Branch_Testbed_iOS", "get_lblLog");
	}

	-(void) setLblLog:(UITextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, p0, "UIKit.UITextView, Xamarin.iOS", "Branch_Testbed_iOS.LogViewController, Branch_Testbed_iOS", "set_lblLog");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Branch_Testbed_iOS.LogViewController, Branch_Testbed_iOS", "ViewDidLoad");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "Branch_Testbed_iOS.LogViewController, Branch_Testbed_iOS", "ViewWillAppear");
	}

	-(void) didReceiveMemoryWarning
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Branch_Testbed_iOS.LogViewController, Branch_Testbed_iOS", "DidReceiveMemoryWarning");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface HistoryTableViewController : UITableViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) viewDidLoad;
	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1;
	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1;
	-(void) didReceiveMemoryWarning;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation HistoryTableViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Branch_Testbed_iOS.HistoryTableViewController, Branch_Testbed_iOS", "ViewDidLoad");
	}

	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "System.nint, Xamarin.iOS", "Branch_Testbed_iOS.HistoryTableViewController, Branch_Testbed_iOS", "RowsInSection");
	}

	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_15 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "Branch_Testbed_iOS.HistoryTableViewController, Branch_Testbed_iOS", "GetCell");
	}

	-(void) didReceiveMemoryWarning
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Branch_Testbed_iOS.HistoryTableViewController, Branch_Testbed_iOS", "DidReceiveMemoryWarning");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface AppDelegate : NSObject<UIApplicationDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIWindow *) window;
	-(void) setWindow:(UIWindow *)p0;
	-(BOOL) application:(UIApplication *)p0 openURL:(NSURL *)p1 sourceApplication:(NSString *)p2 annotation:(NSObject *)p3;
	-(BOOL) application:(UIApplication *)p0 continueUserActivity:(NSUserActivity *)p1 restorationHandler:(id)p2;
	-(void) application:(UIApplication *)p0 didReceiveRemoteNotification:(NSDictionary *)p1;
	-(BOOL) application:(UIApplication *)p0 didFinishLaunchingWithOptions:(NSDictionary *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation AppDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIWindow *) window
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_16 (self, _cmd, &managed_method, "Branch_Testbed_iOS.AppDelegate, Branch_Testbed_iOS", "get_Window");
	}

	-(void) setWindow:(UIWindow *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_17 (self, _cmd, &managed_method, p0, "UIKit.UIWindow, Xamarin.iOS", "Branch_Testbed_iOS.AppDelegate, Branch_Testbed_iOS", "set_Window");
	}

	-(BOOL) application:(UIApplication *)p0 openURL:(NSURL *)p1 sourceApplication:(NSString *)p2 annotation:(NSObject *)p3
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_18 (self, _cmd, &managed_method, p0, p1, p2, p3, "UIKit.UIApplication, Xamarin.iOS", "Foundation.NSUrl, Xamarin.iOS", "System.String, mscorlib", "Foundation.NSObject, Xamarin.iOS", "Branch_Testbed_iOS.AppDelegate, Branch_Testbed_iOS", "OpenUrl");
	}

	-(BOOL) application:(UIApplication *)p0 continueUserActivity:(NSUserActivity *)p1 restorationHandler:(id)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_19 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UIApplication, Xamarin.iOS", "Foundation.NSUserActivity, Xamarin.iOS", "UIKit.UIApplicationRestorationHandler, Xamarin.iOS", "Branch_Testbed_iOS.AppDelegate, Branch_Testbed_iOS", "ContinueUserActivity");
	}

	-(void) application:(UIApplication *)p0 didReceiveRemoteNotification:(NSDictionary *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_20 (self, _cmd, &managed_method, p0, p1, "UIKit.UIApplication, Xamarin.iOS", "Foundation.NSDictionary, Xamarin.iOS", "Branch_Testbed_iOS.AppDelegate, Branch_Testbed_iOS", "ReceivedRemoteNotification");
	}

	-(BOOL) application:(UIApplication *)p0 didFinishLaunchingWithOptions:(NSDictionary *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, p1, "UIKit.UIApplication, Xamarin.iOS", "Foundation.NSDictionary, Xamarin.iOS", "Branch_Testbed_iOS.AppDelegate, Branch_Testbed_iOS", "FinishedLaunching");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_22 (self, _cmd, &managed_method, "Branch_Testbed_iOS.AppDelegate, Branch_Testbed_iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface UIKit_UITextField__UITextFieldDelegate : NSObject<UITextFieldDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) textFieldDidEndEditing:(UITextField *)p0;
	-(void) textFieldDidBeginEditing:(UITextField *)p0;
	-(BOOL) textFieldShouldBeginEditing:(UITextField *)p0;
	-(BOOL) textField:(UITextField *)p0 shouldChangeCharactersInRange:(NSRange)p1 replacementString:(NSString *)p2;
	-(BOOL) textFieldShouldClear:(UITextField *)p0;
	-(BOOL) textFieldShouldEndEditing:(UITextField *)p0;
	-(BOOL) textFieldShouldReturn:(UITextField *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation UIKit_UITextField__UITextFieldDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) textFieldDidEndEditing:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "EditingEnded");
	}

	-(void) textFieldDidBeginEditing:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "EditingStarted");
	}

	-(BOOL) textFieldShouldBeginEditing:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "ShouldBeginEditing");
	}

	-(BOOL) textField:(UITextField *)p0 shouldChangeCharactersInRange:(NSRange)p1 replacementString:(NSString *)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UITextField, Xamarin.iOS", "Foundation.NSRange, Xamarin.iOS", "System.String, mscorlib", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "ShouldChangeCharacters");
	}

	-(BOOL) textFieldShouldClear:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "ShouldClear");
	}

	-(BOOL) textFieldShouldEndEditing:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "ShouldEndEditing");
	}

	-(BOOL) textFieldShouldReturn:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "ShouldReturn");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_22 (self, _cmd, &managed_method, "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface __UIGestureRecognizerToken : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation __UIGestureRecognizerToken { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface __UIGestureRecognizerParameterlessToken : __UIGestureRecognizerToken {
}
@end
@implementation __UIGestureRecognizerParameterlessToken { } 
@end

@interface __UIGestureRecognizerParametrizedToken : __UIGestureRecognizerToken {
}
@end
@implementation __UIGestureRecognizerParametrizedToken { } 
@end

@interface __NSObject_Disposer : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	+(void) drain:(NSObject *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation __NSObject_Disposer { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	+(void) drain:(NSObject *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_25 (self, _cmd, &managed_method, p0, "Foundation.NSObject, Xamarin.iOS", "Foundation.NSObject+NSObject_Disposer, Xamarin.iOS", "Drain");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_22 (self, _cmd, &managed_method, "Foundation.NSObject+NSObject_Disposer, Xamarin.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface BNCLinkCache : NSObject {
}
	-(NSString *) objectForKey:(id)p0;
	-(void) setObject:(NSString *)p0 forKey:(id)p1;
	-(id) init;
@end

@interface BNCLinkData : NSObject {
}
	-(void) setupAlias:(NSString *)p0;
	-(void) setupChannel:(NSString *)p0;
	-(void) setupFeature:(NSString *)p0;
	-(void) setupIgnoreUAString:(NSString *)p0;
	-(void) setupMatchDuration:(NSUInteger)p0;
	-(void) setupParams:(NSDictionary *)p0;
	-(void) setupStage:(NSString *)p0;
	-(void) setupTags:(NSArray *)p0;
	-(void) setupType:(NSUInteger)p0;
	-(NSMutableDictionary *) data;
	-(void) setData:(NSMutableDictionary *)p0;
	-(id) init;
@end

@interface BNCPreferenceHelper : NSObject {
}
	-(NSString *) getAPIBaseURL;
	-(NSObject *) getBranchUniversalLinkDomains;
	-(void) clearUserCredits;
	-(void) clearUserCreditsAndCounts;
	-(NSInteger) getCreditCount;
	-(NSDictionary *) getCreditDictionary;
	-(NSInteger) getActionTotalCount:(NSString *)p0;
	-(NSInteger) getActionUniqueCount:(NSString *)p0;
	-(NSString *) getAPIURL:(NSString *)p0;
	-(NSString *) getBranchKey:(BOOL)p0;
	-(NSInteger) getCreditCountForBucket:(NSString *)p0;
	-(void) log:(NSString *)p0 line:(int)p1 message:(NSString *)p2, ...;
	-(void) removeCreditCountForBucket:(NSString *)p0;
	-(void) setActionTotalCount:(NSString *)p0 withCount:(NSInteger)p1;
	-(void) setActionUniqueCount:(NSString *)p0 withCount:(NSInteger)p1;
	-(void) setCreditCount:(NSInteger)p0;
	-(void) setCreditCount:(NSInteger)p0 forBucket:(NSString *)p1;
	-(NSString *) appKey;
	-(void) setAppKey:(NSString *)p0;
	-(NSString *) appVersion;
	-(void) setAppVersion:(NSString *)p0;
	-(NSString *) branchKey;
	-(void) setBranchKey:(NSString *)p0;
	-(NSString *) deviceFingerprintID;
	-(void) setDeviceFingerprintID:(NSString *)p0;
	-(BOOL) explicitlyRequestedReferrable;
	-(void) setExplicitlyRequestedReferrable:(BOOL)p0;
	-(NSString *) externalIntentURI;
	-(void) setExternalIntentURI:(NSString *)p0;
	-(NSString *) identityID;
	-(void) setIdentityID:(NSString *)p0;
	-(NSString *) installParams;
	-(void) setInstallParams:(NSString *)p0;
	-(BOOL) isContinuingUserActivity;
	-(void) setIsContinuingUserActivity:(BOOL)p0;
	-(BOOL) isDebug;
	-(void) setIsDebug:(BOOL)p0;
	-(BOOL) isReferrable;
	-(void) setIsReferrable:(BOOL)p0;
	-(NSString *) lastRunBranchKey;
	-(void) setLastRunBranchKey:(NSString *)p0;
	-(NSDate *) lastStrongMatchDate;
	-(void) setLastStrongMatchDate:(NSDate *)p0;
	-(NSString *) linkClickIdentifier;
	-(void) setLinkClickIdentifier:(NSString *)p0;
	-(NSInteger) retryCount;
	-(void) setRetryCount:(NSInteger)p0;
	-(double) retryInterval;
	-(void) setRetryInterval:(double)p0;
	-(NSString *) sessionID;
	-(void) setSessionID:(NSString *)p0;
	-(NSString *) sessionParams;
	-(void) setSessionParams:(NSString *)p0;
	-(NSString *) spotlightIdentifier;
	-(void) setSpotlightIdentifier:(NSString *)p0;
	-(double) timeout;
	-(void) setTimeout:(double)p0;
	-(NSString *) universalLinkUrl;
	-(void) setUniversalLinkUrl:(NSString *)p0;
	-(NSString *) userIdentity;
	-(void) setUserIdentity:(NSString *)p0;
	-(NSString *) userUrl;
	-(void) setUserUrl:(NSString *)p0;
	-(id) init;
@end

@interface BNCServerInterface : NSObject {
}
	-(void) genericHTTPRequest:(NSURLRequest *)p0 log:(BOOL)p1 callback:(id)p2;
	-(id) genericHTTPRequest:(NSURLRequest *)p0 log:(BOOL)p1;
	-(id) getRequest:(NSDictionary *)p0 url:(NSString *)p1 key:(NSString *)p2;
	-(id) getRequest:(NSDictionary *)p0 url:(NSString *)p1 key:(NSString *)p2 log:(BOOL)p3;
	-(void) getRequest:(NSDictionary *)p0 url:(NSString *)p1 key:(NSString *)p2 callback:(id)p3;
	-(void) getRequest:(NSDictionary *)p0 url:(NSString *)p1 key:(NSString *)p2 log:(BOOL)p3 callback:(id)p4;
	-(id) postRequest:(NSDictionary *)p0 url:(NSString *)p1 key:(NSString *)p2 log:(BOOL)p3;
	-(void) postRequest:(NSDictionary *)p0 url:(NSString *)p1 key:(NSString *)p2 callback:(id)p3;
	-(void) postRequest:(NSDictionary *)p0 url:(NSString *)p1 key:(NSString *)p2 log:(BOOL)p3 callback:(id)p4;
	-(id) preferenceHelper;
	-(void) setPreferenceHelper:(id)p0;
	-(id) init;
@end

@interface BNCServerRequest : NSObject {
}
	-(void) encodeWithCoder:(NSCoder *)p0;
	-(void) makeRequest:(id)p0 key:(NSString *)p1 callback:(id)p2;
	-(void) processResponse:(id)p0 error:(NSError *)p1;
	-(id) init;
	-(id) initWithCoder:(NSCoder *)p0;
@end

@interface BNCServerRequestQueue : NSObject {
}
	-(void) clearQueue;
	-(BOOL) containsClose;
	-(BOOL) containsInstallOrOpen;
	-(id) dequeue;
	-(void) enqueue:(id)p0;
	-(void) insert:(id)p0 at:(unsigned int)p1;
	-(id) moveInstallOrOpenToFront:(NSInteger)p0;
	-(id) peek;
	-(id) peekAt:(unsigned int)p0;
	-(void) persistEventually;
	-(void) persistImmediately;
	-(void) remove:(id)p0;
	-(id) removeAt:(unsigned int)p0;
	-(unsigned int) size;
	-(id) init;
@end

@interface BNCServerResponse : NSObject {
}
	-(NSObject *) data;
	-(void) setData:(NSObject *)p0;
	-(NSNumber *) statusCode;
	-(void) setStatusCode:(NSNumber *)p0;
	-(id) init;
@end

@interface Branch : NSObject {
}
	-(void) accountForFacebookSDKPreventingAppLaunch;
	-(void) applyPromoCode:(NSString *)p0 callback:(id)p1;
	-(void) applyReferralCode:(NSString *)p0 andCallback:(id)p1;
	-(BOOL) continueUserActivity:(NSUserActivity *)p0;
	-(void) createDiscoverableContentWithTitle:(NSString *)p0 description:(NSString *)p1;
	-(void) createDiscoverableContentWithTitle:(NSString *)p0 description:(NSString *)p1 callback:(id)p2;
	-(void) createDiscoverableContentWithTitle:(NSString *)p0 description:(NSString *)p1 publiclyIndexable:(BOOL)p2 callback:(id)p3;
	-(void) createDiscoverableContentWithTitle:(NSString *)p0 description:(NSString *)p1 type:(NSString *)p2 publiclyIndexable:(BOOL)p3 callback:(id)p4;
	-(void) createDiscoverableContentWithTitle:(NSString *)p0 description:(NSString *)p1 thumbnailUrl:(NSURL *)p2 type:(NSString *)p3 publiclyIndexable:(BOOL)p4 callback:(id)p5;
	-(void) createDiscoverableContentWithTitle:(NSString *)p0 description:(NSString *)p1 thumbnailUrl:(NSURL *)p2 type:(NSString *)p3 publiclyIndexable:(BOOL)p4 keywords:(NSSet *)p5 callback:(id)p6;
	-(void) createDiscoverableContentWithTitle:(NSString *)p0 description:(NSString *)p1 thumbnailUrl:(NSURL *)p2 linkParams:(NSDictionary *)p3 publiclyIndexable:(BOOL)p4 keywords:(NSSet *)p5;
	-(void) createDiscoverableContentWithTitle:(NSString *)p0 description:(NSString *)p1 thumbnailUrl:(NSURL *)p2 linkParams:(NSDictionary *)p3 type:(NSString *)p4 publiclyIndexable:(BOOL)p5 keywords:(NSSet *)p6;
	-(void) createDiscoverableContentWithTitle:(NSString *)p0 description:(NSString *)p1 thumbnailUrl:(NSURL *)p2 type:(NSString *)p3 publiclyIndexable:(BOOL)p4 keywords:(NSSet *)p5;
	-(void) createDiscoverableContentWithTitle:(NSString *)p0 description:(NSString *)p1 thumbnailUrl:(NSURL *)p2 linkParams:(NSDictionary *)p3 publiclyIndexable:(BOOL)p4;
	-(void) createDiscoverableContentWithTitle:(NSString *)p0 description:(NSString *)p1 thumbnailUrl:(NSURL *)p2 linkParams:(NSDictionary *)p3 type:(NSString *)p4 publiclyIndexable:(BOOL)p5 keywords:(NSSet *)p6 callback:(id)p7;
	-(void) createDiscoverableContentWithTitle:(NSString *)p0 description:(NSString *)p1 thumbnailUrl:(NSURL *)p2 linkParams:(NSDictionary *)p3 type:(NSString *)p4 publiclyIndexable:(BOOL)p5 keywords:(NSSet *)p6 expirationDate:(NSDate *)p7 callback:(id)p8;
	-(void) createDiscoverableContentWithTitle:(NSString *)p0 description:(NSString *)p1 thumbnailUrl:(NSURL *)p2 linkParams:(NSDictionary *)p3 type:(NSString *)p4 publiclyIndexable:(BOOL)p5 keywords:(NSSet *)p6 expirationDate:(NSDate *)p7 spotlightCallback:(id)p8;
	-(void) disableCookieBasedMatching;
	-(void) executeGenericRequest:(id)p0;
	-(id) getFirstReferringBranchLinkProperties;
	-(id) getFirstReferringBranchUniversalObject;
	-(NSDictionary *) getFirstReferringParams;
	-(NSString *) getContentUrlWithParams:(NSDictionary *)p0 andChannel:(NSString *)p1;
	-(NSString *) getContentUrlWithParams:(NSDictionary *)p0 andTags:(NSArray *)p1 andChannel:(NSString *)p2;
	-(void) getContentUrlWithParams:(NSDictionary *)p0 andChannel:(NSString *)p1 andCallback:(id)p2;
	-(void) getContentUrlWithParams:(NSDictionary *)p0 andTags:(NSArray *)p1 andChannel:(NSString *)p2 andCallback:(id)p3;
	-(void) getCreditHistoryAfter:(NSString *)p0 number:(NSInteger)p1 order:(NSUInteger)p2 andCallback:(id)p3;
	-(void) getCreditHistoryForBucket:(NSString *)p0 andCallback:(id)p1;
	-(void) getCreditHistoryForBucket:(NSString *)p0 after:(NSString *)p1 number:(NSInteger)p2 order:(NSUInteger)p3 andCallback:(id)p4;
	-(void) getCreditHistoryWithCallback:(id)p0;
	-(NSInteger) getCredits;
	-(NSInteger) getCreditsForBucket:(NSString *)p0;
	-(NSString *) getLongURLWithParams:(NSDictionary *)p0;
	-(NSString *) getLongURLWithParams:(NSDictionary *)p0 andFeature:(NSString *)p1;
	-(NSString *) getLongURLWithParams:(NSDictionary *)p0 andFeature:(NSString *)p1 andStage:(NSString *)p2;
	-(NSString *) getLongURLWithParams:(NSDictionary *)p0 andFeature:(NSString *)p1 andStage:(NSString *)p2 andTags:(NSArray *)p3;
	-(NSString *) getLongURLWithParams:(NSDictionary *)p0 andFeature:(NSString *)p1 andStage:(NSString *)p2 andAlias:(NSString *)p3;
	-(NSString *) getLongURLWithParams:(NSDictionary *)p0 andChannel:(NSString *)p1 andTags:(NSArray *)p2 andFeature:(NSString *)p3 andStage:(NSString *)p4 andAlias:(NSString *)p5;
	-(void) getPromoCodeWithAmount:(NSInteger)p0 callback:(id)p1;
	-(void) getPromoCodeWithAmount:(NSInteger)p0 expiration:(NSDate *)p1 callback:(id)p2;
	-(void) getPromoCodeWithCallback:(id)p0;
	-(void) getPromoCodeWithPrefix:(NSString *)p0 amount:(NSInteger)p1 callback:(id)p2;
	-(void) getPromoCodeWithPrefix:(NSString *)p0 amount:(NSInteger)p1 expiration:(NSDate *)p2 callback:(id)p3;
	-(void) getPromoCodeWithPrefix:(NSString *)p0 amount:(NSInteger)p1 expiration:(NSDate *)p2 bucket:(NSString *)p3 usageType:(NSUInteger)p4 rewardLocation:(NSUInteger)p5 callback:(id)p6;
	-(void) getReferralCodeWithAmount:(NSInteger)p0 andCallback:(id)p1;
	-(void) getReferralCodeWithAmount:(NSInteger)p0 expiration:(NSDate *)p1 andCallback:(id)p2;
	-(void) getReferralCodeWithCallback:(id)p0;
	-(void) getReferralCodeWithPrefix:(NSString *)p0 amount:(NSInteger)p1 andCallback:(id)p2;
	-(void) getReferralCodeWithPrefix:(NSString *)p0 amount:(NSInteger)p1 expiration:(NSDate *)p2 andCallback:(id)p3;
	-(void) getReferralCodeWithPrefix:(NSString *)p0 amount:(NSInteger)p1 expiration:(NSDate *)p2 bucket:(NSString *)p3 calculationType:(NSUInteger)p4 location:(NSUInteger)p5 andCallback:(id)p6;
	-(NSString *) getReferralUrlWithParams:(NSDictionary *)p0 andChannel:(NSString *)p1;
	-(NSString *) getReferralUrlWithParams:(NSDictionary *)p0 andTags:(NSArray *)p1 andChannel:(NSString *)p2;
	-(void) getReferralUrlWithParams:(NSDictionary *)p0 andChannel:(NSString *)p1 andCallback:(id)p2;
	-(void) getReferralUrlWithParams:(NSDictionary *)p0 andTags:(NSArray *)p1 andChannel:(NSString *)p2 andCallback:(id)p3;
	-(void) getShortURLWithCallback:(id)p0;
	-(NSString *) getShortUrlWithParams:(NSDictionary *)p0 andTags:(NSArray *)p1 andAlias:(NSString *)p2 andChannel:(NSString *)p3 andFeature:(NSString *)p4 andStage:(NSString *)p5 andMatchDuration:(NSUInteger)p6;
	-(void) getShortUrlWithParams:(NSDictionary *)p0 andTags:(NSArray *)p1 andAlias:(NSString *)p2 andMatchDuration:(NSUInteger)p3 andChannel:(NSString *)p4 andFeature:(NSString *)p5 andStage:(NSString *)p6 andCallback:(id)p7;
	-(NSString *) getShortURLWithParams:(NSDictionary *)p0;
	-(NSString *) getShortURLWithParams:(NSDictionary *)p0 andChannel:(NSString *)p1 andFeature:(NSString *)p2;
	-(NSString *) getShortURLWithParams:(NSDictionary *)p0 andChannel:(NSString *)p1 andFeature:(NSString *)p2 andStage:(NSString *)p3;
	-(NSString *) getShortURLWithParams:(NSDictionary *)p0 andChannel:(NSString *)p1 andFeature:(NSString *)p2 andStage:(NSString *)p3 andAlias:(NSString *)p4;
	-(NSString *) getShortURLWithParams:(NSDictionary *)p0 andChannel:(NSString *)p1 andFeature:(NSString *)p2 andStage:(NSString *)p3 andType:(NSUInteger)p4;
	-(NSString *) getShortURLWithParams:(NSDictionary *)p0 andChannel:(NSString *)p1 andFeature:(NSString *)p2 andStage:(NSString *)p3 andMatchDuration:(NSUInteger)p4;
	-(NSString *) getShortURLWithParams:(NSDictionary *)p0 andTags:(NSArray *)p1 andChannel:(NSString *)p2 andFeature:(NSString *)p3 andStage:(NSString *)p4;
	-(NSString *) getShortURLWithParams:(NSDictionary *)p0 andTags:(NSArray *)p1 andChannel:(NSString *)p2 andFeature:(NSString *)p3 andStage:(NSString *)p4 andAlias:(NSString *)p5;
	-(NSString *) getShortURLWithParams:(NSDictionary *)p0 andTags:(NSArray *)p1 andChannel:(NSString *)p2 andFeature:(NSString *)p3 andStage:(NSString *)p4 andAlias:(NSString *)p5 ignoreUAString:(NSString *)p6;
	-(NSString *) getShortURLWithParams:(NSDictionary *)p0 andTags:(NSArray *)p1 andChannel:(NSString *)p2 andFeature:(NSString *)p3 andStage:(NSString *)p4 andAlias:(NSString *)p5 ignoreUAString:(NSString *)p6 forceLinkCreation:(BOOL)p7;
	-(NSString *) getShortURLWithParams:(NSDictionary *)p0 andTags:(NSArray *)p1 andChannel:(NSString *)p2 andFeature:(NSString *)p3 andStage:(NSString *)p4 andType:(NSUInteger)p5;
	-(NSString *) getShortURLWithParams:(NSDictionary *)p0 andTags:(NSArray *)p1 andChannel:(NSString *)p2 andFeature:(NSString *)p3 andStage:(NSString *)p4 andMatchDuration:(NSUInteger)p5;
	-(void) getShortURLWithParams:(NSDictionary *)p0 andCallback:(id)p1;
	-(void) getShortURLWithParams:(NSDictionary *)p0 andChannel:(NSString *)p1 andFeature:(NSString *)p2 andCallback:(id)p3;
	-(void) getShortURLWithParams:(NSDictionary *)p0 andChannel:(NSString *)p1 andFeature:(NSString *)p2 andStage:(NSString *)p3 andCallback:(id)p4;
	-(void) getShortURLWithParams:(NSDictionary *)p0 andChannel:(NSString *)p1 andFeature:(NSString *)p2 andStage:(NSString *)p3 andAlias:(NSString *)p4 andCallback:(id)p5;
	-(void) getShortURLWithParams:(NSDictionary *)p0 andChannel:(NSString *)p1 andFeature:(NSString *)p2 andStage:(NSString *)p3 andType:(NSUInteger)p4 andCallback:(id)p5;
	-(void) getShortURLWithParams:(NSDictionary *)p0 andChannel:(NSString *)p1 andFeature:(NSString *)p2 andStage:(NSString *)p3 andMatchDuration:(NSUInteger)p4 andCallback:(id)p5;
	-(void) getShortURLWithParams:(NSDictionary *)p0 andTags:(NSArray *)p1 andChannel:(NSString *)p2 andFeature:(NSString *)p3 andStage:(NSString *)p4 andCallback:(id)p5;
	-(void) getShortURLWithParams:(NSDictionary *)p0 andTags:(NSArray *)p1 andChannel:(NSString *)p2 andFeature:(NSString *)p3 andStage:(NSString *)p4 andAlias:(NSString *)p5 andCallback:(id)p6;
	-(void) getShortURLWithParams:(NSDictionary *)p0 andTags:(NSArray *)p1 andChannel:(NSString *)p2 andFeature:(NSString *)p3 andStage:(NSString *)p4 andType:(NSUInteger)p5 andCallback:(id)p6;
	-(void) getShortURLWithParams:(NSDictionary *)p0 andTags:(NSArray *)p1 andChannel:(NSString *)p2 andFeature:(NSString *)p3 andStage:(NSString *)p4 andMatchDuration:(NSUInteger)p5 andCallback:(id)p6;
	-(void) getSpotlightUrlWithParams:(NSDictionary *)p0 callback:(id)p1;
	-(NSInteger) getTotalCountsForAction:(NSString *)p0;
	-(NSInteger) getUniqueCountsForAction:(NSString *)p0;
	-(BOOL) handleDeepLink:(NSURL *)p0;
	-(void) handlePushNotification:(NSDictionary *)p0;
	-(void) initSessionWithLaunchOptions:(NSDictionary *)p0;
	-(void) initSessionWithLaunchOptions:(NSDictionary *)p0 isReferrable:(BOOL)p1;
	-(void) initSessionWithLaunchOptions:(NSDictionary *)p0 andRegisterDeepLinkHandler:(id)p1;
	-(void) initSessionWithLaunchOptions:(NSDictionary *)p0 andRegisterDeepLinkHandlerUsingBranchUniversalObject:(id)p1;
	-(void) initSessionWithLaunchOptions:(NSDictionary *)p0 isReferrable:(BOOL)p1 andRegisterDeepLinkHandler:(id)p2;
	-(void) initSessionWithLaunchOptions:(NSDictionary *)p0 isReferrable:(BOOL)p1 automaticallyDisplayDeepLinkController:(BOOL)p2;
	-(void) initSessionWithLaunchOptions:(NSDictionary *)p0 automaticallyDisplayDeepLinkController:(BOOL)p1 isReferrable:(BOOL)p2 deepLinkHandler:(id)p3;
	-(BOOL) isUserIdentified;
	-(id) getLatestReferringBranchLinkProperties;
	-(id) getLatestReferringBranchUniversalObject;
	-(NSDictionary *) getLatestReferringParams;
	-(void) loadActionCountsWithCallback:(id)p0;
	-(void) loadRewardsWithCallback:(id)p0;
	-(void) logout;
	-(void) logoutWithCallback:(id)p0;
	-(void) redeemRewards:(NSInteger)p0;
	-(void) redeemRewards:(NSInteger)p0 callback:(id)p1;
	-(void) redeemRewards:(NSInteger)p0 forBucket:(NSString *)p1;
	-(void) redeemRewards:(NSInteger)p0 forBucket:(NSString *)p1 callback:(id)p2;
	-(void) registerDeepLinkController:(id)p0 forKey:(NSString *)p1;
	-(void) registerViewWithParams:(NSDictionary *)p0 andCallback:(id)p1;
	-(void) resetUserSession;
	-(void) setDebug;
	-(void) setDeepLinkDebugMode:(NSDictionary *)p0;
	-(void) setIdentity:(NSString *)p0;
	-(void) setIdentity:(NSString *)p0 withCallback:(id)p1;
	-(void) setMaxRetries:(NSInteger)p0;
	-(void) setNetworkTimeout:(double)p0;
	-(void) setRetryInterval:(double)p0;
	-(NSString *) getShortURL;
	-(void) userCompletedAction:(NSString *)p0;
	-(void) userCompletedAction:(NSString *)p0 withState:(NSDictionary *)p1;
	-(void) validatePromoCode:(NSString *)p0 callback:(id)p1;
	-(void) validateReferralCode:(NSString *)p0 andCallback:(id)p1;
	-(id) init;
	-(id) initWithInterface:(id)p0 queue:(id)p1 cache:(id)p2 preferenceHelper:(id)p3 key:(NSString *)p4;
@end

@interface BranchActivityItemProvider : UIActivityItemProvider {
}
	-(id) init;
	-(id) initWithParams:(NSDictionary *)p0 tags:(NSArray *)p1 feature:(NSString *)p2 stage:(NSString *)p3 alias:(NSString *)p4 delegate:(id)p5;
@end

@protocol BranchActivityItemProviderDelegate
	@optional -(NSDictionary *) activityItemParamsForChannel:(NSString *)p0;
	@optional -(NSArray *) activityItemTagsForChannel:(NSString *)p0;
	@optional -(NSString *) activityItemFeatureForChannel:(NSString *)p0;
	@optional -(NSString *) activityItemStageForChannel:(NSString *)p0;
	@optional -(NSString *) activityItemAliasForChannel:(NSString *)p0;
	@optional -(NSString *) activityItemOverrideChannelForChannel:(NSString *)p0;
@end

@protocol BranchDeepLinkingController
	@optional @property (nonatomic, assign) NSObject * deepLinkingCompletionDelegate;
	@required -(void) configureControlWithData:(NSDictionary *)p0;
@end

@protocol BranchDeepLinkingControllerCompletionDelegate
	@required -(void) deepLinkingControllerCompleted;
@end

@interface BranchLinkProperties : NSObject {
}
	-(void) addControlParam:(NSString *)p0 withValue:(NSString *)p1;
	-(NSString *) alias;
	-(void) setAlias:(NSString *)p0;
	-(NSString *) channel;
	-(void) setChannel:(NSString *)p0;
	-(NSDictionary *) controlParams;
	-(void) setControlParams:(NSDictionary *)p0;
	-(NSString *) feature;
	-(void) setFeature:(NSString *)p0;
	-(NSUInteger) matchDuration;
	-(void) setMatchDuration:(NSUInteger)p0;
	-(NSString *) stage;
	-(void) setStage:(NSString *)p0;
	-(NSArray *) tags;
	-(void) setTags:(NSArray *)p0;
	-(id) init;
@end

@interface BranchOpenRequest : BNCServerRequest {
}
	-(id) callback;
	-(void) setCallback:(id)p0;
	-(id) init;
	-(id) initWithCoder:(NSCoder *)p0;
	-(id) initWithCallback:(id)p0;
	-(id) initWithCallback:(id)p0 isInstall:(BOOL)p1;
@end

@interface BranchUniversalObject : NSObject {
}
	-(void) addMetadataKey:(NSString *)p0 value:(NSString *)p1;
	-(UIActivityItemProvider *) getBranchActivityItemWithLinkProperties:(id)p0;
	-(NSString *) getShortUrlWithLinkProperties:(id)p0;
	-(void) getShortUrlWithLinkProperties:(id)p0 andCallback:(id)p1;
	-(NSString *) getShortUrlWithLinkPropertiesAndIgnoreFirstClick:(id)p0;
	-(void) listOnSpotlight;
	-(void) listOnSpotlightWithCallback:(id)p0;
	-(void) listOnSpotlightWithIdentifierCallback:(id)p0;
	-(void) registerView;
	-(void) registerViewWithCallback:(id)p0;
	-(void) showShareSheetWithLinkProperties:(id)p0 andShareText:(NSString *)p1 fromViewController:(UIViewController *)p2 andCallback:(id)p3;
	-(void) showShareSheetWithLinkProperties:(id)p0 andShareText:(NSString *)p1 fromViewController:(UIViewController *)p2 completion:(id)p3;
	-(void) showShareSheetWithLinkProperties:(id)p0 andShareText:(NSString *)p1 fromViewController:(UIViewController *)p2 anchor:(UIBarButtonItem *)p3 completion:(id)p4;
	-(void) showShareSheetWithShareText:(NSString *)p0 andCallback:(id)p1;
	-(void) showShareSheetWithShareText:(NSString *)p0 completion:(id)p1;
	-(NSString *) canonicalIdentifier;
	-(void) setCanonicalIdentifier:(NSString *)p0;
	-(NSString *) canonicalUrl;
	-(void) setCanonicalUrl:(NSString *)p0;
	-(NSString *) contentDescription;
	-(void) setContentDescription:(NSString *)p0;
	-(NSUInteger) contentIndexMode;
	-(void) setContentIndexMode:(NSUInteger)p0;
	-(NSDate *) expirationDate;
	-(void) setExpirationDate:(NSDate *)p0;
	-(NSString *) imageUrl;
	-(void) setImageUrl:(NSString *)p0;
	-(NSArray *) keywords;
	-(void) setKeywords:(NSArray *)p0;
	-(NSDictionary *) metadata;
	-(void) setMetadata:(NSDictionary *)p0;
	-(NSString *) spotlightIdentifier;
	-(void) setSpotlightIdentifier:(NSString *)p0;
	-(NSString *) title;
	-(void) setTitle:(NSString *)p0;
	-(NSString *) type;
	-(void) setType:(NSString *)p0;
	-(id) init;
@end

	static MTClassMap __xamarin_class_map [] = {
		{"NSObject", "Foundation.NSObject, Xamarin.iOS", NULL },
		{"UIResponder", "UIKit.UIResponder, Xamarin.iOS", NULL },
		{"UIViewController", "UIKit.UIViewController, Xamarin.iOS", NULL },
		{"UITableViewController", "UIKit.UITableViewController, Xamarin.iOS", NULL },
		{"UIStoryboardSegue", "UIKit.UIStoryboardSegue, Xamarin.iOS", NULL },
		{"UIFocusAnimationCoordinator", "UIKit.UIFocusAnimationCoordinator, Xamarin.iOS", NULL },
		{"UIView", "UIKit.UIView, Xamarin.iOS", NULL },
		{"UIScrollView", "UIKit.UIScrollView, Xamarin.iOS", NULL },
		{"UITableView", "UIKit.UITableView, Xamarin.iOS", NULL },
		{"UITableViewCell", "UIKit.UITableViewCell, Xamarin.iOS", NULL },
		{"UITextView", "UIKit.UITextView, Xamarin.iOS", NULL },
		{"UITraitCollection", "UIKit.UITraitCollection, Xamarin.iOS", NULL },
		{"UIFocusUpdateContext", "UIKit.UIFocusUpdateContext, Xamarin.iOS", NULL },
		{"NSArray", "Foundation.NSArray, Xamarin.iOS", NULL },
		{"NSIndexPath", "Foundation.NSIndexPath, Xamarin.iOS", NULL },
		{"NSOperation", "Foundation.NSOperation, Xamarin.iOS", NULL },
		{"NSUserActivity", "Foundation.NSUserActivity, Xamarin.iOS", NULL },
		{"NSBundle", "Foundation.NSBundle, Xamarin.iOS", NULL },
		{"NSCoder", "Foundation.NSCoder, Xamarin.iOS", NULL },
		{"NSDate", "Foundation.NSDate, Xamarin.iOS", NULL },
		{"NSJSONSerialization", "Foundation.NSJsonSerialization, Xamarin.iOS", NULL },
		{"Foundation_InternalNSNotificationHandler", "Foundation.InternalNSNotificationHandler, Xamarin.iOS", NULL },
		{"UIImage", "UIKit.UIImage, Xamarin.iOS", NULL },
		{"NSValue", "Foundation.NSValue, Xamarin.iOS", NULL },
		{"NSNumber", "Foundation.NSNumber, Xamarin.iOS", NULL },
		{"NSRunLoop", "Foundation.NSRunLoop, Xamarin.iOS", NULL },
		{"NSURLRequest", "Foundation.NSUrlRequest, Xamarin.iOS", NULL },
		{"NSString", "Foundation.NSString, Xamarin.iOS", NULL },
		{"NSURL", "Foundation.NSUrl, Xamarin.iOS", NULL },
		{"UILabel", "UIKit.UILabel, Xamarin.iOS", NULL },
		{"UILocalNotification", "UIKit.UILocalNotification, Xamarin.iOS", NULL },
		{"CALayer", "CoreAnimation.CALayer, Xamarin.iOS", NULL },
		{"__MonoMac_NSActionDispatcher", "Foundation.NSActionDispatcher, Xamarin.iOS", NULL },
		{"__MonoMac_NSAsyncActionDispatcher", "Foundation.NSAsyncActionDispatcher, Xamarin.iOS", NULL },
		{"NSAutoreleasePool", "Foundation.NSAutoreleasePool, Xamarin.iOS", NULL },
		{"NSError", "Foundation.NSError, Xamarin.iOS", NULL },
		{"UIActivityItemProvider", "UIKit.UIActivityItemProvider, Xamarin.iOS", NULL },
		{"UIActivityViewController", "UIKit.UIActivityViewController, Xamarin.iOS", NULL },
		{"UIApplication", "UIKit.UIApplication, Xamarin.iOS", NULL },
		{"UIPress", "UIKit.UIPress, Xamarin.iOS", NULL },
		{"UIBarItem", "UIKit.UIBarItem, Xamarin.iOS", NULL },
		{"UIBarButtonItem", "UIKit.UIBarButtonItem, Xamarin.iOS", NULL },
		{"UIBezierPath", "UIKit.UIBezierPath, Xamarin.iOS", NULL },
		{"UIControl", "UIKit.UIControl, Xamarin.iOS", NULL },
		{"UIButton", "UIKit.UIButton, Xamarin.iOS", NULL },
		{"UIKit_UIControlEventProxy", "UIKit.UIControlEventProxy, Xamarin.iOS", NULL },
		{"UIDevice", "UIKit.UIDevice, Xamarin.iOS", NULL },
		{"CKShareMetadata", "CloudKit.CKShareMetadata, Xamarin.iOS", NULL },
		{"NSEnumerator", "Foundation.NSEnumerator, Xamarin.iOS", NULL },
		{"NSException", "Foundation.NSException, Xamarin.iOS", NULL },
		{"UIStoryboard", "UIKit.UIStoryboard, Xamarin.iOS", NULL },
		{"UITableViewFocusUpdateContext", "UIKit.UITableViewFocusUpdateContext, Xamarin.iOS", NULL },
		{"UITableViewRowAction", "UIKit.UITableViewRowAction, Xamarin.iOS", NULL },
		{"NSNotification", "Foundation.NSNotification, Xamarin.iOS", NULL },
		{"NSNull", "Foundation.NSNull, Xamarin.iOS", NULL },
		{"UITextPosition", "UIKit.UITextPosition, Xamarin.iOS", NULL },
		{"UITextRange", "UIKit.UITextRange, Xamarin.iOS", NULL },
		{"UITextSelectionRect", "UIKit.UITextSelectionRect, Xamarin.iOS", NULL },
		{"UITouch", "UIKit.UITouch, Xamarin.iOS", NULL },
		{"UIUserNotificationSettings", "UIKit.UIUserNotificationSettings, Xamarin.iOS", NULL },
		{"UIApplicationShortcutItem", "UIKit.UIApplicationShortcutItem, Xamarin.iOS", NULL },
		{"UIWindow", "UIKit.UIWindow, Xamarin.iOS", NULL },
		{"UITextField", "UIKit.UITextField, Xamarin.iOS", NULL },
		{"UIGestureRecognizer", "UIKit.UIGestureRecognizer, Xamarin.iOS", NULL },
		{"NSData", "Foundation.NSData, Xamarin.iOS", NULL },
		{"NSDictionary", "Foundation.NSDictionary, Xamarin.iOS", NULL },
		{"NSNotificationCenter", "Foundation.NSNotificationCenter, Xamarin.iOS", NULL },
		{"NSMutableDictionary", "Foundation.NSMutableDictionary, Xamarin.iOS", NULL },
		{"NSSet", "Foundation.NSSet, Xamarin.iOS", NULL },
		{"ErrorViewController", "Branch_Testbed_iOS.ErrorViewController, Branch_Testbed_iOS", NULL },
		{"BranchViewController", "Branch_Testbed_iOS.BranchViewController, Branch_Testbed_iOS", NULL },
		{"LogViewController", "Branch_Testbed_iOS.LogViewController, Branch_Testbed_iOS", NULL },
		{"HistoryTableViewController", "Branch_Testbed_iOS.HistoryTableViewController, Branch_Testbed_iOS", NULL },
		{"AppDelegate", "Branch_Testbed_iOS.AppDelegate, Branch_Testbed_iOS", NULL },
		{"UIKit_UITextField__UITextFieldDelegate", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", NULL },
		{"__UIGestureRecognizerToken", "UIKit.UIGestureRecognizer+Token, Xamarin.iOS", NULL },
		{"__UIGestureRecognizerParameterlessToken", "UIKit.UIGestureRecognizer+ParameterlessDispatch, Xamarin.iOS", NULL },
		{"__UIGestureRecognizerParametrizedToken", "UIKit.UIGestureRecognizer+ParametrizedDispatch, Xamarin.iOS", NULL },
		{"__NSObject_Disposer", "Foundation.NSObject+NSObject_Disposer, Xamarin.iOS", NULL },
		{"BNCLinkCache", "IOSNativeBranch.BNCLinkCache, Branch-Xamarin-Lib.iOS", NULL },
		{"BNCLinkData", "IOSNativeBranch.BNCLinkData, Branch-Xamarin-Lib.iOS", NULL },
		{"BNCPreferenceHelper", "IOSNativeBranch.BNCPreferenceHelper, Branch-Xamarin-Lib.iOS", NULL },
		{"BNCServerInterface", "IOSNativeBranch.BNCServerInterface, Branch-Xamarin-Lib.iOS", NULL },
		{"BNCServerRequest", "IOSNativeBranch.BNCServerRequest, Branch-Xamarin-Lib.iOS", NULL },
		{"BNCServerRequestQueue", "IOSNativeBranch.BNCServerRequestQueue, Branch-Xamarin-Lib.iOS", NULL },
		{"BNCServerResponse", "IOSNativeBranch.BNCServerResponse, Branch-Xamarin-Lib.iOS", NULL },
		{"Branch", "IOSNativeBranch.Branch, Branch-Xamarin-Lib.iOS", NULL },
		{"BranchActivityItemProvider", "IOSNativeBranch.BranchActivityItemProvider, Branch-Xamarin-Lib.iOS", NULL },
		{"BranchLinkProperties", "IOSNativeBranch.BranchLinkProperties, Branch-Xamarin-Lib.iOS", NULL },
		{"BranchOpenRequest", "IOSNativeBranch.BranchOpenRequest, Branch-Xamarin-Lib.iOS", NULL },
		{"BranchUniversalObject", "IOSNativeBranch.BranchUniversalObject, Branch-Xamarin-Lib.iOS", NULL },
		{ NULL, NULL, NULL },
	};

	static const char *__xamarin_registration_assemblies []= {
		"Branch_Testbed_iOS", 
		"Xamarin.iOS", 
		"mscorlib", 
		"System", 
		"System.Xml", 
		"System.Core", 
		"Mono.Dynamic.Interpreter", 
		"Branch-Xamarin-SDK", 
		"Newtonsoft.Json", 
		"System.Xml.Linq", 
		"System.Runtime.Serialization", 
		"Microsoft.CSharp", 
		"Mono.CSharp", 
		"Branch-Xamarin-SDK.iOS", 
		"Branch-Xamarin-Lib.iOS"
	};

	static struct MTRegistrationMap __xamarin_registration_map = {
		NULL,
		__xamarin_registration_assemblies,
		__xamarin_class_map,
		15,
		91,
		22
	};

void xamarin_create_classes () {
	__xamarin_class_map [0].handle = objc_getClass ("NSObject");
	__xamarin_class_map [1].handle = objc_getClass ("UIResponder");
	__xamarin_class_map [2].handle = objc_getClass ("UIViewController");
	__xamarin_class_map [3].handle = objc_getClass ("UITableViewController");
	__xamarin_class_map [4].handle = objc_getClass ("UIStoryboardSegue");
	__xamarin_class_map [5].handle = objc_getClass ("UIFocusAnimationCoordinator");
	__xamarin_class_map [6].handle = objc_getClass ("UIView");
	__xamarin_class_map [7].handle = objc_getClass ("UIScrollView");
	__xamarin_class_map [8].handle = objc_getClass ("UITableView");
	__xamarin_class_map [9].handle = objc_getClass ("UITableViewCell");
	__xamarin_class_map [10].handle = objc_getClass ("UITextView");
	__xamarin_class_map [11].handle = objc_getClass ("UITraitCollection");
	__xamarin_class_map [12].handle = objc_getClass ("UIFocusUpdateContext");
	__xamarin_class_map [13].handle = objc_getClass ("NSArray");
	__xamarin_class_map [14].handle = objc_getClass ("NSIndexPath");
	__xamarin_class_map [15].handle = objc_getClass ("NSOperation");
	__xamarin_class_map [16].handle = objc_getClass ("NSUserActivity");
	__xamarin_class_map [17].handle = objc_getClass ("NSBundle");
	__xamarin_class_map [18].handle = objc_getClass ("NSCoder");
	__xamarin_class_map [19].handle = objc_getClass ("NSDate");
	__xamarin_class_map [20].handle = objc_getClass ("NSJSONSerialization");
	__xamarin_class_map [21].handle = objc_getClass ("Foundation_InternalNSNotificationHandler");
	__xamarin_class_map [22].handle = objc_getClass ("UIImage");
	__xamarin_class_map [23].handle = objc_getClass ("NSValue");
	__xamarin_class_map [24].handle = objc_getClass ("NSNumber");
	__xamarin_class_map [25].handle = objc_getClass ("NSRunLoop");
	__xamarin_class_map [26].handle = objc_getClass ("NSURLRequest");
	__xamarin_class_map [27].handle = objc_getClass ("NSString");
	__xamarin_class_map [28].handle = objc_getClass ("NSURL");
	__xamarin_class_map [29].handle = objc_getClass ("UILabel");
	__xamarin_class_map [30].handle = objc_getClass ("UILocalNotification");
	__xamarin_class_map [31].handle = objc_getClass ("CALayer");
	__xamarin_class_map [32].handle = objc_getClass ("__MonoMac_NSActionDispatcher");
	__xamarin_class_map [33].handle = objc_getClass ("__MonoMac_NSAsyncActionDispatcher");
	__xamarin_class_map [34].handle = objc_getClass ("NSAutoreleasePool");
	__xamarin_class_map [35].handle = objc_getClass ("NSError");
	__xamarin_class_map [36].handle = objc_getClass ("UIActivityItemProvider");
	__xamarin_class_map [37].handle = objc_getClass ("UIActivityViewController");
	__xamarin_class_map [38].handle = objc_getClass ("UIApplication");
	__xamarin_class_map [39].handle = objc_getClass ("UIPress");
	__xamarin_class_map [40].handle = objc_getClass ("UIBarItem");
	__xamarin_class_map [41].handle = objc_getClass ("UIBarButtonItem");
	__xamarin_class_map [42].handle = objc_getClass ("UIBezierPath");
	__xamarin_class_map [43].handle = objc_getClass ("UIControl");
	__xamarin_class_map [44].handle = objc_getClass ("UIButton");
	__xamarin_class_map [45].handle = objc_getClass ("UIKit_UIControlEventProxy");
	__xamarin_class_map [46].handle = objc_getClass ("UIDevice");
	__xamarin_class_map [47].handle = objc_getClass ("CKShareMetadata");
	__xamarin_class_map [48].handle = objc_getClass ("NSEnumerator");
	__xamarin_class_map [49].handle = objc_getClass ("NSException");
	__xamarin_class_map [50].handle = objc_getClass ("UIStoryboard");
	__xamarin_class_map [51].handle = objc_getClass ("UITableViewFocusUpdateContext");
	__xamarin_class_map [52].handle = objc_getClass ("UITableViewRowAction");
	__xamarin_class_map [53].handle = objc_getClass ("NSNotification");
	__xamarin_class_map [54].handle = objc_getClass ("NSNull");
	__xamarin_class_map [55].handle = objc_getClass ("UITextPosition");
	__xamarin_class_map [56].handle = objc_getClass ("UITextRange");
	__xamarin_class_map [57].handle = objc_getClass ("UITextSelectionRect");
	__xamarin_class_map [58].handle = objc_getClass ("UITouch");
	__xamarin_class_map [59].handle = objc_getClass ("UIUserNotificationSettings");
	__xamarin_class_map [60].handle = objc_getClass ("UIApplicationShortcutItem");
	__xamarin_class_map [61].handle = objc_getClass ("UIWindow");
	__xamarin_class_map [62].handle = objc_getClass ("UITextField");
	__xamarin_class_map [63].handle = objc_getClass ("UIGestureRecognizer");
	__xamarin_class_map [64].handle = objc_getClass ("NSData");
	__xamarin_class_map [65].handle = objc_getClass ("NSDictionary");
	__xamarin_class_map [66].handle = objc_getClass ("NSNotificationCenter");
	__xamarin_class_map [67].handle = objc_getClass ("NSMutableDictionary");
	__xamarin_class_map [68].handle = objc_getClass ("NSSet");
	__xamarin_class_map [69].handle = [ErrorViewController class];
	__xamarin_class_map [70].handle = [BranchViewController class];
	__xamarin_class_map [71].handle = [LogViewController class];
	__xamarin_class_map [72].handle = [HistoryTableViewController class];
	__xamarin_class_map [73].handle = [AppDelegate class];
	__xamarin_class_map [74].handle = objc_getClass ("UIKit_UITextField__UITextFieldDelegate");
	__xamarin_class_map [75].handle = objc_getClass ("__UIGestureRecognizerToken");
	__xamarin_class_map [76].handle = objc_getClass ("__UIGestureRecognizerParameterlessToken");
	__xamarin_class_map [77].handle = objc_getClass ("__UIGestureRecognizerParametrizedToken");
	__xamarin_class_map [78].handle = objc_getClass ("__NSObject_Disposer");
	__xamarin_class_map [79].handle = [BNCLinkCache class];
	__xamarin_class_map [80].handle = [BNCLinkData class];
	__xamarin_class_map [81].handle = [BNCPreferenceHelper class];
	__xamarin_class_map [82].handle = [BNCServerInterface class];
	__xamarin_class_map [83].handle = [BNCServerRequest class];
	__xamarin_class_map [84].handle = [BNCServerRequestQueue class];
	__xamarin_class_map [85].handle = [BNCServerResponse class];
	__xamarin_class_map [86].handle = [Branch class];
	__xamarin_class_map [87].handle = [BranchActivityItemProvider class];
	__xamarin_class_map [88].handle = [BranchLinkProperties class];
	__xamarin_class_map [89].handle = [BranchOpenRequest class];
	__xamarin_class_map [90].handle = [BranchUniversalObject class];
	xamarin_add_registration_map (&__xamarin_registration_map);
}


