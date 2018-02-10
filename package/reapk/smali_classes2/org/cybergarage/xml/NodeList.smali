.class public Lorg/cybergarage/xml/NodeList;
.super Ljava/util/Vector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector",
        "<",
        "Lorg/cybergarage/xml/Node;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public getEndsWith(Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 59
    if-nez p1, :cond_0

    move-object v2, v4

    .line 75
    :goto_0
    return-object v2

    .line 62
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/xml/NodeList;->size()I

    move-result v1

    .line 63
    .local v1, "nLists":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_1
    if-lt v0, v1, :cond_1

    move-object v2, v4

    .line 75
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/NodeList;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 66
    .local v2, "node":Lorg/cybergarage/xml/Node;
    if-eqz v2, :cond_2

    .line 68
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "nodeName":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 63
    .end local v3    # "nodeName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    .restart local v3    # "nodeName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0
.end method

.method public getNode(I)Lorg/cybergarage/xml/Node;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 31
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/NodeList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/xml/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-object v1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 40
    if-nez p1, :cond_1

    move-object v2, v4

    .line 54
    :cond_0
    :goto_0
    return-object v2

    .line 43
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/xml/NodeList;->size()I

    move-result v1

    .line 44
    .local v1, "nLists":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_1
    if-lt v0, v1, :cond_2

    move-object v2, v4

    .line 54
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/NodeList;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 47
    .local v2, "node":Lorg/cybergarage/xml/Node;
    if-eqz v2, :cond_3

    .line 49
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "nodeName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 44
    .end local v3    # "nodeName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
