.class public abstract Lcom/c/a/a/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/c/a/a/a/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/c/a/a/a/c/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    .local p0, "this":Lcom/c/a/a/a/c/a;, "Lcom/c/a/a/a/c/a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/a/a/c/a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/c/a/a/a/c/a;, "Lcom/c/a/a/a/c/a<TT;>;"
    .local p1, "subItem":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/c/a/a/a/c/a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/a/c/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

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
    .local p0, "this":Lcom/c/a/a/a/c/a;, "Lcom/c/a/a/a/c/a<TT;>;"
    invoke-virtual {p0}, Lcom/c/a/a/a/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/a/c/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/c/a/a/a/c/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/c/a/a/a/c/a;, "Lcom/c/a/a/a/c/a<TT;>;"
    .local p2, "subItem":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/c/a/a/a/c/a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/c/a/a/a/c/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/c/a/a/a/c/a;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0, p2}, Lcom/c/a/a/a/c/a;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/c/a/a/a/c/a;, "Lcom/c/a/a/a/c/a<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/c/a/a/a/c/a;->b:Ljava/util/List;

    .line 36
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .prologue
    .line 22
    .local p0, "this":Lcom/c/a/a/a/c/a;, "Lcom/c/a/a/a/c/a<TT;>;"
    iput-boolean p1, p0, Lcom/c/a/a/a/c/a;->a:Z

    .line 23
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lcom/c/a/a/a/c/a;, "Lcom/c/a/a/a/c/a<TT;>;"
    iget-boolean v0, p0, Lcom/c/a/a/a/c/a;->a:Z

    return v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/c/a/a/a/c/a;, "Lcom/c/a/a/a/c/a<TT;>;"
    iget-object v0, p0, Lcom/c/a/a/a/c/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/c/a/a/a/c/a;, "Lcom/c/a/a/a/c/a<TT;>;"
    .local p1, "subItem":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/c/a/a/a/c/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a/c/a;->b:Ljava/util/List;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/c/a/a/a/c/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public b(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 74
    .local p0, "this":Lcom/c/a/a/a/c/a;, "Lcom/c/a/a/a/c/a<TT;>;"
    iget-object v0, p0, Lcom/c/a/a/a/c/a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/c/a/a/a/c/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/c/a/a/a/c/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 76
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/c/a/a/a/c/a;, "Lcom/c/a/a/a/c/a<TT;>;"
    iget-object v0, p0, Lcom/c/a/a/a/c/a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/a/c/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/c/a/a/a/c/a;, "Lcom/c/a/a/a/c/a<TT;>;"
    .local p1, "subItem":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/c/a/a/a/c/a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/a/c/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/c/a/a/a/c/a;, "Lcom/c/a/a/a/c/a<TT;>;"
    .local p1, "subItem":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/c/a/a/a/c/a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/a/c/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
