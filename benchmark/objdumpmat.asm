
matrix:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d1 3f 00 00 	mov    0x3fd1(%rip),%rax        # 4fe0 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 3a 3f 00 00    	pushq  0x3f3a(%rip)        # 4f60 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 3b 3f 00 00 	bnd jmpq *0x3f3b(%rip)        # 4f68 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	pushq  $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmpq 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	pushq  $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmpq 1020 <.plt>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	pushq  $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmpq 1020 <.plt>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	pushq  $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmpq 1020 <.plt>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	pushq  $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmpq 1020 <.plt>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	pushq  $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmpq 1020 <.plt>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	pushq  $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmpq 1020 <.plt>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	pushq  $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmpq 1020 <.plt>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	pushq  $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmpq 1020 <.plt>
    10cf:	90                   	nop

Disassembly of section .plt.got:

00000000000010d0 <__cxa_finalize@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 e5 3e 00 00 	bnd jmpq *0x3ee5(%rip)        # 4fc0 <__cxa_finalize@GLIBC_2.2.5>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010e0 <__printf_chk@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 85 3e 00 00 	bnd jmpq *0x3e85(%rip)        # 4f70 <__printf_chk@GLIBC_2.3.4>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <_ZNSt13runtime_errorC1EPKc@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 7d 3e 00 00 	bnd jmpq *0x3e7d(%rip)        # 4f78 <_ZNSt13runtime_errorC1EPKc@GLIBCXX_3.4.21>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001100 <__cxa_allocate_exception@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 75 3e 00 00 	bnd jmpq *0x3e75(%rip)        # 4f80 <__cxa_allocate_exception@CXXABI_1.3>
    110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001110 <calloc@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 6d 3e 00 00 	bnd jmpq *0x3e6d(%rip)        # 4f88 <calloc@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001120 <__cxa_free_exception@plt>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	f2 ff 25 65 3e 00 00 	bnd jmpq *0x3e65(%rip)        # 4f90 <__cxa_free_exception@CXXABI_1.3>
    112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001130 <__cxa_atexit@plt>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	f2 ff 25 5d 3e 00 00 	bnd jmpq *0x3e5d(%rip)        # 4f98 <__cxa_atexit@GLIBC_2.2.5>
    113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001140 <__stack_chk_fail@plt>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	f2 ff 25 55 3e 00 00 	bnd jmpq *0x3e55(%rip)        # 4fa0 <__stack_chk_fail@GLIBC_2.4>
    114b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001150 <_ZNSt8ios_base4InitC1Ev@plt>:
    1150:	f3 0f 1e fa          	endbr64 
    1154:	f2 ff 25 4d 3e 00 00 	bnd jmpq *0x3e4d(%rip)        # 4fa8 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    115b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001160 <__cxa_throw@plt>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	f2 ff 25 45 3e 00 00 	bnd jmpq *0x3e45(%rip)        # 4fb0 <__cxa_throw@CXXABI_1.3>
    116b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001170 <_Unwind_Resume@plt>:
    1170:	f3 0f 1e fa          	endbr64 
    1174:	f2 ff 25 3d 3e 00 00 	bnd jmpq *0x3e3d(%rip)        # 4fb8 <_Unwind_Resume@GCC_3.0>
    117b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001180 <_Z14display_matrix6Matrix.cold>:
    1180:	bf 10 00 00 00       	mov    $0x10,%edi
    1185:	e8 76 ff ff ff       	callq  1100 <__cxa_allocate_exception@plt>
    118a:	48 8d 35 8f 1e 00 00 	lea    0x1e8f(%rip),%rsi        # 3020 <_IO_stdin_used+0x20>
    1191:	48 89 c7             	mov    %rax,%rdi
    1194:	48 89 c5             	mov    %rax,%rbp
    1197:	e8 54 ff ff ff       	callq  10f0 <_ZNSt13runtime_errorC1EPKc@plt>
    119c:	48 8b 15 25 3e 00 00 	mov    0x3e25(%rip),%rdx        # 4fc8 <_ZNSt13runtime_errorD1Ev@GLIBCXX_3.4>
    11a3:	48 8d 35 76 3b 00 00 	lea    0x3b76(%rip),%rsi        # 4d20 <_ZTISt13runtime_error@@GLIBCXX_3.4>
    11aa:	48 89 ef             	mov    %rbp,%rdi
    11ad:	e8 ae ff ff ff       	callq  1160 <__cxa_throw@plt>
    11b2:	f3 0f 1e fa          	endbr64 
    11b6:	49 89 c4             	mov    %rax,%r12
    11b9:	48 89 ef             	mov    %rbp,%rdi
    11bc:	e8 5f ff ff ff       	callq  1120 <__cxa_free_exception@plt>
    11c1:	4c 89 e7             	mov    %r12,%rdi
    11c4:	e8 a7 ff ff ff       	callq  1170 <_Unwind_Resume@plt>

