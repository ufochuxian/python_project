.class public Lorg/xbill/DNS/WKSRecord$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/WKSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final A:I = 0x35

.field public static final B:I = 0x37

.field public static final C:I = 0x3d

.field public static final D:I = 0x3f

.field public static final E:I = 0x41

.field public static final F:I = 0x43

.field public static final G:I = 0x44

.field public static final H:I = 0x45

.field public static final I:I = 0x47

.field public static final J:I = 0x48

.field public static final K:I = 0x49

.field public static final L:I = 0x4a

.field public static final M:I = 0x4f

.field public static final N:I = 0x51

.field public static final O:I = 0x59

.field public static final P:I = 0x5b

.field public static final Q:I = 0x5d

.field public static final R:I = 0x5f

.field public static final S:I = 0x61

.field public static final T:I = 0x62

.field public static final U:I = 0x63

.field public static final V:I = 0x65

.field public static final W:I = 0x66

.field public static final X:I = 0x67

.field public static final Y:I = 0x68

.field public static final Z:I = 0x69

.field public static final a:I = 0x5

.field public static final aA:I = 0xf5

.field private static aB:Lorg/xbill/DNS/w; = null

.field public static final aa:I = 0x6b

.field public static final ab:I = 0x6d

.field public static final ac:I = 0x6f

.field public static final ad:I = 0x71

.field public static final ae:I = 0x73

.field public static final af:I = 0x75

.field public static final ag:I = 0x77

.field public static final ah:I = 0x79

.field public static final ai:I = 0x7b

.field public static final aj:I = 0x7d

.field public static final ak:I = 0x7f

.field public static final al:I = 0x81

.field public static final am:I = 0x82

.field public static final an:I = 0x83

.field public static final ao:I = 0x84

.field public static final ap:I = 0x85

.field public static final aq:I = 0x86

.field public static final ar:I = 0x87

.field public static final as:I = 0x88

.field public static final at:I = 0x89

.field public static final au:I = 0x8a

.field public static final av:I = 0x8b

.field public static final aw:I = 0x8c

.field public static final ax:I = 0x8d

.field public static final ay:I = 0x8e

.field public static final az:I = 0xf3

.field public static final b:I = 0x7

.field public static final c:I = 0x9

.field public static final d:I = 0xb

.field public static final e:I = 0xd

.field public static final f:I = 0x11

.field public static final g:I = 0x13

.field public static final h:I = 0x14

.field public static final i:I = 0x15

.field public static final j:I = 0x17

.field public static final k:I = 0x19

.field public static final l:I = 0x1b

.field public static final m:I = 0x1d

.field public static final n:I = 0x1f

.field public static final o:I = 0x21

.field public static final p:I = 0x25

.field public static final q:I = 0x27

.field public static final r:I = 0x29

.field public static final s:I = 0x2a

.field public static final t:I = 0x2b

.field public static final u:I = 0x2c

.field public static final v:I = 0x2d

.field public static final w:I = 0x2e

.field public static final x:I = 0x2f

.field public static final y:I = 0x31

