	.file	"lab1_omp.cpp"
 # GNU C++17 (GCC) version 13.1.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 14.0.0 20230423 (experimental), GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version none
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -march=alderlake -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -mno-sse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512er -mno-avx512pf -mno-avx512vbmi -mno-avx512ifma -mno-avx5124vnniw -mno-avx5124fmaps -mno-avx512vpopcntdq -mno-avx512vbmi2 -mgfni -mvpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mno-clzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mmovdir64b -mmovdiri -mno-mwaitx -mno-pconfig -mno-pku -mno-prefetchwt1 -mprfchw -mptwrite -mrdpid -mrdrnd -mrdseed -mno-rtm -mserialize -mno-sgx -msha -mshstk -mno-tbm -mno-tsxldtrk -mvaes -mwaitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mhreset -mno-kl -mno-widekl -mavxvnni -mno-avx512fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex --param=l1-cache-size=48 --param=l1-cache-line-size=64 --param=l2-cache-size=12288 -mtune=alderlake -mthreads -O3 -fopenmp
	.text
	.p2align 4
	.def	_Z16transpose_matrixRSt6vectorIS_IdSaIdEESaIS1_EE._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z16transpose_matrixRSt6vectorIS_IdSaIdEESaIS1_EE._omp_fn.0
_Z16transpose_matrixRSt6vectorIS_IdSaIdEESaIS1_EE._omp_fn.0:
.LFB3473:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rdi	 #
	.seh_pushreg	%rdi
	pushq	%rsi	 #
	.seh_pushreg	%rsi
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$40, %rsp	 #,
	.seh_stackalloc	40
	.seh_endprologue
 # lab1_omp.cpp:10:     #pragma omp parallel for
	movq	%rcx, %rbx	 # tmp141, .omp_data_i
	call	omp_get_num_threads	 #
	movl	%eax, %esi	 # tmp142, _8
	call	omp_get_thread_num	 #
	xorl	%edx, %edx	 # tt.4_2
	movl	%eax, %ecx	 # tmp143, _9
	movl	$10000, %eax	 #, q.3_1
	idivl	%esi	 # _8
	cmpl	%edx, %ecx	 # tt.4_2, _9
	jl	.L2	 #,
.L8:
	imull	%eax, %ecx	 # q.3_1, tmp124
	addl	%ecx, %edx	 # tmp124, j
	leal	(%rax,%rdx), %esi	 #, _15
	cmpl	%esi, %edx	 # _15, j
	jge	.L11	 #,
 # lab1_omp.cpp:13:             double temp = A[i][j];
	movq	(%rbx), %rdi	 # *.omp_data_i_19(D).A, _20
	movslq	%edx, %rbx	 # j, ivtmp.215
	movl	$9999, %ebp	 #, tmp140
	leaq	(%rbx,%rbx,2), %r9	 #, tmp127
	salq	$3, %r9	 #, ivtmp.211
	.p2align 4,,10
	.p2align 3
.L5:
 # lab1_omp.cpp:12:         for (int j = i + 1; j < N; ++j) {
	addl	$1, %edx	 #, j
 # lab1_omp.cpp:12:         for (int j = i + 1; j < N; ++j) {
	cmpl	$9999, %edx	 #, j
	jg	.L13	 #,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	(%rdi), %r8	 # *_20.D.62984._M_impl.D.62291._M_start, _35
	movslq	%edx, %rax	 # j, j
	leaq	0(,%rbx,8), %r11	 #, _39
	movq	(%r8,%r9), %r10	 # MEM[(struct vector *)_37].D.64028._M_impl.D.63367._M_start, _32
	leaq	(%r10,%rax,8), %rcx	 #, ivtmp.200
	leaq	24(%r9), %rax	 #, ivtmp.211
	movl	%ebp, %r9d	 # tmp140, tmp134
	subl	%edx, %r9d	 # j, tmp134
	addq	%rax, %r8	 # ivtmp.211, ivtmp.201
	addq	%rbx, %r9	 # ivtmp.215, tmp135
	leaq	16(%r10,%r9,8), %r10	 #, _50
	.p2align 4,,10
	.p2align 3
