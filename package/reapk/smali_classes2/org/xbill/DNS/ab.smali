.class public final Lorg/xbill/DNS/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x6

.field public static final i:I = 0x7

.field public static final j:I = 0x8

.field public static final k:I = 0x9

.field public static final l:I = 0xa

.field public static final m:I = 0x10

.field public static final n:I = 0x10

.field public static final o:I = 0x11

.field public static final p:I = 0x12

.field public static final q:I = 0x13

.field private static r:Lorg/xbill/DNS/w;

.field private static s:Lorg/xbill/DNS/w;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 13
    new-instance v0, Lorg/xbill/DNS/w;

    const-string v1, "DNS Rcode"

    invoke-direct {v0, v1, v4}, Lorg/xbill/DNS/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/ab;->r:Lorg/xbill/DNS/w;

    .line 16
    new-instance v0, Lorg/xbill/DNS/w;

    const-string v1, "TSIG rcode"

    invoke-direct {v0, v1, v4}, Lorg/xbill/DNS/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/ab;->s:Lorg/xbill/DNS/w;

    .line 73
    sget-object v0, Lorg/xbill/DNS/ab;->r:Lorg/xbill/DNS/w;

    const/16 v1, 0xfff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/w;->b(I)V

    .line 74
    sget-object v0, Lorg/xbill/DNS/ab;->r:Lorg/xbill/DNS/w;

    const-string v1, "RESERVED"

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/w;->a(Ljava/lang/String;)V

    .line 75
    sget-object v0, Lorg/xbill/DNS/ab;->r:Lorg/xbill/DNS/w;

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/w;->a(Z)V

    .line 77
    sget-object v0, Lorg/xbill/DNS/ab;->r:Lorg/xbill/DNS/w;

    const/4 v1, 0x0

    const-string v2, "NOERROR"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 78
    sget-object v0, Lorg/xbill/DNS/ab;->r:Lorg/xbill/DNS/w;

    const-string v1, "FORMERR"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 79
    sget-object v0, Lorg/xbill/DNS/ab;->r:Lorg/xbill/DNS/w;

    const-string v1, "SERVFAIL"

    invoke-virtual {v0, v4, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 80
    sget-object v0, Lorg/xbill/DNS/ab;->r:Lorg/xbill/DNS/w;

    const/4 v1, 0x3

    const-string v2, "NXDOMAIN"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 81
    sget-object v0, Lorg/xbill/DNS/ab;->r:Lorg/xbill/DNS/w;

    const-string v1, "NOTIMP"

    invoke-virtual {v0, v5, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 82
    sget-object v0, Lorg/xbill/DNS/ab;->r:Lorg/xbill/DNS/w;

    const-string v1, "NOTIMPL"

    invoke-virtual {v0, v5, v1}, Lorg/xbill/DNS/w;->b(ILjava/lang/String;)V

    .line 83
    sget-object v0, Lorg/xbill/DNS/ab;->r:Lorg/xbill/DNS/w;

    const/4 v1, 0x5

    const-string v2, "REFUSED"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 84
    sget-object v0, Lorg/xbill/DNS/ab;->r:Lorg/xbill/DNS/w;

    const/4 v1, 0x6

    const-string v2, "YXDOMAIN"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 85
    sget-object v0, Lorg/xbill/DNS/ab;->r:Lorg/xbill/DNS/w;

    const/4 v1, 0x7

    const-string v2, "YXRRSET"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 86
    sget-object v0, Lorg/xbill/DNS/ab;->r:Lorg/xbill/DNS/w;

    const/16 v1, 0x8

    const-string v2, "NXRRSET"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 87
    sget-object v0, Lorg/xbill/DNS/ab;->r:Lorg/xbill/DNS/w;

    const/16 v1, 0x9

    const-string v2, "NOTAUTH"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 88
    sget-object v0, Lorg/xbill/DNS/ab;->r:Lorg/xbill/DNS/w;

    const/16 v1, 0xa

    const-string v2, "NOTZONE"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 89
    sget-object v0, Lorg/xbill/DNS/ab;->r:Lorg/xbill/DNS/w;

    const-string v1, "BADVERS"

    invoke-virtual {v0, v6, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 91
    sget-object v0, Lorg/xbill/DNS/ab;->s:Lorg/xbill/DNS/w;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/w;->b(I)V

    .line 92
    sget-object v0, Lorg/xbill/DNS/ab;->s:Lorg/xbill/DNS/w;

    const-string v1, "RESERVED"

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/w;->a(Ljava/lang/String;)V

    .line 93
    sget-object v0, Lorg/xbill/DNS/ab;->s:Lorg/xbill/DNS/w;

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/w;->a(Z)V

    .line 94
    sget-object v0, Lorg/xbill/DNS/ab;->s:Lorg/xbill/DNS/w;

    sget-object v1, Lorg/xbill/DNS/ab;->r:Lorg/xbill/DNS/w;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/w;->a(Lorg/xbill/DNS/w;)V

    .line 96
    sget-object v0, Lorg/xbill/DNS/ab;->s:Lorg/xbill/DNS/w;

    const-string v1, "BADSIG"

    invoke-virtual {v0, v6, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 97
    sget-object v0, Lorg/xbill/DNS/ab;->s:Lorg/xbill/DNS/w;

    const/16 v1, 0x11

    const-string v2, "BADKEY"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 98
    sget-object v0, Lorg/xbill/DNS/ab;->s:Lorg/xbill/DNS/w;

    const/16 v1, 0x12

    const-string v2, "BADTIME"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 99
    sget-object v0, Lorg/xbill/DNS/ab;->s:Lorg/xbill/DNS/w;

    const/16 v1, 0x13

    const-string v2, "BADMODE"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 100
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 120
    sget-object v0, Lorg/xbill/DNS/ab;->r:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 108
    sget-object v0, Lorg/xbill/DNS/ab;->r:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 114
    sget-object v0, Lorg/xbill/DNS/ab;->s:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
