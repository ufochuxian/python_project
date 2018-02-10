.class public Lcom/bumptech/glide/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/d/c$a;)Lcom/bumptech/glide/d/c;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/bumptech/glide/d/c$a;

    .prologue
    .line 13
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 14
    .local v1, "res":I
    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 15
    .local v0, "hasPermission":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    new-instance v2, Lcom/bumptech/glide/d/e;

    invoke-direct {v2, p1, p2}, Lcom/bumptech/glide/d/e;-><init>(Landroid/content/Context;Lcom/bumptech/glide/d/c$a;)V

    .line 18
    :goto_1
    return-object v2

    .line 14
    .end local v0    # "hasPermission":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 18
    .restart local v0    # "hasPermission":Z
    :cond_1
    new-instance v2, Lcom/bumptech/glide/d/i;

    invoke-direct {v2}, Lcom/bumptech/glide/d/i;-><init>()V

    goto :goto_1
.end method
