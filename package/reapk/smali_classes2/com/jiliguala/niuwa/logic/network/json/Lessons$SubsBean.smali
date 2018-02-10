.class public Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/Lessons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubsBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;
    }
.end annotation


# static fields
.field public static final FOOTER:Ljava/lang/String; = "footer"

.field public static final HEADER:Ljava/lang/String; = "header"

.field public static final SPECIAL:Ljava/lang/String; = "special"

.field private static final serialVersionUID:J = 0x7ebd4b01600b18f3L


# instance fields
.field public _id:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public rating:I

.field public resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

.field public status:Ljava/lang/String;

.field public tgt:Ljava/lang/String;

.field public typ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasRating()Z
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->rating:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResId()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlphabetGame()Z
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    if-eqz v0, :cond_0

    const-string v0, "alphabet"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->typ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompleted()Z
    .locals 2

    .prologue
    .line 117
    const-string v0, "completed"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCurrent()Z
    .locals 2

    .prologue
    .line 109
    const-string v0, "current"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDragGame()Z
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    if-eqz v0, :cond_0

    const-string v0, "drag"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->typ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFooter()Z
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    if-eqz v0, :cond_0

    const-string v0, "footer"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->typ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFunWatch()Z
    .locals 2

    .prologue
    .line 137
    const-string v0, "funwatch"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isGame()Z
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isTapGame()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isTalkGame()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isAlphabetGame()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isDragGame()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isHitGame()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeader()Z
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    if-eqz v0, :cond_0

    const-string v0, "header"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->typ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHitGame()Z
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    if-eqz v0, :cond_0

    const-string v0, "hit"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->typ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInteractionGame()Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    if-eqz v0, :cond_0

    const-string v0, "interaction"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->typ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocked()Z
    .locals 2

    .prologue
    .line 121
    const-string v0, "locked"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMcWatch()Z
    .locals 2

    .prologue
    .line 129
    const-string v0, "watch"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPronounce()Z
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    if-eqz v0, :cond_0

    const-string v0, "pronounce"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->typ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSongWatch()Z
    .locals 2

    .prologue
    .line 133
    const-string v0, "songwatch"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSpecial()Z
    .locals 2

    .prologue
    .line 113
    const-string v0, "special"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTalkGame()Z
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    if-eqz v0, :cond_0

    const-string v0, "talk"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->typ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTapGame()Z
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    if-eqz v0, :cond_0

    const-string v0, "tap"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->typ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideo()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    if-eqz v0, :cond_0

    const-string v0, "video"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->typ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
