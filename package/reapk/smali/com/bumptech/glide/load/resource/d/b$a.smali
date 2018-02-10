.class Lcom/bumptech/glide/load/resource/d/b$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final j:I = 0x77


# instance fields
.field a:Lcom/bumptech/glide/b/c;

.field b:[B

.field c:Landroid/content/Context;

.field d:Lcom/bumptech/glide/load/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:I

.field g:Lcom/bumptech/glide/b/a$a;

.field h:Lcom/bumptech/glide/load/engine/a/c;

.field i:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/b/c;[BLandroid/content/Context;Lcom/bumptech/glide/load/f;IILcom/bumptech/glide/b/a$a;Lcom/bumptech/glide/load/engine/a/c;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "header"    # Lcom/bumptech/glide/b/c;
    .param p2, "data"    # [B
    .param p3, "context"    # Landroid/content/Context;
    .param p5, "targetWidth"    # I
    .param p6, "targetHeight"    # I
    .param p7, "provider"    # Lcom/bumptech/glide/b/a$a;
    .param p8, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;
    .param p9, "firstFrame"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/b/c;",
            "[B",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Lcom/bumptech/glide/b/a$a;",
            "Lcom/bumptech/glide/load/engine/a/c;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 332
    .local p4, "frameTransformation":Lcom/bumptech/glide/load/f;, "Lcom/bumptech/glide/load/f<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 333
    if-nez p9, :cond_0

    .line 334
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The first frame of the GIF must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/b$a;->a:Lcom/bumptech/glide/b/c;

    .line 337
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/d/b$a;->b:[B

    .line 338
    iput-object p8, p0, Lcom/bumptech/glide/load/resource/d/b$a;->h:Lcom/bumptech/glide/load/engine/a/c;

    .line 339
    iput-object p9, p0, Lcom/bumptech/glide/load/resource/d/b$a;->i:Landroid/graphics/Bitmap;

    .line 340
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/b$a;->c:Landroid/content/Context;

    .line 341
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/d/b$a;->d:Lcom/bumptech/glide/load/f;

    .line 342
    iput p5, p0, Lcom/bumptech/glide/load/resource/d/b$a;->e:I

    .line 343
    iput p6, p0, Lcom/bumptech/glide/load/resource/d/b$a;->f:I

    .line 344
    iput-object p7, p0, Lcom/bumptech/glide/load/resource/d/b$a;->g:Lcom/bumptech/glide/b/a$a;

    .line 345
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/d/b$a;)V
    .locals 1
    .param p1, "original"    # Lcom/bumptech/glide/load/resource/d/b$a;

    .prologue
    .line 347
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 348
    if-eqz p1, :cond_0

    .line 349
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/d/b$a;->a:Lcom/bumptech/glide/b/c;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/b$a;->a:Lcom/bumptech/glide/b/c;

    .line 350
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/d/b$a;->b:[B

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/b$a;->b:[B

    .line 351
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/d/b$a;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/b$a;->c:Landroid/content/Context;

    .line 352
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/d/b$a;->d:Lcom/bumptech/glide/load/f;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/b$a;->d:Lcom/bumptech/glide/load/f;

    .line 353
    iget v0, p1, Lcom/bumptech/glide/load/resource/d/b$a;->e:I

    iput v0, p0, Lcom/bumptech/glide/load/resource/d/b$a;->e:I

    .line 354
    iget v0, p1, Lcom/bumptech/glide/load/resource/d/b$a;->f:I

    iput v0, p0, Lcom/bumptech/glide/load/resource/d/b$a;->f:I

    .line 355
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/d/b$a;->g:Lcom/bumptech/glide/b/a$a;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/b$a;->g:Lcom/bumptech/glide/b/a$a;

    .line 356
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/d/b$a;->h:Lcom/bumptech/glide/load/engine/a/c;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/b$a;->h:Lcom/bumptech/glide/load/engine/a/c;

    .line 357
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/d/b$a;->i:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/b$a;->i:Landroid/graphics/Bitmap;

    .line 359
    :cond_0
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 368
    new-instance v0, Lcom/bumptech/glide/load/resource/d/b;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/resource/d/b;-><init>(Lcom/bumptech/glide/load/resource/d/b$a;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/b$a;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