.L6:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	(%r8), %r9	 # MEM[(double * *)_59], _29
 # lab1_omp.cpp:13:             double temp = A[i][j];
	vmovsd	(%rcx), %xmm0	 # MEM[(value_type &)_61], temp
 # lab1_omp.cpp:12:         for (int j = i + 1; j < N; ++j) {
	addq	$8, %rcx	 #, ivtmp.200
	addq	$24, %r8	 #, ivtmp.201
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	addq	%r11, %r9	 # _39, _29
 # lab1_omp.cpp:14:             A[i][j] = A[j][i];
	vmovsd	(%r9), %xmm1	 # *_29, _23
 # lab1_omp.cpp:14:             A[i][j] = A[j][i];
	vmovsd	%xmm1, -8(%rcx)	 # _23, MEM[(value_type &)_61]
 # lab1_omp.cpp:12:         for (int j = i + 1; j < N; ++j) {
	cmpq	%rcx, %r10	 # ivtmp.200, _50
 # lab1_omp.cpp:15:             A[j][i] = temp;
	vmovsd	%xmm0, (%r9)	 # temp, *_29
 # lab1_omp.cpp:12:         for (int j = i + 1; j < N; ++j) {
	jne	.L6	 #,
	addq	$1, %rbx	 #, ivtmp.215
	cmpl	%edx, %esi	 # j, _15
	movq	%rax, %r9	 # ivtmp.211, ivtmp.211
	jne	.L5	 #,
.L11:
 # lab1_omp.cpp:10:     #pragma omp parallel for
	addq	$40, %rsp	 #,
	popq	%rbx	 #
	popq	%rsi	 #
	popq	%rdi	 #
	popq	%rbp	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L13:
	leaq	24(%r9), %rax	 #, ivtmp.211
	addq	$1, %rbx	 #, ivtmp.215
	cmpl	%edx, %esi	 # j, _15
	movq	%rax, %r9	 # ivtmp.211, ivtmp.211
	jne	.L5	 #,
	jmp	.L11	 #
.L2:
	addl	$1, %eax	 #, q.3_1
	xorl	%edx, %edx	 # tt.4_2
	jmp	.L8	 #
	.seh_endproc
	.p2align 4
	.globl	_Z16transpose_matrixRSt6vectorIS_IdSaIdEESaIS1_EE
	.def	_Z16transpose_matrixRSt6vectorIS_IdSaIdEESaIS1_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z16transpose_matrixRSt6vectorIS_IdSaIdEESaIS1_EE
_Z16transpose_matrixRSt6vectorIS_IdSaIdEESaIS1_EE:
.LFB2727:
	subq	$56, %rsp	 #,
	.seh_stackalloc	56
	.seh_endprologue
	xorl	%r9d, %r9d	 #
	xorl	%r8d, %r8d	 #
 # lab1_omp.cpp:10:     #pragma omp parallel for
	movq	%rcx, 40(%rsp)	 # tmp85, .omp_data_o.2.A
	leaq	40(%rsp), %rdx	 #, tmp83
	leaq	_Z16transpose_matrixRSt6vectorIS_IdSaIdEESaIS1_EE._omp_fn.0(%rip), %rcx	 #, tmp84
	call	GOMP_parallel	 #
	nop	
 # lab1_omp.cpp:18: }
	addq	$56, %rsp	 #,
	ret	
	.seh_endproc
	.section	.text$_ZNSt6vectorIdSaIdEED1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt6vectorIdSaIdEED1Ev
	.def	_ZNSt6vectorIdSaIdEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIdSaIdEED1Ev
_ZNSt6vectorIdSaIdEED1Ev:
.LFB3027:
	.seh_endprologue
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	(%rcx), %rax	 # MEM[(struct _Vector_base *)this_3(D)]._M_impl.D.63367._M_start, _7
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:386: 	if (__p)
	testq	%rax, %rax	 # _7
	je	.L17	 #,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	16(%rcx), %rdx	 # MEM[(struct _Vector_base *)this_3(D)]._M_impl.D.63367._M_end_of_storage, MEM[(struct _Vector_base *)this_3(D)]._M_impl.D.63367._M_end_of_storage
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%rax, %rcx	 # _7,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	subq	%rax, %rdx	 # _7, tmp87
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:733:       }
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	jmp	_ZdlPvy	 #
	.p2align 4,,10
	.p2align 3
.L17:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:733:       }
	ret	
	.seh_endproc
	.section	.text$_ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev
	.def	_ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev
_ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev:
.LFB3039:
	pushq	%rdi	 #
	.seh_pushreg	%rdi
	pushq	%rsi	 #
	.seh_pushreg	%rsi
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:730: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	8(%rcx), %rsi	 # this_3(D)->D.62984._M_impl.D.62291._M_finish, _1
	movq	(%rcx), %rbx	 # this_3(D)->D.62984._M_impl.D.62291._M_start, __first
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	cmpq	%rbx, %rsi	 # __first, _1
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:728:       ~vector() _GLIBCXX_NOEXCEPT
	movq	%rcx, %rdi	 # tmp96, this
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	je	.L19	 #,
	.p2align 4,,10
	.p2align 3
.L23:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	(%rbx), %rcx	 # MEM[(double * *)__first_10], _20
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:386: 	if (__p)
	testq	%rcx, %rcx	 # _20
	je	.L20	 #,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	16(%rbx), %rdx	 # MEM[(double * *)__first_10 + 16B], tmp92
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	addq	$24, %rbx	 #, __first
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	subq	%rcx, %rdx	 # _20, tmp92
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	cmpq	%rbx, %rsi	 # __first, _1
	jne	.L23	 #,
.L22:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	(%rdi), %rbx	 # MEM[(struct _Vector_base *)this_3(D)]._M_impl.D.62291._M_start, __first
.L19:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:386: 	if (__p)
	testq	%rbx, %rbx	 # __first
	je	.L25	 #,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	16(%rdi), %rdx	 # MEM[(struct _Vector_base *)this_3(D)]._M_impl.D.62291._M_end_of_storage, MEM[(struct _Vector_base *)this_3(D)]._M_impl.D.62291._M_end_of_storage
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	%rbx, %rcx	 # __first,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	subq	%rbx, %rdx	 # __first, tmp94
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:733:       }
	addq	$32, %rsp	 #,
	popq	%rbx	 #
	popq	%rsi	 #
	popq	%rdi	 #
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	jmp	_ZdlPvy	 #
	.p2align 4,,10
	.p2align 3
.L20:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	addq	$24, %rbx	 #, __first
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	cmpq	%rbx, %rsi	 # __first, _1
	jne	.L23	 #,
	jmp	.L22	 #
	.p2align 4,,10
	.p2align 3
.L25:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:733:       }
	addq	$32, %rsp	 #,
	popq	%rbx	 #
	popq	%rsi	 #
	popq	%rdi	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt18__do_uninit_fill_nIPSt6vectorIdSaIdEEyS2_ET_S4_T0_RKT1_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZSt18__do_uninit_fill_nIPSt6vectorIdSaIdEEyS2_ET_S4_T0_RKT1_
	.def	_ZSt18__do_uninit_fill_nIPSt6vectorIdSaIdEEyS2_ET_S4_T0_RKT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18__do_uninit_fill_nIPSt6vectorIdSaIdEEyS2_ET_S4_T0_RKT1_
_ZSt18__do_uninit_fill_nIPSt6vectorIdSaIdEEyS2_ET_S4_T0_RKT1_:
.LFB3434:
	pushq	%r14	 #
	.seh_pushreg	%r14
	pushq	%r13	 #
	.seh_pushreg	%r13
	pushq	%r12	 #
	.seh_pushreg	%r12
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rdi	 #
	.seh_pushreg	%rdi
	pushq	%rsi	 #
	.seh_pushreg	%rsi
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	vmovaps	%xmm6, 32(%rsp)	 #,
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_uninitialized.h:266: 	  for (; __n > 0; --__n, (void) ++__cur)
	testq	%rdx, %rdx	 # __n
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_uninitialized.h:261:     __do_uninit_fill_n(_ForwardIterator __first, _Size __n, const _Tp& __x)
	movq	%rcx, %r12	 # tmp114, __first
	movq	%rdx, %rbp	 # tmp115, __n
	movq	%r8, %rdi	 # tmp116, __x
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_uninitialized.h:266: 	  for (; __n > 0; --__n, (void) ++__cur)
	je	.L40	 #,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:988:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movq	(%r8), %r14	 # *__x_10(D).D.64028._M_impl.D.63367._M_start, prephitmp_25
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_uninitialized.h:263:       _ForwardIterator __cur = __first;
	movq	%rcx, %rsi	 # __first, <retval>
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vpxor	%xmm6, %xmm6, %xmm6	 # tmp102
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/new_allocator.h:130: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movabsq	$9223372036854775800, %r13	 #, tmp113
	jmp	.L35	 #
	.p2align 4,,10
	.p2align 3
