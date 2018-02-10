.class Lcom/bumptech/glide/load/engine/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final a:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/engine/l$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/bumptech/glide/load/engine/l$1;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/l$a;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 35
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v1, :cond_0

    .line 36
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/engine/k;

    .line 37
    .local v0, "resource":Lcom/bumptech/glide/load/engine/k;
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/k;->d()V

    .line 40
    .end local v0    # "resource":Lcom/bumptech/glide/load/engine/k;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
