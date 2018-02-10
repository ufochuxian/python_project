.class final Lcom/bumptech/glide/load/engine/a/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/a/k$b;

.field private b:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/a/k$b;)V
    .locals 0
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/a/k$b;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/k$a;->a:Lcom/bumptech/glide/load/engine/a/k$b;

    .line 127
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/load/engine/a/k$a;)I
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/load/engine/a/k$a;

    .prologue
    .line 121
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/k$a;->b:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/k$a;->a:Lcom/bumptech/glide/load/engine/a/k$b;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/a/k$b;->a(Lcom/bumptech/glide/load/engine/a/h;)V

    .line 155
    return-void
.end method

.method public a(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/bumptech/glide/load/engine/a/k$a;->b:I

    .line 131
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 135
    instance-of v2, p1, Lcom/bumptech/glide/load/engine/a/k$a;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 136
    check-cast v0, Lcom/bumptech/glide/load/engine/a/k$a;

    .line 137
    .local v0, "other":Lcom/bumptech/glide/load/engine/a/k$a;
    iget v2, p0, Lcom/bumptech/glide/load/engine/a/k$a;->b:I

    iget v3, v0, Lcom/bumptech/glide/load/engine/a/k$a;->b:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 139
    .end local v0    # "other":Lcom/bumptech/glide/load/engine/a/k$a;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/k$a;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/k$a;->b:I

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/a/k;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