.L46:
	cmpq	%rbx, %r13	 # _24, tmp113
	jb	.L45	 #,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rbx, %rcx	 # _24,
.LEHB0:
	call	_Znwy	 #
	movq	%rax, %rcx	 # tmp117, iftmp.7_40
.L28:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:395: 	this->_M_impl._M_start = this->_M_allocate(__n);
	vmovq	%rcx, %xmm1	 # iftmp.7_40, iftmp.7_40
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	addq	%rcx, %rbx	 # iftmp.7_40, tmp106
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:395: 	this->_M_impl._M_start = this->_M_allocate(__n);
	vpunpcklqdq	%xmm1, %xmm1, %xmm0	 # iftmp.7_40, tmp105
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	%rbx, 16(%rsi)	 # tmp106, MEM[(double * *)__cur_45 + 16B]
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:395: 	this->_M_impl._M_start = this->_M_allocate(__n);
	vmovdqu	%xmm0, (%rsi)	 # tmp105, MEM <vector(2) long long unsigned int> [(double * *)__cur_45]
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_iterator.h:1077:       : _M_current(__i) { }
	movq	(%rdi), %r14	 # MEM[(const double * const &)__x_10(D)], prephitmp_25
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_algobase.h:435: 	  const ptrdiff_t _Num = __last - __first;
	movq	8(%rdi), %rbx	 # MEM[(const double * const &)__x_10(D) + 8], _30
	subq	%r14, %rbx	 # prephitmp_25, _30
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_algobase.h:436: 	  if (__builtin_expect(_Num > 1, true))
	cmpq	$8, %rbx	 #, _30
	jle	.L31	 #,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_algobase.h:437: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	movq	%rbx, %r8	 # _30,
	movq	%r14, %rdx	 # prephitmp_25,
	call	memmove	 #
	movq	%rax, %rcx	 #, iftmp.7_40
.L32:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_algobase.h:441: 	  return __result + _Num;
	addq	%rbx, %rcx	 # _30, tmp108
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_uninitialized.h:266: 	  for (; __n > 0; --__n, (void) ++__cur)
	addq	$24, %rsi	 #, <retval>
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_algobase.h:441: 	  return __result + _Num;
	movq	%rcx, -16(%rsi)	 # tmp108, MEM[(double * *)__cur_45 + 8B]
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_uninitialized.h:266: 	  for (; __n > 0; --__n, (void) ++__cur)
	subq	$1, %rbp	 #, __n
	je	.L26	 #,
.L35:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:988:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movq	8(%rdi), %rbx	 # *__x_10(D).D.64028._M_impl.D.63367._M_finish, *__x_10(D).D.64028._M_impl.D.63367._M_finish
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, 16(%rsi)	 #, MEM[(double * *)__cur_45 + 16B]
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	%xmm6, (%rsi)	 # tmp102, MEM <vector(2) long long unsigned int> [(double * *)__cur_45]
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:378: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	subq	%r14, %rbx	 # prephitmp_25, _24
	jne	.L46	 #,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:378: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	xorl	%ecx, %ecx	 # iftmp.7_40
	jmp	.L28	 #
	.p2align 4,,10
	.p2align 3
.L40:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_uninitialized.h:263:       _ForwardIterator __cur = __first;
	movq	%rcx, %rsi	 # __first, <retval>
.L26:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_uninitialized.h:275:     }
	vmovaps	32(%rsp), %xmm6	 #,
	movq	%rsi, %rax	 # <retval>,
	addq	$48, %rsp	 #,
	popq	%rbx	 #
	popq	%rsi	 #
	popq	%rdi	 #
	popq	%rbp	 #
	popq	%r12	 #
	popq	%r13	 #
	popq	%r14	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L31:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_algobase.h:438: 	  else if (_Num == 1)
	jne	.L32	 #,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	vmovsd	(%r14), %xmm0	 # *_29, _35
	vmovsd	%xmm0, (%rcx)	 # _35, *iftmp.7_40
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_algobase.h:398: 	{ *__to = *__from; }
	jmp	.L32	 #
	.p2align 4,,10
	.p2align 3
