.class public final Lcom/jakewharton/rxbinding/b/aw;
.super Lcom/jakewharton/rxbinding/view/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding/view/k",
        "<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method private constructor <init>(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p3, "start"    # I
    .param p4, "count"    # I
    .param p5, "after"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/view/k;-><init>(Landroid/view/View;)V

    .line 30
    iput-object p2, p0, Lcom/jakewharton/rxbinding/b/aw;->a:Ljava/lang/CharSequence;

    .line 31
    iput p3, p0, Lcom/jakewharton/rxbinding/b/aw;->b:I

    .line 32
    iput p4, p0, Lcom/jakewharton/rxbinding/b/aw;->c:I

    .line 33
    iput p5, p0, Lcom/jakewharton/rxbinding/b/aw;->d:I

    .line 34
    return-void
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/CharSequence;III)Lcom/jakewharton/rxbinding/b/aw;
    .locals 6
    .param p0, "view"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 19
    new-instance v0, Lcom/jakewharton/rxbinding/b/aw;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jakewharton/rxbinding/b/aw;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/aw;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/jakewharton/rxbinding/b/aw;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/jakewharton/rxbinding/b/aw;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/jakewharton/rxbinding/b/aw;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    if-ne p1, p0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    instance-of v3, p1, Lcom/jakewharton/rxbinding/b/au;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 56
    check-cast v0, Lcom/jakewharton/rxbinding/b/aw;

    .line 57
    .local v0, "other":Lcom/jakewharton/rxbinding/b/aw;
    invoke-virtual {v0}, Lcom/jakewharton/rxbinding/b/aw;->b()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/b/aw;->b()Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/jakewharton/rxbinding/b/aw;->a:Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/jakewharton/rxbinding/b/aw;->a:Ljava/lang/CharSequence;

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/jakewharton/rxbinding/b/aw;->b:I

    iget v4, v0, Lcom/jakewharton/rxbinding/b/aw;->b:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/jakewharton/rxbinding/b/aw;->c:I

    iget v4, v0, Lcom/jakewharton/rxbinding/b/aw;->c:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/jakewharton/rxbinding/b/aw;->d:I

    iget v4, v0, Lcom/jakewharton/rxbinding/b/aw;->d:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 65
    const/16 v0, 0x11

    .line 66
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/b/aw;->b()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 67
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/jakewharton/rxbinding/b/aw;->a:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 68
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jakewharton/rxbinding/b/aw;->b:I

    add-int v0, v1, v2

    .line 69
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jakewharton/rxbinding/b/aw;->c:I

    add-int v0, v1, v2

    .line 70
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jakewharton/rxbinding/b/aw;->d:I

    add-int v0, v1, v2

    .line 71
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextViewBeforeTextChangeEvent{text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/aw;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding/b/aw;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding/b/aw;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding/b/aw;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/b/aw;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
