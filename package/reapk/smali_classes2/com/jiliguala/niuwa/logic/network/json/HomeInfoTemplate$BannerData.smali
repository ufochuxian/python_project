.class public Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$BannerData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BannerData"
.end annotation


# instance fields
.field public desc:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public ttl:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 57
    instance-of v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$BannerData;

    if-nez v1, :cond_0

    .line 58
    const/4 v1, 0x0

    .line 63
    :goto_0
    return v1

    .line 59
    :cond_0
    if-ne p1, p0, :cond_1

    .line 60
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 62
    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$BannerData;

    .line 63
    .local v0, "rhs":Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$BannerData;
    new-instance v1, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$BannerData;->ttl:Ljava/lang/String;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$BannerData;->ttl:Ljava/lang/String;

    .line 65
    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$BannerData;->img:Ljava/lang/String;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$BannerData;->img:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$BannerData;->desc:Ljava/lang/String;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$BannerData;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$BannerData;->url:Ljava/lang/String;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$BannerData;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$BannerData;->text:Ljava/lang/String;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$BannerData;->text:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    const/16 v1, 0x11

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>(II)V

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$BannerData;->ttl:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$BannerData;->img:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$BannerData;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$BannerData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$BannerData;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    .line 50
    return v0
.end method