.L45:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/new_allocator.h:134: 	    if (__n > (std::size_t(-1) / sizeof(_Tp)))
	testq	%rbx, %rbx	 # _24
	jns	.L30	 #,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/new_allocator.h:135: 	      std::__throw_bad_array_new_length();
	call	_ZSt28__throw_bad_array_new_lengthv	 #
	.p2align 4,,10
	.p2align 3
.L30:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/new_allocator.h:136: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv	 #
.LEHE0:
.L42:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_uninitialized.h:270:       __catch(...)
	movq	%rax, %rcx	 # tmp118, tmp110
	vzeroupper
	call	__cxa_begin_catch	 #
.L37:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	cmpq	%rsi, %r12	 # <retval>, __first
	je	.L47	 #,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_construct.h:151:       __pointer->~_Tp();
	movq	%r12, %rcx	 # __first,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	addq	$24, %r12	 #, __first
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_construct.h:151:       __pointer->~_Tp();
	call	_ZNSt6vectorIdSaIdEED1Ev	 #
	jmp	.L37	 #
.L47:
.LEHB1:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_uninitialized.h:273: 	  __throw_exception_again;
	call	__cxa_rethrow	 #
.LEHE1:
.L43:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_uninitialized.h:270:       __catch(...)
	movq	%rax, %rbx	 # tmp119, tmp111
	vzeroupper
	call	__cxa_end_catch	 #
	movq	%rbx, %rcx	 # tmp111,
.LEHB2:
	call	_Unwind_Resume	 #
	nop	
.LEHE2:
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA3434:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3434-.LLSDATTD3434
.LLSDATTD3434:
	.byte	0x1
	.uleb128 .LLSDACSE3434-.LLSDACSB3434
.LLSDACSB3434:
	.uleb128 .LEHB0-.LFB3434
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L42-.LFB3434
	.uleb128 0x1
	.uleb128 .LEHB1-.LFB3434
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L43-.LFB3434
	.uleb128 0
	.uleb128 .LEHB2-.LFB3434
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE3434:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3434:
	.section	.text$_ZSt18__do_uninit_fill_nIPSt6vectorIdSaIdEEyS2_ET_S4_T0_RKT1_,"x"
	.linkonce discard
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC3:
	.ascii "Time: \0"
.LC4:
	.ascii " second\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2728:
	pushq	%rdi	 #
	.seh_pushreg	%rdi
	pushq	%rsi	 #
	.seh_pushreg	%rsi
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$112, %rsp	 #,
	.seh_stackalloc	112
	vmovaps	%xmm6, 96(%rsp)	 #,
	.seh_savexmm	%xmm6, 96
	.seh_endprologue
 # lab1_omp.cpp:20: int main() {
	call	__main	 #
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$80000, %ecx	 #,
.LEHB3:
	call	_Znwy	 #
.LEHE3:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_algobase.h:931: 	*__first = __tmp;
	movl	$80000, %r8d	 #,
	xorl	%edx, %edx	 #
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	leaq	80000(%rax), %rbx	 #, _71
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %rcx	 # tmp177, tmp130
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:395: 	this->_M_impl._M_start = this->_M_allocate(__n);
	movq	%rax, 64(%rsp)	 # tmp130, MEM[(struct _Vector_base *)_117]._M_impl.D.63367._M_start
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	%rbx, 80(%rsp)	 # _71, MEM[(struct _Vector_base *)_117]._M_impl.D.63367._M_end_of_storage
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_algobase.h:931: 	*__first = __tmp;
	call	memset	 #
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vpxor	%xmm0, %xmm0, %xmm0	 # tmp135
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movl	$240000, %ecx	 #,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:1701: 	this->_M_impl._M_finish =
	movq	%rbx, 72(%rsp)	 # _71, MEM[(struct vector *)_117].D.64028._M_impl.D.63367._M_finish
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, 48(%rsp)	 #, MEM[(struct _Vector_impl_data *)&A]._M_end_of_storage
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqa	%xmm0, 32(%rsp)	 # tmp135, MEM <vector(2) long long unsigned int> [(struct vector * *)&A]
.LEHB4:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE4:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:395: 	this->_M_impl._M_start = this->_M_allocate(__n);
	vmovq	%rax, %xmm6	 # tmp136, tmp136
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_uninitialized.h:284: 	{ return std::__do_uninit_fill_n(__first, __n, __x); }
	leaq	64(%rsp), %rsi	 #, tmp174
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rax, %rcx	 # tmp178, tmp136
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_uninitialized.h:284: 	{ return std::__do_uninit_fill_n(__first, __n, __x); }
	movl	$10000, %edx	 #,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:395: 	this->_M_impl._M_start = this->_M_allocate(__n);
	vpunpcklqdq	%xmm6, %xmm6, %xmm0	 # tmp136, tmp137
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	leaq	240000(%rax), %rax	 #, tmp138
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_uninitialized.h:284: 	{ return std::__do_uninit_fill_n(__first, __n, __x); }
	movq	%rsi, %r8	 # tmp174,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	%rax, 48(%rsp)	 # tmp138, MEM[(struct _Vector_base *)&A]._M_impl.D.62291._M_end_of_storage
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:395: 	this->_M_impl._M_start = this->_M_allocate(__n);
	vmovdqa	%xmm0, 32(%rsp)	 # tmp137, MEM <vector(2) long long unsigned int> [(struct vector * *)&A]
