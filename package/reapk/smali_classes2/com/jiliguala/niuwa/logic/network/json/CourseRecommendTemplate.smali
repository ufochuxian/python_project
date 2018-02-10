.class public Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;,
        Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;,
        Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$DataBean;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate;->code:I

    return v0
.end method

.method public getData()Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$DataBean;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$DataBean;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate;->code:I

    .line 30
    return-void
.end method

.method public setData(Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$DataBean;)V
    .locals 0
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$DataBean;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$DataBean;

    .line 38
    return-void
.end method
