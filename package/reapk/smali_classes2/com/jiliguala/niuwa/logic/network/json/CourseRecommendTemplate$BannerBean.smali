.class public Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BannerBean"
.end annotation


# instance fields
.field private pos:I

.field private target:Ljava/lang/String;

.field private thmb:Ljava/lang/String;

.field private ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 131
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;->target:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;->target:Ljava/lang/String;

    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "allParameters":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 134
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 135
    .local v1, "param":Ljava/lang/String;
    const-string v2, "rid="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    const-string v2, "rid="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "rid="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    .end local v0    # "allParameters":[Ljava/lang/String;
    .end local v1    # "param":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPos()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;->pos:I

    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getThmb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;->thmb:Ljava/lang/String;

    return-object v0
.end method

.method public getTtl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;->ttl:Ljava/lang/String;

    return-object v0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;->pos:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;->pos:I

    .line 128
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;->target:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setThmb(Ljava/lang/String;)V
    .locals 0
    .param p1, "thmb"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;->thmb:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setTtl(Ljava/lang/String;)V
    .locals 0
    .param p1, "ttl"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;->ttl:Ljava/lang/String;

    .line 104
    return-void
.end method
