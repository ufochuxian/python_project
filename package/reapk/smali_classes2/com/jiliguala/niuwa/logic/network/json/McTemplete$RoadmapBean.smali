.class public Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/McTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoadmapBean"
.end annotation


# static fields
.field public static final CurrentItemRatio:F = 0.28f

.field public static final DividerItemRatio:F = 0.28f

.field public static final HEADERRATIO:F = 0.2f

.field public static final NormalItemRatio:F = 0.24f

.field public static final StickViewItemRatio:F = 0.42f

.field public static final footerWidth:I = 0x154

.field public static final leftDotContainerWidth:I = 0x2a

.field public static final rightDotContainerWidth:I = 0x24

.field private static final serialVersionUID:J = -0x353e945da7624f37L


# instance fields
.field public _id:Ljava/lang/String;

.field public group:Lcom/jiliguala/niuwa/module/NewRoadMap/Group;

.field public pay:Z

.field public progress:Ljava/lang/String;

.field public prt:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public thmb:Ljava/lang/String;

.field public ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enablePay()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->pay:Z

    return v0
.end method

.method public isCompleted()Z
    .locals 2

    .prologue
    .line 171
    const-string v0, "completed"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCurrent()Z
    .locals 2

    .prologue
    .line 158
    const-string v0, "current"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isGroupFooter()Z
    .locals 2

    .prologue
    .line 150
    const-string v0, "footer"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isGroupHeader()Z
    .locals 2

    .prologue
    .line 146
    const-string v0, "header"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 2

    .prologue
    .line 162
    const-string v0, "locked"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNormalStatus()Z
    .locals 2

    .prologue
    .line 187
    const-string v0, "normal"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->progress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOneVOne()Z
    .locals 2

    .prologue
    .line 167
    const-string v0, "oneVone"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPerfectStatus()Z
    .locals 2

    .prologue
    .line 183
    const-string v0, "perfect"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->progress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStop()Z
    .locals 2

    .prologue
    .line 175
    const-string v0, "stop"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->tag:Ljava/lang/String;

    .line 155
    return-void
.end method
