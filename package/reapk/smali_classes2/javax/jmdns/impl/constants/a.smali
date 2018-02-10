.class public final Ljavax/jmdns/impl/constants/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:I = 0x1388

.field public static final B:I = 0x3e8

.field public static final C:I = 0x2710

.field public static final D:I = 0x1

.field public static final E:I = 0x78

.field public static final F:I = 0x1b7740

.field public static final G:J = 0x1388L

.field public static final H:J = 0x1770L

.field public static final I:I = 0x2710

.field public static final a:Ljava/lang/String; = "224.0.0.251"

.field public static final b:Ljava/lang/String; = "FF02::FB"

.field public static final c:I

.field public static final d:I = 0x35

.field public static final e:I = 0xe10

.field public static final f:I = 0x5b4

.field public static final g:I = 0x230c

.field public static final h:I = 0x8000

.field public static final i:I = 0x0

.field public static final j:I = 0x8000

.field public static final k:I = 0x7800

.field public static final l:I = 0x400

.field public static final m:I = 0x200

.field public static final n:I = 0x100

.field public static final o:I = 0x8000

.field public static final p:I = 0x40

.field public static final q:I = 0x20

.field public static final r:I = 0x10

.field public static final s:I = 0xf

.field public static final t:I = 0x14

.field public static final u:I = 0xe1

.field public static final v:I = 0xfa

.field public static final w:I = 0x14

.field public static final x:I = 0x73

.field public static final y:I = 0x3e8

.field public static final z:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-string v0, "net.mdns.port"

    const-string v1, "5353"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Ljavax/jmdns/impl/constants/a;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
