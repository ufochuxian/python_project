.class public final Lorg/xbill/DNS/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field private static f:Lorg/xbill/DNS/w;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 30
    new-instance v0, Lorg/xbill/DNS/w;

    const-string v1, "DNS Opcode"

    invoke-direct {v0, v1, v4}, Lorg/xbill/DNS/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/y;->f:Lorg/xbill/DNS/w;

    .line 34
    sget-object v0, Lorg/xbill/DNS/y;->f:Lorg/xbill/DNS/w;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/w;->b(I)V

    .line 35
    sget-object v0, Lorg/xbill/DNS/y;->f:Lorg/xbill/DNS/w;

    const-string v1, "RESERVED"

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/w;->a(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lorg/xbill/DNS/y;->f:Lorg/xbill/DNS/w;

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/w;->a(Z)V

    .line 38
    sget-object v0, Lorg/xbill/DNS/y;->f:Lorg/xbill/DNS/w;

    const/4 v1, 0x0

    const-string v2, "QUERY"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 39
    sget-object v0, Lorg/xbill/DNS/y;->f:Lorg/xbill/DNS/w;

    const-string v1, "IQUERY"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 40
    sget-object v0, Lorg/xbill/DNS/y;->f:Lorg/xbill/DNS/w;

    const-string v1, "STATUS"

    invoke-virtual {v0, v4, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 41
    sget-object v0, Lorg/xbill/DNS/y;->f:Lorg/xbill/DNS/w;

    const/4 v1, 0x4

    const-string v2, "NOTIFY"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 42
    sget-object v0, Lorg/xbill/DNS/y;->f:Lorg/xbill/DNS/w;

    const/4 v1, 0x5

    const-string v2, "UPDATE"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v0, Lorg/xbill/DNS/y;->f:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 51
    sget-object v0, Lorg/xbill/DNS/y;->f:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
