.class public Lcom/jiliguala/niuwa/module/NewRoadMap/CollectionGroupUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static groupListByQuantity(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 5
    .param p0, "list"    # Ljava/util/ArrayList;
    .param p1, "quantity"    # I

    .prologue
    .line 12
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move-object v1, p0

    .line 30
    :cond_1
    return-object v1

    .line 16
    :cond_2
    if-gtz p1, :cond_3

    .line 17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Wrong quantity."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v1, "wrapList":Ljava/util/ArrayList;
    const/4 v0, 0x0

    .line 22
    .local v0, "count":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 24
    new-instance v3, Ljava/util/ArrayList;

    add-int v2, v0, p1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v2, v4, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    invoke-virtual {p0, v0, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    add-int/2addr v0, p1

    goto :goto_0

    .line 24
    :cond_4
    add-int v2, v0, p1

    goto :goto_1
.end method
