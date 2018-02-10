.class public Lcom/youzan/androidsdk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/youzan/androidsdk/f;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/youzan/androidsdk/e;->a:Lcom/youzan/androidsdk/f;

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youzan/androidsdk/e;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-static {}, Lcom/youzan/androidsdk/e;->b()V

    .line 78
    sget-object v0, Lcom/youzan/androidsdk/e;->a:Lcom/youzan/androidsdk/f;

    invoke-virtual {v0, p0}, Lcom/youzan/androidsdk/f;->a(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/youzan/androidsdk/g;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Lcom/youzan/androidsdk/g;

    .prologue
    .line 88
    invoke-static {}, Lcom/youzan/androidsdk/e;->b()V

    .line 90
    sget-object v0, Lcom/youzan/androidsdk/e;->a:Lcom/youzan/androidsdk/f;

    invoke-virtual {v0, p0, p1}, Lcom/youzan/androidsdk/f;->a(Landroid/content/Context;Lcom/youzan/androidsdk/g;)V

    .line 91
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/youzan/androidsdk/f;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "adapter"    # Lcom/youzan/androidsdk/f;

    .prologue
    .line 47
    sput-object p2, Lcom/youzan/androidsdk/e;->a:Lcom/youzan/androidsdk/f;

    .line 49
    invoke-static {}, Lcom/youzan/androidsdk/e;->b()V

    .line 50
    sget-boolean v0, Lcom/youzan/androidsdk/e;->b:Z

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/youzan/androidsdk/e;->a:Lcom/youzan/androidsdk/f;

    sget-boolean v1, Lcom/youzan/androidsdk/e;->b:Z

    invoke-virtual {v0, v1}, Lcom/youzan/androidsdk/f;->a(Z)V

    .line 53
    :cond_0
    sget-object v0, Lcom/youzan/androidsdk/e;->a:Lcom/youzan/androidsdk/f;

    invoke-virtual {v0, p0, p1}, Lcom/youzan/androidsdk/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static a(Z)V
    .locals 1
    .param p0, "debug"    # Z

    .prologue
    .line 63
    sput-boolean p0, Lcom/youzan/androidsdk/e;->b:Z

    .line 64
    sget-object v0, Lcom/youzan/androidsdk/e;->a:Lcom/youzan/androidsdk/f;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/youzan/androidsdk/e;->a:Lcom/youzan/androidsdk/f;

    invoke-virtual {v0, p0}, Lcom/youzan/androidsdk/f;->a(Z)V

    .line 67
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/youzan/androidsdk/e;->b()V

    .line 36
    sget-object v0, Lcom/youzan/androidsdk/e;->a:Lcom/youzan/androidsdk/f;

    invoke-virtual {v0}, Lcom/youzan/androidsdk/f;->a()Z

    move-result v0

    return v0
.end method

.method private static b()V
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/youzan/androidsdk/e;->a:Lcom/youzan/androidsdk/f;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You Should Init with A Valid SDK Adapter,YouzanBasicSDKAdapter for basic sdk, and YouzanHybridSDKAdapter for native sdk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    return-void
.end method
