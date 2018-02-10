.class public Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiddleBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;
    }
.end annotation


# instance fields
.field private cat:Ljava/lang/String;

.field private courses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;",
            ">;"
        }
    .end annotation
.end field

.field private sicon:Ljava/lang/String;

.field private target:Ljava/lang/String;

.field private ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;->cat:Ljava/lang/String;

    return-object v0
.end method

.method public getCourses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;->courses:Ljava/util/List;

    return-object v0
.end method

.method public getSicon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;->sicon:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTtl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;->ttl:Ljava/lang/String;

    return-object v0
.end method

.method public isLesson()Z
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;->target:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;->target:Ljava/lang/String;

    const-string v1, "JLGL://lessons"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStoryLesson()Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;->target:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;->target:Ljava/lang/String;

    const-string v1, "JLGL://story_lessons"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCat(Ljava/lang/String;)V
    .locals 0
    .param p1, "cat"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;->cat:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setCourses(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "courses":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;->courses:Ljava/util/List;

    .line 206
    return-void
.end method

.method public setSicon(Ljava/lang/String;)V
    .locals 0
    .param p1, "sicon"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;->sicon:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;->target:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setTtl(Ljava/lang/String;)V
    .locals 0
    .param p1, "ttl"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;->ttl:Ljava/lang/String;

    .line 190
    return-void
.end method
