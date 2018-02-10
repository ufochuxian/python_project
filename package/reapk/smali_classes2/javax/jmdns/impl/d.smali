.class public abstract Ljavax/jmdns/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Z = true

.field public static final c:Z


# instance fields
.field private a:I

.field d:Z

.field protected final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/impl/f;",
            ">;"
        }
    .end annotation
.end field

.field protected final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/impl/g;",
            ">;"
        }
    .end annotation
.end field

.field protected final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/impl/g;",
            ">;"
        }
    .end annotation
.end field

.field protected final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/impl/g;",
            ">;"
        }
    .end annotation
.end field

.field private i:I


# direct methods
.method protected constructor <init>(IIZ)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "id"    # I
    .param p3, "multicast"    # Z

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Ljavax/jmdns/impl/d;->i:I

    .line 58
    iput p2, p0, Ljavax/jmdns/impl/d;->a:I

    .line 59
    iput-boolean p3, p0, Ljavax/jmdns/impl/d;->d:Z

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/d;->e:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/d;->f:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/d;->g:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/d;->h:Ljava/util/List;

    .line 64
    return-void
.end method


# virtual methods
.method protected a([B)Ljava/lang/String;
    .locals 10
    .param p1, "data"    # [B

    .prologue
    const/16 v9, 0x20

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v7, 0xfa0

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 286
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "off":I
    array-length v4, p1

    .local v4, "len":I
    :goto_0
    if-ge v6, v4, :cond_a

    .line 287
    sub-int v7, v4, v6

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 288
    .local v5, "n":I
    const/16 v7, 0x10

    if-ge v6, v7, :cond_0

    .line 289
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    :cond_0
    const/16 v7, 0x100

    if-ge v6, v7, :cond_1

    .line 292
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    :cond_1
    const/16 v7, 0x1000

    if-ge v6, v7, :cond_2

    .line 295
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    const/4 v3, 0x0

    .line 300
    .local v3, "index":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_4

    .line 301
    rem-int/lit8 v7, v3, 0x8

    if-nez v7, :cond_3

    .line 302
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    :cond_3
    add-int v7, v6, v3

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    add-int v7, v6, v3

    aget-byte v7, p1, v7

    and-int/lit8 v7, v7, 0xf

    shr-int/lit8 v7, v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 308
    :cond_4
    if-ge v3, v9, :cond_6

    .line 309
    move v2, v3

    .local v2, "i":I
    :goto_2
    if-ge v2, v9, :cond_6

    .line 310
    rem-int/lit8 v7, v2, 0x8

    if-nez v7, :cond_5

    .line 311
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    :cond_5
    const-string v7, "  "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 316
    .end local v2    # "i":I
    :cond_6
    const-string v7, "    "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_9

    .line 318
    rem-int/lit8 v7, v3, 0x8

    if-nez v7, :cond_7

    .line 319
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    :cond_7
    add-int v7, v6, v3

    aget-byte v7, p1, v7

    and-int/lit16 v1, v7, 0xff

    .line 322
    .local v1, "ch":I
    if-le v1, v9, :cond_8

    const/16 v7, 0x7f

    if-ge v1, v7, :cond_8

    int-to-char v7, v1

    :goto_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 322
    :cond_8
    const/16 v7, 0x2e

    goto :goto_4

    .line 324
    .end local v1    # "ch":I
    :cond_9
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    add-int/lit8 v7, v6, 0x20

    const/16 v8, 0x800

    if-lt v7, v8, :cond_b

    .line 328
    const-string v7, "....\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .end local v3    # "index":I
    .end local v5    # "n":I
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 286
    .restart local v3    # "index":I
    .restart local v5    # "n":I
    :cond_b
    add-int/lit8 v6, v6, 0x20

    goto/16 :goto_0
.end method

.method public a(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 95
    iput p1, p0, Ljavax/jmdns/impl/d;->a:I

    .line 96
    return-void
.end method

.method public b(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 110
    iput p1, p0, Ljavax/jmdns/impl/d;->i:I

    .line 111
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Ljavax/jmdns/impl/d;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljavax/jmdns/impl/d;->a:I

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Ljavax/jmdns/impl/d;->i:I

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Ljavax/jmdns/impl/d;->d:Z

    return v0
.end method

.method public g()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Ljavax/jmdns/impl/d;->e:Ljava/util/List;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Ljavax/jmdns/impl/d;->g()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public i()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljavax/jmdns/impl/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Ljavax/jmdns/impl/d;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Ljavax/jmdns/impl/d;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .local v0, "aList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/g;>;"
    iget-object v1, p0, Ljavax/jmdns/impl/d;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    iget-object v1, p0, Ljavax/jmdns/impl/d;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    iget-object v1, p0, Ljavax/jmdns/impl/d;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    return-object v0
.end method

.method public j()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Ljavax/jmdns/impl/d;->f:Ljava/util/List;

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Ljavax/jmdns/impl/d;->j()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public l()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Ljavax/jmdns/impl/d;->g:Ljava/util/List;

    return-object v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Ljavax/jmdns/impl/d;->l()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public n()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Ljavax/jmdns/impl/d;->h:Ljava/util/List;

    return-object v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Ljavax/jmdns/impl/d;->n()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Ljavax/jmdns/impl/d;->i:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Ljavax/jmdns/impl/d;->i:I

    and-int/lit16 v0, v0, 0x7800

    shr-int/lit8 v0, v0, 0xb

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Ljavax/jmdns/impl/d;->i:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Ljavax/jmdns/impl/d;->i:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Z
    .locals 2

    .prologue
    .line 227
    iget v0, p0, Ljavax/jmdns/impl/d;->i:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 236
    iget v0, p0, Ljavax/jmdns/impl/d;->i:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()Z
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Ljavax/jmdns/impl/d;->h()I

    move-result v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/d;->k()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/d;->m()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/d;->o()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method w()Ljava/lang/String;
    .locals 5

    .prologue
    .line 252
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v3, 0xc8

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 253
    .local v1, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    iget-object v3, p0, Ljavax/jmdns/impl/d;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/f;

    .line 256
    .local v2, "question":Ljavax/jmdns/impl/f;
    const-string v4, "\tquestion:      "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 258
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 260
    .end local v2    # "question":Ljavax/jmdns/impl/f;
    :cond_0
    iget-object v3, p0, Ljavax/jmdns/impl/d;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/g;

    .line 261
    .local v0, "answer":Ljavax/jmdns/impl/g;
    const-string v4, "\tanswer:        "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 263
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 265
    .end local v0    # "answer":Ljavax/jmdns/impl/g;
    :cond_1
    iget-object v3, p0, Ljavax/jmdns/impl/d;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/g;

    .line 266
    .restart local v0    # "answer":Ljavax/jmdns/impl/g;
    const-string v4, "\tauthoritative: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 268
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 270
    .end local v0    # "answer":Ljavax/jmdns/impl/g;
    :cond_2
    iget-object v3, p0, Ljavax/jmdns/impl/d;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/g;

    .line 271
    .restart local v0    # "answer":Ljavax/jmdns/impl/g;
    const-string v4, "\tadditional:    "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 273
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 275
    .end local v0    # "answer":Ljavax/jmdns/impl/g;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
