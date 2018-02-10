.class Lcom/bumptech/glide/load/engine/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/engine/d$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/bumptech/glide/load/engine/d$1;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 199
    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_2

    .line 200
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/engine/d;

    .line 201
    .local v0, "job":Lcom/bumptech/glide/load/engine/d;
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    .line 202
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/d;->a(Lcom/bumptech/glide/load/engine/d;)V

    .line 209
    .end local v0    # "job":Lcom/bumptech/glide/load/engine/d;
    :goto_0
    return v1

    .line 204
    .restart local v0    # "job":Lcom/bumptech/glide/load/engine/d;
    :cond_1
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/d;->b(Lcom/bumptech/glide/load/engine/d;)V

    goto :goto_0

    .line 209
    .end local v0    # "job":Lcom/bumptech/glide/load/engine/d;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