.field public static final z:I = 0x33


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 469
    new-instance v0, Lorg/xbill/DNS/w;

    const-string v1, "TCP/UDP service"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    .line 473
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/w;->b(I)V

    .line 474
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/w;->a(Z)V

    .line 476
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/4 v1, 0x5

    const-string v2, "rje"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 477
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/4 v1, 0x7

    const-string v2, "echo"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 478
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x9

    const-string v2, "discard"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 479
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0xb

    const-string v2, "users"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 480
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0xd

    const-string v2, "daytime"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 481
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x11

    const-string v2, "quote"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 482
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x13

    const-string v2, "chargen"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 483
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x14

    const-string v2, "ftp-data"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 484
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x15

    const-string v2, "ftp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 485
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x17

    const-string v2, "telnet"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 486
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x19

    const-string v2, "smtp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 487
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x1b

    const-string v2, "nsw-fe"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 488
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x1d

    const-string v2, "msg-icp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 489
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x1f

    const-string v2, "msg-auth"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 490
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x21

    const-string v2, "dsp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 491
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x25

    const-string v2, "time"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 492
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x27

    const-string v2, "rlp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 493
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x29

    const-string v2, "graphics"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 494
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x2a

    const-string v2, "nameserver"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 495
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x2b

    const-string v2, "nicname"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 496
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x2c

    const-string v2, "mpm-flags"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 497
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x2d

    const-string v2, "mpm"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 498
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x2e

    const-string v2, "mpm-snd"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 499
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x2f

    const-string v2, "ni-ftp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 500
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x31

    const-string v2, "login"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 501
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x33

    const-string v2, "la-maint"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 502
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x35

    const-string v2, "domain"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 503
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x37

    const-string v2, "isi-gl"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 504
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x3d

    const-string v2, "ni-mail"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 505
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x3f

    const-string v2, "via-ftp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 506
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x41

    const-string v2, "tacacs-ds"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 507
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x43

    const-string v2, "bootps"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 508
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x44

    const-string v2, "bootpc"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 509
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x45

    const-string v2, "tftp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 510
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x47

    const-string v2, "netrjs-1"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 511
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x48

    const-string v2, "netrjs-2"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 512
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x49

    const-string v2, "netrjs-3"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 513
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x4a

    const-string v2, "netrjs-4"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 514
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x4f

    const-string v2, "finger"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 515
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x51

    const-string v2, "hosts2-ns"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 516
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x59

    const-string v2, "su-mit-tg"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 517
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x5b

    const-string v2, "mit-dov"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 518
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x5d

    const-string v2, "dcp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 519
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x5f

    const-string v2, "supdup"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 520
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x61

    const-string v2, "swift-rvf"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 521
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x62

    const-string v2, "tacnews"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 522
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x63

    const-string v2, "metagram"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 523
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x65

    const-string v2, "hostname"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 524
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x66

    const-string v2, "iso-tsap"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 525
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x67

    const-string v2, "x400"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 526
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x68

    const-string v2, "x400-snd"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 527
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x69

    const-string v2, "csnet-ns"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 528
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x6b

    const-string v2, "rtelnet"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 529
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x6d

    const-string v2, "pop-2"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 530
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x6f

    const-string v2, "sunrpc"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 531
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x71

    const-string v2, "auth"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 532
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x73

    const-string v2, "sftp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 533
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x75

    const-string v2, "uucp-path"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 534
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x77

    const-string v2, "nntp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 535
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x79

    const-string v2, "erpc"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 536
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x7b

    const-string v2, "ntp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 537
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x7d

    const-string v2, "locus-map"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 538
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x7f

    const-string v2, "locus-con"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 539
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x81

    const-string v2, "pwdgen"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 540
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x82

    const-string v2, "cisco-fna"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 541
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x83

    const-string v2, "cisco-tna"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 542
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x84

    const-string v2, "cisco-sys"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 543
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x85

    const-string v2, "statsrv"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 544
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x86

    const-string v2, "ingres-net"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 545
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x87

    const-string v2, "loc-srv"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 546
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x88

    const-string v2, "profile"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 547
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x89

    const-string v2, "netbios-ns"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 548
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x8a

    const-string v2, "netbios-dgm"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 549
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x8b

    const-string v2, "netbios-ssn"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 550
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x8c

    const-string v2, "emfis-data"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 551
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x8d

    const-string v2, "emfis-cntl"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 552
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0x8e

    const-string v2, "bl-idm"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 553
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0xf3

    const-string v2, "sur-meas"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 554
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    const/16 v1, 0xf5

    const-string v2, "link"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 555
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 574
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 563
    sget-object v0, Lorg/xbill/DNS/WKSRecord$b;->aB:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
