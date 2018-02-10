.class Lcom/bumptech/glide/load/resource/d/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2


# instance fields
.field final synthetic c:Lcom/bumptech/glide/load/resource/d/f;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/load/resource/d/f;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/f$c;->c:Lcom/bumptech/glide/load/resource/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/resource/d/f;Lcom/bumptech/glide/load/resource/d/f$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/bumptech/glide/load/resource/d/f;
    .param p2, "x1"    # Lcom/bumptech/glide/load/resource/d/f$1;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/d/f$c;-><init>(Lcom/bumptech/glide/load/resource/d/f;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 133
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v1, :cond_0

    .line 134
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/resource/d/f$a;

    .line 135
    .local v0, "target":Lcom/bumptech/glide/load/resource/d/f$a;
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/d/f$c;->c:Lcom/bumptech/glide/load/resource/d/f;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/load/resource/d/f;->a(Lcom/bumptech/glide/load/resource/d/f$a;)V

    .line 141
    .end local v0    # "target":Lcom/bumptech/glide/load/resource/d/f$a;
    :goto_0
    return v1

    .line 137
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 138
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/resource/d/f$a;

    .line 139
    .restart local v0    # "target":Lcom/bumptech/glide/load/resource/d/f$a;
    invoke-static {v0}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/g/b/m;)V

    .line 141
    .end local v0    # "target":Lcom/bumptech/glide/load/resource/d/f$a;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
