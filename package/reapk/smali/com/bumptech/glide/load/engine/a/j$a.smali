.class final Lcom/bumptech/glide/load/engine/a/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/a/j$b;

.field private b:I

.field private c:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/j$b;)V
    .locals 0
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/a/j$b;

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/j$a;->a:Lcom/bumptech/glide/load/engine/a/j$b;

    .line 180
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/a/j$b;ILandroid/graphics/Bitmap$Config;)V
    .locals 0
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/a/j$b;
    .param p2, "size"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/a/j$a;-><init>(Lcom/bumptech/glide/load/engine/a/j$b;)V

    .line 185
    invoke-virtual {p0, p2, p3}, Lcom/bumptech/glide/load/engine/a/j$a;->a(ILandroid/graphics/Bitmap$Config;)V

    .line 186
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/load/engine/a/j$a;)I
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/load/engine/a/j$a;

    .prologue
    .line 172
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/j$a;->b:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/j$a;->a:Lcom/bumptech/glide/load/engine/a/j$b;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/a/j$b;->a(Lcom/bumptech/glide/load/engine/a/h;)V

    .line 196
    return-void
.end method

.method public a(ILandroid/graphics/Bitmap$Config;)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 189
    iput p1, p0, Lcom/bumptech/glide/load/engine/a/j$a;->b:I

    .line 190
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/a/j$a;->c:Landroid/graphics/Bitmap$Config;

    .line 191
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 205
    instance-of v2, p1, Lcom/bumptech/glide/load/engine/a/j$a;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 206
    check-cast v0, Lcom/bumptech/glide/load/engine/a/j$a;

    .line 207
    .local v0, "other":Lcom/bumptech/glide/load/engine/a/j$a;
    iget v2, p0, Lcom/bumptech/glide/load/engine/a/j$a;->b:I

    iget v3, v0, Lcom/bumptech/glide/load/engine/a/j$a;->b:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a/j$a;->c:Landroid/graphics/Bitmap$Config;

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/a/j$a;->c:Landroid/graphics/Bitmap$Config;

    if-nez v2, :cond_0

    :goto_0
    const/4 v1, 0x1

    .line 209
    .end local v0    # "other":Lcom/bumptech/glide/load/engine/a/j$a;
    :cond_0
    return v1

    .line 207
    .restart local v0    # "other":Lcom/bumptech/glide/load/engine/a/j$a;
    :cond_1
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a/j$a;->c:Landroid/graphics/Bitmap$Config;

    iget-object v3, v0, Lcom/bumptech/glide/load/engine/a/j$a;->c:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 214
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/j$a;->b:I

    .line 215
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/j$a;->c:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/j$a;->c:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 216
    return v0

    .line 215
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/j$a;->b:I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/j$a;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/engine/a/j;->a(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
