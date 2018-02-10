.class public Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$DataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private _id:Ljava/lang/String;

.field private banner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private middle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;",
            ">;"
        }
    .end annotation
.end field

.field private others:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBanner()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$DataBean;->banner:Ljava/util/List;

    return-object v0
.end method

.method public getMiddle()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$DataBean;->middle:Ljava/util/List;

    return-object v0
.end method

.method public getOthers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$DataBean;->others:Ljava/util/ArrayList;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$DataBean;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setBanner(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "banner":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$DataBean;->banner:Ljava/util/List;

    .line 67
    return-void
.end method

.method public setMiddle(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "middle":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$DataBean;->middle:Ljava/util/List;

    .line 75
    return-void
.end method

.method public setOthers(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "others":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$DataBean;->others:Ljava/util/ArrayList;

    .line 83
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$DataBean;->_id:Ljava/lang/String;

    .line 59
    return-void
.end method
