.class final Landroid/support/v7/widget/GridLayout$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 2336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2337
    iput p1, p0, Landroid/support/v7/widget/GridLayout$f;->a:I

    .line 2338
    iput p2, p0, Landroid/support/v7/widget/GridLayout$f;->b:I

    .line 2339
    return-void
.end method


# virtual methods
.method a()I
    .locals 2

    .prologue
    .line 2342
    iget v0, p0, Landroid/support/v7/widget/GridLayout$f;->b:I

    iget v1, p0, Landroid/support/v7/widget/GridLayout$f;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method b()Landroid/support/v7/widget/GridLayout$f;
    .locals 3

    .prologue
    .line 2346
    new-instance v0, Landroid/support/v7/widget/GridLayout$f;

    iget v1, p0, Landroid/support/v7/widget/GridLayout$f;->b:I

    iget v2, p0, Landroid/support/v7/widget/GridLayout$f;->a:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayout$f;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2361
    if-ne p0, p1, :cond_1

    .line 2378
    :cond_0
    :goto_0
    return v1

    .line 2364
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 2365
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 2368
    check-cast v0, Landroid/support/v7/widget/GridLayout$f;

    .line 2370
    .local v0, "interval":Landroid/support/v7/widget/GridLayout$f;
    iget v3, p0, Landroid/support/v7/widget/GridLayout$f;->b:I

    iget v4, v0, Landroid/support/v7/widget/GridLayout$f;->b:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 2371
    goto :goto_0

    .line 2374
    :cond_4
    iget v3, p0, Landroid/support/v7/widget/GridLayout$f;->a:I

    iget v4, v0, Landroid/support/v7/widget/GridLayout$f;->a:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 2375
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 2383
    iget v0, p0, Landroid/support/v7/widget/GridLayout$f;->a:I

    .line 2384
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/support/v7/widget/GridLayout$f;->b:I

    add-int v0, v1, v2

    .line 2385
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/GridLayout$f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/GridLayout$f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