.LEHB5:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_uninitialized.h:284: 	{ return std::__do_uninit_fill_n(__first, __n, __x); }
	call	_ZSt18__do_uninit_fill_nIPSt6vectorIdSaIdEEyS2_ET_S4_T0_RKT1_	 #
.LEHE5:
 # lab1_omp.cpp:21:     std::vector<std::vector<double>> A(N, std::vector<double>(N, 0.0));
	movq	%rsi, %rcx	 # tmp174,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:1701: 	this->_M_impl._M_finish =
	movq	%rax, 40(%rsp)	 # tmp179, A.D.62984._M_impl.D.62291._M_finish
 # lab1_omp.cpp:21:     std::vector<std::vector<double>> A(N, std::vector<double>(N, 0.0));
	call	_ZNSt6vectorIdSaIdEED1Ev	 #
	movl	$8, %eax	 #, tmp148
	movq	32(%rsp), %r8	 # A.D.62984._M_impl.D.62291._M_start, ivtmp.289
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	xorl	%ecx, %ecx	 # ivtmp.290
	vmovd	%eax, %xmm4	 # tmp148, tmp147
	vmovdqa	.LC0(%rip), %ymm5	 #, vect_vec_iv_.266
	vpbroadcastd	%xmm4, %ymm4	 # tmp147, tmp147
	.p2align 4,,10
	.p2align 3
.L49:
	movq	(%r8), %rax	 # MEM[(double * *)_72], ivtmp.278
	vmovd	%ecx, %xmm3	 # ivtmp.290, vect_cst__65
	vmovdqa	%ymm5, %ymm1	 # vect_vec_iv_.266, vect_vec_iv_.266
	vpbroadcastd	%xmm3, %ymm3	 # vect_cst__65, vect_cst__65
	leaq	80000(%rax), %rdx	 #, _31
	.p2align 4,,10
	.p2align 3
