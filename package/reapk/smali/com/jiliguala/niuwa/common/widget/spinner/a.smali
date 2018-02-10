.class public Lcom/jiliguala/niuwa/common/widget/spinner/a;
.super Lcom/jiliguala/niuwa/common/widget/spinner/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/jiliguala/niuwa/common/widget/spinner/c;"
    }
.end annotation


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/spinner/a;, "Lcom/jiliguala/niuwa/common/widget/spinner/a<TT;>;"
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/spinner/c;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/spinner/a;, "Lcom/jiliguala/niuwa/common/widget/spinner/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/spinner/a;, "Lcom/jiliguala/niuwa/common/widget/spinner/a<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 24
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/a;->c:Ljava/util/List;

    .line 25
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/spinner/a;, "Lcom/jiliguala/niuwa/common/widget/spinner/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/spinner/a;, "Lcom/jiliguala/niuwa/common/widget/spinner/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
