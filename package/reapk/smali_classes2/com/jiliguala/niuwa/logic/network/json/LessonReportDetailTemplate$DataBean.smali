.class public Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;
    }
.end annotation


# instance fields
.field public _id:Ljava/lang/String;

.field public ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

.field public score:I

.field public status:Ljava/lang/String;

.field public thmb:Ljava/lang/String;

.field public ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScoreImageRes()I
    .locals 5

    .prologue
    const/16 v4, 0x5a

    const/16 v3, 0x50

    const/16 v2, 0x46

    const/16 v1, 0x2d

    .line 47
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->score:I

    if-lt v0, v4, :cond_0

    .line 48
    const v0, 0x7f08017b

    .line 59
    :goto_0
    return v0

    .line 49
    :cond_0
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->score:I

    if-lt v0, v3, :cond_1

    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->score:I

    if-ge v0, v4, :cond_1

    .line 50
    const v0, 0x7f08017a

    goto :goto_0

    .line 51
    :cond_1
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->score:I

    if-lt v0, v2, :cond_2

    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->score:I

    if-ge v0, v3, :cond_2

    .line 52
    const v0, 0x7f08017d

    goto :goto_0

    .line 53
    :cond_2
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->score:I

    if-lt v0, v1, :cond_3

    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->score:I

    if-ge v0, v2, :cond_3

    .line 54
    const v0, 0x7f08017c

    goto :goto_0

    .line 55
    :cond_3
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->score:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->score:I

    if-ge v0, v1, :cond_4

    .line 56
    const v0, 0x7f08017e

    goto :goto_0

    .line 59
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompleted()Z
    .locals 2

    .prologue
    .line 39
    const-string v0, "completed"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCurrent()Z
    .locals 2

    .prologue
    .line 43
    const-string v0, "current"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