00000000000011c9 <main.cold>:
    11c9:	bf 10 00 00 00       	mov    $0x10,%edi
    11ce:	e8 2d ff ff ff       	callq  1100 <__cxa_allocate_exception@plt>
    11d3:	48 8d 35 46 1e 00 00 	lea    0x1e46(%rip),%rsi        # 3020 <_IO_stdin_used+0x20>
    11da:	48 89 c7             	mov    %rax,%rdi
    11dd:	48 89 c5             	mov    %rax,%rbp
    11e0:	e8 0b ff ff ff       	callq  10f0 <_ZNSt13runtime_errorC1EPKc@plt>
    11e5:	48 8b 15 dc 3d 00 00 	mov    0x3ddc(%rip),%rdx        # 4fc8 <_ZNSt13runtime_errorD1Ev@GLIBCXX_3.4>
    11ec:	48 8d 35 2d 3b 00 00 	lea    0x3b2d(%rip),%rsi        # 4d20 <_ZTISt13runtime_error@@GLIBCXX_3.4>
    11f3:	48 89 ef             	mov    %rbp,%rdi
    11f6:	e8 65 ff ff ff       	callq  1160 <__cxa_throw@plt>
    11fb:	bf 10 00 00 00       	mov    $0x10,%edi
    1200:	e8 fb fe ff ff       	callq  1100 <__cxa_allocate_exception@plt>
    1205:	48 8d 35 14 1e 00 00 	lea    0x1e14(%rip),%rsi        # 3020 <_IO_stdin_used+0x20>
    120c:	48 89 c7             	mov    %rax,%rdi
    120f:	48 89 c5             	mov    %rax,%rbp
    1212:	e8 d9 fe ff ff       	callq  10f0 <_ZNSt13runtime_errorC1EPKc@plt>
    1217:	48 8b 15 aa 3d 00 00 	mov    0x3daa(%rip),%rdx        # 4fc8 <_ZNSt13runtime_errorD1Ev@GLIBCXX_3.4>
    121e:	48 8d 35 fb 3a 00 00 	lea    0x3afb(%rip),%rsi        # 4d20 <_ZTISt13runtime_error@@GLIBCXX_3.4>
    1225:	48 89 ef             	mov    %rbp,%rdi
    1228:	e8 33 ff ff ff       	callq  1160 <__cxa_throw@plt>
    122d:	f3 0f 1e fa          	endbr64 
    1231:	48 89 c3             	mov    %rax,%rbx
    1234:	48 89 ef             	mov    %rbp,%rdi
    1237:	e8 e4 fe ff ff       	callq  1120 <__cxa_free_exception@plt>
    123c:	48 89 df             	mov    %rbx,%rdi
    123f:	e8 2c ff ff ff       	callq  1170 <_Unwind_Resume@plt>
    1244:	f3 0f 1e fa          	endbr64 
    1248:	49 89 c5             	mov    %rax,%r13
    124b:	48 89 ef             	mov    %rbp,%rdi
    124e:	e8 cd fe ff ff       	callq  1120 <__cxa_free_exception@plt>
    1253:	4c 89 ef             	mov    %r13,%rdi
    1256:	e8 15 ff ff ff       	callq  1170 <_Unwind_Resume@plt>
    125b:	bf 10 00 00 00       	mov    $0x10,%edi
    1260:	e8 9b fe ff ff       	callq  1100 <__cxa_allocate_exception@plt>
    1265:	48 8d 35 f7 1d 00 00 	lea    0x1df7(%rip),%rsi        # 3063 <_IO_stdin_used+0x63>
    126c:	48 89 c7             	mov    %rax,%rdi
    126f:	48 89 c5             	mov    %rax,%rbp
    1272:	e8 79 fe ff ff       	callq  10f0 <_ZNSt13runtime_errorC1EPKc@plt>
    1277:	48 8b 15 4a 3d 00 00 	mov    0x3d4a(%rip),%rdx        # 4fc8 <_ZNSt13runtime_errorD1Ev@GLIBCXX_3.4>
    127e:	48 8d 35 9b 3a 00 00 	lea    0x3a9b(%rip),%rsi        # 4d20 <_ZTISt13runtime_error@@GLIBCXX_3.4>
    1285:	48 89 ef             	mov    %rbp,%rdi
    1288:	e8 d3 fe ff ff       	callq  1160 <__cxa_throw@plt>
    128d:	f3 0f 1e fa          	endbr64 
    1291:	49 89 c7             	mov    %rax,%r15
    1294:	48 89 ef             	mov    %rbp,%rdi
    1297:	e8 84 fe ff ff       	callq  1120 <__cxa_free_exception@plt>
    129c:	4c 89 ff             	mov    %r15,%rdi
    129f:	e8 cc fe ff ff       	callq  1170 <_Unwind_Resume@plt>
    12a4:	bf 10 00 00 00       	mov    $0x10,%edi
    12a9:	e8 52 fe ff ff       	callq  1100 <__cxa_allocate_exception@plt>
    12ae:	48 8d 35 6b 1d 00 00 	lea    0x1d6b(%rip),%rsi        # 3020 <_IO_stdin_used+0x20>
    12b5:	48 89 c7             	mov    %rax,%rdi
    12b8:	48 89 c5             	mov    %rax,%rbp
    12bb:	e8 30 fe ff ff       	callq  10f0 <_ZNSt13runtime_errorC1EPKc@plt>
    12c0:	48 8b 15 01 3d 00 00 	mov    0x3d01(%rip),%rdx        # 4fc8 <_ZNSt13runtime_errorD1Ev@GLIBCXX_3.4>
    12c7:	48 8d 35 52 3a 00 00 	lea    0x3a52(%rip),%rsi        # 4d20 <_ZTISt13runtime_error@@GLIBCXX_3.4>
    12ce:	48 89 ef             	mov    %rbp,%rdi
    12d1:	e8 8a fe ff ff       	callq  1160 <__cxa_throw@plt>
    12d6:	bf 10 00 00 00       	mov    $0x10,%edi
    12db:	e8 20 fe ff ff       	callq  1100 <__cxa_allocate_exception@plt>
    12e0:	48 8d 35 b1 1d 00 00 	lea    0x1db1(%rip),%rsi        # 3098 <_IO_stdin_used+0x98>
    12e7:	48 89 c7             	mov    %rax,%rdi
    12ea:	48 89 c5             	mov    %rax,%rbp
    12ed:	e8 fe fd ff ff       	callq  10f0 <_ZNSt13runtime_errorC1EPKc@plt>
    12f2:	48 8b 15 cf 3c 00 00 	mov    0x3ccf(%rip),%rdx        # 4fc8 <_ZNSt13runtime_errorD1Ev@GLIBCXX_3.4>
    12f9:	48 8d 35 20 3a 00 00 	lea    0x3a20(%rip),%rsi        # 4d20 <_ZTISt13runtime_error@@GLIBCXX_3.4>
    1300:	48 89 ef             	mov    %rbp,%rdi
    1303:	e8 58 fe ff ff       	callq  1160 <__cxa_throw@plt>
    1308:	f3 0f 1e fa          	endbr64 
    130c:	48 89 c3             	mov    %rax,%rbx
    130f:	48 89 ef             	mov    %rbp,%rdi
    1312:	e8 09 fe ff ff       	callq  1120 <__cxa_free_exception@plt>
    1317:	48 89 df             	mov    %rbx,%rdi
    131a:	e8 51 fe ff ff       	callq  1170 <_Unwind_Resume@plt>
    131f:	f3 0f 1e fa          	endbr64 
    1323:	49 89 c7             	mov    %rax,%r15
    1326:	48 89 ef             	mov    %rbp,%rdi
    1329:	e8 f2 fd ff ff       	callq  1120 <__cxa_free_exception@plt>
    132e:	4c 89 ff             	mov    %r15,%rdi
    1331:	e8 3a fe ff ff       	callq  1170 <_Unwind_Resume@plt>
    1336:	bf 10 00 00 00       	mov    $0x10,%edi
    133b:	e8 c0 fd ff ff       	callq  1100 <__cxa_allocate_exception@plt>
    1340:	48 8d 35 1c 1d 00 00 	lea    0x1d1c(%rip),%rsi        # 3063 <_IO_stdin_used+0x63>
    1347:	48 89 c7             	mov    %rax,%rdi
    134a:	48 89 c5             	mov    %rax,%rbp
    134d:	e8 9e fd ff ff       	callq  10f0 <_ZNSt13runtime_errorC1EPKc@plt>
    1352:	48 8b 15 6f 3c 00 00 	mov    0x3c6f(%rip),%rdx        # 4fc8 <_ZNSt13runtime_errorD1Ev@GLIBCXX_3.4>
    1359:	48 8d 35 c0 39 00 00 	lea    0x39c0(%rip),%rsi        # 4d20 <_ZTISt13runtime_error@@GLIBCXX_3.4>
    1360:	48 89 ef             	mov    %rbp,%rdi
    1363:	e8 f8 fd ff ff       	callq  1160 <__cxa_throw@plt>
    1368:	f3 0f 1e fa          	endbr64 
    136c:	49 89 c5             	mov    %rax,%r13
    136f:	48 89 ef             	mov    %rbp,%rdi
    1372:	e8 a9 fd ff ff       	callq  1120 <__cxa_free_exception@plt>
    1377:	4c 89 ef             	mov    %r13,%rdi
    137a:	e8 f1 fd ff ff       	callq  1170 <_Unwind_Resume@plt>
    137f:	bf 10 00 00 00       	mov    $0x10,%edi
    1384:	e8 77 fd ff ff       	callq  1100 <__cxa_allocate_exception@plt>
    1389:	48 8d 35 90 1c 00 00 	lea    0x1c90(%rip),%rsi        # 3020 <_IO_stdin_used+0x20>
    1390:	48 89 c7             	mov    %rax,%rdi
    1393:	48 89 c5             	mov    %rax,%rbp
    1396:	e8 55 fd ff ff       	callq  10f0 <_ZNSt13runtime_errorC1EPKc@plt>
    139b:	48 8b 15 26 3c 00 00 	mov    0x3c26(%rip),%rdx        # 4fc8 <_ZNSt13runtime_errorD1Ev@GLIBCXX_3.4>
    13a2:	48 8d 35 77 39 00 00 	lea    0x3977(%rip),%rsi        # 4d20 <_ZTISt13runtime_error@@GLIBCXX_3.4>
    13a9:	48 89 ef             	mov    %rbp,%rdi
    13ac:	e8 af fd ff ff       	callq  1160 <__cxa_throw@plt>
    13b1:	bf 10 00 00 00       	mov    $0x10,%edi
    13b6:	e8 45 fd ff ff       	callq  1100 <__cxa_allocate_exception@plt>
    13bb:	48 8d 35 83 1c 00 00 	lea    0x1c83(%rip),%rsi        # 3045 <_IO_stdin_used+0x45>
    13c2:	48 89 c7             	mov    %rax,%rdi
    13c5:	48 89 c5             	mov    %rax,%rbp
    13c8:	e8 23 fd ff ff       	callq  10f0 <_ZNSt13runtime_errorC1EPKc@plt>
    13cd:	48 8b 15 f4 3b 00 00 	mov    0x3bf4(%rip),%rdx        # 4fc8 <_ZNSt13runtime_errorD1Ev@GLIBCXX_3.4>
    13d4:	48 8d 35 45 39 00 00 	lea    0x3945(%rip),%rsi        # 4d20 <_ZTISt13runtime_error@@GLIBCXX_3.4>
    13db:	48 89 ef             	mov    %rbp,%rdi
    13de:	e8 7d fd ff ff       	callq  1160 <__cxa_throw@plt>
    13e3:	f3 0f 1e fa          	endbr64 
    13e7:	48 89 c3             	mov    %rax,%rbx
    13ea:	48 89 ef             	mov    %rbp,%rdi
    13ed:	e8 2e fd ff ff       	callq  1120 <__cxa_free_exception@plt>
    13f2:	48 89 df             	mov    %rbx,%rdi
    13f5:	e8 76 fd ff ff       	callq  1170 <_Unwind_Resume@plt>
    13fa:	f3 0f 1e fa          	endbr64 
    13fe:	49 89 c6             	mov    %rax,%r14
    1401:	48 89 ef             	mov    %rbp,%rdi
    1404:	e8 17 fd ff ff       	callq  1120 <__cxa_free_exception@plt>
    1409:	4c 89 f7             	mov    %r14,%rdi
    140c:	e8 5f fd ff ff       	callq  1170 <_Unwind_Resume@plt>
    1411:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1418:	00 00 00 
    141b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001420 <main>:
    1420:	f3 0f 1e fa          	endbr64 
    1424:	41 57                	push   %r15
    1426:	be 01 00 00 00       	mov    $0x1,%esi
    142b:	bf 80 a9 03 00       	mov    $0x3a980,%edi
    1430:	41 56                	push   %r14
    1432:	41 55                	push   %r13
    1434:	41 54                	push   %r12
    1436:	55                   	push   %rbp
    1437:	53                   	push   %rbx
    1438:	48 81 ec c8 00 00 00 	sub    $0xc8,%rsp
    143f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1446:	00 00 
    1448:	48 89 84 24 b8 00 00 	mov    %rax,0xb8(%rsp)
    144f:	00 
    1450:	31 c0                	xor    %eax,%eax
    1452:	48 b8 c8 00 00 00 2c 	movabs $0x12c000000c8,%rax
    1459:	01 00 00 
    145c:	48 89 84 24 98 00 00 	mov    %rax,0x98(%rsp)
    1463:	00 
    1464:	e8 a7 fc ff ff       	callq  1110 <calloc@plt>
    1469:	be 01 00 00 00       	mov    $0x1,%esi
    146e:	bf 80 f4 03 00       	mov    $0x3f480,%edi
    1473:	48 ba 2c 01 00 00 d8 	movabs $0xd80000012c,%rdx
    147a:	00 00 00 
    147d:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
    1484:	00 
    1485:	48 89 c3             	mov    %rax,%rbx
    1488:	48 89 94 24 a8 00 00 	mov    %rdx,0xa8(%rsp)
    148f:	00 
    1490:	e8 7b fc ff ff       	callq  1110 <calloc@plt>
    1495:	f3 0f 10 25 2f 1c 00 	movss  0x1c2f(%rip),%xmm4        # 30cc <_IO_stdin_used+0xcc>
    149c:	00 
    149d:	b9 2c 01 00 00       	mov    $0x12c,%ecx
    14a2:	f3 0f 10 0d 1a 1c 00 	movss  0x1c1a(%rip),%xmm1        # 30c4 <_IO_stdin_used+0xc4>
    14a9:	00 
    14aa:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
    14b1:	00 
    14b2:	f2 0f 10 15 16 1c 00 	movsd  0x1c16(%rip),%xmm2        # 30d0 <_IO_stdin_used+0xd0>
    14b9:	00 
    14ba:	48 89 c6             	mov    %rax,%rsi
    14bd:	0f 1f 00             	nopl   (%rax)
    14c0:	8d b9 d4 fe ff ff    	lea    -0x12c(%rcx),%edi
    14c6:	48 89 dd             	mov    %rbx,%rbp
    14c9:	66 0f ef c0          	pxor   %xmm0,%xmm0
    14cd:	0f 28 dc             	movaps %xmm4,%xmm3
    14d0:	66 0f ef f6          	pxor   %xmm6,%xmm6
    14d4:	83 c7 0a             	add    $0xa,%edi
    14d7:	f3 0f 5a c4          	cvtss2sd %xmm4,%xmm0
    14db:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    14df:	66 0f ef e4          	pxor   %xmm4,%xmm4
    14e3:	66 0f ef ff          	pxor   %xmm7,%xmm7
    14e7:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    14ec:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
    14f1:	66 45 0f ef e4       	pxor   %xmm12,%xmm12
    14f6:	48 83 c5 28          	add    $0x28,%rbp
    14fa:	f3 0f 59 d9          	mulss  %xmm1,%xmm3
    14fe:	66 45 0f ef ed       	pxor   %xmm13,%xmm13
    1503:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    1508:	f2 0f 5a e0          	cvtsd2ss %xmm0,%xmm4
    150c:	f3 0f 5a f4          	cvtss2sd %xmm4,%xmm6
    1510:	f2 0f 58 f2          	addsd  %xmm2,%xmm6
    1514:	0f 28 ec             	movaps %xmm4,%xmm5
    1517:	f3 0f 59 e9          	mulss  %xmm1,%xmm5
    151b:	66 0f ef c0          	pxor   %xmm0,%xmm0
    151f:	66 0f ef e4          	pxor   %xmm4,%xmm4
    1523:	f2 0f 5a fe          	cvtsd2ss %xmm6,%xmm7
    1527:	f3 44 0f 5a cf       	cvtss2sd %xmm7,%xmm9
    152c:	f2 44 0f 58 ca       	addsd  %xmm2,%xmm9
    1531:	44 0f 28 c7          	movaps %xmm7,%xmm8
    1535:	f3 44 0f 59 c1       	mulss  %xmm1,%xmm8
    153a:	f3 44 0f 2c c3       	cvttss2si %xmm3,%r8d
    153f:	66 0f ef ff          	pxor   %xmm7,%xmm7
    1543:	f2 45 0f 5a d1       	cvtsd2ss %xmm9,%xmm10
    1548:	f3 45 0f 5a e2       	cvtss2sd %xmm10,%xmm12
    154d:	f2 44 0f 58 e2       	addsd  %xmm2,%xmm12
    1552:	45 0f 28 da          	movaps %xmm10,%xmm11
    1556:	f3 44 0f 2c cd       	cvttss2si %xmm5,%r9d
    155b:	66 0f ef ed          	pxor   %xmm5,%xmm5
    155f:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
    1564:	f3 44 0f 59 d9       	mulss  %xmm1,%xmm11
    1569:	44 89 45 d8          	mov    %r8d,-0x28(%rbp)
    156d:	f2 45 0f 5a ec       	cvtsd2ss %xmm12,%xmm13
    1572:	f3 45 0f 5a fd       	cvtss2sd %xmm13,%xmm15
    1577:	f2 44 0f 58 fa       	addsd  %xmm2,%xmm15
    157c:	45 0f 28 f5          	movaps %xmm13,%xmm14
    1580:	f3 45 0f 2c d0       	cvttss2si %xmm8,%r10d
    1585:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
    158a:	66 45 0f ef ed       	pxor   %xmm13,%xmm13
    158f:	f3 44 0f 59 f1       	mulss  %xmm1,%xmm14
    1594:	44 89 4d dc          	mov    %r9d,-0x24(%rbp)
    1598:	f2 41 0f 5a c7       	cvtsd2ss %xmm15,%xmm0
    159d:	f3 0f 5a e0          	cvtss2sd %xmm0,%xmm4
    15a1:	f2 0f 58 e2          	addsd  %xmm2,%xmm4
    15a5:	0f 28 d8             	movaps %xmm0,%xmm3
    15a8:	f3 45 0f 2c db       	cvttss2si %xmm11,%r11d
    15ad:	66 45 0f ef db       	pxor   %xmm11,%xmm11
    15b2:	66 0f ef c0          	pxor   %xmm0,%xmm0
    15b6:	f3 0f 59 d9          	mulss  %xmm1,%xmm3
    15ba:	44 89 55 e0          	mov    %r10d,-0x20(%rbp)
    15be:	f2 0f 5a ec          	cvtsd2ss %xmm4,%xmm5
    15c2:	f3 0f 5a fd          	cvtss2sd %xmm5,%xmm7
    15c6:	f2 0f 58 fa          	addsd  %xmm2,%xmm7
    15ca:	0f 28 f5             	movaps %xmm5,%xmm6
    15cd:	f3 45 0f 2c e6       	cvttss2si %xmm14,%r12d
    15d2:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    15d7:	66 0f ef e4          	pxor   %xmm4,%xmm4
    15db:	f3 0f 59 f1          	mulss  %xmm1,%xmm6
    15df:	44 89 5d e4          	mov    %r11d,-0x1c(%rbp)
    15e3:	f2 44 0f 5a c7       	cvtsd2ss %xmm7,%xmm8
    15e8:	f3 45 0f 5a d0       	cvtss2sd %xmm8,%xmm10
    15ed:	f2 44 0f 58 d2       	addsd  %xmm2,%xmm10
    15f2:	45 0f 28 c8          	movaps %xmm8,%xmm9
    15f6:	f3 44 0f 59 c9       	mulss  %xmm1,%xmm9
    15fb:	f3 44 0f 2c eb       	cvttss2si %xmm3,%r13d
    1600:	44 89 65 e8          	mov    %r12d,-0x18(%rbp)
    1604:	f2 45 0f 5a da       	cvtsd2ss %xmm10,%xmm11
    1609:	f3 45 0f 5a eb       	cvtss2sd %xmm11,%xmm13
    160e:	f2 44 0f 58 ea       	addsd  %xmm2,%xmm13
    1613:	45 0f 28 e3          	movaps %xmm11,%xmm12
    1617:	f3 44 0f 59 e1       	mulss  %xmm1,%xmm12
    161c:	f3 44 0f 2c f6       	cvttss2si %xmm6,%r14d
    1621:	44 89 6d ec          	mov    %r13d,-0x14(%rbp)
    1625:	f2 45 0f 5a f5       	cvtsd2ss %xmm13,%xmm14
    162a:	45 0f 28 fe          	movaps %xmm14,%xmm15
    162e:	f3 45 0f 2c f9       	cvttss2si %xmm9,%r15d
    1633:	f3 41 0f 5a c6       	cvtss2sd %xmm14,%xmm0
    1638:	f3 44 0f 59 f9       	mulss  %xmm1,%xmm15
    163d:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    1641:	44 89 75 f0          	mov    %r14d,-0x10(%rbp)
    1645:	f3 41 0f 2c c4       	cvttss2si %xmm12,%eax
    164a:	44 89 7d f4          	mov    %r15d,-0xc(%rbp)
    164e:	f2 0f 5a e0          	cvtsd2ss %xmm0,%xmm4
    1652:	f3 41 0f 2c d7       	cvttss2si %xmm15,%edx
    1657:	89 45 f8             	mov    %eax,-0x8(%rbp)
    165a:	89 55 fc             	mov    %edx,-0x4(%rbp)
    165d:	39 f9                	cmp    %edi,%ecx
    165f:	0f 85 64 fe ff ff    	jne    14c9 <main+0xa9>
    1665:	81 c1 2c 01 00 00    	add    $0x12c,%ecx
    166b:	48 81 c3 b0 04 00 00 	add    $0x4b0,%rbx
    1672:	81 f9 8c eb 00 00    	cmp    $0xeb8c,%ecx
    1678:	0f 85 42 fe ff ff    	jne    14c0 <main+0xa0>
    167e:	f3 44 0f 10 2d 45 1a 	movss  0x1a45(%rip),%xmm13        # 30cc <_IO_stdin_used+0xcc>
    1685:	00 00 
    1687:	48 89 f3             	mov    %rsi,%rbx
    168a:	bf d8 00 00 00       	mov    $0xd8,%edi
    168f:	90                   	nop
    1690:	8d b7 28 ff ff ff    	lea    -0xd8(%rdi),%esi
    1696:	48 89 dd             	mov    %rbx,%rbp
    1699:	66 0f ef ed          	pxor   %xmm5,%xmm5
    169d:	66 0f ef f6          	pxor   %xmm6,%xmm6
    16a1:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
    16a6:	83 c6 08             	add    $0x8,%esi
    16a9:	f3 41 0f 5a ed       	cvtss2sd %xmm13,%xmm5
    16ae:	f2 0f 58 ea          	addsd  %xmm2,%xmm5
    16b2:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    16b7:	66 45 0f ef db       	pxor   %xmm11,%xmm11
    16bc:	66 45 0f ef e4       	pxor   %xmm12,%xmm12
    16c1:	66 0f ef e4          	pxor   %xmm4,%xmm4
    16c5:	41 0f 28 dd          	movaps %xmm13,%xmm3
    16c9:	48 83 c5 20          	add    $0x20,%rbp
    16cd:	f3 0f 59 d9          	mulss  %xmm1,%xmm3
    16d1:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    16d6:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    16db:	f2 0f 5a f5          	cvtsd2ss %xmm5,%xmm6
    16df:	f3 44 0f 5a c6       	cvtss2sd %xmm6,%xmm8
    16e4:	0f 28 fe             	movaps %xmm6,%xmm7
    16e7:	f2 44 0f 58 c2       	addsd  %xmm2,%xmm8
    16ec:	f3 0f 59 f9          	mulss  %xmm1,%xmm7
    16f0:	66 0f ef ed          	pxor   %xmm5,%xmm5
    16f4:	66 0f ef f6          	pxor   %xmm6,%xmm6
    16f8:	f2 45 0f 5a c8       	cvtsd2ss %xmm8,%xmm9
    16fd:	f3 45 0f 5a d9       	cvtss2sd %xmm9,%xmm11
    1702:	f2 44 0f 58 da       	addsd  %xmm2,%xmm11
    1707:	45 0f 28 d1          	movaps %xmm9,%xmm10
    170b:	f3 44 0f 59 d1       	mulss  %xmm1,%xmm10
    1710:	f3 0f 2c cb          	cvttss2si %xmm3,%ecx
    1714:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    1719:	f2 45 0f 5a e3       	cvtsd2ss %xmm11,%xmm12
    171e:	f3 45 0f 5a f4       	cvtss2sd %xmm12,%xmm14
    1723:	f2 44 0f 58 f2       	addsd  %xmm2,%xmm14
    1728:	45 0f 28 ec          	movaps %xmm12,%xmm13
    172c:	f3 44 0f 2c c7       	cvttss2si %xmm7,%r8d
    1731:	66 0f ef ff          	pxor   %xmm7,%xmm7
    1735:	66 45 0f ef e4       	pxor   %xmm12,%xmm12
    173a:	f3 44 0f 59 e9       	mulss  %xmm1,%xmm13
    173f:	89 4d e0             	mov    %ecx,-0x20(%rbp)
    1742:	f2 45 0f 5a fe       	cvtsd2ss %xmm14,%xmm15
    1747:	f3 41 0f 5a e7       	cvtss2sd %xmm15,%xmm4
    174c:	f2 0f 58 e2          	addsd  %xmm2,%xmm4
    1750:	41 0f 28 c7          	movaps %xmm15,%xmm0
    1754:	f3 45 0f 2c ca       	cvttss2si %xmm10,%r9d
    1759:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
    175d:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
    1762:	44 89 45 e4          	mov    %r8d,-0x1c(%rbp)
    1766:	f2 0f 5a ec          	cvtsd2ss %xmm4,%xmm5
    176a:	f3 0f 5a f5          	cvtss2sd %xmm5,%xmm6
    176e:	f2 0f 58 f2          	addsd  %xmm2,%xmm6
    1772:	0f 28 dd             	movaps %xmm5,%xmm3
    1775:	f3 0f 59 d9          	mulss  %xmm1,%xmm3
    1779:	f3 45 0f 2c d5       	cvttss2si %xmm13,%r10d
    177e:	66 45 0f ef ed       	pxor   %xmm13,%xmm13
    1783:	44 89 4d e8          	mov    %r9d,-0x18(%rbp)
    1787:	f2 0f 5a fe          	cvtsd2ss %xmm6,%xmm7
    178b:	f3 44 0f 5a cf       	cvtss2sd %xmm7,%xmm9
    1790:	f2 44 0f 58 ca       	addsd  %xmm2,%xmm9
    1795:	44 0f 28 c7          	movaps %xmm7,%xmm8
    1799:	f3 44 0f 59 c1       	mulss  %xmm1,%xmm8
    179e:	f3 44 0f 2c d8       	cvttss2si %xmm0,%r11d
    17a3:	44 89 55 ec          	mov    %r10d,-0x14(%rbp)
    17a7:	f2 45 0f 5a d1       	cvtsd2ss %xmm9,%xmm10
    17ac:	45 0f 28 da          	movaps %xmm10,%xmm11
    17b0:	f3 44 0f 2c e3       	cvttss2si %xmm3,%r12d
    17b5:	f3 45 0f 5a e2       	cvtss2sd %xmm10,%xmm12
    17ba:	f3 44 0f 59 d9       	mulss  %xmm1,%xmm11
    17bf:	f2 44 0f 58 e2       	addsd  %xmm2,%xmm12
    17c4:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
    17c8:	f3 45 0f 2c e8       	cvttss2si %xmm8,%r13d
    17cd:	44 89 65 f4          	mov    %r12d,-0xc(%rbp)
    17d1:	f2 45 0f 5a ec       	cvtsd2ss %xmm12,%xmm13
    17d6:	f3 45 0f 2c f3       	cvttss2si %xmm11,%r14d
    17db:	44 89 6d f8          	mov    %r13d,-0x8(%rbp)
    17df:	44 89 75 fc          	mov    %r14d,-0x4(%rbp)
    17e3:	39 f7                	cmp    %esi,%edi
    17e5:	0f 85 ae fe ff ff    	jne    1699 <main+0x279>
    17eb:	81 c7 d8 00 00 00    	add    $0xd8,%edi
    17f1:	48 81 c3 60 03 00 00 	add    $0x360,%rbx
    17f8:	81 ff f8 fd 00 00    	cmp    $0xfdf8,%edi
    17fe:	0f 85 8c fe ff ff    	jne    1690 <main+0x270>
    1804:	48 8d b4 24 a0 00 00 	lea    0xa0(%rsp),%rsi
    180b:	00 
    180c:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
    1813:	00 
    1814:	e8 67 0e 00 00       	callq  2680 <_ZN6MatrixmlERS_>
    1819:	8b 9c 24 98 00 00 00 	mov    0x98(%rsp),%ebx
    1820:	be 01 00 00 00       	mov    $0x1,%esi
    1825:	8b bc 24 ac 00 00 00 	mov    0xac(%rsp),%edi
    182c:	49 89 d7             	mov    %rdx,%r15
    182f:	48 89 54 24 70       	mov    %rdx,0x70(%rsp)
    1834:	49 c1 ef 20          	shr    $0x20,%r15
    1838:	89 54 24 6c          	mov    %edx,0x6c(%rsp)
    183c:	8b 94 24 9c 00 00 00 	mov    0x9c(%rsp),%edx
    1843:	4c 89 bc 24 80 00 00 	mov    %r15,0x80(%rsp)
    184a:	00 
    184b:	44 89 7c 24 78       	mov    %r15d,0x78(%rsp)
    1850:	41 89 df             	mov    %ebx,%r15d
    1853:	83 e2 f0             	and    $0xfffffff0,%edx
    1856:	89 5c 24 34          	mov    %ebx,0x34(%rsp)
    185a:	0f af df             	imul   %edi,%ebx
    185d:	41 83 e7 f0          	and    $0xfffffff0,%r15d
    1861:	83 c2 10             	add    $0x10,%edx
    1864:	41 83 c7 10          	add    $0x10,%r15d
    1868:	89 7c 24 30          	mov    %edi,0x30(%rsp)
    186c:	c1 ea 04             	shr    $0x4,%edx
    186f:	41 c1 ef 04          	shr    $0x4,%r15d
    1873:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    187a:	00 
    187b:	8d 3c 9d 00 00 00 00 	lea    0x0(,%rbx,4),%edi
    1882:	89 54 24 64          	mov    %edx,0x64(%rsp)
    1886:	44 89 7c 24 68       	mov    %r15d,0x68(%rsp)
    188b:	89 5c 24 7c          	mov    %ebx,0x7c(%rsp)
    188f:	e8 7c f8 ff ff       	callq  1110 <calloc@plt>
    1894:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%rsp)
    189b:	00 
    189c:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    18a1:	c7 44 24 60 00 00 00 	movl   $0x0,0x60(%rsp)
    18a8:	00 
    18a9:	45 85 ff             	test   %r15d,%r15d
    18ac:	0f 84 8f 07 00 00    	je     2041 <main+0xc21>
    18b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    18b8:	8b 74 24 64          	mov    0x64(%rsp),%esi
    18bc:	85 f6                	test   %esi,%esi
    18be:	0f 84 6a 07 00 00    	je     202e <main+0xc0e>
    18c4:	03 74 24 10          	add    0x10(%rsp),%esi
    18c8:	89 74 24 54          	mov    %esi,0x54(%rsp)
    18cc:	0f 1f 40 00          	nopl   0x0(%rax)
    18d0:	8b 4c 24 10          	mov    0x10(%rsp),%ecx
    18d4:	44 8b ac 24 98 00 00 	mov    0x98(%rsp),%r13d
    18db:	00 
    18dc:	89 c8                	mov    %ecx,%eax
    18de:	83 c1 01             	add    $0x1,%ecx
    18e1:	89 4c 24 10          	mov    %ecx,0x10(%rsp)
    18e5:	44 39 6c 24 34       	cmp    %r13d,0x34(%rsp)
    18ea:	74 13                	je     18ff <main+0x4df>
    18ec:	44 8b 44 24 30       	mov    0x30(%rsp),%r8d
    18f1:	44 3b 84 24 ac 00 00 	cmp    0xac(%rsp),%r8d
    18f8:	00 
    18f9:	0f 85 b2 fa ff ff    	jne    13b1 <main.cold+0x1e8>
    18ff:	8b 9c 24 9c 00 00 00 	mov    0x9c(%rsp),%ebx
    1906:	31 d2                	xor    %edx,%edx
    1908:	be 01 00 00 00       	mov    $0x1,%esi
    190d:	89 df                	mov    %ebx,%edi
    190f:	83 e7 f0             	and    $0xfffffff0,%edi
    1912:	83 c7 10             	add    $0x10,%edi
    1915:	41 89 f9             	mov    %edi,%r9d
    1918:	bf 00 04 00 00       	mov    $0x400,%edi
    191d:	41 c1 e9 04          	shr    $0x4,%r9d
    1921:	41 f7 f1             	div    %r9d
    1924:	41 89 c6             	mov    %eax,%r14d
    1927:	41 89 d4             	mov    %edx,%r12d
    192a:	e8 e1 f7 ff ff       	callq  1110 <calloc@plt>
    192f:	45 89 f1             	mov    %r14d,%r9d
    1932:	45 89 e7             	mov    %r12d,%r15d
    1935:	44 89 ee             	mov    %r13d,%esi
    1938:	41 c1 e1 04          	shl    $0x4,%r9d
    193c:	41 c1 e7 04          	shl    $0x4,%r15d
    1940:	0f af f3             	imul   %ebx,%esi
    1943:	48 89 c5             	mov    %rax,%rbp
    1946:	45 89 c8             	mov    %r9d,%r8d
    1949:	44 89 4c 24 20       	mov    %r9d,0x20(%rsp)
    194e:	31 c0                	xor    %eax,%eax
    1950:	44 0f af c3          	imul   %ebx,%r8d
    1954:	45 01 f8             	add    %r15d,%r8d
    1957:	eb 1f                	jmp    1978 <main+0x558>
    1959:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1960:	8d 50 10             	lea    0x10(%rax),%edx
    1963:	41 83 c1 01          	add    $0x1,%r9d
    1967:	89 d0                	mov    %edx,%eax
    1969:	41 01 d8             	add    %ebx,%r8d
    196c:	81 fa 00 01 00 00    	cmp    $0x100,%edx
    1972:	0f 84 e8 01 00 00    	je     1b60 <main+0x740>
    1978:	45 39 cd             	cmp    %r9d,%r13d
    197b:	76 e3                	jbe    1960 <main+0x540>
    197d:	44 89 f9             	mov    %r15d,%ecx
    1980:	44 89 c7             	mov    %r8d,%edi
    1983:	44 8d 50 10          	lea    0x10(%rax),%r10d
    1987:	29 c1                	sub    %eax,%ecx
    1989:	e9 af 01 00 00       	jmpq   1b3d <main+0x71d>
    198e:	66 90                	xchg   %ax,%ax
    1990:	4c 8b b4 24 90 00 00 	mov    0x90(%rsp),%r14
    1997:	00 
    1998:	89 fa                	mov    %edi,%edx
    199a:	45 8b 1c 96          	mov    (%r14,%rdx,4),%r11d
    199e:	3d 00 01 00 00       	cmp    $0x100,%eax
    19a3:	0f 87 e1 09 00 00    	ja     238a <main+0xf6a>
    19a9:	89 c2                	mov    %eax,%edx
    19ab:	44 89 5c 95 00       	mov    %r11d,0x0(%rbp,%rdx,4)
    19b0:	83 c0 01             	add    $0x1,%eax
    19b3:	83 c7 01             	add    $0x1,%edi
    19b6:	44 8d 34 01          	lea    (%rcx,%rax,1),%r14d
    19ba:	44 39 f3             	cmp    %r14d,%ebx
    19bd:	76 28                	jbe    19e7 <main+0x5c7>
    19bf:	39 fe                	cmp    %edi,%esi
    19c1:	0f 82 b8 f9 ff ff    	jb     137f <main.cold+0x1b6>
    19c7:	4c 8b 9c 24 90 00 00 	mov    0x90(%rsp),%r11
    19ce:	00 
    19cf:	89 fa                	mov    %edi,%edx
    19d1:	45 8b 34 93          	mov    (%r11,%rdx,4),%r14d
    19d5:	3d 00 01 00 00       	cmp    $0x100,%eax
    19da:	0f 87 56 f9 ff ff    	ja     1336 <main.cold+0x16d>
    19e0:	89 c2                	mov    %eax,%edx
    19e2:	44 89 74 95 00       	mov    %r14d,0x0(%rbp,%rdx,4)
    19e7:	8d 50 01             	lea    0x1(%rax),%edx
    19ea:	44 8d 5f 01          	lea    0x1(%rdi),%r11d
    19ee:	44 8d 34 11          	lea    (%rcx,%rdx,1),%r14d
    19f2:	44 39 f3             	cmp    %r14d,%ebx
    19f5:	76 26                	jbe    1a1d <main+0x5fd>
    19f7:	44 39 de             	cmp    %r11d,%esi
    19fa:	0f 82 7f f9 ff ff    	jb     137f <main.cold+0x1b6>
    1a00:	4c 8b b4 24 90 00 00 	mov    0x90(%rsp),%r14
    1a07:	00 
    1a08:	47 8b 1c 9e          	mov    (%r14,%r11,4),%r11d
    1a0c:	81 fa 00 01 00 00    	cmp    $0x100,%edx
    1a12:	0f 87 1e f9 ff ff    	ja     1336 <main.cold+0x16d>
    1a18:	44 89 5c 95 00       	mov    %r11d,0x0(%rbp,%rdx,4)
    1a1d:	8d 50 02             	lea    0x2(%rax),%edx
    1a20:	44 8d 5f 02          	lea    0x2(%rdi),%r11d
    1a24:	44 8d 34 11          	lea    (%rcx,%rdx,1),%r14d
    1a28:	44 39 f3             	cmp    %r14d,%ebx
    1a2b:	76 26                	jbe    1a53 <main+0x633>
    1a2d:	44 39 de             	cmp    %r11d,%esi
    1a30:	0f 82 49 f9 ff ff    	jb     137f <main.cold+0x1b6>
    1a36:	4c 8b b4 24 90 00 00 	mov    0x90(%rsp),%r14
    1a3d:	00 
    1a3e:	47 8b 1c 9e          	mov    (%r14,%r11,4),%r11d
    1a42:	81 fa 00 01 00 00    	cmp    $0x100,%edx
    1a48:	0f 87 e8 f8 ff ff    	ja     1336 <main.cold+0x16d>
    1a4e:	44 89 5c 95 00       	mov    %r11d,0x0(%rbp,%rdx,4)
    1a53:	8d 50 03             	lea    0x3(%rax),%edx
    1a56:	44 8d 5f 03          	lea    0x3(%rdi),%r11d
    1a5a:	44 8d 34 11          	lea    (%rcx,%rdx,1),%r14d
    1a5e:	44 39 f3             	cmp    %r14d,%ebx
    1a61:	76 26                	jbe    1a89 <main+0x669>
    1a63:	44 39 de             	cmp    %r11d,%esi
    1a66:	0f 82 13 f9 ff ff    	jb     137f <main.cold+0x1b6>
    1a6c:	4c 8b b4 24 90 00 00 	mov    0x90(%rsp),%r14
    1a73:	00 
    1a74:	47 8b 1c 9e          	mov    (%r14,%r11,4),%r11d
    1a78:	81 fa 00 01 00 00    	cmp    $0x100,%edx
    1a7e:	0f 87 b2 f8 ff ff    	ja     1336 <main.cold+0x16d>
    1a84:	44 89 5c 95 00       	mov    %r11d,0x0(%rbp,%rdx,4)
    1a89:	8d 50 04             	lea    0x4(%rax),%edx
    1a8c:	44 8d 5f 04          	lea    0x4(%rdi),%r11d
    1a90:	44 8d 34 11          	lea    (%rcx,%rdx,1),%r14d
    1a94:	44 39 f3             	cmp    %r14d,%ebx
    1a97:	76 26                	jbe    1abf <main+0x69f>
    1a99:	44 39 de             	cmp    %r11d,%esi
    1a9c:	0f 82 dd f8 ff ff    	jb     137f <main.cold+0x1b6>
    1aa2:	4c 8b b4 24 90 00 00 	mov    0x90(%rsp),%r14
    1aa9:	00 
    1aaa:	47 8b 1c 9e          	mov    (%r14,%r11,4),%r11d
    1aae:	81 fa 00 01 00 00    	cmp    $0x100,%edx
    1ab4:	0f 87 7c f8 ff ff    	ja     1336 <main.cold+0x16d>
    1aba:	44 89 5c 95 00       	mov    %r11d,0x0(%rbp,%rdx,4)
    1abf:	8d 50 05             	lea    0x5(%rax),%edx
    1ac2:	44 8d 5f 05          	lea    0x5(%rdi),%r11d
    1ac6:	44 8d 34 11          	lea    (%rcx,%rdx,1),%r14d
    1aca:	44 39 f3             	cmp    %r14d,%ebx
    1acd:	76 26                	jbe    1af5 <main+0x6d5>
    1acf:	44 39 de             	cmp    %r11d,%esi
    1ad2:	0f 82 a7 f8 ff ff    	jb     137f <main.cold+0x1b6>
    1ad8:	4c 8b b4 24 90 00 00 	mov    0x90(%rsp),%r14
    1adf:	00 
    1ae0:	47 8b 1c 9e          	mov    (%r14,%r11,4),%r11d
    1ae4:	81 fa 00 01 00 00    	cmp    $0x100,%edx
    1aea:	0f 87 46 f8 ff ff    	ja     1336 <main.cold+0x16d>
    1af0:	44 89 5c 95 00       	mov    %r11d,0x0(%rbp,%rdx,4)
    1af5:	8d 50 06             	lea    0x6(%rax),%edx
    1af8:	44 8d 5f 06          	lea    0x6(%rdi),%r11d
    1afc:	44 8d 34 11          	lea    (%rcx,%rdx,1),%r14d
    1b00:	44 39 f3             	cmp    %r14d,%ebx
    1b03:	76 26                	jbe    1b2b <main+0x70b>
    1b05:	44 39 de             	cmp    %r11d,%esi
    1b08:	0f 82 71 f8 ff ff    	jb     137f <main.cold+0x1b6>
    1b0e:	4c 8b b4 24 90 00 00 	mov    0x90(%rsp),%r14
    1b15:	00 
    1b16:	47 8b 1c 9e          	mov    (%r14,%r11,4),%r11d
    1b1a:	81 fa 00 01 00 00    	cmp    $0x100,%edx
    1b20:	0f 87 10 f8 ff ff    	ja     1336 <main.cold+0x16d>
    1b26:	44 89 5c 95 00       	mov    %r11d,0x0(%rbp,%rdx,4)
    1b2b:	83 c0 07             	add    $0x7,%eax
    1b2e:	83 c7 07             	add    $0x7,%edi
    1b31:	44 89 d2             	mov    %r10d,%edx
    1b34:	41 39 c2             	cmp    %eax,%r10d
    1b37:	0f 84 26 fe ff ff    	je     1963 <main+0x543>
    1b3d:	44 8d 1c 01          	lea    (%rcx,%rax,1),%r11d
    1b41:	44 39 db             	cmp    %r11d,%ebx
    1b44:	0f 86 66 fe ff ff    	jbe    19b0 <main+0x590>
    1b4a:	39 fe                	cmp    %edi,%esi
    1b4c:	0f 83 3e fe ff ff    	jae    1990 <main+0x570>
    1b52:	e9 28 f8 ff ff       	jmpq   137f <main.cold+0x1b6>
    1b57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1b5e:	00 00 
    1b60:	8b 9c 24 ac 00 00 00 	mov    0xac(%rsp),%ebx
    1b67:	be 01 00 00 00       	mov    $0x1,%esi
    1b6c:	41 89 d9             	mov    %ebx,%r9d
    1b6f:	89 df                	mov    %ebx,%edi
    1b71:	41 c1 e1 04          	shl    $0x4,%r9d
    1b75:	c1 e7 06             	shl    $0x6,%edi
    1b78:	44 89 4c 24 18       	mov    %r9d,0x18(%rsp)
    1b7d:	e8 8e f5 ff ff       	callq  1110 <calloc@plt>
    1b82:	8b bc 24 a8 00 00 00 	mov    0xa8(%rsp),%edi
    1b89:	89 fe                	mov    %edi,%esi
    1b8b:	89 7c 24 14          	mov    %edi,0x14(%rsp)
    1b8f:	83 e6 f0             	and    $0xfffffff0,%esi
    1b92:	83 c6 10             	add    $0x10,%esi
    1b95:	c1 ee 04             	shr    $0x4,%esi
    1b98:	41 39 f4             	cmp    %esi,%r12d
    1b9b:	0f 83 35 f7 ff ff    	jae    12d6 <main.cold+0x10d>
    1ba1:	44 8b 44 24 18       	mov    0x18(%rsp),%r8d
    1ba6:	41 89 db             	mov    %ebx,%r11d
    1ba9:	45 8d 67 10          	lea    0x10(%r15),%r12d
    1bad:	8d 4b ff             	lea    -0x1(%rbx),%ecx
    1bb0:	0f af fb             	imul   %ebx,%edi
    1bb3:	4c 8d 50 04          	lea    0x4(%rax),%r10
    1bb7:	44 89 64 24 50       	mov    %r12d,0x50(%rsp)
    1bbc:	45 31 ed             	xor    %r13d,%r13d
    1bbf:	45 0f af df          	imul   %r15d,%r11d
    1bc3:	44 89 44 24 0c       	mov    %r8d,0xc(%rsp)
    1bc8:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
    1bcd:	4c 89 54 24 40       	mov    %r10,0x40(%rsp)
    1bd2:	48 89 6c 24 48       	mov    %rbp,0x48(%rsp)
    1bd7:	eb 20                	jmp    1bf9 <main+0x7d9>
    1bd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1be0:	29 5c 24 0c          	sub    %ebx,0xc(%rsp)
    1be4:	41 83 c7 01          	add    $0x1,%r15d
    1be8:	41 01 dd             	add    %ebx,%r13d
    1beb:	41 01 db             	add    %ebx,%r11d
    1bee:	44 39 7c 24 50       	cmp    %r15d,0x50(%rsp)
    1bf3:	0f 84 a7 02 00 00    	je     1ea0 <main+0xa80>
    1bf9:	44 39 7c 24 14       	cmp    %r15d,0x14(%rsp)
    1bfe:	76 e0                	jbe    1be0 <main+0x7c0>
    1c00:	85 db                	test   %ebx,%ebx
    1c02:	74 dc                	je     1be0 <main+0x7c0>
    1c04:	44 39 df             	cmp    %r11d,%edi
    1c07:	0f 82 97 f6 ff ff    	jb     12a4 <main.cold+0xdb>
    1c0d:	48 8b b4 24 a0 00 00 	mov    0xa0(%rsp),%rsi
    1c14:	00 
    1c15:	44 89 dd             	mov    %r11d,%ebp
    1c18:	8b 2c ae             	mov    (%rsi,%rbp,4),%ebp
    1c1b:	44 39 6c 24 18       	cmp    %r13d,0x18(%rsp)
    1c20:	0f 82 5f 07 00 00    	jb     2385 <main+0xf65>
    1c26:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
    1c2b:	45 89 ee             	mov    %r13d,%r14d
    1c2e:	44 8b 44 24 0c       	mov    0xc(%rsp),%r8d
    1c33:	41 8d 4b 01          	lea    0x1(%r11),%ecx
    1c37:	4a 8d 14 b0          	lea    (%rax,%r14,4),%rdx
    1c3b:	4c 8b 54 24 40       	mov    0x40(%rsp),%r10
    1c40:	4f 8d 24 31          	lea    (%r9,%r14,1),%r12
    1c44:	4d 01 f0             	add    %r14,%r8
    1c47:	4e 8d 0c a0          	lea    (%rax,%r12,4),%r9
    1c4b:	4f 8d 04 82          	lea    (%r10,%r8,4),%r8
    1c4f:	4c 89 4c 24 28       	mov    %r9,0x28(%rsp)
    1c54:	49 29 d1             	sub    %rdx,%r9
    1c57:	4d 89 ce             	mov    %r9,%r14
    1c5a:	49 c1 ee 02          	shr    $0x2,%r14
    1c5e:	41 83 e6 07          	and    $0x7,%r14d
    1c62:	0f 84 16 02 00 00    	je     1e7e <main+0xa5e>
    1c68:	89 2a                	mov    %ebp,(%rdx)
    1c6a:	39 cf                	cmp    %ecx,%edi
    1c6c:	0f 82 32 f6 ff ff    	jb     12a4 <main.cold+0xdb>
    1c72:	48 83 c2 04          	add    $0x4,%rdx
    1c76:	8b 2c 8e             	mov    (%rsi,%rcx,4),%ebp
    1c79:	41 8d 4b 02          	lea    0x2(%r11),%ecx
    1c7d:	49 39 d0             	cmp    %rdx,%r8
    1c80:	0f 84 d5 f5 ff ff    	je     125b <main.cold+0x92>
    1c86:	49 83 fe 01          	cmp    $0x1,%r14
    1c8a:	0f 84 ee 01 00 00    	je     1e7e <main+0xa5e>
    1c90:	49 83 fe 02          	cmp    $0x2,%r14
    1c94:	0f 84 bf 00 00 00    	je     1d59 <main+0x939>
    1c9a:	49 83 fe 03          	cmp    $0x3,%r14
    1c9e:	0f 84 94 00 00 00    	je     1d38 <main+0x918>
    1ca4:	49 83 fe 04          	cmp    $0x4,%r14
    1ca8:	74 6d                	je     1d17 <main+0x8f7>
    1caa:	49 83 fe 05          	cmp    $0x5,%r14
    1cae:	74 46                	je     1cf6 <main+0x8d6>
    1cb0:	49 83 fe 06          	cmp    $0x6,%r14
    1cb4:	74 1f                	je     1cd5 <main+0x8b5>
    1cb6:	89 2a                	mov    %ebp,(%rdx)
    1cb8:	39 cf                	cmp    %ecx,%edi
    1cba:	0f 82 e4 f5 ff ff    	jb     12a4 <main.cold+0xdb>
    1cc0:	89 cd                	mov    %ecx,%ebp
    1cc2:	48 83 c2 04          	add    $0x4,%rdx
    1cc6:	83 c1 01             	add    $0x1,%ecx
    1cc9:	8b 2c ae             	mov    (%rsi,%rbp,4),%ebp
    1ccc:	49 39 d0             	cmp    %rdx,%r8
    1ccf:	0f 84 86 f5 ff ff    	je     125b <main.cold+0x92>
    1cd5:	89 2a                	mov    %ebp,(%rdx)
    1cd7:	39 cf                	cmp    %ecx,%edi
    1cd9:	0f 82 c5 f5 ff ff    	jb     12a4 <main.cold+0xdb>
    1cdf:	41 89 cc             	mov    %ecx,%r12d
    1ce2:	48 83 c2 04          	add    $0x4,%rdx
    1ce6:	83 c1 01             	add    $0x1,%ecx
    1ce9:	42 8b 2c a6          	mov    (%rsi,%r12,4),%ebp
    1ced:	49 39 d0             	cmp    %rdx,%r8
    1cf0:	0f 84 65 f5 ff ff    	je     125b <main.cold+0x92>
    1cf6:	89 2a                	mov    %ebp,(%rdx)
    1cf8:	39 cf                	cmp    %ecx,%edi
    1cfa:	0f 82 a4 f5 ff ff    	jb     12a4 <main.cold+0xdb>
    1d00:	41 89 c9             	mov    %ecx,%r9d
    1d03:	48 83 c2 04          	add    $0x4,%rdx
    1d07:	83 c1 01             	add    $0x1,%ecx
    1d0a:	42 8b 2c 8e          	mov    (%rsi,%r9,4),%ebp
    1d0e:	49 39 d0             	cmp    %rdx,%r8
    1d11:	0f 84 44 f5 ff ff    	je     125b <main.cold+0x92>
    1d17:	89 2a                	mov    %ebp,(%rdx)
    1d19:	39 cf                	cmp    %ecx,%edi
    1d1b:	0f 82 83 f5 ff ff    	jb     12a4 <main.cold+0xdb>
    1d21:	41 89 ca             	mov    %ecx,%r10d
    1d24:	48 83 c2 04          	add    $0x4,%rdx
    1d28:	83 c1 01             	add    $0x1,%ecx
    1d2b:	42 8b 2c 96          	mov    (%rsi,%r10,4),%ebp
    1d2f:	49 39 d0             	cmp    %rdx,%r8
    1d32:	0f 84 23 f5 ff ff    	je     125b <main.cold+0x92>
    1d38:	89 2a                	mov    %ebp,(%rdx)
    1d3a:	39 cf                	cmp    %ecx,%edi
    1d3c:	0f 82 62 f5 ff ff    	jb     12a4 <main.cold+0xdb>
    1d42:	41 89 ce             	mov    %ecx,%r14d
    1d45:	48 83 c2 04          	add    $0x4,%rdx
    1d49:	83 c1 01             	add    $0x1,%ecx
    1d4c:	42 8b 2c b6          	mov    (%rsi,%r14,4),%ebp
    1d50:	49 39 d0             	cmp    %rdx,%r8
    1d53:	0f 84 02 f5 ff ff    	je     125b <main.cold+0x92>
    1d59:	89 2a                	mov    %ebp,(%rdx)
    1d5b:	39 cf                	cmp    %ecx,%edi
    1d5d:	0f 82 41 f5 ff ff    	jb     12a4 <main.cold+0xdb>
    1d63:	89 cd                	mov    %ecx,%ebp
    1d65:	48 83 c2 04          	add    $0x4,%rdx
    1d69:	83 c1 01             	add    $0x1,%ecx
    1d6c:	8b 2c ae             	mov    (%rsi,%rbp,4),%ebp
    1d6f:	49 39 d0             	cmp    %rdx,%r8
    1d72:	0f 85 06 01 00 00    	jne    1e7e <main+0xa5e>
    1d78:	e9 03 06 00 00       	jmpq   2380 <main+0xf60>
    1d7d:	0f 1f 00             	nopl   (%rax)
    1d80:	41 89 cc             	mov    %ecx,%r12d
    1d83:	4c 8d 4a 04          	lea    0x4(%rdx),%r9
    1d87:	44 8d 51 01          	lea    0x1(%rcx),%r10d
    1d8b:	46 8b 34 a6          	mov    (%rsi,%r12,4),%r14d
    1d8f:	4d 39 c8             	cmp    %r9,%r8
    1d92:	0f 84 e3 05 00 00    	je     237b <main+0xf5b>
    1d98:	44 89 72 04          	mov    %r14d,0x4(%rdx)
    1d9c:	44 39 d7             	cmp    %r10d,%edi
    1d9f:	0f 82 ff f4 ff ff    	jb     12a4 <main.cold+0xdb>
    1da5:	44 89 d5             	mov    %r10d,%ebp
    1da8:	4c 8d 72 08          	lea    0x8(%rdx),%r14
    1dac:	44 8b 24 ae          	mov    (%rsi,%rbp,4),%r12d
    1db0:	8d 69 02             	lea    0x2(%rcx),%ebp
    1db3:	4d 39 f0             	cmp    %r14,%r8
    1db6:	0f 84 9f f4 ff ff    	je     125b <main.cold+0x92>
    1dbc:	44 89 62 08          	mov    %r12d,0x8(%rdx)
    1dc0:	39 ef                	cmp    %ebp,%edi
    1dc2:	0f 82 dc f4 ff ff    	jb     12a4 <main.cold+0xdb>
    1dc8:	4c 8d 72 0c          	lea    0xc(%rdx),%r14
    1dcc:	44 8b 24 ae          	mov    (%rsi,%rbp,4),%r12d
    1dd0:	8d 69 03             	lea    0x3(%rcx),%ebp
    1dd3:	4d 39 f0             	cmp    %r14,%r8
    1dd6:	0f 84 7f f4 ff ff    	je     125b <main.cold+0x92>
    1ddc:	44 89 62 0c          	mov    %r12d,0xc(%rdx)
    1de0:	39 ef                	cmp    %ebp,%edi
    1de2:	0f 82 bc f4 ff ff    	jb     12a4 <main.cold+0xdb>
    1de8:	4c 8d 62 10          	lea    0x10(%rdx),%r12
    1dec:	44 8b 34 ae          	mov    (%rsi,%rbp,4),%r14d
    1df0:	83 c1 04             	add    $0x4,%ecx
    1df3:	4d 39 e0             	cmp    %r12,%r8
    1df6:	0f 84 5f f4 ff ff    	je     125b <main.cold+0x92>
    1dfc:	44 89 72 10          	mov    %r14d,0x10(%rdx)
    1e00:	39 cf                	cmp    %ecx,%edi
    1e02:	0f 82 9c f4 ff ff    	jb     12a4 <main.cold+0xdb>
    1e08:	49 8d 69 10          	lea    0x10(%r9),%rbp
    1e0c:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
    1e0f:	41 8d 52 04          	lea    0x4(%r10),%edx
    1e13:	49 39 e8             	cmp    %rbp,%r8
    1e16:	0f 84 3f f4 ff ff    	je     125b <main.cold+0x92>
    1e1c:	41 89 49 10          	mov    %ecx,0x10(%r9)
    1e20:	39 d7                	cmp    %edx,%edi
    1e22:	0f 82 7c f4 ff ff    	jb     12a4 <main.cold+0xdb>
    1e28:	4d 8d 61 14          	lea    0x14(%r9),%r12
    1e2c:	44 8b 34 96          	mov    (%rsi,%rdx,4),%r14d
    1e30:	41 8d 4a 05          	lea    0x5(%r10),%ecx
    1e34:	4d 39 e0             	cmp    %r12,%r8
    1e37:	0f 84 1e f4 ff ff    	je     125b <main.cold+0x92>
    1e3d:	45 89 71 14          	mov    %r14d,0x14(%r9)
    1e41:	39 cf                	cmp    %ecx,%edi
    1e43:	0f 82 5b f4 ff ff    	jb     12a4 <main.cold+0xdb>
    1e49:	49 8d 69 18          	lea    0x18(%r9),%rbp
    1e4d:	44 8b 34 8e          	mov    (%rsi,%rcx,4),%r14d
    1e51:	41 8d 52 06          	lea    0x6(%r10),%edx
    1e55:	49 39 e8             	cmp    %rbp,%r8
    1e58:	0f 84 fd f3 ff ff    	je     125b <main.cold+0x92>
    1e5e:	45 89 71 18          	mov    %r14d,0x18(%r9)
    1e62:	39 d7                	cmp    %edx,%edi
    1e64:	0f 82 3a f4 ff ff    	jb     12a4 <main.cold+0xdb>
    1e6a:	8b 2c 96             	mov    (%rsi,%rdx,4),%ebp
    1e6d:	49 8d 51 1c          	lea    0x1c(%r9),%rdx
    1e71:	41 8d 4a 07          	lea    0x7(%r10),%ecx
    1e75:	49 39 d0             	cmp    %rdx,%r8
    1e78:	0f 84 f8 04 00 00    	je     2376 <main+0xf56>
    1e7e:	89 2a                	mov    %ebp,(%rdx)
    1e80:	48 39 54 24 28       	cmp    %rdx,0x28(%rsp)
    1e85:	0f 84 55 fd ff ff    	je     1be0 <main+0x7c0>
    1e8b:	39 cf                	cmp    %ecx,%edi
    1e8d:	0f 83 ed fe ff ff    	jae    1d80 <main+0x960>
    1e93:	e9 0c f4 ff ff       	jmpq   12a4 <main.cold+0xdb>
    1e98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1e9f:	00 
    1ea0:	48 8b 6c 24 48       	mov    0x48(%rsp),%rbp
    1ea5:	85 db                	test   %ebx,%ebx
    1ea7:	0f 84 73 01 00 00    	je     2020 <main+0xc00>
    1ead:	8b 7c 24 30          	mov    0x30(%rsp),%edi
    1eb1:	85 ff                	test   %edi,%edi
    1eb3:	0f 84 67 01 00 00    	je     2020 <main+0xc00>
    1eb9:	39 df                	cmp    %ebx,%edi
    1ebb:	41 89 fc             	mov    %edi,%r12d
    1ebe:	4c 8b 6c 24 58       	mov    0x58(%rsp),%r13
    1ec3:	44 0f 47 e3          	cmova  %ebx,%r12d
    1ec7:	0f af 7c 24 20       	imul   0x20(%rsp),%edi
    1ecc:	41 89 fb             	mov    %edi,%r11d
    1ecf:	31 ff                	xor    %edi,%edi
    1ed1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1ed8:	44 8b 4c 24 20       	mov    0x20(%rsp),%r9d
    1edd:	45 89 d8             	mov    %r11d,%r8d
    1ee0:	45 31 d2             	xor    %r10d,%r10d
    1ee3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1ee8:	41 89 ff             	mov    %edi,%r15d
    1eeb:	31 d2                	xor    %edx,%edx
    1eed:	41 8d 72 10          	lea    0x10(%r10),%esi
    1ef1:	45 89 d6             	mov    %r10d,%r14d
    1ef4:	4a 63 4c b5 00       	movslq 0x0(%rbp,%r14,4),%rcx
    1ef9:	45 89 fe             	mov    %r15d,%r14d
    1efc:	4e 63 34 b0          	movslq (%rax,%r14,4),%r14
    1f00:	49 0f af ce          	imul   %r14,%rcx
    1f04:	45 8d 34 1f          	lea    (%r15,%rbx,1),%r14d
    1f08:	4d 89 f7             	mov    %r14,%r15
    1f0b:	4e 63 34 b0          	movslq (%rax,%r14,4),%r14
    1f0f:	41 01 df             	add    %ebx,%r15d
    1f12:	48 01 d1             	add    %rdx,%rcx
    1f15:	41 8d 52 01          	lea    0x1(%r10),%edx
    1f19:	48 63 54 95 00       	movslq 0x0(%rbp,%rdx,4),%rdx
    1f1e:	49 0f af d6          	imul   %r14,%rdx
    1f22:	48 01 ca             	add    %rcx,%rdx
    1f25:	41 8d 4a 02          	lea    0x2(%r10),%ecx
    1f29:	4c 63 74 8d 00       	movslq 0x0(%rbp,%rcx,4),%r14
    1f2e:	44 89 f9             	mov    %r15d,%ecx
    1f31:	41 01 df             	add    %ebx,%r15d
    1f34:	48 63 0c 88          	movslq (%rax,%rcx,4),%rcx
    1f38:	4c 0f af f1          	imul   %rcx,%r14
    1f3c:	49 01 d6             	add    %rdx,%r14
    1f3f:	41 8d 52 03          	lea    0x3(%r10),%edx
    1f43:	48 63 4c 95 00       	movslq 0x0(%rbp,%rdx,4),%rcx
    1f48:	44 89 fa             	mov    %r15d,%edx
    1f4b:	48 63 14 90          	movslq (%rax,%rdx,4),%rdx
    1f4f:	48 0f af ca          	imul   %rdx,%rcx
    1f53:	49 8d 14 0e          	lea    (%r14,%rcx,1),%rdx
    1f57:	45 8d 34 1f          	lea    (%r15,%rbx,1),%r14d
    1f5b:	41 8d 4a 04          	lea    0x4(%r10),%ecx
    1f5f:	4d 89 f7             	mov    %r14,%r15
    1f62:	4e 63 34 b0          	movslq (%rax,%r14,4),%r14
    1f66:	48 63 4c 8d 00       	movslq 0x0(%rbp,%rcx,4),%rcx
    1f6b:	41 01 df             	add    %ebx,%r15d
    1f6e:	49 0f af ce          	imul   %r14,%rcx
    1f72:	48 01 d1             	add    %rdx,%rcx
    1f75:	41 8d 52 05          	lea    0x5(%r10),%edx
    1f79:	4c 63 74 95 00       	movslq 0x0(%rbp,%rdx,4),%r14
    1f7e:	44 89 fa             	mov    %r15d,%edx
    1f81:	48 63 14 90          	movslq (%rax,%rdx,4),%rdx
    1f85:	4c 0f af f2          	imul   %rdx,%r14
    1f89:	41 8d 52 06          	lea    0x6(%r10),%edx
    1f8d:	48 63 54 95 00       	movslq 0x0(%rbp,%rdx,4),%rdx
    1f92:	49 01 ce             	add    %rcx,%r14
    1f95:	41 8d 0c 1f          	lea    (%r15,%rbx,1),%ecx
    1f99:	49 89 cf             	mov    %rcx,%r15
    1f9c:	48 63 0c 88          	movslq (%rax,%rcx,4),%rcx
    1fa0:	48 0f af d1          	imul   %rcx,%rdx
    1fa4:	49 8d 0c 16          	lea    (%r14,%rdx,1),%rcx
    1fa8:	45 8d 34 1f          	lea    (%r15,%rbx,1),%r14d
    1fac:	41 8d 52 07          	lea    0x7(%r10),%edx
    1fb0:	4d 89 f7             	mov    %r14,%r15
    1fb3:	4e 63 34 b0          	movslq (%rax,%r14,4),%r14
    1fb7:	41 83 c2 08          	add    $0x8,%r10d
    1fbb:	48 63 54 95 00       	movslq 0x0(%rbp,%rdx,4),%rdx
    1fc0:	41 01 df             	add    %ebx,%r15d
    1fc3:	49 0f af d6          	imul   %r14,%rdx
    1fc7:	48 01 ca             	add    %rcx,%rdx
    1fca:	41 39 f2             	cmp    %esi,%r10d
    1fcd:	0f 85 1e ff ff ff    	jne    1ef1 <main+0xad1>
    1fd3:	44 39 4c 24 34       	cmp    %r9d,0x34(%rsp)
    1fd8:	76 1b                	jbe    1ff5 <main+0xbd5>
    1fda:	48 c1 fa 10          	sar    $0x10,%rdx
    1fde:	45 89 c2             	mov    %r8d,%r10d
    1fe1:	b9 05 04 00 00       	mov    $0x405,%ecx
    1fe6:	83 c2 01             	add    $0x1,%edx
    1fe9:	83 e2 fe             	and    $0xfffffffe,%edx
    1fec:	48 87 c9             	xchg   %rcx,%rcx
    1fef:	f0 43 01 54 95 00    	lock add %edx,0x0(%r13,%r10,4)
    1ff5:	44 03 44 24 30       	add    0x30(%rsp),%r8d
    1ffa:	41 83 c1 01          	add    $0x1,%r9d
    1ffe:	81 fe 00 01 00 00    	cmp    $0x100,%esi
    2004:	74 0a                	je     2010 <main+0xbf0>
    2006:	41 89 f2             	mov    %esi,%r10d
    2009:	e9 da fe ff ff       	jmpq   1ee8 <main+0xac8>
    200e:	66 90                	xchg   %ax,%ax
    2010:	83 c7 01             	add    $0x1,%edi
    2013:	41 83 c3 01          	add    $0x1,%r11d
    2017:	44 39 e7             	cmp    %r12d,%edi
    201a:	0f 82 b8 fe ff ff    	jb     1ed8 <main+0xab8>
    2020:	8b 44 24 54          	mov    0x54(%rsp),%eax
    2024:	39 44 24 10          	cmp    %eax,0x10(%rsp)
    2028:	0f 85 a2 f8 ff ff    	jne    18d0 <main+0x4b0>
    202e:	83 44 24 60 01       	addl   $0x1,0x60(%rsp)
    2033:	8b 74 24 60          	mov    0x60(%rsp),%esi
    2037:	39 74 24 68          	cmp    %esi,0x68(%rsp)
    203b:	0f 85 77 f8 ff ff    	jne    18b8 <main+0x498>
    2041:	8b 54 24 70          	mov    0x70(%rsp),%edx
    2045:	85 d2                	test   %edx,%edx
    2047:	0f 84 59 01 00 00    	je     21a6 <main+0xd86>
    204d:	8b 4c 24 70          	mov    0x70(%rsp),%ecx
    2051:	0f af 8c 24 80 00 00 	imul   0x80(%rsp),%ecx
    2058:	00 
    2059:	31 ff                	xor    %edi,%edi
    205b:	31 db                	xor    %ebx,%ebx
    205d:	89 7c 24 10          	mov    %edi,0x10(%rsp)
    2061:	44 8b 74 24 78       	mov    0x78(%rsp),%r14d
    2066:	45 31 d2             	xor    %r10d,%r10d
    2069:	48 8b 6c 24 58       	mov    0x58(%rsp),%rbp
    206e:	44 8b 7c 24 7c       	mov    0x7c(%rsp),%r15d
    2073:	89 4c 24 0c          	mov    %ecx,0xc(%rsp)
    2077:	4c 8b 8c 24 88 00 00 	mov    0x88(%rsp),%r9
    207e:	00 
    207f:	90                   	nop
    2080:	44 8b 64 24 10       	mov    0x10(%rsp),%r12d
    2085:	45 89 d5             	mov    %r10d,%r13d
    2088:	31 d2                	xor    %edx,%edx
    208a:	45 85 f6             	test   %r14d,%r14d
    208d:	0f 84 f9 00 00 00    	je     218c <main+0xd6c>
    2093:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    2097:	44 29 d0             	sub    %r10d,%eax
    209a:	a8 01                	test   $0x1,%al
    209c:	75 4f                	jne    20ed <main+0xccd>
    209e:	44 39 54 24 0c       	cmp    %r10d,0xc(%rsp)
    20a3:	0f 82 52 f1 ff ff    	jb     11fb <main.cold+0x32>
    20a9:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
    20ae:	45 89 d0             	mov    %r10d,%r8d
    20b1:	47 8b 24 81          	mov    (%r9,%r8,4),%r12d
    20b5:	45 39 df             	cmp    %r11d,%r15d
    20b8:	0f 82 0b f1 ff ff    	jb     11c9 <main.cold>
    20be:	46 8b 6c 9d 00       	mov    0x0(%rbp,%r11,4),%r13d
    20c3:	44 89 e6             	mov    %r12d,%esi
    20c6:	44 29 ee             	sub    %r13d,%esi
    20c9:	83 fe 41             	cmp    $0x41,%esi
    20cc:	0f 8f 26 02 00 00    	jg     22f8 <main+0xed8>
    20d2:	8b 4c 24 10          	mov    0x10(%rsp),%ecx
    20d6:	ba 01 00 00 00       	mov    $0x1,%edx
    20db:	45 8d 6a 01          	lea    0x1(%r10),%r13d
    20df:	44 8d 61 01          	lea    0x1(%rcx),%r12d
    20e3:	41 83 fe 01          	cmp    $0x1,%r14d
    20e7:	0f 84 9f 00 00 00    	je     218c <main+0xd6c>
    20ed:	44 89 ff             	mov    %r15d,%edi
    20f0:	44 89 54 24 34       	mov    %r10d,0x34(%rsp)
    20f5:	45 89 f7             	mov    %r14d,%r15d
    20f8:	49 89 ea             	mov    %rbp,%r10
    20fb:	41 89 fe             	mov    %edi,%r14d
    20fe:	89 dd                	mov    %ebx,%ebp
    2100:	89 d3                	mov    %edx,%ebx
    2102:	44 39 6c 24 0c       	cmp    %r13d,0xc(%rsp)
    2107:	0f 82 ee f0 ff ff    	jb     11fb <main.cold+0x32>
    210d:	44 89 e8             	mov    %r13d,%eax
    2110:	45 8b 04 81          	mov    (%r9,%rax,4),%r8d
    2114:	45 39 e6             	cmp    %r12d,%r14d
    2117:	0f 82 54 02 00 00    	jb     2371 <main+0xf51>
    211d:	45 89 e3             	mov    %r12d,%r11d
    2120:	44 89 c2             	mov    %r8d,%edx
    2123:	43 8b 34 9a          	mov    (%r10,%r11,4),%esi
    2127:	29 f2                	sub    %esi,%edx
    2129:	83 fa 41             	cmp    $0x41,%edx
    212c:	0f 8f a6 00 00 00    	jg     21d8 <main+0xdb8>
    2132:	83 c3 01             	add    $0x1,%ebx
    2135:	41 83 c5 01          	add    $0x1,%r13d
    2139:	41 83 c4 01          	add    $0x1,%r12d
    213d:	41 39 df             	cmp    %ebx,%r15d
    2140:	74 37                	je     2179 <main+0xd59>
    2142:	44 89 e9             	mov    %r13d,%ecx
    2145:	41 8b 3c 89          	mov    (%r9,%rcx,4),%edi
    2149:	45 39 e6             	cmp    %r12d,%r14d
    214c:	0f 82 77 f0 ff ff    	jb     11c9 <main.cold>
    2152:	44 89 e0             	mov    %r12d,%eax
    2155:	41 89 fb             	mov    %edi,%r11d
    2158:	45 8b 04 82          	mov    (%r10,%rax,4),%r8d
    215c:	45 29 c3             	sub    %r8d,%r11d
    215f:	41 83 fb 41          	cmp    $0x41,%r11d
    2163:	0f 8f 07 01 00 00    	jg     2270 <main+0xe50>
    2169:	83 c3 01             	add    $0x1,%ebx
    216c:	41 83 c5 01          	add    $0x1,%r13d
    2170:	41 83 c4 01          	add    $0x1,%r12d
    2174:	41 39 df             	cmp    %ebx,%r15d
    2177:	75 89                	jne    2102 <main+0xce2>
    2179:	45 89 f5             	mov    %r14d,%r13d
    217c:	89 eb                	mov    %ebp,%ebx
    217e:	4c 89 d5             	mov    %r10,%rbp
    2181:	44 8b 54 24 34       	mov    0x34(%rsp),%r10d
    2186:	45 89 fe             	mov    %r15d,%r14d
    2189:	45 89 ef             	mov    %r13d,%r15d
    218c:	44 8b 64 24 30       	mov    0x30(%rsp),%r12d
    2191:	83 c3 01             	add    $0x1,%ebx
    2194:	44 01 64 24 10       	add    %r12d,0x10(%rsp)
    2199:	45 01 f2             	add    %r14d,%r10d
    219c:	3b 5c 24 6c          	cmp    0x6c(%rsp),%ebx
    21a0:	0f 85 da fe ff ff    	jne    2080 <main+0xc60>
    21a6:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    21ad:	00 
    21ae:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    21b5:	00 00 
    21b7:	0f 85 af 01 00 00    	jne    236c <main+0xf4c>
    21bd:	48 81 c4 c8 00 00 00 	add    $0xc8,%rsp
    21c4:	31 c0                	xor    %eax,%eax
    21c6:	5b                   	pop    %rbx
    21c7:	5d                   	pop    %rbp
    21c8:	41 5c                	pop    %r12
    21ca:	41 5d                	pop    %r13
    21cc:	41 5e                	pop    %r14
    21ce:	41 5f                	pop    %r15
    21d0:	c3                   	retq   
    21d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    21d8:	89 74 24 18          	mov    %esi,0x18(%rsp)
    21dc:	bf 01 00 00 00       	mov    $0x1,%edi
    21e1:	31 c0                	xor    %eax,%eax
    21e3:	48 8d 35 91 0e 00 00 	lea    0xe91(%rip),%rsi        # 307b <_IO_stdin_used+0x7b>
    21ea:	4c 89 4c 24 28       	mov    %r9,0x28(%rsp)
    21ef:	4c 89 54 24 20       	mov    %r10,0x20(%rsp)
    21f4:	44 89 44 24 14       	mov    %r8d,0x14(%rsp)
    21f9:	e8 e2 ee ff ff       	callq  10e0 <__printf_chk@plt>
    21fe:	44 8b 4c 24 18       	mov    0x18(%rsp),%r9d
    2203:	66 0f ef c0          	pxor   %xmm0,%xmm0
    2207:	89 d9                	mov    %ebx,%ecx
    2209:	44 8b 54 24 14       	mov    0x14(%rsp),%r10d
    220e:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    2213:	66 0f ef c9          	pxor   %xmm1,%xmm1
    2217:	89 ea                	mov    %ebp,%edx
    2219:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    221e:	f3 45 0f 2a f1       	cvtsi2ss %r9d,%xmm14
    2223:	bf 01 00 00 00       	mov    $0x1,%edi
    2228:	b8 02 00 00 00       	mov    $0x2,%eax
    222d:	f3 45 0f 2a fa       	cvtsi2ss %r10d,%xmm15
    2232:	48 8d 35 4a 0e 00 00 	lea    0xe4a(%rip),%rsi        # 3083 <_IO_stdin_used+0x83>
    2239:	f3 44 0f 59 35 86 0e 	mulss  0xe86(%rip),%xmm14        # 30c8 <_IO_stdin_used+0xc8>
    2240:	00 00 
    2242:	f3 44 0f 59 3d 7d 0e 	mulss  0xe7d(%rip),%xmm15        # 30c8 <_IO_stdin_used+0xc8>
    2249:	00 00 
    224b:	f3 41 0f 5a ce       	cvtss2sd %xmm14,%xmm1
    2250:	f3 41 0f 5a c7       	cvtss2sd %xmm15,%xmm0
    2255:	e8 86 ee ff ff       	callq  10e0 <__printf_chk@plt>
    225a:	4c 8b 4c 24 28       	mov    0x28(%rsp),%r9
    225f:	4c 8b 54 24 20       	mov    0x20(%rsp),%r10
    2264:	e9 c9 fe ff ff       	jmpq   2132 <main+0xd12>
    2269:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2270:	89 7c 24 14          	mov    %edi,0x14(%rsp)
    2274:	48 8d 35 00 0e 00 00 	lea    0xe00(%rip),%rsi        # 307b <_IO_stdin_used+0x7b>
    227b:	bf 01 00 00 00       	mov    $0x1,%edi
    2280:	31 c0                	xor    %eax,%eax
    2282:	4c 89 4c 24 28       	mov    %r9,0x28(%rsp)
    2287:	4c 89 54 24 20       	mov    %r10,0x20(%rsp)
    228c:	44 89 44 24 18       	mov    %r8d,0x18(%rsp)
    2291:	e8 4a ee ff ff       	callq  10e0 <__printf_chk@plt>
    2296:	8b 74 24 18          	mov    0x18(%rsp),%esi
    229a:	8b 54 24 14          	mov    0x14(%rsp),%edx
    229e:	89 d9                	mov    %ebx,%ecx
    22a0:	66 0f ef e4          	pxor   %xmm4,%xmm4
    22a4:	66 0f ef c0          	pxor   %xmm0,%xmm0
    22a8:	66 0f ef c9          	pxor   %xmm1,%xmm1
    22ac:	bf 01 00 00 00       	mov    $0x1,%edi
    22b1:	f3 0f 2a e6          	cvtsi2ss %esi,%xmm4
    22b5:	f3 0f 59 25 0b 0e 00 	mulss  0xe0b(%rip),%xmm4        # 30c8 <_IO_stdin_used+0xc8>
    22bc:	00 
    22bd:	48 8d 35 bf 0d 00 00 	lea    0xdbf(%rip),%rsi        # 3083 <_IO_stdin_used+0x83>
    22c4:	b8 02 00 00 00       	mov    $0x2,%eax
    22c9:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
    22cd:	f3 0f 59 05 f3 0d 00 	mulss  0xdf3(%rip),%xmm0        # 30c8 <_IO_stdin_used+0xc8>
    22d4:	00 
    22d5:	89 ea                	mov    %ebp,%edx
    22d7:	f3 0f 5a cc          	cvtss2sd %xmm4,%xmm1
    22db:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    22df:	e8 fc ed ff ff       	callq  10e0 <__printf_chk@plt>
    22e4:	4c 8b 4c 24 28       	mov    0x28(%rsp),%r9
    22e9:	4c 8b 54 24 20       	mov    0x20(%rsp),%r10
    22ee:	e9 76 fe ff ff       	jmpq   2169 <main+0xd49>
    22f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    22f8:	48 8d 35 7c 0d 00 00 	lea    0xd7c(%rip),%rsi        # 307b <_IO_stdin_used+0x7b>
    22ff:	bf 01 00 00 00       	mov    $0x1,%edi
    2304:	31 c0                	xor    %eax,%eax
    2306:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    230b:	44 89 54 24 14       	mov    %r10d,0x14(%rsp)
    2310:	e8 cb ed ff ff       	callq  10e0 <__printf_chk@plt>
    2315:	66 0f ef c9          	pxor   %xmm1,%xmm1
    2319:	66 0f ef d2          	pxor   %xmm2,%xmm2
    231d:	31 c9                	xor    %ecx,%ecx
    231f:	f3 41 0f 2a cd       	cvtsi2ss %r13d,%xmm1
    2324:	66 0f ef c0          	pxor   %xmm0,%xmm0
    2328:	89 da                	mov    %ebx,%edx
    232a:	bf 01 00 00 00       	mov    $0x1,%edi
    232f:	f3 0f 59 0d 91 0d 00 	mulss  0xd91(%rip),%xmm1        # 30c8 <_IO_stdin_used+0xc8>
    2336:	00 
    2337:	f3 41 0f 2a d4       	cvtsi2ss %r12d,%xmm2
    233c:	b8 02 00 00 00       	mov    $0x2,%eax
    2341:	f3 0f 59 15 7f 0d 00 	mulss  0xd7f(%rip),%xmm2        # 30c8 <_IO_stdin_used+0xc8>
    2348:	00 
    2349:	48 8d 35 33 0d 00 00 	lea    0xd33(%rip),%rsi        # 3083 <_IO_stdin_used+0x83>
    2350:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
    2354:	f3 0f 5a c2          	cvtss2sd %xmm2,%xmm0
    2358:	e8 83 ed ff ff       	callq  10e0 <__printf_chk@plt>
    235d:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
    2362:	44 8b 54 24 14       	mov    0x14(%rsp),%r10d
    2367:	e9 66 fd ff ff       	jmpq   20d2 <main+0xcb2>
    236c:	e8 cf ed ff ff       	callq  1140 <__stack_chk_fail@plt>
    2371:	e9 53 ee ff ff       	jmpq   11c9 <main.cold>
    2376:	e9 e0 ee ff ff       	jmpq   125b <main.cold+0x92>
    237b:	e9 db ee ff ff       	jmpq   125b <main.cold+0x92>
    2380:	e9 d6 ee ff ff       	jmpq   125b <main.cold+0x92>
    2385:	e9 d1 ee ff ff       	jmpq   125b <main.cold+0x92>
    238a:	e9 a7 ef ff ff       	jmpq   1336 <main.cold+0x16d>
    238f:	90                   	nop

