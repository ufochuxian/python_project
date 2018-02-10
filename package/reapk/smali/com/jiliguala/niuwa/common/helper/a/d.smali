.class public Lcom/jiliguala/niuwa/common/helper/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/helper/a/b;


# instance fields
.field protected l:[I

.field protected m:[Z

.field protected n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Landroid/view/View;

.field protected p:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Landroid/view/View;[I)V
    .locals 1
    .param p1, "actionBtn"    # Landroid/view/View;
    .param p2, "fields"    # [I
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/helper/a/d;->p:Landroid/util/SparseArray;

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/helper/a/d;->n:Ljava/lang/ref/WeakReference;

    .line 21
    if-eqz p2, :cond_0

    .line 22
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/helper/a/d;->l:[I

    .line 23
    array-length v0, p2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/helper/a/d;->m:[Z

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldId"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/helper/a/d;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(IZLjava/lang/Object;)V
    .locals 3
    .param p1, "fieldId"    # I
    .param p2, "isCorrect"    # Z
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 29
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/a/d;->p:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 30
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/a/d;->l:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/a/d;->l:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/a/d;->l:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_2

    .line 32
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/a/d;->m:[Z

    aput-boolean p2, v1, v0

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/a/d;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/helper/a/d;->o:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/a/d;->o:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/helper/a/d;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/helper/a/d;->o:Landroid/view/View;

    .line 43
    :cond_1
    return-void

    .line 30
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/a/d;->l:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/a/d;->l:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/a/d;->m:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 54
    const/4 v1, 0x0

    .line 57
    :goto_1
    return v1

    .line 52
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
