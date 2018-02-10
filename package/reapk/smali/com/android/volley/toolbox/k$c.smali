.class public Lcom/android/volley/toolbox/k$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/toolbox/k;

.field private final b:Lcom/android/volley/toolbox/k$d;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/k;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/k$d;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/volley/toolbox/k;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "requestUrl"    # Ljava/lang/String;
    .param p4, "cacheKey"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/android/volley/toolbox/k$d;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/volley/toolbox/k$c;->a:Lcom/android/volley/toolbox/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-object p2, p0, Lcom/android/volley/toolbox/k$c;->e:Landroid/graphics/Bitmap;

    .line 389
    iput-object p3, p0, Lcom/android/volley/toolbox/k$c;->d:Ljava/lang/String;

    .line 390
    iput-object p4, p0, Lcom/android/volley/toolbox/k$c;->c:Ljava/lang/String;

    .line 391
    iput-object p5, p0, Lcom/android/volley/toolbox/k$c;->b:Lcom/android/volley/toolbox/k$d;

    .line 392
    return-void
.end method

.method static synthetic a(Lcom/android/volley/toolbox/k$c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/volley/toolbox/k$c;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/volley/toolbox/k$c;->e:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/android/volley/toolbox/k$c;)Lcom/android/volley/toolbox/k$d;
    .locals 1
    .param p0, "x0"    # Lcom/android/volley/toolbox/k$c;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/volley/toolbox/k$c;->b:Lcom/android/volley/toolbox/k$d;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 398
    iget-object v2, p0, Lcom/android/volley/toolbox/k$c;->b:Lcom/android/volley/toolbox/k$d;

    if-nez v2, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v2, p0, Lcom/android/volley/toolbox/k$c;->a:Lcom/android/volley/toolbox/k;

    invoke-static {v2}, Lcom/android/volley/toolbox/k;->b(Lcom/android/volley/toolbox/k;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/volley/toolbox/k$c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/volley/toolbox/k$a;

    .line 403
    .local v1, "request":Lcom/android/volley/toolbox/k$a;
    if-eqz v1, :cond_2

    .line 404
    invoke-virtual {v1, p0}, Lcom/android/volley/toolbox/k$a;->b(Lcom/android/volley/toolbox/k$c;)Z

    move-result v0

    .line 405
    .local v0, "canceled":Z
    if-eqz v0, :cond_0

    .line 406
    iget-object v2, p0, Lcom/android/volley/toolbox/k$c;->a:Lcom/android/volley/toolbox/k;

    invoke-static {v2}, Lcom/android/volley/toolbox/k;->b(Lcom/android/volley/toolbox/k;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/volley/toolbox/k$c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 410
    .end local v0    # "canceled":Z
    :cond_2
    iget-object v2, p0, Lcom/android/volley/toolbox/k$c;->a:Lcom/android/volley/toolbox/k;

    invoke-static {v2}, Lcom/android/volley/toolbox/k;->a(Lcom/android/volley/toolbox/k;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/volley/toolbox/k$c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "request":Lcom/android/volley/toolbox/k$a;
    check-cast v1, Lcom/android/volley/toolbox/k$a;

    .line 411
    .restart local v1    # "request":Lcom/android/volley/toolbox/k$a;
    if-eqz v1, :cond_0

    .line 412
    invoke-virtual {v1, p0}, Lcom/android/volley/toolbox/k$a;->b(Lcom/android/volley/toolbox/k$c;)Z

    .line 413
    invoke-static {v1}, Lcom/android/volley/toolbox/k$a;->a(Lcom/android/volley/toolbox/k$a;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 414
    iget-object v2, p0, Lcom/android/volley/toolbox/k$c;->a:Lcom/android/volley/toolbox/k;

    invoke-static {v2}, Lcom/android/volley/toolbox/k;->a(Lcom/android/volley/toolbox/k;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/volley/toolbox/k$c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/volley/toolbox/k$c;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/volley/toolbox/k$c;->d:Ljava/lang/String;

    return-object v0
.end method