0000000000002390 <_GLOBAL__sub_I_coup_add>:
    2390:	f3 0f 1e fa          	endbr64 
    2394:	48 83 ec 08          	sub    $0x8,%rsp
    2398:	48 8d 3d 7a 2c 00 00 	lea    0x2c7a(%rip),%rdi        # 5019 <_ZStL8__ioinit>
    239f:	e8 ac ed ff ff       	callq  1150 <_ZNSt8ios_base4InitC1Ev@plt>
    23a4:	48 8b 3d 45 2c 00 00 	mov    0x2c45(%rip),%rdi        # 4ff0 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    23ab:	48 83 c4 08          	add    $0x8,%rsp
    23af:	48 8d 15 52 2c 00 00 	lea    0x2c52(%rip),%rdx        # 5008 <__dso_handle>
    23b6:	48 8d 35 5c 2c 00 00 	lea    0x2c5c(%rip),%rsi        # 5019 <_ZStL8__ioinit>
    23bd:	e9 6e ed ff ff       	jmpq   1130 <__cxa_atexit@plt>
    23c2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    23c9:	00 00 00 
    23cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000023d0 <_start>:
    23d0:	f3 0f 1e fa          	endbr64 
    23d4:	31 ed                	xor    %ebp,%ebp
    23d6:	49 89 d1             	mov    %rdx,%r9
    23d9:	5e                   	pop    %rsi
    23da:	48 89 e2             	mov    %rsp,%rdx
    23dd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    23e1:	50                   	push   %rax
    23e2:	54                   	push   %rsp
    23e3:	4c 8d 05 66 05 00 00 	lea    0x566(%rip),%r8        # 2950 <__libc_csu_fini>
    23ea:	48 8d 0d ef 04 00 00 	lea    0x4ef(%rip),%rcx        # 28e0 <__libc_csu_init>
    23f1:	48 8d 3d 28 f0 ff ff 	lea    -0xfd8(%rip),%rdi        # 1420 <main>
    23f8:	ff 15 da 2b 00 00    	callq  *0x2bda(%rip)        # 4fd8 <__libc_start_main@GLIBC_2.2.5>
    23fe:	f4                   	hlt    
    23ff:	90                   	nop

