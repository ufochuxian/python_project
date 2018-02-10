.class public Lcom/bumptech/glide/c;
.super Lcom/bumptech/glide/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/b",
        "<TModelType;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:Lcom/bumptech/glide/load/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/l",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/bumptech/glide/load/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/l",
            "<TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/bumptech/glide/l;

.field private final j:Lcom/bumptech/glide/o$d;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/o$d;)V
    .locals 3
    .param p4, "optionsApplier"    # Lcom/bumptech/glide/o$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/h",
            "<TModelType;***>;",
            "Lcom/bumptech/glide/load/b/l",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/b/l",
            "<TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/bumptech/glide/o$d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/bumptech/glide/c;, "Lcom/bumptech/glide/c<TModelType;>;"
    .local p1, "other":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;***>;"
    .local p2, "streamModelLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<TModelType;Ljava/io/InputStream;>;"
    .local p3, "fileDescriptorModelLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<TModelType;Landroid/os/ParcelFileDescriptor;>;"
    iget-object v0, p1, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/l;

    const-class v1, Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v0, p2, p3, v1, v2}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/f/f;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    const-class v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1, p1}, Lcom/bumptech/glide/b;-><init>(Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/h;)V

    .line 54
    iput-object p2, p0, Lcom/bumptech/glide/c;->g:Lcom/bumptech/glide/load/b/l;

    .line 55
    iput-object p3, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/load/b/l;

    .line 56
    iget-object v0, p1, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/l;

    iput-object v0, p0, Lcom/bumptech/glide/c;->i:Lcom/bumptech/glide/l;

    .line 57
    iput-object p4, p0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/o$d;

    .line 58
    return-void
.end method

.method private static a(Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/f/f;)Lcom/bumptech/glide/f/e;
    .locals 4
    .param p0, "glide"    # Lcom/bumptech/glide/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/l;",
            "Lcom/bumptech/glide/load/b/l",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/b/l",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/load/resource/f/f",
            "<",
            "Landroid/graphics/Bitmap;",
            "TR;>;)",
            "Lcom/bumptech/glide/f/e",
            "<TA;",
            "Lcom/bumptech/glide/load/b/g;",
            "Landroid/graphics/Bitmap;",
            "TR;>;"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "streamModelLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<TA;Ljava/io/InputStream;>;"
    .local p2, "fileDescriptorModelLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<TA;Landroid/os/ParcelFileDescriptor;>;"
    .local p3, "transcodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p4, "transcoder":Lcom/bumptech/glide/load/resource/f/f;, "Lcom/bumptech/glide/load/resource/f/f<Landroid/graphics/Bitmap;TR;>;"
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 34
    const/4 v2, 0x0

    .line 45
    :goto_0
    return-object v2

    .line 37
    :cond_0
    if-nez p4, :cond_1

    .line 38
    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2, p3}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/f/f;

    move-result-object p4

    .line 40
    :cond_1
    const-class v2, Lcom/bumptech/glide/load/b/g;

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2, v3}, Lcom/bumptech/glide/l;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/f/b;

    move-result-object v0

    .line 42
    .local v0, "loadProvider":Lcom/bumptech/glide/f/b;, "Lcom/bumptech/glide/f/b<Lcom/bumptech/glide/load/b/g;Landroid/graphics/Bitmap;>;"
    new-instance v1, Lcom/bumptech/glide/load/b/f;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/load/b/f;-><init>(Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/b/l;)V

    .line 45
    .local v1, "modelLoader":Lcom/bumptech/glide/load/b/f;, "Lcom/bumptech/glide/load/b/f<TA;>;"
    new-instance v2, Lcom/bumptech/glide/f/e;

    invoke-direct {v2, v1, p4, v0}, Lcom/bumptech/glide/f/e;-><init>(Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/resource/f/f;Lcom/bumptech/glide/f/b;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap$CompressFormat;I)Lcom/bumptech/glide/b;
    .locals 2
    .param p1, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "quality"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$CompressFormat;",
            "I)",
            "Lcom/bumptech/glide/b",
            "<TModelType;[B>;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/bumptech/glide/c;, "Lcom/bumptech/glide/c<TModelType;>;"
    new-instance v0, Lcom/bumptech/glide/load/resource/f/a;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/f/a;-><init>(Landroid/graphics/Bitmap$CompressFormat;I)V

    const-class v1, [B

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/load/resource/f/f;Ljava/lang/Class;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/resource/f/f;Ljava/lang/Class;)Lcom/bumptech/glide/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/resource/f/f",
            "<",
            "Landroid/graphics/Bitmap;",
            "TR;>;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/bumptech/glide/b",
            "<TModelType;TR;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/bumptech/glide/c;, "Lcom/bumptech/glide/c<TModelType;>;"
    .local p1, "transcoder":Lcom/bumptech/glide/load/resource/f/f;, "Lcom/bumptech/glide/load/resource/f/f<Landroid/graphics/Bitmap;TR;>;"
    .local p2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/o$d;

    new-instance v1, Lcom/bumptech/glide/b;

    iget-object v2, p0, Lcom/bumptech/glide/c;->i:Lcom/bumptech/glide/l;

    iget-object v3, p0, Lcom/bumptech/glide/c;->g:Lcom/bumptech/glide/load/b/l;

    iget-object v4, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/load/b/l;

    invoke-static {v2, v3, v4, p2, p1}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/f/f;)Lcom/bumptech/glide/f/e;

    move-result-object v2

    invoke-direct {v1, v2, p2, p0}, Lcom/bumptech/glide/b;-><init>(Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/h;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/o$d;->a(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b;

    return-object v0
.end method

.method public p()Lcom/bumptech/glide/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/b",
            "<TModelType;[B>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/bumptech/glide/c;, "Lcom/bumptech/glide/c<TModelType;>;"
    new-instance v0, Lcom/bumptech/glide/load/resource/f/a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/f/a;-><init>()V

    const-class v1, [B

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/load/resource/f/f;Ljava/lang/Class;)Lcom/bumptech/glide/b;

    move-result-object v0

    return-object v0
.end method
