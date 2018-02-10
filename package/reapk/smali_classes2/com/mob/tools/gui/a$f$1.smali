.class Lcom/mob/tools/gui/a$f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/a/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/gui/a$f;->a(Lcom/mob/tools/gui/a$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mob/tools/gui/a$c;

.field final synthetic c:Lcom/mob/tools/gui/a$f;


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/a$f;Ljava/lang/String;Lcom/mob/tools/gui/a$c;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mob/tools/gui/a$f;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/mob/tools/gui/a$f$1;->c:Lcom/mob/tools/gui/a$f;

    iput-object p2, p0, Lcom/mob/tools/gui/a$f$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/tools/gui/a$f$1;->b:Lcom/mob/tools/gui/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)V
    .locals 9
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 361
    new-instance v8, Lcom/mob/tools/gui/a$e;

    invoke-direct {v8, p1}, Lcom/mob/tools/gui/a$e;-><init>(Ljava/io/InputStream;)V

    .line 362
    .local v8, "pis":Lcom/mob/tools/gui/a$e;
    const/4 v6, 0x0

    .line 363
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/mob/tools/gui/a;->g()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 364
    new-instance v7, Ljava/io/File;

    invoke-static {}, Lcom/mob/tools/gui/a;->g()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/gui/a$f$1;->a:Ljava/lang/String;

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 365
    .local v7, "file":Ljava/io/File;
    iget-object v0, p0, Lcom/mob/tools/gui/a$f$1;->c:Lcom/mob/tools/gui/a$f;

    invoke-static {v0, v8, v7}, Lcom/mob/tools/gui/a$f;->a(Lcom/mob/tools/gui/a$f;Ljava/io/InputStream;Ljava/io/File;)V

    .line 366
    iget-object v0, p0, Lcom/mob/tools/gui/a$f$1;->b:Lcom/mob/tools/gui/a$c;

    invoke-static {v0}, Lcom/mob/tools/gui/a$c;->b(Lcom/mob/tools/gui/a$c;)Lcom/mob/tools/gui/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/a$f$1;->b:Lcom/mob/tools/gui/a$c;

    invoke-static {v0}, Lcom/mob/tools/gui/a$c;->b(Lcom/mob/tools/gui/a$c;)Lcom/mob/tools/gui/a$b;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/a$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 367
    :cond_0
    invoke-static {v7, v2}, Lcom/mob/tools/c/c;->a(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 373
    :goto_0
    iget-object v0, p0, Lcom/mob/tools/gui/a$f$1;->b:Lcom/mob/tools/gui/a$c;

    invoke-static {v0}, Lcom/mob/tools/gui/a$c;->e(Lcom/mob/tools/gui/a$c;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 382
    .end local v7    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/mob/tools/gui/a$f$1;->b:Lcom/mob/tools/gui/a$c;

    invoke-static {v0}, Lcom/mob/tools/gui/a$c;->g(Lcom/mob/tools/gui/a$c;)V

    .line 391
    :goto_2
    iget-object v0, p0, Lcom/mob/tools/gui/a$f$1;->c:Lcom/mob/tools/gui/a$f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mob/tools/gui/a$f;->a(Lcom/mob/tools/gui/a$f;Lcom/mob/tools/gui/a$c;)Lcom/mob/tools/gui/a$c;

    .line 392
    return-void

    .line 369
    .restart local v7    # "file":Ljava/io/File;
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/gui/a$f$1;->b:Lcom/mob/tools/gui/a$c;

    .line 370
    invoke-static {v1}, Lcom/mob/tools/gui/a$c;->b(Lcom/mob/tools/gui/a$c;)Lcom/mob/tools/gui/a$b;

    move-result-object v1

    iget v1, v1, Lcom/mob/tools/gui/a$b;->a:I

    iget-object v2, p0, Lcom/mob/tools/gui/a$f$1;->b:Lcom/mob/tools/gui/a$c;

    invoke-static {v2}, Lcom/mob/tools/gui/a$c;->b(Lcom/mob/tools/gui/a$c;)Lcom/mob/tools/gui/a$b;

    move-result-object v2

    iget v2, v2, Lcom/mob/tools/gui/a$b;->b:I

    iget-object v3, p0, Lcom/mob/tools/gui/a$f$1;->b:Lcom/mob/tools/gui/a$c;

    .line 371
    invoke-static {v3}, Lcom/mob/tools/gui/a$c;->b(Lcom/mob/tools/gui/a$c;)Lcom/mob/tools/gui/a$b;

    move-result-object v3

    iget v3, v3, Lcom/mob/tools/gui/a$b;->d:I

    iget-object v4, p0, Lcom/mob/tools/gui/a$f$1;->b:Lcom/mob/tools/gui/a$c;

    invoke-static {v4}, Lcom/mob/tools/gui/a$c;->b(Lcom/mob/tools/gui/a$c;)Lcom/mob/tools/gui/a$b;

    move-result-object v4

    iget-wide v4, v4, Lcom/mob/tools/gui/a$b;->c:J

    .line 369
    invoke-static/range {v0 .. v5}, Lcom/mob/tools/c/c;->a(Ljava/lang/String;IIIJ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    .line 379
    .end local v7    # "file":Ljava/io/File;
    :cond_4
    invoke-static {v8, v2}, Lcom/mob/tools/c/c;->a(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1

    .line 385
    :cond_5
    iget-object v0, p0, Lcom/mob/tools/gui/a$f$1;->b:Lcom/mob/tools/gui/a$c;

    invoke-static {v0}, Lcom/mob/tools/gui/a$c;->d(Lcom/mob/tools/gui/a$c;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 387
    invoke-static {}, Lcom/mob/tools/gui/a;->d()Lcom/mob/tools/gui/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/gui/a$f$1;->b:Lcom/mob/tools/gui/a$c;

    invoke-static {v1}, Lcom/mob/tools/gui/a$c;->a(Lcom/mob/tools/gui/a$c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/gui/a$f$1;->b:Lcom/mob/tools/gui/a$c;

    invoke-static {v2}, Lcom/mob/tools/gui/a$c;->b(Lcom/mob/tools/gui/a$c;)Lcom/mob/tools/gui/a$b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/gui/a;->d(Ljava/lang/String;Lcom/mob/tools/gui/a$b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/gui/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 389
    :cond_6
    iget-object v0, p0, Lcom/mob/tools/gui/a$f$1;->b:Lcom/mob/tools/gui/a$c;

    invoke-static {v0, v6}, Lcom/mob/tools/gui/a$c;->a(Lcom/mob/tools/gui/a$c;Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method
