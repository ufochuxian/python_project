.class public Lorg/xbill/DNS/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:I = 0x3

.field public static final b:I = 0x8

.field private static c:Lorg/xbill/DNS/w;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lorg/xbill/DNS/w;

    const-string v1, "EDNS Option Codes"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/j$a;->c:Lorg/xbill/DNS/w;

    .line 29
    sget-object v0, Lorg/xbill/DNS/j$a;->c:Lorg/xbill/DNS/w;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/w;->b(I)V

    .line 30
    sget-object v0, Lorg/xbill/DNS/j$a;->c:Lorg/xbill/DNS/w;

    const-string v1, "CODE"

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/w;->a(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lorg/xbill/DNS/j$a;->c:Lorg/xbill/DNS/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/w;->a(Z)V

    .line 33
    sget-object v0, Lorg/xbill/DNS/j$a;->c:Lorg/xbill/DNS/w;

    const/4 v1, 0x3

    const-string v2, "NSID"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 34
    sget-object v0, Lorg/xbill/DNS/j$a;->c:Lorg/xbill/DNS/w;

    const/16 v1, 0x8

    const-string v2, "CLIENT_SUBNET"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v0, Lorg/xbill/DNS/j$a;->c:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 42
    sget-object v0, Lorg/xbill/DNS/j$a;->c:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