0000000000002400 <deregister_tm_clones>:
    2400:	48 8d 3d 11 2c 00 00 	lea    0x2c11(%rip),%rdi        # 5018 <__TMC_END__>
    2407:	48 8d 05 0a 2c 00 00 	lea    0x2c0a(%rip),%rax        # 5018 <__TMC_END__>
    240e:	48 39 f8             	cmp    %rdi,%rax
    2411:	74 15                	je     2428 <deregister_tm_clones+0x28>
    2413:	48 8b 05 b6 2b 00 00 	mov    0x2bb6(%rip),%rax        # 4fd0 <_ITM_deregisterTMCloneTable>
    241a:	48 85 c0             	test   %rax,%rax
    241d:	74 09                	je     2428 <deregister_tm_clones+0x28>
    241f:	ff e0                	jmpq   *%rax
    2421:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2428:	c3                   	retq   
    2429:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002430 <register_tm_clones>:
    2430:	48 8d 3d e1 2b 00 00 	lea    0x2be1(%rip),%rdi        # 5018 <__TMC_END__>
    2437:	48 8d 35 da 2b 00 00 	lea    0x2bda(%rip),%rsi        # 5018 <__TMC_END__>
    243e:	48 29 fe             	sub    %rdi,%rsi
    2441:	48 89 f0             	mov    %rsi,%rax
    2444:	48 c1 ee 3f          	shr    $0x3f,%rsi
    2448:	48 c1 f8 03          	sar    $0x3,%rax
    244c:	48 01 c6             	add    %rax,%rsi
    244f:	48 d1 fe             	sar    %rsi
    2452:	74 14                	je     2468 <register_tm_clones+0x38>
    2454:	48 8b 05 8d 2b 00 00 	mov    0x2b8d(%rip),%rax        # 4fe8 <_ITM_registerTMCloneTable>
    245b:	48 85 c0             	test   %rax,%rax
    245e:	74 08                	je     2468 <register_tm_clones+0x38>
    2460:	ff e0                	jmpq   *%rax
    2462:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2468:	c3                   	retq   
    2469:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002470 <__do_global_dtors_aux>:
    2470:	f3 0f 1e fa          	endbr64 
    2474:	80 3d 9d 2b 00 00 00 	cmpb   $0x0,0x2b9d(%rip)        # 5018 <__TMC_END__>
    247b:	75 2b                	jne    24a8 <__do_global_dtors_aux+0x38>
    247d:	55                   	push   %rbp
    247e:	48 83 3d 3a 2b 00 00 	cmpq   $0x0,0x2b3a(%rip)        # 4fc0 <__cxa_finalize@GLIBC_2.2.5>
    2485:	00 
    2486:	48 89 e5             	mov    %rsp,%rbp
    2489:	74 0c                	je     2497 <__do_global_dtors_aux+0x27>
    248b:	48 8b 3d 76 2b 00 00 	mov    0x2b76(%rip),%rdi        # 5008 <__dso_handle>
    2492:	e8 39 ec ff ff       	callq  10d0 <__cxa_finalize@plt>
    2497:	e8 64 ff ff ff       	callq  2400 <deregister_tm_clones>
    249c:	c6 05 75 2b 00 00 01 	movb   $0x1,0x2b75(%rip)        # 5018 <__TMC_END__>
    24a3:	5d                   	pop    %rbp
    24a4:	c3                   	retq   
    24a5:	0f 1f 00             	nopl   (%rax)
    24a8:	c3                   	retq   
    24a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000024b0 <frame_dummy>:
    24b0:	f3 0f 1e fa          	endbr64 
    24b4:	e9 77 ff ff ff       	jmpq   2430 <register_tm_clones>
    24b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000024c0 <coup_add>:
    24c0:	f3 0f 1e fa          	endbr64 
    24c4:	89 d1                	mov    %edx,%ecx
    24c6:	48 87 c9             	xchg   %rcx,%rcx
    24c9:	f0 01 37             	lock add %esi,(%rdi)
    24cc:	c3                   	retq   
    24cd:	0f 1f 00             	nopl   (%rax)

