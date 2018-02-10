.class public Lcom/bumptech/glide/b;
.super Lcom/bumptech/glide/h;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/h",
        "<TModelType;",
        "Lcom/bumptech/glide/load/b/g;",
        "Landroid/graphics/Bitmap;",
        "TTranscodeType;>;",
        "Lcom/bumptech/glide/a;"
    }
.end annotation


# instance fields
.field private final g:Lcom/bumptech/glide/load/engine/a/c;

.field private h:Lcom/bumptech/glide/load/resource/bitmap/g;

.field private i:Lcom/bumptech/glide/load/DecodeFormat;

.field private j:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f/f",
            "<TModelType;",
            "Lcom/bumptech/glide/load/b/g;",
            "Landroid/graphics/Bitmap;",
            "TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/h",
            "<TModelType;***>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    .local p1, "loadProvider":Lcom/bumptech/glide/f/f;, "Lcom/bumptech/glide/f/f<TModelType;Lcom/bumptech/glide/load/b/g;Landroid/graphics/Bitmap;TTranscodeType;>;"
    .local p2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscodeType;>;"
    .local p3, "other":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;***>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/h;-><init>(Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/h;)V

    .line 50
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/g;->a:Lcom/bumptech/glide/load/resource/bitmap/g;

    iput-object v0, p0, Lcom/bumptech/glide/b;->h:Lcom/bumptech/glide/load/resource/bitmap/g;

    .line 58
    iget-object v0, p3, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/l;

    invoke-virtual {v0}, Lcom/bumptech/glide/l;->c()Lcom/bumptech/glide/load/engine/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/b;->g:Lcom/bumptech/glide/load/engine/a/c;

    .line 59
    iget-object v0, p3, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/l;

    invoke-virtual {v0}, Lcom/bumptech/glide/l;->j()Lcom/bumptech/glide/load/DecodeFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/load/DecodeFormat;

    .line 61
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/p;

    iget-object v1, p0, Lcom/bumptech/glide/b;->g:Lcom/bumptech/glide/load/engine/a/c;

    iget-object v2, p0, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/p;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/b;->j:Lcom/bumptech/glide/load/d;

    .line 62
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/i;

    iget-object v1, p0, Lcom/bumptech/glide/b;->g:Lcom/bumptech/glide/load/engine/a/c;

    iget-object v2, p0, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/i;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/b;->k:Lcom/bumptech/glide/load/d;

    .line 63
    return-void
.end method