.L53:
	vmovdqa	%ymm1, %ymm0	 # vect_vec_iv_.266, vect_vec_iv_.266
	addq	$64, %rax	 #, ivtmp.278
	vpaddd	%ymm4, %ymm1, %ymm1	 # tmp147, vect_vec_iv_.266, vect_vec_iv_.266
 # lab1_omp.cpp:26:             A[i][j] = i * N + j;
	vpaddd	%ymm3, %ymm0, %ymm0	 # vect_cst__65, vect_vec_iv_.266, vect__2.267
 # lab1_omp.cpp:26:             A[i][j] = i * N + j;
	vcvtdq2pd	%xmm0, %ymm2	 # vect__2.267, vect__3.268
	vextracti128	$0x1, %ymm0, %xmm0	 # vect__2.267, tmp151
 # lab1_omp.cpp:26:             A[i][j] = i * N + j;
	vmovupd	%ymm2, -64(%rax)	 # vect__3.268, MEM <vector(4) double> [(value_type &)_130]
 # lab1_omp.cpp:26:             A[i][j] = i * N + j;
	vcvtdq2pd	%xmm0, %ymm0	 # tmp151, vect__3.268
 # lab1_omp.cpp:26:             A[i][j] = i * N + j;
	vmovupd	%ymm0, -32(%rax)	 # vect__3.268, MEM <vector(4) double> [(value_type &)_130 + 32]
	cmpq	%rax, %rdx	 # ivtmp.278, _31
	jne	.L53	 #,
 # lab1_omp.cpp:24:     for (int i = 0; i < N; ++i) {
	addl	$10000, %ecx	 #, ivtmp.290
	addq	$24, %r8	 #, ivtmp.289
	cmpl	$100000000, %ecx	 #, ivtmp.290
	jne	.L49	 #,
 # lab1_omp.cpp:30:     auto start = std::chrono::high_resolution_clock::now();
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv	 #
 # lab1_omp.cpp:10:     #pragma omp parallel for
	leaq	32(%rsp), %rdi	 #, tmp173
	movq	%rsi, %rdx	 # tmp174,
	xorl	%r8d, %r8d	 #
	leaq	_Z16transpose_matrixRSt6vectorIS_IdSaIdEESaIS1_EE._omp_fn.0(%rip), %rcx	 #, tmp155
	xorl	%r9d, %r9d	 #
 # lab1_omp.cpp:30:     auto start = std::chrono::high_resolution_clock::now();
	movq	%rax, %rbx	 # tmp181, start
 # lab1_omp.cpp:10:     #pragma omp parallel for
	movq	%rdi, 64(%rsp)	 # tmp173, MEM[(struct .omp_data_s.1 *)_117].A
	call	GOMP_parallel	 #
 # lab1_omp.cpp:32:     auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv	 #
 # C:/Users/Ksush/gcc/include/c++/13.1.0/ostream:667: 	__ostream_insert(__out, __s,
	movq	.refptr._ZSt4cout(%rip), %rsi	 #, tmp176
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vxorps	%xmm0, %xmm0, %xmm0	 # tmp188
 # C:/Users/Ksush/gcc/include/c++/13.1.0/ostream:667: 	__ostream_insert(__out, __s,
	movl	$6, %r8d	 #,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/chrono.h:727: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%rbx, %rax	 # start, tmp156
 # C:/Users/Ksush/gcc/include/c++/13.1.0/ostream:667: 	__ostream_insert(__out, __s,
	leaq	.LC3(%rip), %rdx	 #, tmp159
	movq	%rsi, %rcx	 # tmp176,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vcvtsi2sdq	%rax, %xmm0, %xmm0	 # tmp156, tmp188, tmp189
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vdivsd	.LC2(%rip), %xmm0, %xmm6	 #, tmp157, _38
.LEHB6:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/ostream:667: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # C:/Users/Ksush/gcc/include/c++/13.1.0/ostream:223:       { return _M_insert(__f); }
	vmovsd	%xmm6, %xmm6, %xmm1	 # _38,
	movq	%rsi, %rcx	 # tmp176,
	call	_ZNSo9_M_insertIdEERSoT_	 #
 # C:/Users/Ksush/gcc/include/c++/13.1.0/ostream:667: 	__ostream_insert(__out, __s,
	movl	$7, %r8d	 #,
	leaq	.LC4(%rip), %rdx	 #, tmp162
	movq	%rax, %rcx	 # _42,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/ostream:223:       { return _M_insert(__f); }
	movq	%rax, %rbx	 # tmp183, _42
 # C:/Users/Ksush/gcc/include/c++/13.1.0/ostream:667: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # C:/Users/Ksush/gcc/include/c++/13.1.0/ostream:736:     { return flush(__os.put(__os.widen('\n'))); }
	movq	(%rbx), %rax	 # MEM[(struct basic_ostream *)_42]._vptr.basic_ostream, MEM[(struct basic_ostream *)_42]._vptr.basic_ostream
	movq	-24(%rax), %rax	 # MEM[(long long int *)_88 + -24B], MEM[(long long int *)_88 + -24B]
	movq	240(%rbx,%rax), %rsi	 # MEM[(const struct __ctype_type * *)_91 + 240B], _96
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/basic_ios.h:49:       if (!__f)
	testq	%rsi, %rsi	 # _96
	je	.L69	 #,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/locale_facets.h:882: 	if (_M_widen_ok)
	cmpb	$0, 56(%rsi)	 #, MEM[(const struct ctype *)_96]._M_widen_ok
	je	.L56	 #,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/locale_facets.h:883: 	  return _M_widen[static_cast<unsigned char>(__c)];
	movzbl	67(%rsi), %eax	 # MEM[(const struct ctype *)_96]._M_widen[10], _104
