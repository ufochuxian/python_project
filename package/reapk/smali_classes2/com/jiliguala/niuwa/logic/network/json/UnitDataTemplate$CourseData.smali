.class public Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CourseData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public _id:Ljava/lang/String;

.field public cat:Ljava/lang/String;

.field public cttl:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public doneusers:I

.field public hint:Ljava/lang/String;

.field public itemid:Ljava/lang/String;

.field public preview:Z

.field public progress:Ljava/lang/String;

.field public shareable:Z

.field public status:Ljava/lang/String;

.field public subs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;",
            ">;"
        }
    .end annotation
.end field

.field public thmb:Ljava/lang/String;

.field public ttl:Ljava/lang/String;

.field public wechatcode:Ljava/lang/String;

.field public wechatget:Z

.field public weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData$1;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->subs:Ljava/util/ArrayList;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->status:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->hint:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->preview:Z

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->ttl:Ljava/lang/String;

    .line 185
    const-class v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->subs:Ljava/util/ArrayList;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->progress:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->cttl:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->doneusers:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->thmb:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->desc:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->cat:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->itemid:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->wechatcode:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->shareable:Z

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->wechatget:Z

    .line 197
    return-void

    :cond_0
    move v0, v2

    .line 183
    goto :goto_0

    :cond_1
    move v0, v2

    .line 195
    goto :goto_1

    :cond_2
    move v1, v2

    .line 196
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public hasInteractCoursePay()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 267
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    if-nez v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->status:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->status:Ljava/lang/String;

    const-string v1, "interactionavailable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hasSub()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->subs:Ljava/util/ArrayList;

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

.method public hasWeiKe()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->status:Ljava/lang/String;

    const-string v1, "available"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCompleted()Z
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->status:Ljava/lang/String;

    const-string v1, "completed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCurrent()Z
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->status:Ljava/lang/String;

    const-string v1, "available"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->status:Ljava/lang/String;

    const-string v1, "unavailable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public isInteractCourse()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 256
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    if-nez v1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v0

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->status:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->status:Ljava/lang/String;

    const-string v2, "interactionunavailable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->status:Ljava/lang/String;

    const-string v2, "interactionavailable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLocked()Z
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->status:Ljava/lang/String;

    const-string v1, "locked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isShareable()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->shareable:Z

    return v0
.end method

.method public isUnAvailable()Z
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->status:Ljava/lang/String;

    const-string v1, "unavailable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUnLocked()Z
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->status:Ljava/lang/String;

    const-string v1, "unlocked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWeiChatUnlockCourse()Z
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->status:Ljava/lang/String;

    const-string v1, "wechat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWeiKe()Z
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->status:Ljava/lang/String;

    const-string v1, "available"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->status:Ljava/lang/String;

    const-string v1, "unavailable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public needInteractCoursePay()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 278
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    if-nez v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->status:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->status:Ljava/lang/String;

    const-string v1, "interactionunavailable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->hint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->preview:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->ttl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->subs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 221
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->progress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->cttl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->doneusers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->thmb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->cat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->itemid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 229
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->wechatcode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->shareable:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->wechatget:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    return-void

    :cond_0
    move v0, v2

    .line 218
    goto :goto_0

    :cond_1
    move v0, v2

    .line 230
    goto :goto_1

    :cond_2
    move v1, v2

    .line 231
    goto :goto_2
.end method