.method private a(Lcom/bumptech/glide/load/resource/bitmap/g;)Lcom/bumptech/glide/b;
    .locals 3
    .param p1, "downsampler"    # Lcom/bumptech/glide/load/resource/bitmap/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/g;",
            ")",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    iput-object p1, p0, Lcom/bumptech/glide/b;->h:Lcom/bumptech/glide/load/resource/bitmap/g;

    .line 112
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/p;

    iget-object v1, p0, Lcom/bumptech/glide/b;->g:Lcom/bumptech/glide/load/engine/a/c;

    iget-object v2, p0, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct {v0, p1, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/p;-><init>(Lcom/bumptech/glide/load/resource/bitmap/g;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/b;->j:Lcom/bumptech/glide/load/d;

    .line 113
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/m;

    iget-object v1, p0, Lcom/bumptech/glide/b;->j:Lcom/bumptech/glide/load/d;

    iget-object v2, p0, Lcom/bumptech/glide/b;->k:Lcom/bumptech/glide/load/d;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/m;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/h;->f(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/h;

    .line 114
    return-object p0
.end method


# virtual methods
.method public a(F)Lcom/bumptech/glide/b;
    .locals 0
    .param p1, "sizeMultiplier"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->d(F)Lcom/bumptech/glide/h;

    .line 123
    return-object p0
.end method

.method public a(I)Lcom/bumptech/glide/b;
    .locals 0
    .param p1, "animationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->h(I)Lcom/bumptech/glide/h;

    .line 331
    return-object p0
.end method

.method public a(II)Lcom/bumptech/glide/b;
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/h;->b(II)Lcom/bumptech/glide/h;

    .line 436
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/b;
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->f(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/h;

    .line 369
    return-object p0
.end method

.method public a(Landroid/view/animation/Animation;)Lcom/bumptech/glide/b;
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 341
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Landroid/view/animation/Animation;)Lcom/bumptech/glide/h;

    .line 342
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/b;
    .locals 0
    .param p1, "priority"    # Lcom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/h;

    .line 250
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/b;)Lcom/bumptech/glide/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/b",
            "<*TTranscodeType;>;)",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    .local p1, "thumbnailRequest":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<*TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;

    .line 152
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/g/a/h$a;)Lcom/bumptech/glide/b;
    .locals 0
    .param p1, "animator"    # Lcom/bumptech/glide/g/a/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g/a/h$a;",
            ")",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/g/a/h$a;)Lcom/bumptech/glide/h;

    .line 351
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/g/f;)Lcom/bumptech/glide/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g/f",
            "<-TModelType;TTranscodeType;>;)",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    .local p1, "requestListener":Lcom/bumptech/glide/g/f;, "Lcom/bumptech/glide/g/f<-TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/g/f;)Lcom/bumptech/glide/h;

    .line 409
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/h",
            "<***TTranscodeType;>;)",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 445
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    .local p1, "thumbnailRequest":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<***TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;

    .line 446
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/b;
    .locals 4
    .param p1, "format"    # Lcom/bumptech/glide/load/DecodeFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ")",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    iput-object p1, p0, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/load/DecodeFormat;

    .line 240
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/p;

    iget-object v1, p0, Lcom/bumptech/glide/b;->h:Lcom/bumptech/glide/load/resource/bitmap/g;

    iget-object v2, p0, Lcom/bumptech/glide/b;->g:Lcom/bumptech/glide/load/engine/a/c;

    invoke-direct {v0, v1, v2, p1}, Lcom/bumptech/glide/load/resource/bitmap/p;-><init>(Lcom/bumptech/glide/load/resource/bitmap/g;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/b;->j:Lcom/bumptech/glide/load/d;

    .line 241
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/i;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/r;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/r;-><init>()V

    iget-object v2, p0, Lcom/bumptech/glide/b;->g:Lcom/bumptech/glide/load/engine/a/c;

    invoke-direct {v0, v1, v2, p1}, Lcom/bumptech/glide/load/resource/bitmap/i;-><init>(Lcom/bumptech/glide/load/resource/bitmap/r;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/b;->k:Lcom/bumptech/glide/load/d;

    .line 242
    new-instance v0, Lcom/bumptech/glide/load/resource/c/c;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/p;

    iget-object v2, p0, Lcom/bumptech/glide/b;->h:Lcom/bumptech/glide/load/resource/bitmap/g;

    iget-object v3, p0, Lcom/bumptech/glide/b;->g:Lcom/bumptech/glide/load/engine/a/c;

    invoke-direct {v1, v2, v3, p1}, Lcom/bumptech/glide/load/resource/bitmap/p;-><init>(Lcom/bumptech/glide/load/resource/bitmap/g;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/c/c;-><init>(Lcom/bumptech/glide/load/d;)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/h;->e(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/h;

    .line 243
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/m;

    iget-object v1, p0, Lcom/bumptech/glide/b;->j:Lcom/bumptech/glide/load/d;

    iget-object v2, p0, Lcom/bumptech/glide/b;->k:Lcom/bumptech/glide/load/d;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/m;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/h;->f(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/h;

    .line 244
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a",
            "<",
            "Lcom/bumptech/glide/load/b/g;",
            ">;)",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    .local p1, "sourceEncoder":Lcom/bumptech/glide/load/a;, "Lcom/bumptech/glide/load/a<Lcom/bumptech/glide/load/b/g;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/h;

    .line 455
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/b;
    .locals 0
    .param p1, "signature"    # Lcom/bumptech/glide/load/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            ")",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/h;

    .line 470
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/bumptech/glide/load/b/g;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    .local p1, "decoder":Lcom/bumptech/glide/load/d;, "Lcom/bumptech/glide/load/d<Lcom/bumptech/glide/load/b/g;Landroid/graphics/Bitmap;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->f(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/h;

    .line 170
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/e",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    .local p1, "encoder":Lcom/bumptech/glide/load/e;, "Lcom/bumptech/glide/load/e<Landroid/graphics/Bitmap;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/h;

    .line 188
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/b;
    .locals 0
    .param p1, "strategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/h;

    .line 427
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/resource/f/f;)Lcom/bumptech/glide/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/f/f",
            "<",
            "Landroid/graphics/Bitmap;",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    .local p1, "transcoder":Lcom/bumptech/glide/load/resource/f/f;, "Lcom/bumptech/glide/load/resource/f/f<Landroid/graphics/Bitmap;TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/load/resource/f/f;)Lcom/bumptech/glide/h;

    .line 313
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 475
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    .local p1, "model":Ljava/lang/Object;, "TModelType;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Ljava/lang/Object;)Lcom/bumptech/glide/h;

    .line 476
    return-object p0
.end method

.method public a(Z)Lcom/bumptech/glide/b;
    .locals 0
    .param p1, "skip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Z)Lcom/bumptech/glide/h;

    .line 418
    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    .local p1, "transformations":[Lcom/bumptech/glide/load/f;, "[Lcom/bumptech/glide/load/f<Landroid/graphics/Bitmap;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/h;

    .line 303
    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/load/resource/bitmap/e;)Lcom/bumptech/glide/b;
    .locals 0
    .param p1, "transformations"    # [Lcom/bumptech/glide/load/resource/bitmap/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/resource/bitmap/e;",
            ")",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/h;

    .line 265
    return-object p0
.end method

.method public a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/g/b/m",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 498
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a()Lcom/bumptech/glide/h;
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/b;->g()Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public b(F)Lcom/bumptech/glide/b;
    .locals 0
    .param p1, "sizeMultiplier"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->c(F)Lcom/bumptech/glide/h;

    .line 161
    return-object p0
.end method

.method public b(I)Lcom/bumptech/glide/b;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->g(I)Lcom/bumptech/glide/h;

    .line 360
    return-object p0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/b;
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->e(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/h;

    .line 375
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    .local p1, "cacheDecoder":Lcom/bumptech/glide/load/d;, "Lcom/bumptech/glide/load/d<Ljava/io/File;Landroid/graphics/Bitmap;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->e(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/h;

    .line 179
    return-object p0
.end method

.method public synthetic b()Lcom/bumptech/glide/h;
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/b;->f()Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(II)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/b;->a(II)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/view/animation/Animation;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Landroid/view/animation/Animation;

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->a(Landroid/view/animation/Animation;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/Priority;

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/g/a/h$a;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/g/a/h$a;

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/g/a/h$a;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/g/f;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/g/f;

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/g/f;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/h;

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/a;

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/b;

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/e;

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/resource/f/f;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/resource/f/f;

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/load/resource/f/f;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->a(Ljava/lang/Object;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Z)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->a(Z)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # [Lcom/bumptech/glide/load/f;

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->a([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/g;->a:Lcom/bumptech/glide/load/resource/bitmap/g;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/load/resource/bitmap/g;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/bumptech/glide/b;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->f(I)Lcom/bumptech/glide/h;

    .line 381
    return-object p0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/b;
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->d(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/h;

    .line 399
    return-object p0
.end method

.method public c(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    .local p1, "decoder":Lcom/bumptech/glide/load/d;, "Lcom/bumptech/glide/load/d<Ljava/io/InputStream;Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/bumptech/glide/b;->j:Lcom/bumptech/glide/load/d;

    .line 202
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/m;

    iget-object v1, p0, Lcom/bumptech/glide/b;->k:Lcom/bumptech/glide/load/d;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/resource/bitmap/m;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/h;->f(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/h;

    .line 203
    return-object p0
.end method

.method public synthetic c(F)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # F

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->b(F)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/b;->j()Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/g;->c:Lcom/bumptech/glide/load/resource/bitmap/g;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/load/resource/bitmap/g;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lcom/bumptech/glide/b;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->e(I)Lcom/bumptech/glide/h;

    .line 390
    return-object p0
.end method

.method public d(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    .local p1, "decoder":Lcom/bumptech/glide/load/d;, "Lcom/bumptech/glide/load/d<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/bumptech/glide/b;->k:Lcom/bumptech/glide/load/d;

    .line 216
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/m;

    iget-object v1, p0, Lcom/bumptech/glide/b;->j:Lcom/bumptech/glide/load/d;

    invoke-direct {v0, v1, p1}, Lcom/bumptech/glide/load/resource/bitmap/m;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/h;->f(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/h;

    .line 217
    return-object p0
.end method

.method public synthetic d(F)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # F

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->a(F)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->c(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/bumptech/glide/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/g;->b:Lcom/bumptech/glide/load/resource/bitmap/g;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/load/resource/bitmap/g;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(I)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->d(I)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/d;

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/bumptech/glide/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/e;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/l;

    invoke-virtual {v2}, Lcom/bumptech/glide/l;->e()Lcom/bumptech/glide/load/resource/bitmap/f;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/b;->a([Lcom/bumptech/glide/load/resource/bitmap/e;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f(I)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->c(I)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/d;

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/bumptech/glide/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/e;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/l;

    invoke-virtual {v2}, Lcom/bumptech/glide/l;->f()Lcom/bumptech/glide/load/resource/bitmap/j;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/b;->a([Lcom/bumptech/glide/load/resource/bitmap/e;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g(I)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->b(I)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/bumptech/glide/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-super {p0}, Lcom/bumptech/glide/h;->n()Lcom/bumptech/glide/h;

    .line 322
    return-object p0
.end method

.method public synthetic h(I)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->a(I)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/bumptech/glide/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 463
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-super {p0}, Lcom/bumptech/glide/h;->o()Lcom/bumptech/glide/h;

    .line 464
    return-object p0
.end method

.method public j()Lcom/bumptech/glide/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/b",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 481
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-super {p0}, Lcom/bumptech/glide/h;->m()Lcom/bumptech/glide/h;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b;

    return-object v0
.end method

.method k()V
    .locals 0

    .prologue
    .line 503
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/b;->g()Lcom/bumptech/glide/b;

    .line 504
    return-void
.end method

.method l()V
    .locals 0

    .prologue
    .line 508
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/b;->f()Lcom/bumptech/glide/b;

    .line 509
    return-void
.end method

.method public synthetic m()Lcom/bumptech/glide/h;
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/b;->j()Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic n()Lcom/bumptech/glide/h;
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/b;->h()Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o()Lcom/bumptech/glide/h;
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/b;, "Lcom/bumptech/glide/b<TModelType;TTranscodeType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/b;->i()Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method
