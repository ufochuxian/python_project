.class public final Lorg/xbill/DNS/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/g$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x3

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x4

.field public static final f:I = 0xfe

.field public static final g:I = 0xff

.field private static h:Lorg/xbill/DNS/w;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 48
    new-instance v0, Lorg/xbill/DNS/g$a;

    invoke-direct {v0}, Lorg/xbill/DNS/g$a;-><init>()V

    sput-object v0, Lorg/xbill/DNS/g;->h:Lorg/xbill/DNS/w;

    .line 51
    sget-object v0, Lorg/xbill/DNS/g;->h:Lorg/xbill/DNS/w;

    const/4 v1, 0x1

    const-string v2, "IN"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 52
    sget-object v0, Lorg/xbill/DNS/g;->h:Lorg/xbill/DNS/w;

    const-string v1, "CH"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 53
    sget-object v0, Lorg/xbill/DNS/g;->h:Lorg/xbill/DNS/w;

    const-string v1, "CHAOS"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/w;->b(ILjava/lang/String;)V

    .line 54
    sget-object v0, Lorg/xbill/DNS/g;->h:Lorg/xbill/DNS/w;

    const-string v1, "HS"

    invoke-virtual {v0, v4, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 55
    sget-object v0, Lorg/xbill/DNS/g;->h:Lorg/xbill/DNS/w;

    const-string v1, "HESIOD"

    invoke-virtual {v0, v4, v1}, Lorg/xbill/DNS/w;->b(ILjava/lang/String;)V

    .line 56
    sget-object v0, Lorg/xbill/DNS/g;->h:Lorg/xbill/DNS/w;

    const/16 v1, 0xfe

    const-string v2, "NONE"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 57
    sget-object v0, Lorg/xbill/DNS/g;->h:Lorg/xbill/DNS/w;

    const/16 v1, 0xff

    const-string v2, "ANY"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-object v0, Lorg/xbill/DNS/g;->h:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(I)V
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 69
    if-ltz p0, :cond_0

    const v0, 0xffff

    if-le p0, v0, :cond_1

    .line 70
    :cond_0
    new-instance v0, Lorg/xbill/DNS/InvalidDClassException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/InvalidDClassException;-><init>(I)V

    throw v0

    .line 71
    :cond_1
    return-void
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 80
    sget-object v0, Lorg/xbill/DNS/g;->h:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
