.class final Lcom/nostra13/universalimageloader/core/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String; = "PostProcess image before displaying [%s]"


# instance fields
.field private final b:Lcom/nostra13/universalimageloader/core/f;

.field private final c:Landroid/graphics/Bitmap;

.field private final d:Lcom/nostra13/universalimageloader/core/g;

.field private final e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/f;Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/g;Landroid/os/Handler;)V
    .locals 0
    .param p1, "engine"    # Lcom/nostra13/universalimageloader/core/f;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "imageLoadingInfo"    # Lcom/nostra13/universalimageloader/core/g;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/i;->b:Lcom/nostra13/universalimageloader/core/f;

    .line 44
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/i;->c:Landroid/graphics/Bitmap;

    .line 45
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/i;->d:Lcom/nostra13/universalimageloader/core/g;

    .line 46
    iput-object p4, p0, Lcom/nostra13/universalimageloader/core/i;->e:Landroid/os/Handler;

    .line 47
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 51
    const-string v3, "PostProcess image before displaying [%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/i;->d:Lcom/nostra13/universalimageloader/core/g;

    iget-object v6, v6, Lcom/nostra13/universalimageloader/core/g;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/i;->d:Lcom/nostra13/universalimageloader/core/g;

    iget-object v3, v3, Lcom/nostra13/universalimageloader/core/g;->e:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/c;->p()Lcom/nostra13/universalimageloader/core/e/a;

    move-result-object v2

    .line 54
    .local v2, "processor":Lcom/nostra13/universalimageloader/core/e/a;
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/i;->c:Landroid/graphics/Bitmap;

    invoke-interface {v2, v3}, Lcom/nostra13/universalimageloader/core/e/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 55
    .local v1, "processedBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Lcom/nostra13/universalimageloader/core/b;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/i;->d:Lcom/nostra13/universalimageloader/core/g;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/i;->b:Lcom/nostra13/universalimageloader/core/f;

    sget-object v5, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/b;-><init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/g;Lcom/nostra13/universalimageloader/core/f;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    .line 57
    .local v0, "displayBitmapTask":Lcom/nostra13/universalimageloader/core/b;
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/i;->d:Lcom/nostra13/universalimageloader/core/g;

    iget-object v3, v3, Lcom/nostra13/universalimageloader/core/g;->e:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/c;->s()Z

    move-result v3

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/i;->e:Landroid/os/Handler;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/i;->b:Lcom/nostra13/universalimageloader/core/f;

    invoke-static {v0, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/h;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/f;)V

    .line 58
    return-void
.end method
