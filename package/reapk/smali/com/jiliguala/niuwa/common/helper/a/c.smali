.class public Lcom/jiliguala/niuwa/common/helper/a/c;
.super Lcom/jiliguala/niuwa/common/helper/a/d;
.source "SourceFile"


# direct methods
.method public varargs constructor <init>(Landroid/view/View;[I)V
    .locals 0
    .param p1, "actionBtn"    # Landroid/view/View;
    .param p2, "fields"    # [I
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/helper/a/d;-><init>(Landroid/view/View;[I)V

    .line 14
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldId"    # I

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/helper/a/d;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(IZLjava/lang/Object;)V
    .locals 3
    .param p1, "fieldId"    # I
    .param p2, "isCorrect"    # Z
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 18
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/a/c;->p:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/a/c;->l:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/a/c;->l:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/a/c;->l:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_2

    .line 21
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/a/c;->m:[Z

    aput-boolean p2, v1, v0

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/a/c;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/helper/a/c;->o:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/helper/a/c;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 28
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/a/c;->o:Landroid/view/View;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/b;->b(Landroid/view/View;Z)V

    .line 35
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/helper/a/c;->o:Landroid/view/View;

    .line 37
    :cond_1
    return-void

    .line 19
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/a/c;->o:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/b;->b(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/helper/a/d;->a()Z

    move-result v0

    return v0
.end method
