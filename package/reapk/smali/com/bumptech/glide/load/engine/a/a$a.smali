.class Lcom/bumptech/glide/load/engine/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/a/a$b;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/a$b;)V
    .locals 0
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/a/a$b;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/a$a;->a:Lcom/bumptech/glide/load/engine/a/a$b;

    .line 84
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/a$a;->a:Lcom/bumptech/glide/load/engine/a/a$b;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/a/a$b;->a(Lcom/bumptech/glide/load/engine/a/h;)V

    .line 119
    return-void
.end method

.method public a(IILandroid/graphics/Bitmap$Config;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 87
    iput p1, p0, Lcom/bumptech/glide/load/engine/a/a$a;->b:I

    .line 88
    iput p2, p0, Lcom/bumptech/glide/load/engine/a/a$a;->c:I

    .line 89
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/a/a$a;->d:Landroid/graphics/Bitmap$Config;

    .line 90
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 94
    instance-of v2, p1, Lcom/bumptech/glide/load/engine/a/a$a;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 95
    check-cast v0, Lcom/bumptech/glide/load/engine/a/a$a;

    .line 96
    .local v0, "other":Lcom/bumptech/glide/load/engine/a/a$a;
    iget v2, p0, Lcom/bumptech/glide/load/engine/a/a$a;->b:I

    iget v3, v0, Lcom/bumptech/glide/load/engine/a/a$a;->b:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/bumptech/glide/load/engine/a/a$a;->c:I

    iget v3, v0, Lcom/bumptech/glide/load/engine/a/a$a;->c:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a/a$a;->d:Landroid/graphics/Bitmap$Config;

    iget-object v3, v0, Lcom/bumptech/glide/load/engine/a/a$a;->d:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 100
    .end local v0    # "other":Lcom/bumptech/glide/load/engine/a/a$a;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 105
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/a$a;->b:I

    .line 106
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/bumptech/glide/load/engine/a/a$a;->c:I

    add-int v0, v1, v2

    .line 107
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/a$a;->d:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/a$a;->d:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 108
    return v0

    .line 107
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/a$a;->b:I

    iget v1, p0, Lcom/bumptech/glide/load/engine/a/a$a;->c:I

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a/a$a;->d:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/engine/a/a;->c(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