.L57:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/ostream:736:     { return flush(__os.put(__os.widen('\n'))); }
	movsbl	%al, %edx	 # _104, _104
	movq	%rbx, %rcx	 # _42,
	call	_ZNSo3putEc	 #
	movq	%rax, %rcx	 # tmp185, _94
 # C:/Users/Ksush/gcc/include/c++/13.1.0/ostream:758:     { return __os.flush(); }
	call	_ZNSo5flushEv	 #
 # lab1_omp.cpp:36: }
	movq	%rdi, %rcx	 # tmp173,
	call	_ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev	 #
	nop	
	vmovaps	96(%rsp), %xmm6	 #,
	xorl	%eax, %eax	 #
	addq	$112, %rsp	 #,
	popq	%rbx	 #
	popq	%rsi	 #
	popq	%rdi	 #
	ret	
.L56:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/locale_facets.h:884: 	this->_M_widen_init();
	movq	%rsi, %rcx	 # _96,
	call	_ZNKSt5ctypeIcE13_M_widen_initEv	 #
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/locale_facets.h:885: 	return this->do_widen(__c);
	movq	(%rsi), %rax	 # MEM[(const struct ctype *)_96].D.44540._vptr.facet, MEM[(const struct ctype *)_96].D.44540._vptr.facet
	movl	$10, %edx	 #,
	movq	%rsi, %rcx	 # _96,
	call	*48(%rax)	 # MEM[(int (*) () *)_106 + 48B]
	jmp	.L57	 #
.L69:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/basic_ios.h:50: 	__throw_bad_cast();
	call	_ZSt16__throw_bad_castv	 #
.LEHE6:
.L59:
 # lab1_omp.cpp:21:     std::vector<std::vector<double>> A(N, std::vector<double>(N, 0.0));
	movq	%rax, %rbx	 # tmp186, tmp142
	leaq	64(%rsp), %rsi	 #, tmp174
	vzeroupper
.L52:
	movq	%rsi, %rcx	 # tmp174,
	call	_ZNSt6vectorIdSaIdEED1Ev	 #
	movq	%rbx, %rcx	 # tmp142,
.LEHB7:
	call	_Unwind_Resume	 #
.L60:
 # lab1_omp.cpp:36: }
	movq	%rax, %rbx	 # tmp187, tmp172
	movq	%rdi, %rcx	 # tmp173,
	vzeroupper
	call	_ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev	 #
	movq	%rbx, %rcx	 # tmp172,
	call	_Unwind_Resume	 #
.LEHE7:
.L61:
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	32(%rsp), %rcx	 # MEM[(struct _Vector_base *)&A]._M_impl.D.62291._M_start, _54
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	48(%rsp), %rdx	 # MEM[(struct _Vector_base *)&A]._M_impl.D.62291._M_end_of_storage, _55
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	%rax, %rbx	 # tmp180, tmp143
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	subq	%rcx, %rdx	 # _54, _55
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/stl_vector.h:386: 	if (__p)
	testq	%rcx, %rcx	 # _54
	je	.L68	 #,
 # C:/Users/Ksush/gcc/include/c++/13.1.0/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	vzeroupper
	call	_ZdlPvy	 #
	jmp	.L52	 #
.L68:
	vzeroupper
	jmp	.L52	 #
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2728:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2728-.LLSDACSB2728
.LLSDACSB2728:
	.uleb128 .LEHB3-.LFB2728
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB2728
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L59-.LFB2728
	.uleb128 0
	.uleb128 .LEHB5-.LFB2728
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L61-.LFB2728
	.uleb128 0
	.uleb128 .LEHB6-.LFB2728
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L60-.LFB2728
	.uleb128 0
	.uleb128 .LEHB7-.LFB2728
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE2728:
	.section	.text.startup,"x"
	.seh_endproc
	.section .rdata,"dr"
	.align 32
.LC0:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.align 8
.LC2:
	.long	0
	.long	1104006501
	.ident	"GCC: (GNU) 13.1.0"
	.def	omp_get_num_threads;	.scl	2;	.type	32;	.endef
	.def	omp_get_thread_num;	.scl	2;	.type	32;	.endef
	.def	GOMP_parallel;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	_ZSt28__throw_bad_array_new_lengthv;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_rethrow;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
