.class Lcom/bumptech/glide/load/resource/d/f$a;
.super Lcom/bumptech/glide/g/b/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/g/b/j",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:I

.field private final d:J

.field private e:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "index"    # I
    .param p3, "targetTime"    # J

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/bumptech/glide/g/b/j;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/f$a;->b:Landroid/os/Handler;

    .line 154
    iput p2, p0, Lcom/bumptech/glide/load/resource/d/f$a;->c:I

    .line 155
    iput-wide p3, p0, Lcom/bumptech/glide/load/resource/d/f$a;->d:J

    .line 156
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/load/resource/d/f$a;)I
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/load/resource/d/f$a;

    .prologue
    .line 146
    iget v0, p0, Lcom/bumptech/glide/load/resource/d/f$a;->c:I

    return v0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/f$a;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/g/a/c;)V
    .locals 4
    .param p1, "resource"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/g/a/c",
            "<-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p2, "glideAnimation":Lcom/bumptech/glide/g/a/c;, "Lcom/bumptech/glide/g/a/c<-Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/f$a;->e:Landroid/graphics/Bitmap;

    .line 165
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/f$a;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 166
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/f$a;->b:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/bumptech/glide/load/resource/d/f$a;->d:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 167
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/g/a/c;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/bumptech/glide/g/a/c;

    .prologue
    .line 146
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/d/f$a;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/g/a/c;)V

    return-void
.end method
