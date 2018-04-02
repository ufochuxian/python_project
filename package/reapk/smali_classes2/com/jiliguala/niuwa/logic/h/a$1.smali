.class final Lcom/jiliguala/niuwa/logic/h/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shareCancel()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public shareComplete()V
    .locals 7

    .prologue
    const v6, 0x7f0600fe

    .line 192
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/logic/b/a/j;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/h/a;->a()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1041

    invoke-direct {v3, v4, v5}, Lcom/jiliguala/niuwa/logic/b/a/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 193
    sget-object v2, Lcom/jiliguala/niuwa/logic/h/a;->ar:Landroid/support/v4/app/ag;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;

    move-result-object v1

    .line 194
    .local v1, "simpleShareFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;-><init>()V

    .line 195
    .local v0, "shareInfoTemplete":Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;
    const v2, 0x7f0801f5

    iput v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->topImgIcon:I

    .line 196
    const/4 v2, 0x1

    iput v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareType:I

    .line 197
    const-string v2, "red"

    invoke-static {}, Lcom/jiliguala/niuwa/logic/h/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    iput v6, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mTitleTxtColor:I

    .line 199
    const v2, 0x7f060097

    iput v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnTxtColor:I

    .line 200
    const v2, 0x7f0800b1

    iput v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnStyle:I

    .line 201
    const v2, 0x7f080377

    iput v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->bottomStyle:I

    .line 208
    :goto_0
    const-string v2, "\u77e5\u9053\u4e86"

    iput-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mSignleBtnTxtStr:Ljava/lang/String;

    .line 209
    invoke-static {}, Lcom/jiliguala/niuwa/logic/h/a;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->title:Ljava/lang/String;

    .line 210
    invoke-static {}, Lcom/jiliguala/niuwa/logic/h/a;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->subTitle:Ljava/lang/String;

    .line 211
    const v2, 0x3edccccd    # 0.43125f

    iput v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mRatio:F

    .line 212
    invoke-static {}, Lcom/jiliguala/niuwa/logic/h/a;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->topImgUrl:Ljava/lang/String;

    .line 213
    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->setShareInfoTemplete(Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;)V

    .line 214
    sget-object v2, Lcom/jiliguala/niuwa/logic/h/a;->ar:Landroid/support/v4/app/ag;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->show(Landroid/support/v4/app/ag;)V

    .line 215
    return-void

    .line 203
    :cond_0
    const v2, 0x7f06002e

    iput v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mTitleTxtColor:I

    .line 204
    iput v6, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnTxtColor:I

    .line 205
    const v2, 0x7f0800a2

    iput v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnStyle:I

    .line 206
    const v2, 0x7f080380

    iput v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->bottomStyle:I

    goto :goto_0
.end method

.method public shareError()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method
