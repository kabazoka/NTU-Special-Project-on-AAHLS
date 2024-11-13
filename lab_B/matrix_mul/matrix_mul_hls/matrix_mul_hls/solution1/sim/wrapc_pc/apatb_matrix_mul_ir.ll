; ModuleID = '/home/ubuntu/lab_B/matrix_mul_hls/matrix_mul_hls/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_matrix_mul_ir(float* noalias nocapture nonnull readonly %A, float* noalias nocapture nonnull readonly %B, float* noalias nocapture nonnull %C, i32 %M, i32 %N, i32 %K) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 16384)
  %A_copy = bitcast i8* %malloccall to [4096 x float]*
  %malloccall1 = tail call i8* @malloc(i64 16384)
  %B_copy = bitcast i8* %malloccall1 to [4096 x float]*
  %malloccall2 = tail call i8* @malloc(i64 16384)
  %C_copy = bitcast i8* %malloccall2 to [4096 x float]*
  %0 = bitcast float* %A to [4096 x float]*
  %1 = bitcast float* %B to [4096 x float]*
  %2 = bitcast float* %C to [4096 x float]*
  call fastcc void @copy_in([4096 x float]* nonnull %0, [4096 x float]* %A_copy, [4096 x float]* nonnull %1, [4096 x float]* %B_copy, [4096 x float]* nonnull %2, [4096 x float]* %C_copy)
  %3 = getelementptr inbounds [4096 x float], [4096 x float]* %A_copy, i32 0, i32 0
  %4 = getelementptr inbounds [4096 x float], [4096 x float]* %B_copy, i32 0, i32 0
  %5 = getelementptr inbounds [4096 x float], [4096 x float]* %C_copy, i32 0, i32 0
  call void @apatb_matrix_mul_hw(float* %3, float* %4, float* %5, i32 %M, i32 %N, i32 %K)
  call void @copy_back([4096 x float]* %0, [4096 x float]* %A_copy, [4096 x float]* %1, [4096 x float]* %B_copy, [4096 x float]* %2, [4096 x float]* %C_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([4096 x float]* noalias readonly, [4096 x float]* noalias, [4096 x float]* noalias readonly, [4096 x float]* noalias, [4096 x float]* noalias readonly, [4096 x float]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a4096f32([4096 x float]* %1, [4096 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a4096f32([4096 x float]* %3, [4096 x float]* %2)
  call fastcc void @onebyonecpy_hls.p0a4096f32([4096 x float]* %5, [4096 x float]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a4096f32([4096 x float]* noalias, [4096 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [4096 x float]* %0, null
  %3 = icmp eq [4096 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4096 x float], [4096 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [4096 x float], [4096 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4096
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([4096 x float]* noalias, [4096 x float]* noalias readonly, [4096 x float]* noalias, [4096 x float]* noalias readonly, [4096 x float]* noalias, [4096 x float]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a4096f32([4096 x float]* %0, [4096 x float]* %1)
  call fastcc void @onebyonecpy_hls.p0a4096f32([4096 x float]* %2, [4096 x float]* %3)
  call fastcc void @onebyonecpy_hls.p0a4096f32([4096 x float]* %4, [4096 x float]* %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_matrix_mul_hw(float*, float*, float*, i32, i32, i32)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([4096 x float]* noalias, [4096 x float]* noalias readonly, [4096 x float]* noalias, [4096 x float]* noalias readonly, [4096 x float]* noalias, [4096 x float]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a4096f32([4096 x float]* %4, [4096 x float]* %5)
  ret void
}

define void @matrix_mul_hw_stub_wrapper(float*, float*, float*, i32, i32, i32) #4 {
entry:
  %6 = bitcast float* %0 to [4096 x float]*
  %7 = bitcast float* %1 to [4096 x float]*
  %8 = bitcast float* %2 to [4096 x float]*
  call void @copy_out([4096 x float]* null, [4096 x float]* %6, [4096 x float]* null, [4096 x float]* %7, [4096 x float]* null, [4096 x float]* %8)
  %9 = bitcast [4096 x float]* %6 to float*
  %10 = bitcast [4096 x float]* %7 to float*
  %11 = bitcast [4096 x float]* %8 to float*
  call void @matrix_mul_hw_stub(float* %9, float* %10, float* %11, i32 %3, i32 %4, i32 %5)
  call void @copy_in([4096 x float]* null, [4096 x float]* %6, [4096 x float]* null, [4096 x float]* %7, [4096 x float]* null, [4096 x float]* %8)
  ret void
}

declare void @matrix_mul_hw_stub(float*, float*, float*, i32, i32, i32)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
