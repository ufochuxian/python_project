.class public Lde/greenrobot/dao/query/LazyList$LazyIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/greenrobot/dao/query/CloseableListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/dao/query/LazyList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LazyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lde/greenrobot/dao/query/CloseableListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final closeWhenDone:Z

.field private index:I

.field final synthetic this$0:Lde/greenrobot/dao/query/LazyList;


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/query/LazyList;IZ)V
    .locals 0
    .param p2, "startLocation"    # I
    .param p3, "closeWhenDone"    # Z

    .prologue
    .line 50
    .local p0, "this":Lde/greenrobot/dao/query/LazyList$LazyIterator;, "Lde/greenrobot/dao/query/LazyList<TE;>.LazyIterator;"
    iput-object p1, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->this$0:Lde/greenrobot/dao/query/LazyList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p2, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->index:I

    .line 52
    iput-boolean p3, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->closeWhenDone:Z

    .line 53
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lde/greenrobot/dao/query/LazyList$LazyIterator;, "Lde/greenrobot/dao/query/LazyList<TE;>.LazyIterator;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 120
    .local p0, "this":Lde/greenrobot/dao/query/LazyList$LazyIterator;, "Lde/greenrobot/dao/query/LazyList<TE;>.LazyIterator;"
    iget-object v0, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->this$0:Lde/greenrobot/dao/query/LazyList;

    invoke-virtual {v0}, Lde/greenrobot/dao/query/LazyList;->close()V

    .line 121
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 97
    .local p0, "this":Lde/greenrobot/dao/query/LazyList$LazyIterator;, "Lde/greenrobot/dao/query/LazyList<TE;>.LazyIterator;"
    iget v0, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->index:I

    iget-object v1, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->this$0:Lde/greenrobot/dao/query/LazyList;

    invoke-static {v1}, Lde/greenrobot/dao/query/LazyList;->access$000(Lde/greenrobot/dao/query/LazyList;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lde/greenrobot/dao/query/LazyList$LazyIterator;, "Lde/greenrobot/dao/query/LazyList<TE;>.LazyIterator;"
    iget v0, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->index:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lde/greenrobot/dao/query/LazyList$LazyIterator;, "Lde/greenrobot/dao/query/LazyList<TE;>.LazyIterator;"
    iget v1, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->index:I

    iget-object v2, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->this$0:Lde/greenrobot/dao/query/LazyList;

    invoke-static {v2}, Lde/greenrobot/dao/query/LazyList;->access$000(Lde/greenrobot/dao/query/LazyList;)I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 103
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 105
    :cond_0
    iget-object v1, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->this$0:Lde/greenrobot/dao/query/LazyList;

    iget v2, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->index:I

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/query/LazyList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 106
    .local v0, "entity":Ljava/lang/Object;, "TE;"
    iget v1, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->index:I

    .line 107
    iget v1, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->index:I

    iget-object v2, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->this$0:Lde/greenrobot/dao/query/LazyList;

    invoke-static {v2}, Lde/greenrobot/dao/query/LazyList;->access$000(Lde/greenrobot/dao/query/LazyList;)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->closeWhenDone:Z

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p0}, Lde/greenrobot/dao/query/LazyList$LazyIterator;->close()V

    .line 110
    :cond_1
    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lde/greenrobot/dao/query/LazyList$LazyIterator;, "Lde/greenrobot/dao/query/LazyList<TE;>.LazyIterator;"
    iget v0, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->index:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lde/greenrobot/dao/query/LazyList$LazyIterator;, "Lde/greenrobot/dao/query/LazyList<TE;>.LazyIterator;"
    iget v1, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->index:I

    if-gtz v1, :cond_0

    .line 75
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 77
    :cond_0
    iget v1, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->index:I

    .line 78
    iget-object v1, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->this$0:Lde/greenrobot/dao/query/LazyList;

    iget v2, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->index:I

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/query/LazyList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "entity":Ljava/lang/Object;, "TE;"
    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lde/greenrobot/dao/query/LazyList$LazyIterator;, "Lde/greenrobot/dao/query/LazyList<TE;>.LazyIterator;"
    iget v0, p0, Lde/greenrobot/dao/query/LazyList$LazyIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 115
    .local p0, "this":Lde/greenrobot/dao/query/LazyList$LazyIterator;, "Lde/greenrobot/dao/query/LazyList<TE;>.LazyIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lde/greenrobot/dao/query/LazyList$LazyIterator;, "Lde/greenrobot/dao/query/LazyList<TE;>.LazyIterator;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
