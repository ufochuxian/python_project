.class public Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$LearnPart2ResItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LearnPart2ResItem"
.end annotation


# instance fields
.field public clr:Ljava/lang/String;

.field public thmb:Ljava/lang/String;

.field public typ:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 110
    instance-of v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$LearnPart2ResItem;

    if-nez v1, :cond_0

    .line 111
    const/4 v1, 0x0

    .line 116
    :goto_0
    return v1

    .line 112
    :cond_0
    if-ne p1, p0, :cond_1

    .line 113
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 115
    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$LearnPart2ResItem;

    .line 116
    .local v0, "rhs":Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$LearnPart2ResItem;
    new-instance v1, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$LearnPart2ResItem;->thmb:Ljava/lang/String;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$LearnPart2ResItem;->thmb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$LearnPart2ResItem;->typ:Ljava/lang/String;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$LearnPart2ResItem;->typ:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$LearnPart2ResItem;->url:Ljava/lang/String;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$LearnPart2ResItem;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$LearnPart2ResItem;->clr:Ljava/lang/String;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$LearnPart2ResItem;->clr:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 103
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    const/16 v1, 0x11

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>(II)V

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$LearnPart2ResItem;->thmb:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$LearnPart2ResItem;->typ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$LearnPart2ResItem;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$LearnPart2ResItem;->clr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    .line 103
    return v0
.end method
