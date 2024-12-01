
multithread_tst:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 52 2f 00 00    	pushq  0x2f52(%rip)        # 3f78 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 53 2f 00 00 	bnd jmpq *0x2f53(%rip)        # 3f80 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    10d4:	f2 ff 25 1d 2f 00 00 	bnd jmpq *0x2f1d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010e0 <free@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 9d 2e 00 00 	bnd jmpq *0x2e9d(%rip)        # 3f88 <free@GLIBC_2.2.5>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <pthread_create@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 95 2e 00 00 	bnd jmpq *0x2e95(%rip)        # 3f90 <pthread_create@GLIBC_2.2.5>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001100 <__errno_location@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 8d 2e 00 00 	bnd jmpq *0x2e8d(%rip)        # 3f98 <__errno_location@GLIBC_2.2.5>
    110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001110 <puts@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 85 2e 00 00 	bnd jmpq *0x2e85(%rip)        # 3fa0 <puts@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001120 <printf@plt>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	f2 ff 25 7d 2e 00 00 	bnd jmpq *0x2e7d(%rip)        # 3fa8 <printf@GLIBC_2.2.5>
    112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001130 <malloc@plt>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	f2 ff 25 75 2e 00 00 	bnd jmpq *0x2e75(%rip)        # 3fb0 <malloc@GLIBC_2.2.5>
    113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001140 <perror@plt>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	f2 ff 25 6d 2e 00 00 	bnd jmpq *0x2e6d(%rip)        # 3fb8 <perror@GLIBC_2.2.5>
    114b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001150 <pthread_join@plt>:
    1150:	f3 0f 1e fa          	endbr64 
    1154:	f2 ff 25 65 2e 00 00 	bnd jmpq *0x2e65(%rip)        # 3fc0 <pthread_join@GLIBC_2.2.5>
    115b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001160 <atoi@plt>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	f2 ff 25 5d 2e 00 00 	bnd jmpq *0x2e5d(%rip)        # 3fc8 <atoi@GLIBC_2.2.5>
    116b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001170 <exit@plt>:
    1170:	f3 0f 1e fa          	endbr64 
    1174:	f2 ff 25 55 2e 00 00 	bnd jmpq *0x2e55(%rip)        # 3fd0 <exit@GLIBC_2.2.5>
    117b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001180 <_start>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	31 ed                	xor    %ebp,%ebp
    1186:	49 89 d1             	mov    %rdx,%r9
    1189:	5e                   	pop    %rsi
    118a:	48 89 e2             	mov    %rsp,%rdx
    118d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1191:	50                   	push   %rax
    1192:	54                   	push   %rsp
    1193:	4c 8d 05 16 04 00 00 	lea    0x416(%rip),%r8        # 15b0 <__libc_csu_fini>
    119a:	48 8d 0d 9f 03 00 00 	lea    0x39f(%rip),%rcx        # 1540 <__libc_csu_init>
    11a1:	48 8d 3d 9f 01 00 00 	lea    0x19f(%rip),%rdi        # 1347 <main>
    11a8:	ff 15 32 2e 00 00    	callq  *0x2e32(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    11ae:	f4                   	hlt    
    11af:	90                   	nop

00000000000011b0 <deregister_tm_clones>:
    11b0:	48 8d 3d 59 2e 00 00 	lea    0x2e59(%rip),%rdi        # 4010 <__TMC_END__>
    11b7:	48 8d 05 52 2e 00 00 	lea    0x2e52(%rip),%rax        # 4010 <__TMC_END__>
    11be:	48 39 f8             	cmp    %rdi,%rax
    11c1:	74 15                	je     11d8 <deregister_tm_clones+0x28>
    11c3:	48 8b 05 0e 2e 00 00 	mov    0x2e0e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    11ca:	48 85 c0             	test   %rax,%rax
    11cd:	74 09                	je     11d8 <deregister_tm_clones+0x28>
    11cf:	ff e0                	jmpq   *%rax
    11d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11d8:	c3                   	retq   
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011e0 <register_tm_clones>:
    11e0:	48 8d 3d 29 2e 00 00 	lea    0x2e29(%rip),%rdi        # 4010 <__TMC_END__>
    11e7:	48 8d 35 22 2e 00 00 	lea    0x2e22(%rip),%rsi        # 4010 <__TMC_END__>
    11ee:	48 29 fe             	sub    %rdi,%rsi
    11f1:	48 89 f0             	mov    %rsi,%rax
    11f4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    11f8:	48 c1 f8 03          	sar    $0x3,%rax
    11fc:	48 01 c6             	add    %rax,%rsi
    11ff:	48 d1 fe             	sar    %rsi
    1202:	74 14                	je     1218 <register_tm_clones+0x38>
    1204:	48 8b 05 e5 2d 00 00 	mov    0x2de5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    120b:	48 85 c0             	test   %rax,%rax
    120e:	74 08                	je     1218 <register_tm_clones+0x38>
    1210:	ff e0                	jmpq   *%rax
    1212:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1218:	c3                   	retq   
    1219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001220 <__do_global_dtors_aux>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	80 3d e5 2d 00 00 00 	cmpb   $0x0,0x2de5(%rip)        # 4010 <__TMC_END__>
    122b:	75 2b                	jne    1258 <__do_global_dtors_aux+0x38>
    122d:	55                   	push   %rbp
    122e:	48 83 3d c2 2d 00 00 	cmpq   $0x0,0x2dc2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1235:	00 
    1236:	48 89 e5             	mov    %rsp,%rbp
    1239:	74 0c                	je     1247 <__do_global_dtors_aux+0x27>
    123b:	48 8b 3d c6 2d 00 00 	mov    0x2dc6(%rip),%rdi        # 4008 <__dso_handle>
    1242:	e8 89 fe ff ff       	callq  10d0 <__cxa_finalize@plt>
    1247:	e8 64 ff ff ff       	callq  11b0 <deregister_tm_clones>
    124c:	c6 05 bd 2d 00 00 01 	movb   $0x1,0x2dbd(%rip)        # 4010 <__TMC_END__>
    1253:	5d                   	pop    %rbp
    1254:	c3                   	retq   
    1255:	0f 1f 00             	nopl   (%rax)
    1258:	c3                   	retq   
    1259:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001260 <frame_dummy>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	e9 77 ff ff ff       	jmpq   11e0 <register_tm_clones>

0000000000001269 <zsim_magic_op>:
    1269:	55                   	push   %rbp
    126a:	48 89 e5             	mov    %rsp,%rbp
    126d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1271:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1275:	48 89 c1             	mov    %rax,%rcx
    1278:	48 87 c9             	xchg   %rcx,%rcx
    127b:	90                   	nop
    127c:	5d                   	pop    %rbp
    127d:	c3                   	retq   

000000000000127e <zsim_roi_begin>:
    127e:	55                   	push   %rbp
    127f:	48 89 e5             	mov    %rsp,%rbp
    1282:	48 8d 3d 7f 0d 00 00 	lea    0xd7f(%rip),%rdi        # 2008 <_IO_stdin_used+0x8>
    1289:	e8 82 fe ff ff       	callq  1110 <puts@plt>
    128e:	bf 01 04 00 00       	mov    $0x401,%edi
    1293:	e8 d1 ff ff ff       	callq  1269 <zsim_magic_op>
    1298:	90                   	nop
    1299:	5d                   	pop    %rbp
    129a:	c3                   	retq   

000000000000129b <zsim_roi_end>:
    129b:	55                   	push   %rbp
    129c:	48 89 e5             	mov    %rsp,%rbp
    129f:	bf 02 04 00 00       	mov    $0x402,%edi
    12a4:	e8 c0 ff ff ff       	callq  1269 <zsim_magic_op>
    12a9:	48 8d 3d 6a 0d 00 00 	lea    0xd6a(%rip),%rdi        # 201a <_IO_stdin_used+0x1a>
    12b0:	e8 5b fe ff ff       	callq  1110 <puts@plt>
    12b5:	90                   	nop
    12b6:	5d                   	pop    %rbp
    12b7:	c3                   	retq   

00000000000012b8 <coup_add>:
    12b8:	f3 0f 1e fa          	endbr64 
    12bc:	55                   	push   %rbp
    12bd:	48 89 e5             	mov    %rsp,%rbp
    12c0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    12c4:	89 75 f4             	mov    %esi,-0xc(%rbp)
    12c7:	89 55 f0             	mov    %edx,-0x10(%rbp)
    12ca:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    12ce:	8b 55 f4             	mov    -0xc(%rbp),%edx
    12d1:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    12d5:	8b 4d f0             	mov    -0x10(%rbp),%ecx
    12d8:	48 87 c9             	xchg   %rcx,%rcx
    12db:	f0 01 10             	lock add %edx,(%rax)
    12de:	90                   	nop
    12df:	5d                   	pop    %rbp
    12e0:	c3                   	retq   

00000000000012e1 <inc_thread>:
    12e1:	f3 0f 1e fa          	endbr64 
    12e5:	55                   	push   %rbp
    12e6:	48 89 e5             	mov    %rsp,%rbp
    12e9:	48 83 ec 20          	sub    $0x20,%rsp
    12ed:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    12f1:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    12f8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12fc:	48 89 c6             	mov    %rax,%rsi
    12ff:	48 8d 3d 24 0d 00 00 	lea    0xd24(%rip),%rdi        # 202a <_IO_stdin_used+0x2a>
    1306:	b8 00 00 00 00       	mov    $0x0,%eax
    130b:	e8 10 fe ff ff       	callq  1120 <printf@plt>
    1310:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1317:	eb 08                	jmp    1321 <inc_thread+0x40>
    1319:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    131d:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    1321:	81 7d fc ff ff 0f 00 	cmpl   $0xfffff,-0x4(%rbp)
    1328:	76 ef                	jbe    1319 <inc_thread+0x38>
    132a:	8b 4d f8             	mov    -0x8(%rbp),%ecx
    132d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1331:	ba 06 04 00 00       	mov    $0x406,%edx
    1336:	89 ce                	mov    %ecx,%esi
    1338:	48 89 c7             	mov    %rax,%rdi
    133b:	e8 78 ff ff ff       	callq  12b8 <coup_add>
    1340:	b8 00 00 00 00       	mov    $0x0,%eax
    1345:	c9                   	leaveq 
    1346:	c3                   	retq   

0000000000001347 <main>:
    1347:	f3 0f 1e fa          	endbr64 
    134b:	55                   	push   %rbp
    134c:	48 89 e5             	mov    %rsp,%rbp
    134f:	41 54                	push   %r12
    1351:	53                   	push   %rbx
    1352:	48 83 ec 30          	sub    $0x30,%rsp
    1356:	89 7d cc             	mov    %edi,-0x34(%rbp)
    1359:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    135d:	83 7d cc 02          	cmpl   $0x2,-0x34(%rbp)
    1361:	74 25                	je     1388 <main+0x41>
    1363:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    1367:	48 8b 00             	mov    (%rax),%rax
    136a:	48 89 c6             	mov    %rax,%rsi
    136d:	48 8d 3d cc 0c 00 00 	lea    0xccc(%rip),%rdi        # 2040 <_IO_stdin_used+0x40>
    1374:	b8 00 00 00 00       	mov    $0x0,%eax
    1379:	e8 a2 fd ff ff       	callq  1120 <printf@plt>
    137e:	bf 01 00 00 00       	mov    $0x1,%edi
    1383:	e8 e8 fd ff ff       	callq  1170 <exit@plt>
    1388:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    138c:	48 83 c0 08          	add    $0x8,%rax
    1390:	48 8b 00             	mov    (%rax),%rax
    1393:	48 89 c7             	mov    %rax,%rdi
    1396:	e8 c5 fd ff ff       	callq  1160 <atoi@plt>
    139b:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    139e:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
    13a2:	75 25                	jne    13c9 <main+0x82>
    13a4:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    13a8:	48 8b 00             	mov    (%rax),%rax
    13ab:	48 89 c6             	mov    %rax,%rsi
    13ae:	48 8d 3d 8b 0c 00 00 	lea    0xc8b(%rip),%rdi        # 2040 <_IO_stdin_used+0x40>
    13b5:	b8 00 00 00 00       	mov    $0x0,%eax
    13ba:	e8 61 fd ff ff       	callq  1120 <printf@plt>
    13bf:	bf 01 00 00 00       	mov    $0x1,%edi
    13c4:	e8 a7 fd ff ff       	callq  1170 <exit@plt>
    13c9:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    13cc:	48 c1 e0 03          	shl    $0x3,%rax
    13d0:	48 89 c7             	mov    %rax,%rdi
    13d3:	e8 58 fd ff ff       	callq  1130 <malloc@plt>
    13d8:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    13dc:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    13e1:	75 16                	jne    13f9 <main+0xb2>
    13e3:	48 8d 3d 75 0c 00 00 	lea    0xc75(%rip),%rdi        # 205f <_IO_stdin_used+0x5f>
    13ea:	e8 51 fd ff ff       	callq  1140 <perror@plt>
    13ef:	bf 01 00 00 00       	mov    $0x1,%edi
    13f4:	e8 77 fd ff ff       	callq  1170 <exit@plt>
    13f9:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    13fc:	89 c6                	mov    %eax,%esi
    13fe:	48 8d 3d 63 0c 00 00 	lea    0xc63(%rip),%rdi        # 2068 <_IO_stdin_used+0x68>
    1405:	b8 00 00 00 00       	mov    $0x0,%eax
    140a:	e8 11 fd ff ff       	callq  1120 <printf@plt>
    140f:	b8 00 00 00 00       	mov    $0x0,%eax
    1414:	e8 65 fe ff ff       	callq  127e <zsim_roi_begin>
    1419:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
    1420:	eb 5a                	jmp    147c <main+0x135>
    1422:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1425:	48 98                	cltq   
    1427:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    142e:	00 
    142f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1433:	4c 8d 24 02          	lea    (%rdx,%rax,1),%r12
    1437:	e8 c4 fc ff ff       	callq  1100 <__errno_location@plt>
    143c:	48 89 c3             	mov    %rax,%rbx
    143f:	48 8d 0d ce 2b 00 00 	lea    0x2bce(%rip),%rcx        # 4014 <counter>
    1446:	48 8d 15 94 fe ff ff 	lea    -0x16c(%rip),%rdx        # 12e1 <inc_thread>
    144d:	be 00 00 00 00       	mov    $0x0,%esi
    1452:	4c 89 e7             	mov    %r12,%rdi
    1455:	e8 96 fc ff ff       	callq  10f0 <pthread_create@plt>
    145a:	89 03                	mov    %eax,(%rbx)
    145c:	8b 03                	mov    (%rbx),%eax
    145e:	85 c0                	test   %eax,%eax
    1460:	74 16                	je     1478 <main+0x131>
    1462:	48 8d 3d 18 0c 00 00 	lea    0xc18(%rip),%rdi        # 2081 <_IO_stdin_used+0x81>
    1469:	e8 d2 fc ff ff       	callq  1140 <perror@plt>
    146e:	bf 01 00 00 00       	mov    $0x1,%edi
    1473:	e8 f8 fc ff ff       	callq  1170 <exit@plt>
    1478:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
    147c:	8b 45 dc             	mov    -0x24(%rbp),%eax
    147f:	39 45 e4             	cmp    %eax,-0x1c(%rbp)
    1482:	77 9e                	ja     1422 <main+0xdb>
    1484:	48 8d 3d 07 0c 00 00 	lea    0xc07(%rip),%rdi        # 2092 <_IO_stdin_used+0x92>
    148b:	e8 80 fc ff ff       	callq  1110 <puts@plt>
    1490:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
    1497:	eb 4e                	jmp    14e7 <main+0x1a0>
    1499:	8b 45 e0             	mov    -0x20(%rbp),%eax
    149c:	48 98                	cltq   
    149e:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    14a5:	00 
    14a6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14aa:	48 01 d0             	add    %rdx,%rax
    14ad:	4c 8b 20             	mov    (%rax),%r12
    14b0:	e8 4b fc ff ff       	callq  1100 <__errno_location@plt>
    14b5:	48 89 c3             	mov    %rax,%rbx
    14b8:	be 00 00 00 00       	mov    $0x0,%esi
    14bd:	4c 89 e7             	mov    %r12,%rdi
    14c0:	e8 8b fc ff ff       	callq  1150 <pthread_join@plt>
    14c5:	89 03                	mov    %eax,(%rbx)
    14c7:	8b 03                	mov    (%rbx),%eax
    14c9:	85 c0                	test   %eax,%eax
    14cb:	74 16                	je     14e3 <main+0x19c>
    14cd:	48 8d 3d ce 0b 00 00 	lea    0xbce(%rip),%rdi        # 20a2 <_IO_stdin_used+0xa2>
    14d4:	e8 67 fc ff ff       	callq  1140 <perror@plt>
    14d9:	bf 01 00 00 00       	mov    $0x1,%edi
    14de:	e8 8d fc ff ff       	callq  1170 <exit@plt>
    14e3:	83 45 e0 01          	addl   $0x1,-0x20(%rbp)
    14e7:	8b 45 e0             	mov    -0x20(%rbp),%eax
    14ea:	39 45 e4             	cmp    %eax,-0x1c(%rbp)
    14ed:	77 aa                	ja     1499 <main+0x152>
    14ef:	b8 00 00 00 00       	mov    $0x0,%eax
    14f4:	e8 a2 fd ff ff       	callq  129b <zsim_roi_end>
    14f9:	48 8d 3d b1 0b 00 00 	lea    0xbb1(%rip),%rdi        # 20b1 <_IO_stdin_used+0xb1>
    1500:	e8 0b fc ff ff       	callq  1110 <puts@plt>
    1505:	8b 05 09 2b 00 00    	mov    0x2b09(%rip),%eax        # 4014 <counter>
    150b:	89 c6                	mov    %eax,%esi
    150d:	48 8d 3d ac 0b 00 00 	lea    0xbac(%rip),%rdi        # 20c0 <_IO_stdin_used+0xc0>
    1514:	b8 00 00 00 00       	mov    $0x0,%eax
    1519:	e8 02 fc ff ff       	callq  1120 <printf@plt>
    151e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1522:	48 89 c7             	mov    %rax,%rdi
    1525:	e8 b6 fb ff ff       	callq  10e0 <free@plt>
    152a:	b8 00 00 00 00       	mov    $0x0,%eax
    152f:	48 83 c4 30          	add    $0x30,%rsp
    1533:	5b                   	pop    %rbx
    1534:	41 5c                	pop    %r12
    1536:	5d                   	pop    %rbp
    1537:	c3                   	retq   
    1538:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    153f:	00 

0000000000001540 <__libc_csu_init>:
    1540:	f3 0f 1e fa          	endbr64 
    1544:	41 57                	push   %r15
    1546:	4c 8d 3d 13 28 00 00 	lea    0x2813(%rip),%r15        # 3d60 <__frame_dummy_init_array_entry>
    154d:	41 56                	push   %r14
    154f:	49 89 d6             	mov    %rdx,%r14
    1552:	41 55                	push   %r13
    1554:	49 89 f5             	mov    %rsi,%r13
    1557:	41 54                	push   %r12
    1559:	41 89 fc             	mov    %edi,%r12d
    155c:	55                   	push   %rbp
    155d:	48 8d 2d 04 28 00 00 	lea    0x2804(%rip),%rbp        # 3d68 <__do_global_dtors_aux_fini_array_entry>
    1564:	53                   	push   %rbx
    1565:	4c 29 fd             	sub    %r15,%rbp
    1568:	48 83 ec 08          	sub    $0x8,%rsp
    156c:	e8 8f fa ff ff       	callq  1000 <_init>
    1571:	48 c1 fd 03          	sar    $0x3,%rbp
    1575:	74 1f                	je     1596 <__libc_csu_init+0x56>
    1577:	31 db                	xor    %ebx,%ebx
    1579:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1580:	4c 89 f2             	mov    %r14,%rdx
    1583:	4c 89 ee             	mov    %r13,%rsi
    1586:	44 89 e7             	mov    %r12d,%edi
    1589:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    158d:	48 83 c3 01          	add    $0x1,%rbx
    1591:	48 39 dd             	cmp    %rbx,%rbp
    1594:	75 ea                	jne    1580 <__libc_csu_init+0x40>
    1596:	48 83 c4 08          	add    $0x8,%rsp
    159a:	5b                   	pop    %rbx
    159b:	5d                   	pop    %rbp
    159c:	41 5c                	pop    %r12
    159e:	41 5d                	pop    %r13
    15a0:	41 5e                	pop    %r14
    15a2:	41 5f                	pop    %r15
    15a4:	c3                   	retq   
    15a5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    15ac:	00 00 00 00 

00000000000015b0 <__libc_csu_fini>:
    15b0:	f3 0f 1e fa          	endbr64 
    15b4:	c3                   	retq   

Disassembly of section .fini:

00000000000015b8 <_fini>:
    15b8:	f3 0f 1e fa          	endbr64 
    15bc:	48 83 ec 08          	sub    $0x8,%rsp
    15c0:	48 83 c4 08          	add    $0x8,%rsp
    15c4:	c3                   	retq   
