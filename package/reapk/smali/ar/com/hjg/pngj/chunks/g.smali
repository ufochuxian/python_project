.class public Lar/com/hjg/pngj/chunks/g;
.super Lar/com/hjg/pngj/chunks/f;
.source "SourceFile"


# instance fields
.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "imfinfo"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/chunks/f;-><init>(Lar/com/hjg/pngj/s;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/g;->k:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/g;->l:Ljava/util/HashMap;

    .line 25
    return-void
.end method

.method private static b(Lar/com/hjg/pngj/chunks/PngChunk;I)Z
    .locals 5
    .param p0, "c"    # Lar/com/hjg/pngj/chunks/PngChunk;
    .param p1, "currentGroup"    # I

    .prologue
    const/4 v3, 0x1

    .line 109
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    .line 110
    iget-object v3, p0, Lar/com/hjg/pngj/chunks/PngChunk;->a:Ljava/lang/String;

    const-string v4, "PLTE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 135
    :cond_0
    :goto_0
    return v3

    .line 111
    :cond_1
    rem-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_2

    .line 112
    new-instance v3, Lar/com/hjg/pngj/PngjOutputException;

    const-string v4, "bad chunk group?"

    invoke-direct {v3, v4}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 114
    :cond_2
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunk;->i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    move-result-object v4

    invoke-virtual {v4}, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->mustGoBeforePLTE()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 115
    const/4 v0, 0x1

    .local v0, "maxChunkGroup":I
    move v1, v0

    .line 126
    .local v1, "minChunkGroup":I
    :goto_1
    move v2, v0

    .line 127
    .local v2, "preferred":I
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunk;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 128
    move v2, v1

    .line 129
    :cond_3
    invoke-static {p0}, Lar/com/hjg/pngj/chunks/c;->a(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunk;->a()I

    move-result v4

    if-lez v4, :cond_4

    .line 130
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunk;->a()I

    move-result v2

    .line 131
    :cond_4
    if-eq p1, v2, :cond_0

    .line 133
    if-le p1, v2, :cond_5

    if-le p1, v0, :cond_0

    .line 135
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 116
    .end local v0    # "maxChunkGroup":I
    .end local v1    # "minChunkGroup":I
    .end local v2    # "preferred":I
    :cond_6
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunk;->i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    move-result-object v4

    invoke-virtual {v4}, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->mustGoBeforeIDAT()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 117
    const/4 v0, 0x3

    .line 118
    .restart local v0    # "maxChunkGroup":I
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunk;->i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    move-result-object v4

    invoke-virtual {v4}, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->mustGoAfterPLTE()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v1, 0x3

    .restart local v1    # "minChunkGroup":I
    :goto_2
    goto :goto_1

    .end local v1    # "minChunkGroup":I
    :cond_7
    move v1, v3

    goto :goto_2

    .line 122
    .end local v0    # "maxChunkGroup":I
    :cond_8
    const/4 v0, 0x5

    .line 123
    .restart local v0    # "maxChunkGroup":I
    const/4 v1, 0x1

    .restart local v1    # "minChunkGroup":I
    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;I)I
    .locals 7
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "currentGroup"    # I

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, "cont":I
    iget-object v3, p0, Lar/com/hjg/pngj/chunks/g;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 141
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lar/com/hjg/pngj/chunks/PngChunk;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 142
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunk;

    .line 143
    .local v0, "c":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-static {v0, p2}, Lar/com/hjg/pngj/chunks/g;->b(Lar/com/hjg/pngj/chunks/PngChunk;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    iget-object v3, v0, Lar/com/hjg/pngj/chunks/PngChunk;->a:Ljava/lang/String;

    invoke-static {v3}, Lar/com/hjg/pngj/chunks/c;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/PngChunk;->a:Ljava/lang/String;

    const-string v4, "PLTE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 146
    new-instance v3, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad chunk queued: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    :cond_1
    iget-object v3, p0, Lar/com/hjg/pngj/chunks/g;->l:Ljava/util/HashMap;

    iget-object v4, v0, Lar/com/hjg/pngj/chunks/PngChunk;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunk;->d()Z

    move-result v3

    if-nez v3, :cond_2

    .line 148
    new-instance v3, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicated chunk does not allow multiple: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 149
    :cond_2
    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/chunks/PngChunk;->a(Ljava/io/OutputStream;)V

    .line 150
    iget-object v3, p0, Lar/com/hjg/pngj/chunks/g;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v4, p0, Lar/com/hjg/pngj/chunks/g;->l:Ljava/util/HashMap;

    iget-object v5, v0, Lar/com/hjg/pngj/chunks/PngChunk;->a:Ljava/lang/String;

    iget-object v3, p0, Lar/com/hjg/pngj/chunks/g;->l:Ljava/util/HashMap;

    iget-object v6, v0, Lar/com/hjg/pngj/chunks/PngChunk;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lar/com/hjg/pngj/chunks/g;->l:Ljava/util/HashMap;

    iget-object v6, v0, Lar/com/hjg/pngj/chunks/PngChunk;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {v0, p2}, Lar/com/hjg/pngj/chunks/PngChunk;->a(I)V

    .line 154
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 155
    add-int/lit8 v1, v1, 0x1

    .line 156
    goto/16 :goto_0

    .line 151
    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    .line 157
    .end local v0    # "c":Lar/com/hjg/pngj/chunks/PngChunk;
    :cond_4
    return v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Z)Lar/com/hjg/pngj/chunks/PngChunk;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "innerid"    # Ljava/lang/String;
    .param p3, "failIfMultiple"    # Z

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lar/com/hjg/pngj/chunks/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 46
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<+Lar/com/hjg/pngj/chunks/PngChunk;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const/4 v1, 0x0

    .line 50
    :goto_0
    return-object v1

    .line 48
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    if-nez p3, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lar/com/hjg/pngj/chunks/PngChunk;

    invoke-virtual {v1}, Lar/com/hjg/pngj/chunks/PngChunk;->d()Z

    move-result v1

    if-nez v1, :cond_2

    .line 49
    :cond_1
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected multiple chunks id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lar/com/hjg/pngj/chunks/PngChunk;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Z)Lar/com/hjg/pngj/chunks/PngChunk;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "failIfMultiple"    # Z

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lar/com/hjg/pngj/chunks/g;->b(Ljava/lang/String;Ljava/lang/String;Z)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 6

    .prologue
    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/g;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "\n Written:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/g;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunk;

    .line 178
    .local v0, "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " G="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunk;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 180
    .end local v0    # "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    :cond_0
    iget-object v3, p0, Lar/com/hjg/pngj/chunks/g;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    const-string v3, " Queued:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v3, p0, Lar/com/hjg/pngj/chunks/g;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunk;

    .line 183
    .restart local v0    # "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 187
    .end local v0    # "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public b(Lar/com/hjg/pngj/chunks/PngChunk;)Ljava/util/List;
    .locals 2
    .param p1, "c2"    # Lar/com/hjg/pngj/chunks/PngChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ")",
            "Ljava/util/List",
            "<",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/g;->k:Ljava/util/List;

    new-instance v1, Lar/com/hjg/pngj/chunks/g$1;

    invoke-direct {v1, p0, p1}, Lar/com/hjg/pngj/chunks/g$1;-><init>(Lar/com/hjg/pngj/chunks/g;Lar/com/hjg/pngj/chunks/PngChunk;)V

    invoke-static {v0, v1}, Lar/com/hjg/pngj/chunks/c;->a(Ljava/util/List;Lar/com/hjg/pngj/chunks/d;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "innerid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/g;->k:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lar/com/hjg/pngj/chunks/g;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/g;->k:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/chunks/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Lar/com/hjg/pngj/chunks/PngChunk;)Z
    .locals 1
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/PngChunk;

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/g;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lar/com/hjg/pngj/chunks/PngChunk;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/chunks/g;->b(Ljava/lang/String;Z)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    return-object v0
.end method

.method public d(Lar/com/hjg/pngj/chunks/PngChunk;)Z
    .locals 1
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/PngChunk;

    .prologue
    .line 101
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/g;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChunkList: written: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/g;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " queue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/g;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
