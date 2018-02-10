.class public abstract Lcom/c/a/a/a/b;
.super Lcom/c/a/a/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/c/a/a/a/c/c;",
        "K:",
        "Lcom/c/a/a/a/e;",
        ">",
        "Lcom/c/a/a/a/c",
        "<TT;TK;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_VIEW_TYPE:I = -0xff


# instance fields
.field private layouts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/c/a/a/a/b;, "Lcom/c/a/a/a/b<TT;TK;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1}, Lcom/c/a/a/a/c;-><init>(Ljava/util/List;)V

    .line 31
    return-void
.end method

.method private getLayoutId(I)I
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 52
    .local p0, "this":Lcom/c/a/a/a/b;, "Lcom/c/a/a/a/b<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/b;->layouts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected addItemType(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "layoutResId"    # I
        .annotation build Landroid/support/annotation/w;
        .end annotation
    .end param

    .prologue
    .line 56
    .local p0, "this":Lcom/c/a/a/a/b;, "Lcom/c/a/a/a/b<TT;TK;>;"
    iget-object v0, p0, Lcom/c/a/a/a/b;->layouts:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a/b;->layouts:Landroid/util/SparseArray;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/c/a/a/a/b;->layouts:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    return-void
.end method

.method protected getDefItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 35
    .local p0, "this":Lcom/c/a/a/a/b;, "Lcom/c/a/a/a/b<TT;TK;>;"
    iget-object v1, p0, Lcom/c/a/a/a/b;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 36
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Lcom/c/a/a/a/c/c;

    if-eqz v1, :cond_0

    .line 37
    check-cast v0, Lcom/c/a/a/a/c/c;

    .end local v0    # "item":Ljava/lang/Object;
    invoke-interface {v0}, Lcom/c/a/a/a/c/c;->getItemType()I

    move-result v1

    .line 39
    :goto_0
    return v1

    .restart local v0    # "item":Ljava/lang/Object;
    :cond_0
    const/16 v1, -0xff

    goto :goto_0
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/c/a/a/a/e;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TK;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/c/a/a/a/b;, "Lcom/c/a/a/a/b<TT;TK;>;"
    invoke-direct {p0, p2}, Lcom/c/a/a/a/b;->getLayoutId(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/c/a/a/a/b;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/c/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method protected setDefaultViewTypeLayout(I)V
    .locals 1
    .param p1, "layoutResId"    # I
        .annotation build Landroid/support/annotation/w;
        .end annotation
    .end param

    .prologue
    .line 43
    .local p0, "this":Lcom/c/a/a/a/b;, "Lcom/c/a/a/a/b<TT;TK;>;"
    const/16 v0, -0xff

    invoke-virtual {p0, v0, p1}, Lcom/c/a/a/a/b;->addItemType(II)V

    .line 44
    return-void
.end method