00000000000024d0 <_Z10float2fixpf>:
    24d0:	f3 0f 1e fa          	endbr64 
    24d4:	f3 0f 59 05 e8 0b 00 	mulss  0xbe8(%rip),%xmm0        # 30c4 <_IO_stdin_used+0xc4>
    24db:	00 
    24dc:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
    24e0:	c3                   	retq   
    24e1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    24e8:	00 00 00 00 
    24ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000024f0 <_Z10fixp2float13fixed_point_t>:
    24f0:	f3 0f 1e fa          	endbr64 
    24f4:	66 0f ef c0          	pxor   %xmm0,%xmm0
    24f8:	f3 0f 2a c7          	cvtsi2ss %edi,%xmm0
    24fc:	f3 0f 59 05 c4 0b 00 	mulss  0xbc4(%rip),%xmm0        # 30c8 <_IO_stdin_used+0xc8>
    2503:	00 
    2504:	c3                   	retq   
    2505:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    250c:	00 00 00 00 

0000000000002510 <_Z14display_matrix6Matrix>:
    2510:	f3 0f 1e fa          	endbr64 
    2514:	41 57                	push   %r15
    2516:	41 56                	push   %r14
    2518:	49 89 f6             	mov    %rsi,%r14
    251b:	41 55                	push   %r13
    251d:	41 54                	push   %r12
    251f:	55                   	push   %rbp
    2520:	53                   	push   %rbx
    2521:	48 83 ec 18          	sub    $0x18,%rsp
    2525:	89 74 24 0c          	mov    %esi,0xc(%rsp)
    2529:	48 c1 ee 20          	shr    $0x20,%rsi
    252d:	45 85 f6             	test   %r14d,%r14d
    2530:	0f 84 2c 01 00 00    	je     2662 <_Z14display_matrix6Matrix+0x152>
    2536:	44 0f af f6          	imul   %esi,%r14d
    253a:	49 89 fc             	mov    %rdi,%r12
    253d:	89 f5                	mov    %esi,%ebp
    253f:	45 31 ed             	xor    %r13d,%r13d
    2542:	31 db                	xor    %ebx,%ebx
    2544:	44 89 74 24 08       	mov    %r14d,0x8(%rsp)
    2549:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2550:	85 ed                	test   %ebp,%ebp
    2552:	0f 84 fa 00 00 00    	je     2652 <_Z14display_matrix6Matrix+0x142>
    2558:	8b 44 24 08          	mov    0x8(%rsp),%eax
    255c:	45 89 ef             	mov    %r13d,%r15d
    255f:	45 31 f6             	xor    %r14d,%r14d
    2562:	44 29 e8             	sub    %r13d,%eax
    2565:	a8 01                	test   $0x1,%al
    2567:	75 57                	jne    25c0 <_Z14display_matrix6Matrix+0xb0>
    2569:	44 39 6c 24 08       	cmp    %r13d,0x8(%rsp)
    256e:	0f 82 0c ec ff ff    	jb     1180 <_Z14display_matrix6Matrix.cold>
    2574:	44 89 ea             	mov    %r13d,%edx
    2577:	66 0f ef c0          	pxor   %xmm0,%xmm0
    257b:	31 c9                	xor    %ecx,%ecx
    257d:	bf 01 00 00 00       	mov    $0x1,%edi
    2582:	f3 41 0f 2a 04 94    	cvtsi2ssl (%r12,%rdx,4),%xmm0
    2588:	f3 0f 59 05 38 0b 00 	mulss  0xb38(%rip),%xmm0        # 30c8 <_IO_stdin_used+0xc8>
    258f:	00 
    2590:	89 da                	mov    %ebx,%edx
    2592:	b8 01 00 00 00       	mov    $0x1,%eax
    2597:	48 8d 35 9a 0a 00 00 	lea    0xa9a(%rip),%rsi        # 3038 <_IO_stdin_used+0x38>
    259e:	41 be 01 00 00 00    	mov    $0x1,%r14d
    25a4:	45 8d 7d 01          	lea    0x1(%r13),%r15d
    25a8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    25ac:	e8 2f eb ff ff       	callq  10e0 <__printf_chk@plt>
    25b1:	83 fd 01             	cmp    $0x1,%ebp
    25b4:	0f 84 98 00 00 00    	je     2652 <_Z14display_matrix6Matrix+0x142>
    25ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    25c0:	44 39 7c 24 08       	cmp    %r15d,0x8(%rsp)
    25c5:	0f 82 b5 eb ff ff    	jb     1180 <_Z14display_matrix6Matrix.cold>
    25cb:	44 89 f9             	mov    %r15d,%ecx
    25ce:	66 0f ef c9          	pxor   %xmm1,%xmm1
    25d2:	48 8d 35 5f 0a 00 00 	lea    0xa5f(%rip),%rsi        # 3038 <_IO_stdin_used+0x38>
    25d9:	89 da                	mov    %ebx,%edx
    25db:	f3 41 0f 2a 0c 8c    	cvtsi2ssl (%r12,%rcx,4),%xmm1
    25e1:	f3 0f 59 0d df 0a 00 	mulss  0xadf(%rip),%xmm1        # 30c8 <_IO_stdin_used+0xc8>
    25e8:	00 
    25e9:	44 89 f1             	mov    %r14d,%ecx
    25ec:	bf 01 00 00 00       	mov    $0x1,%edi
    25f1:	66 0f ef c0          	pxor   %xmm0,%xmm0
    25f5:	b8 01 00 00 00       	mov    $0x1,%eax
    25fa:	f3 0f 5a c1          	cvtss2sd %xmm1,%xmm0
    25fe:	e8 dd ea ff ff       	callq  10e0 <__printf_chk@plt>
    2603:	41 8d 4e 01          	lea    0x1(%r14),%ecx
    2607:	41 8d 77 01          	lea    0x1(%r15),%esi
    260b:	39 cd                	cmp    %ecx,%ebp
    260d:	74 43                	je     2652 <_Z14display_matrix6Matrix+0x142>
    260f:	66 0f ef d2          	pxor   %xmm2,%xmm2
    2613:	66 0f ef c0          	pxor   %xmm0,%xmm0
    2617:	89 da                	mov    %ebx,%edx
    2619:	bf 01 00 00 00       	mov    $0x1,%edi
    261e:	f3 41 0f 2a 14 b4    	cvtsi2ssl (%r12,%rsi,4),%xmm2
    2624:	f3 0f 59 15 9c 0a 00 	mulss  0xa9c(%rip),%xmm2        # 30c8 <_IO_stdin_used+0xc8>
    262b:	00 
    262c:	b8 01 00 00 00       	mov    $0x1,%eax
    2631:	41 83 c6 02          	add    $0x2,%r14d
    2635:	48 8d 35 fc 09 00 00 	lea    0x9fc(%rip),%rsi        # 3038 <_IO_stdin_used+0x38>
    263c:	41 83 c7 02          	add    $0x2,%r15d
    2640:	f3 0f 5a c2          	cvtss2sd %xmm2,%xmm0
    2644:	e8 97 ea ff ff       	callq  10e0 <__printf_chk@plt>
    2649:	44 39 f5             	cmp    %r14d,%ebp
    264c:	0f 85 6e ff ff ff    	jne    25c0 <_Z14display_matrix6Matrix+0xb0>
    2652:	83 c3 01             	add    $0x1,%ebx
    2655:	41 01 ed             	add    %ebp,%r13d
    2658:	3b 5c 24 0c          	cmp    0xc(%rsp),%ebx
    265c:	0f 85 ee fe ff ff    	jne    2550 <_Z14display_matrix6Matrix+0x40>
    2662:	48 83 c4 18          	add    $0x18,%rsp
    2666:	5b                   	pop    %rbx
    2667:	5d                   	pop    %rbp
    2668:	41 5c                	pop    %r12
    266a:	41 5d                	pop    %r13
    266c:	41 5e                	pop    %r14
    266e:	41 5f                	pop    %r15
    2670:	c3                   	retq   
    2671:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2678:	00 00 00 
    267b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002680 <_ZN6MatrixmlERS_>:
    2680:	f3 0f 1e fa          	endbr64 
    2684:	41 57                	push   %r15
    2686:	41 56                	push   %r14
    2688:	41 55                	push   %r13
    268a:	41 54                	push   %r12
    268c:	55                   	push   %rbp
    268d:	53                   	push   %rbx
    268e:	48 83 ec 18          	sub    $0x18,%rsp
    2692:	8b 6f 0c             	mov    0xc(%rdi),%ebp
    2695:	3b 6e 08             	cmp    0x8(%rsi),%ebp
    2698:	0f 85 eb 01 00 00    	jne    2889 <_ZN6MatrixmlERS_+0x209>
    269e:	8b 5e 0c             	mov    0xc(%rsi),%ebx
    26a1:	49 89 fc             	mov    %rdi,%r12
    26a4:	8b 7f 08             	mov    0x8(%rdi),%edi
    26a7:	49 89 f5             	mov    %rsi,%r13
    26aa:	be 01 00 00 00       	mov    $0x1,%esi
    26af:	89 7c 24 04          	mov    %edi,0x4(%rsp)
    26b3:	0f af fb             	imul   %ebx,%edi
    26b6:	c1 e7 02             	shl    $0x2,%edi
    26b9:	e8 52 ea ff ff       	callq  1110 <calloc@plt>
    26be:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    26c3:	85 db                	test   %ebx,%ebx
    26c5:	0f 84 9f 01 00 00    	je     286a <_ZN6MatrixmlERS_+0x1ea>
    26cb:	8b 44 24 04          	mov    0x4(%rsp),%eax
    26cf:	85 c0                	test   %eax,%eax
    26d1:	0f 84 93 01 00 00    	je     286a <_ZN6MatrixmlERS_+0x1ea>
    26d7:	85 ed                	test   %ebp,%ebp
    26d9:	0f 84 8b 01 00 00    	je     286a <_ZN6MatrixmlERS_+0x1ea>
    26df:	4d 8b 4d 00          	mov    0x0(%r13),%r9
    26e3:	4d 8b 04 24          	mov    (%r12),%r8
    26e7:	45 31 f6             	xor    %r14d,%r14d
    26ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    26f0:	41 89 ea             	mov    %ebp,%r10d
    26f3:	45 89 f5             	mov    %r14d,%r13d
    26f6:	45 31 db             	xor    %r11d,%r11d
    26f9:	45 31 e4             	xor    %r12d,%r12d
    26fc:	0f 1f 40 00          	nopl   0x0(%rax)
    2700:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    2705:	44 89 ea             	mov    %r13d,%edx
    2708:	44 89 de             	mov    %r11d,%esi
    270b:	45 89 f7             	mov    %r14d,%r15d
    270e:	48 8d 3c 91          	lea    (%rcx,%rdx,4),%rdi
    2712:	44 89 d2             	mov    %r10d,%edx
    2715:	44 29 da             	sub    %r11d,%edx
    2718:	8b 07                	mov    (%rdi),%eax
    271a:	83 e2 03             	and    $0x3,%edx
    271d:	0f 84 88 00 00 00    	je     27ab <_ZN6MatrixmlERS_+0x12b>
    2723:	83 fa 01             	cmp    $0x1,%edx
    2726:	74 55                	je     277d <_ZN6MatrixmlERS_+0xfd>
    2728:	83 fa 02             	cmp    $0x2,%edx
    272b:	74 2b                	je     2758 <_ZN6MatrixmlERS_+0xd8>
    272d:	44 89 de             	mov    %r11d,%esi
    2730:	44 89 f1             	mov    %r14d,%ecx
    2733:	4d 63 3c b0          	movslq (%r8,%rsi,4),%r15
    2737:	49 63 14 89          	movslq (%r9,%rcx,4),%rdx
    273b:	41 8d 73 01          	lea    0x1(%r11),%esi
    273f:	4c 0f af fa          	imul   %rdx,%r15
    2743:	49 c1 ff 10          	sar    $0x10,%r15
    2747:	41 83 c7 01          	add    $0x1,%r15d
    274b:	41 83 e7 fe          	and    $0xfffffffe,%r15d
    274f:	44 01 f8             	add    %r15d,%eax
    2752:	45 8d 3c 1e          	lea    (%r14,%rbx,1),%r15d
    2756:	89 07                	mov    %eax,(%rdi)
    2758:	89 f1                	mov    %esi,%ecx
    275a:	83 c6 01             	add    $0x1,%esi
    275d:	49 63 14 88          	movslq (%r8,%rcx,4),%rdx
    2761:	44 89 f9             	mov    %r15d,%ecx
    2764:	41 01 df             	add    %ebx,%r15d
    2767:	49 63 0c 89          	movslq (%r9,%rcx,4),%rcx
    276b:	48 0f af d1          	imul   %rcx,%rdx
    276f:	48 c1 fa 10          	sar    $0x10,%rdx
    2773:	83 c2 01             	add    $0x1,%edx
    2776:	83 e2 fe             	and    $0xfffffffe,%edx
    2779:	01 d0                	add    %edx,%eax
    277b:	89 07                	mov    %eax,(%rdi)
    277d:	89 f2                	mov    %esi,%edx
    277f:	44 89 f9             	mov    %r15d,%ecx
    2782:	83 c6 01             	add    $0x1,%esi
    2785:	41 01 df             	add    %ebx,%r15d
    2788:	49 63 14 90          	movslq (%r8,%rdx,4),%rdx
    278c:	49 63 0c 89          	movslq (%r9,%rcx,4),%rcx
    2790:	48 0f af d1          	imul   %rcx,%rdx
    2794:	48 c1 fa 10          	sar    $0x10,%rdx
    2798:	83 c2 01             	add    $0x1,%edx
    279b:	83 e2 fe             	and    $0xfffffffe,%edx
    279e:	01 d0                	add    %edx,%eax
    27a0:	89 07                	mov    %eax,(%rdi)
    27a2:	41 39 f2             	cmp    %esi,%r10d
    27a5:	0f 84 9a 00 00 00    	je     2845 <_ZN6MatrixmlERS_+0x1c5>
    27ab:	89 f2                	mov    %esi,%edx
    27ad:	44 89 f9             	mov    %r15d,%ecx
    27b0:	49 63 0c 89          	movslq (%r9,%rcx,4),%rcx
    27b4:	49 63 14 90          	movslq (%r8,%rdx,4),%rdx
    27b8:	48 0f af d1          	imul   %rcx,%rdx
    27bc:	41 8d 0c 1f          	lea    (%r15,%rbx,1),%ecx
    27c0:	49 89 cf             	mov    %rcx,%r15
    27c3:	48 c1 fa 10          	sar    $0x10,%rdx
    27c7:	83 c2 01             	add    $0x1,%edx
    27ca:	83 e2 fe             	and    $0xfffffffe,%edx
    27cd:	01 d0                	add    %edx,%eax
    27cf:	8d 56 01             	lea    0x1(%rsi),%edx
    27d2:	89 07                	mov    %eax,(%rdi)
    27d4:	49 63 0c 89          	movslq (%r9,%rcx,4),%rcx
    27d8:	49 63 14 90          	movslq (%r8,%rdx,4),%rdx
    27dc:	48 0f af d1          	imul   %rcx,%rdx
    27e0:	41 8d 0c 1f          	lea    (%r15,%rbx,1),%ecx
    27e4:	49 89 cf             	mov    %rcx,%r15
    27e7:	48 c1 fa 10          	sar    $0x10,%rdx
    27eb:	83 c2 01             	add    $0x1,%edx
    27ee:	83 e2 fe             	and    $0xfffffffe,%edx
    27f1:	01 c2                	add    %eax,%edx
    27f3:	8d 46 02             	lea    0x2(%rsi),%eax
    27f6:	89 17                	mov    %edx,(%rdi)
    27f8:	49 63 0c 89          	movslq (%r9,%rcx,4),%rcx
    27fc:	49 63 04 80          	movslq (%r8,%rax,4),%rax
    2800:	48 0f af c1          	imul   %rcx,%rax
    2804:	41 8d 0c 1f          	lea    (%r15,%rbx,1),%ecx
    2808:	49 89 cf             	mov    %rcx,%r15
    280b:	41 01 df             	add    %ebx,%r15d
    280e:	48 c1 f8 10          	sar    $0x10,%rax
    2812:	83 c0 01             	add    $0x1,%eax
    2815:	83 e0 fe             	and    $0xfffffffe,%eax
    2818:	01 c2                	add    %eax,%edx
    281a:	8d 46 03             	lea    0x3(%rsi),%eax
    281d:	83 c6 04             	add    $0x4,%esi
    2820:	89 17                	mov    %edx,(%rdi)
    2822:	49 63 04 80          	movslq (%r8,%rax,4),%rax
    2826:	49 63 0c 89          	movslq (%r9,%rcx,4),%rcx
    282a:	48 0f af c1          	imul   %rcx,%rax
    282e:	48 c1 f8 10          	sar    $0x10,%rax
    2832:	83 c0 01             	add    $0x1,%eax
    2835:	83 e0 fe             	and    $0xfffffffe,%eax
    2838:	01 d0                	add    %edx,%eax
    283a:	89 07                	mov    %eax,(%rdi)
    283c:	41 39 f2             	cmp    %esi,%r10d
    283f:	0f 85 66 ff ff ff    	jne    27ab <_ZN6MatrixmlERS_+0x12b>
    2845:	41 83 c4 01          	add    $0x1,%r12d
    2849:	41 01 dd             	add    %ebx,%r13d
    284c:	41 01 eb             	add    %ebp,%r11d
    284f:	41 01 ea             	add    %ebp,%r10d
    2852:	44 39 64 24 04       	cmp    %r12d,0x4(%rsp)
    2857:	0f 85 a3 fe ff ff    	jne    2700 <_ZN6MatrixmlERS_+0x80>
    285d:	41 83 c6 01          	add    $0x1,%r14d
    2861:	44 39 f3             	cmp    %r14d,%ebx
    2864:	0f 85 86 fe ff ff    	jne    26f0 <_ZN6MatrixmlERS_+0x70>
    286a:	8b 54 24 04          	mov    0x4(%rsp),%edx
    286e:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    2873:	48 c1 e3 20          	shl    $0x20,%rbx
    2877:	48 83 c4 18          	add    $0x18,%rsp
    287b:	48 09 da             	or     %rbx,%rdx
    287e:	5b                   	pop    %rbx
    287f:	5d                   	pop    %rbp
    2880:	41 5c                	pop    %r12
    2882:	41 5d                	pop    %r13
    2884:	41 5e                	pop    %r14
    2886:	41 5f                	pop    %r15
    2888:	c3                   	retq   
    2889:	bf 10 00 00 00       	mov    $0x10,%edi
    288e:	e8 6d e8 ff ff       	callq  1100 <__cxa_allocate_exception@plt>
    2893:	48 8d 35 6a 07 00 00 	lea    0x76a(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    289a:	48 89 c7             	mov    %rax,%rdi
    289d:	48 89 c5             	mov    %rax,%rbp
    28a0:	e8 4b e8 ff ff       	callq  10f0 <_ZNSt13runtime_errorC1EPKc@plt>
    28a5:	48 8b 15 1c 27 00 00 	mov    0x271c(%rip),%rdx        # 4fc8 <_ZNSt13runtime_errorD1Ev@GLIBCXX_3.4>
    28ac:	48 8d 35 6d 24 00 00 	lea    0x246d(%rip),%rsi        # 4d20 <_ZTISt13runtime_error@@GLIBCXX_3.4>
    28b3:	48 89 ef             	mov    %rbp,%rdi
    28b6:	e8 a5 e8 ff ff       	callq  1160 <__cxa_throw@plt>
    28bb:	f3 0f 1e fa          	endbr64 
    28bf:	49 89 c5             	mov    %rax,%r13
    28c2:	48 89 ef             	mov    %rbp,%rdi
    28c5:	e8 56 e8 ff ff       	callq  1120 <__cxa_free_exception@plt>
    28ca:	4c 89 ef             	mov    %r13,%rdi
    28cd:	e8 9e e8 ff ff       	callq  1170 <_Unwind_Resume@plt>
    28d2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    28d9:	00 00 00 
    28dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000028e0 <__libc_csu_init>:
    28e0:	f3 0f 1e fa          	endbr64 
    28e4:	41 57                	push   %r15
    28e6:	4c 8d 3d 1b 24 00 00 	lea    0x241b(%rip),%r15        # 4d08 <__frame_dummy_init_array_entry>
    28ed:	41 56                	push   %r14
    28ef:	49 89 d6             	mov    %rdx,%r14
    28f2:	41 55                	push   %r13
    28f4:	49 89 f5             	mov    %rsi,%r13
    28f7:	41 54                	push   %r12
    28f9:	41 89 fc             	mov    %edi,%r12d
    28fc:	55                   	push   %rbp
    28fd:	48 8d 2d 14 24 00 00 	lea    0x2414(%rip),%rbp        # 4d18 <__do_global_dtors_aux_fini_array_entry>
    2904:	53                   	push   %rbx
    2905:	4c 29 fd             	sub    %r15,%rbp
    2908:	48 83 ec 08          	sub    $0x8,%rsp
    290c:	e8 ef e6 ff ff       	callq  1000 <_init>
    2911:	48 c1 fd 03          	sar    $0x3,%rbp
    2915:	74 1f                	je     2936 <__libc_csu_init+0x56>
    2917:	31 db                	xor    %ebx,%ebx
    2919:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2920:	4c 89 f2             	mov    %r14,%rdx
    2923:	4c 89 ee             	mov    %r13,%rsi
    2926:	44 89 e7             	mov    %r12d,%edi
    2929:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    292d:	48 83 c3 01          	add    $0x1,%rbx
    2931:	48 39 dd             	cmp    %rbx,%rbp
    2934:	75 ea                	jne    2920 <__libc_csu_init+0x40>
    2936:	48 83 c4 08          	add    $0x8,%rsp
    293a:	5b                   	pop    %rbx
    293b:	5d                   	pop    %rbp
    293c:	41 5c                	pop    %r12
    293e:	41 5d                	pop    %r13
    2940:	41 5e                	pop    %r14
    2942:	41 5f                	pop    %r15
    2944:	c3                   	retq   
    2945:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    294c:	00 00 00 00 

0000000000002950 <__libc_csu_fini>:
    2950:	f3 0f 1e fa          	endbr64 
    2954:	c3                   	retq   

Disassembly of section .fini:

0000000000002958 <_fini>:
    2958:	f3 0f 1e fa          	endbr64 
    295c:	48 83 ec 08          	sub    $0x8,%rsp
    2960:	48 83 c4 08          	add    $0x8,%rsp
    2964:	c3                   	retq   
