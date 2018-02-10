.class public Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoursesBean"
.end annotation


# instance fields
.field private _id:Ljava/lang/String;

.field private cat:Ljava/lang/String;

.field private cttl:Ljava/lang/String;

.field private done:I

.field private isnew:Z

.field private status:Ljava/lang/String;

.field private thmb:Ljava/lang/String;

.field private ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->cat:Ljava/lang/String;

    return-object v0
.end method

.method public getCttl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->cttl:Ljava/lang/String;

    return-object v0
.end method

.method public getDone()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->done:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getThmb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->thmb:Ljava/lang/String;

    return-object v0
.end method

.method public getTtl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->ttl:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public isLock()Z
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x0

    .line 240
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->status:Ljava/lang/String;

    const-string v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isPlay()Z
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 233
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->status:Ljava/lang/String;

    const-string v1, "play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isRmb()Z
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 254
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->status:Ljava/lang/String;

    const-string v1, "rmb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isUnPay()Z
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x0

    .line 247
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->status:Ljava/lang/String;

    const-string v1, "rmb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isnew()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->isnew:Z

    return v0
.end method

.method public setCat(Ljava/lang/String;)V
    .locals 0
    .param p1, "cat"    # Ljava/lang/String;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->cat:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setCttl(Ljava/lang/String;)V
    .locals 0
    .param p1, "cttl"    # Ljava/lang/String;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->cttl:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public setDone(I)V
    .locals 0
    .param p1, "done"    # I

    .prologue
    .line 262
    iput p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->done:I

    .line 263
    return-void
.end method

.method public setIsnew(Z)V
    .locals 0
    .param p1, "isnew"    # Z

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->isnew:Z

    .line 319
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->status:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setThmb(Ljava/lang/String;)V
    .locals 0
    .param p1, "thmb"    # Ljava/lang/String;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->thmb:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setTtl(Ljava/lang/String;)V
    .locals 0
    .param p1, "ttl"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->ttl:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->_id:Ljava/lang/String;

    .line 279
    return-void
.end method
