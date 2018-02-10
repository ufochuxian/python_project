.class public final Lcom/jakewharton/rxbinding/view/r;
.super Lcom/jakewharton/rxbinding/view/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding/view/k",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I


# direct methods
.method private constructor <init>(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/view/k;-><init>(Landroid/view/View;)V

    .line 27
    iput p2, p0, Lcom/jakewharton/rxbinding/view/r;->a:I

    .line 28
    iput p3, p0, Lcom/jakewharton/rxbinding/view/r;->b:I

    .line 29
    iput p4, p0, Lcom/jakewharton/rxbinding/view/r;->c:I

    .line 30
    iput p5, p0, Lcom/jakewharton/rxbinding/view/r;->d:I

    .line 31
    iput p6, p0, Lcom/jakewharton/rxbinding/view/r;->e:I

    .line 32
    iput p7, p0, Lcom/jakewharton/rxbinding/view/r;->f:I

    .line 33
    iput p8, p0, Lcom/jakewharton/rxbinding/view/r;->g:I

    .line 34
    iput p9, p0, Lcom/jakewharton/rxbinding/view/r;->h:I

    .line 35
    return-void
.end method

.method public static a(Landroid/view/View;IIIIIIII)Lcom/jakewharton/rxbinding/view/r;
    .locals 10
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "oldLeft"    # I
    .param p6, "oldTop"    # I
    .param p7, "oldRight"    # I
    .param p8, "oldBottom"    # I
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 18
    new-instance v0, Lcom/jakewharton/rxbinding/view/r;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/jakewharton/rxbinding/view/r;-><init>(Landroid/view/View;IIIIIIII)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/jakewharton/rxbinding/view/r;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/jakewharton/rxbinding/view/r;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/jakewharton/rxbinding/view/r;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/jakewharton/rxbinding/view/r;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    if-ne p1, p0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    instance-of v3, p1, Lcom/jakewharton/rxbinding/view/r;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 86
    check-cast v0, Lcom/jakewharton/rxbinding/view/r;

    .line 87
    .local v0, "other":Lcom/jakewharton/rxbinding/view/r;
    invoke-virtual {v0}, Lcom/jakewharton/rxbinding/view/r;->b()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/r;->b()Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/jakewharton/rxbinding/view/r;->a:I

    iget v4, p0, Lcom/jakewharton/rxbinding/view/r;->a:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/jakewharton/rxbinding/view/r;->b:I

    iget v4, p0, Lcom/jakewharton/rxbinding/view/r;->b:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/jakewharton/rxbinding/view/r;->c:I

    iget v4, p0, Lcom/jakewharton/rxbinding/view/r;->c:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/jakewharton/rxbinding/view/r;->d:I

    iget v4, p0, Lcom/jakewharton/rxbinding/view/r;->d:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/jakewharton/rxbinding/view/r;->e:I

    iget v4, p0, Lcom/jakewharton/rxbinding/view/r;->e:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/jakewharton/rxbinding/view/r;->f:I

    iget v4, p0, Lcom/jakewharton/rxbinding/view/r;->f:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/jakewharton/rxbinding/view/r;->g:I

    iget v4, p0, Lcom/jakewharton/rxbinding/view/r;->g:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/jakewharton/rxbinding/view/r;->h:I

    iget v4, p0, Lcom/jakewharton/rxbinding/view/r;->h:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/jakewharton/rxbinding/view/r;->e:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/jakewharton/rxbinding/view/r;->f:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/jakewharton/rxbinding/view/r;->g:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 70
    const/16 v0, 0x11

    .line 71
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/r;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 72
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jakewharton/rxbinding/view/r;->a:I

    add-int v0, v1, v2

    .line 73
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jakewharton/rxbinding/view/r;->b:I

    add-int v0, v1, v2

    .line 74
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jakewharton/rxbinding/view/r;->c:I

    add-int v0, v1, v2

    .line 75
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jakewharton/rxbinding/view/r;->d:I

    add-int v0, v1, v2

    .line 76
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jakewharton/rxbinding/view/r;->e:I

    add-int v0, v1, v2

    .line 77
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jakewharton/rxbinding/view/r;->f:I

    add-int v0, v1, v2

    .line 78
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jakewharton/rxbinding/view/r;->g:I

    add-int v0, v1, v2

    .line 79
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jakewharton/rxbinding/view/r;->h:I

    add-int v0, v1, v2

    .line 80
    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/jakewharton/rxbinding/view/r;->h:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewLayoutChangeEvent{left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding/view/r;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding/view/r;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding/view/r;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding/view/r;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oldLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding/view/r;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oldTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding/view/r;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oldRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding/view/r;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oldBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding/view/r;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
