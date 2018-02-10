.class public Lorg/xbill/DNS/DNSSEC$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/DNSSEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x5

.field public static final e:I = 0x6

.field public static final f:I = 0x7

.field public static final g:I = 0x8

.field public static final h:I = 0xa

.field public static final i:I = 0xc

.field public static final j:I = 0xd

.field public static final k:I = 0xe

.field public static final l:I = 0xfc

.field public static final m:I = 0xfd

.field public static final n:I = 0xfe

.field private static o:Lorg/xbill/DNS/w;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 73
    new-instance v0, Lorg/xbill/DNS/w;

    const-string v1, "DNSSEC algorithm"

    invoke-direct {v0, v1, v3}, Lorg/xbill/DNS/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/DNSSEC$a;->o:Lorg/xbill/DNS/w;

    .line 77
    sget-object v0, Lorg/xbill/DNS/DNSSEC$a;->o:Lorg/xbill/DNS/w;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/w;->b(I)V

    .line 78
    sget-object v0, Lorg/xbill/DNS/DNSSEC$a;->o:Lorg/xbill/DNS/w;

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/w;->a(Z)V

    .line 80
    sget-object v0, Lorg/xbill/DNS/DNSSEC$a;->o:Lorg/xbill/DNS/w;

    const-string v1, "RSAMD5"

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 81
    sget-object v0, Lorg/xbill/DNS/DNSSEC$a;->o:Lorg/xbill/DNS/w;

    const-string v1, "DH"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 82
    sget-object v0, Lorg/xbill/DNS/DNSSEC$a;->o:Lorg/xbill/DNS/w;

    const/4 v1, 0x3

    const-string v2, "DSA"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 83
    sget-object v0, Lorg/xbill/DNS/DNSSEC$a;->o:Lorg/xbill/DNS/w;

    const/4 v1, 0x5

    const-string v2, "RSASHA1"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 84
    sget-object v0, Lorg/xbill/DNS/DNSSEC$a;->o:Lorg/xbill/DNS/w;

    const/4 v1, 0x6

    const-string v2, "DSA-NSEC3-SHA1"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 85
    sget-object v0, Lorg/xbill/DNS/DNSSEC$a;->o:Lorg/xbill/DNS/w;

    const/4 v1, 0x7

    const-string v2, "RSA-NSEC3-SHA1"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 86
    sget-object v0, Lorg/xbill/DNS/DNSSEC$a;->o:Lorg/xbill/DNS/w;

    const/16 v1, 0x8

    const-string v2, "RSASHA256"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 87
    sget-object v0, Lorg/xbill/DNS/DNSSEC$a;->o:Lorg/xbill/DNS/w;

    const/16 v1, 0xa

    const-string v2, "RSASHA512"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 88
    sget-object v0, Lorg/xbill/DNS/DNSSEC$a;->o:Lorg/xbill/DNS/w;

    const/16 v1, 0xc

    const-string v2, "ECC-GOST"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 89
    sget-object v0, Lorg/xbill/DNS/DNSSEC$a;->o:Lorg/xbill/DNS/w;

    const/16 v1, 0xd

    const-string v2, "ECDSAP256SHA256"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 90
    sget-object v0, Lorg/xbill/DNS/DNSSEC$a;->o:Lorg/xbill/DNS/w;

    const/16 v1, 0xe

    const-string v2, "ECDSAP384SHA384"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 91
    sget-object v0, Lorg/xbill/DNS/DNSSEC$a;->o:Lorg/xbill/DNS/w;

    const/16 v1, 0xfc

    const-string v2, "INDIRECT"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 92
    sget-object v0, Lorg/xbill/DNS/DNSSEC$a;->o:Lorg/xbill/DNS/w;

    const/16 v1, 0xfd

    const-string v2, "PRIVATEDNS"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 93
    sget-object v0, Lorg/xbill/DNS/DNSSEC$a;->o:Lorg/xbill/DNS/w;

    const/16 v1, 0xfe

    const-string v2, "PRIVATEOID"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 94
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 112
    sget-object v0, Lorg/xbill/DNS/DNSSEC$a;->o:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "alg"    # I

    .prologue
    .line 101
    sget-object v0, Lorg/xbill/DNS/DNSSEC$a;->o:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
