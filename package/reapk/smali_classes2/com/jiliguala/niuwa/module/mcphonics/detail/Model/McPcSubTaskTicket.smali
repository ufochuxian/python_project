.class public Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6bb7879a0f843dcaL


# instance fields
.field public lesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

.field public mSectionScoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;",
            ">;"
        }
    .end annotation
.end field

.field public position:I

.field public resId:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;)V
    .locals 1
    .param p1, "b"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->access$100(Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;)Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->lesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .line 102
    invoke-static {p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->access$200(Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->position:I

    .line 103
    invoke-static {p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->access$300(Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->resId:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->type:Ljava/lang/String;

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;
    .param p2, "x1"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;)V

    return-void
.end method


# virtual methods
.method public getLesson()Lcom/jiliguala/niuwa/logic/network/json/Lessons;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->lesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->position:I

    return v0
.end method

.method public getResId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->resId:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionScoreMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->mSectionScoreMap:Ljava/util/Map;

    return-object v0
.end method

.method public getSub()Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    .locals 3

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->lesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    iget v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasSubs()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->lesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->lesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSectionScoreMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "sectionScoreMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->mSectionScoreMap:Ljava/util/Map;

    .line 50
    return-void
.end method
