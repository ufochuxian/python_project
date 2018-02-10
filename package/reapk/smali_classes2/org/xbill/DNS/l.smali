.class public final Lorg/xbill/DNS/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x8000

.field private static b:Lorg/xbill/DNS/w;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lorg/xbill/DNS/w;

    const-string v1, "EDNS Flag"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/l;->b:Lorg/xbill/DNS/w;

    .line 20
    sget-object v0, Lorg/xbill/DNS/l;->b:Lorg/xbill/DNS/w;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/w;->b(I)V

    .line 21
    sget-object v0, Lorg/xbill/DNS/l;->b:Lorg/xbill/DNS/w;

    const-string v1, "FLAG"

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/w;->a(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lorg/xbill/DNS/l;->b:Lorg/xbill/DNS/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/w;->a(Z)V

    .line 24
    sget-object v0, Lorg/xbill/DNS/l;->b:Lorg/xbill/DNS/w;

    const v1, 0x8000

    const-string v2, "do"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 25
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-object v0, Lorg/xbill/DNS/l;->b:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 33
    sget-object v0, Lorg/xbill/DNS/l;->b:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
