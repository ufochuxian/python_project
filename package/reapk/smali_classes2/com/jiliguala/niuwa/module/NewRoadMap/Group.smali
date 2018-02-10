.class public Lcom/jiliguala/niuwa/module/NewRoadMap/Group;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BODY:Ljava/lang/String; = "body"

.field public static final FOOTER:Ljava/lang/String; = "footer"

.field public static final HEADER:Ljava/lang/String; = "header"

.field private static final serialVersionUID:J = -0x7ebec19fcb309b44L


# instance fields
.field private mRoadMaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/Group;->mRoadMaps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addData(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)V
    .locals 1
    .param p1, "roadmapBean"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/Group;->mRoadMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public getGroupFooter()Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/Group;->mRoadMaps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/Group;->mRoadMaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/Group;->mRoadMaps:Ljava/util/List;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/Group;->mRoadMaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    goto :goto_0
.end method

.method public getGroupHeader()Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/Group;->mRoadMaps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/Group;->mRoadMaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/Group;->mRoadMaps:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    goto :goto_0
.end method

.method public isGroupFooter()Z
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/Group;->mRoadMaps:Ljava/util/List;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    :cond_0
    const-string v1, "body"

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/Group;->mRoadMaps:Ljava/util/List;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/Group;->mRoadMaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->tag:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isGroupHeader()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 28
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/Group;->mRoadMaps:Ljava/util/List;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    :goto_0
    return v0

    :cond_0
    const-string v1, "header"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/Group;->mRoadMaps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->tag:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "roadMaps":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/Group;->mRoadMaps:Ljava/util/List;

    .line 43
    return-void
.end method
