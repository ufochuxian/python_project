.class final Lcom/squareup/wire/a/c;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
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
    .local p0, "this":Lcom/squareup/wire/a/c;, "Lcom/squareup/wire/a/c<TT;>;"
    .local p1, "immutableList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/squareup/wire/a/c;->b:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/squareup/wire/a/c;->a:Ljava/util/List;

    .line 33
    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/squareup/wire/a/c;, "Lcom/squareup/wire/a/c<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/squareup/wire/a/c;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/squareup/wire/a/c;, "Lcom/squareup/wire/a/c<TT;>;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/squareup/wire/a/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/squareup/wire/a/c;->b:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/squareup/wire/a/c;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/squareup/wire/a/c;->a:Ljava/util/List;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/a/c;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 55
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/squareup/wire/a/c;, "Lcom/squareup/wire/a/c<TT;>;"
    iget-object v0, p0, Lcom/squareup/wire/a/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/squareup/wire/a/c;, "Lcom/squareup/wire/a/c<TT;>;"
    iget-object v0, p0, Lcom/squareup/wire/a/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/squareup/wire/a/c;->b:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/squareup/wire/a/c;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/squareup/wire/a/c;->a:Ljava/util/List;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/a/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/squareup/wire/a/c;, "Lcom/squareup/wire/a/c<TT;>;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/squareup/wire/a/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/squareup/wire/a/c;->b:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/squareup/wire/a/c;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/squareup/wire/a/c;->a:Ljava/util/List;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/a/c;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lcom/squareup/wire/a/c;, "Lcom/squareup/wire/a/c<TT;>;"
    iget-object v0, p0, Lcom/squareup/wire/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method