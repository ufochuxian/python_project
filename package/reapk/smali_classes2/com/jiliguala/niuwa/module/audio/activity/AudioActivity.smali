.class public Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;
.implements Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity$a;
    }
.end annotation


# static fields
.field public static final KEY_CHANNEL:Ljava/lang/String; = "channel"

.field public static final KEY_CHANNEL_BG_COLOR:Ljava/lang/String; = "bg_color"

.field public static final KEY_CHANNEL_DATA:Ljava/lang/String; = "channel_data"

.field public static final KEY_CHANNEL_TTL:Ljava/lang/String; = "title"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_INDEX:Ljava/lang/String; = "index"

.field public static final KEY_LEVEL:Ljava/lang/String; = "LEVEL"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private lastClickTime:J

.field private mAudioChanndelListFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

.field private mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

.field private mChanneId:Ljava/lang/String;

.field private mIndex:I

.field private mLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mLevel:I

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    return-object v0
.end method

.method private isNotModelLesson()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 197
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isNotModelLesson()Z

    move-result v0

    goto :goto_0
.end method

.method private onShowAudioChannel(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f010025

    const v2, 0x7f010022

    .line 246
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 247
    .local v0, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v1

    .line 248
    .local v1, "ft":Landroid/support/v4/app/an;
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 250
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioChanndelListFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    .line 253
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioChanndelListFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioChanndelListFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-virtual {v2, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->refreshUI(Landroid/os/Bundle;)V

    .line 255
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioChanndelListFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    .line 263
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/an;->i()I

    .line 264
    return-void

    .line 257
    :cond_0
    const-string v3, "channel_data"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .line 258
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getAudioChannelData()Ljava/util/ArrayList;

    move-result-object v2

    .line 257
    :goto_1
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 259
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioChanndelListFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-virtual {v2, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 260
    const v2, 0x7f090158

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioChanndelListFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    sget-object v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 261
    sget-object v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    goto :goto_0

    .line 258
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method

.method private setElements(Ljava/lang/String;II)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "level"    # I

    .prologue
    .line 315
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mChanneId:Ljava/lang/String;

    .line 316
    iput p2, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mIndex:I

    .line 317
    iput p3, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mLevel:I

    .line 318
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public confirmExit()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->reportSubLessonExit()V

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->performExit()V

    .line 326
    return-void
.end method

.method public getLstSearchResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getLstSearchResult()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getSearchFirstPos()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getSearchFirstPos()I

    move-result v0

    goto :goto_0
.end method

.method public getSearchKeyWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getSearchKeyWord()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hideAllSecondaryFragment(Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;)Z
    .locals 11
    .param p1, "audioChanndelListFragment"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    .prologue
    const v10, 0x7f01001e

    const v9, 0x7f01001d

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 130
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->isAdded()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->isHidden()Z

    move-result v8

    if-nez v8, :cond_2

    .line 132
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 133
    .local v0, "cfm":Landroid/support/v4/app/ag;
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->f()I

    move-result v1

    .line 135
    .local v1, "childCount":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 136
    invoke-virtual {v0, v5}, Landroid/support/v4/app/ag;->b(I)Landroid/support/v4/app/ag$a;

    move-result-object v2

    .line 137
    .local v2, "childEntry":Landroid/support/v4/app/ag$a;
    if-eqz v2, :cond_0

    .line 138
    invoke-interface {v2}, Landroid/support/v4/app/ag$a;->n()Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "childName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 140
    .local v3, "childFragment":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 135
    .end local v3    # "childFragment":Landroid/support/v4/app/Fragment;
    .end local v4    # "childName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 143
    .restart local v3    # "childFragment":Landroid/support/v4/app/Fragment;
    .restart local v4    # "childName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v8

    .line 144
    invoke-virtual {v8, v9, v10, v9, v10}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    move-result-object v8

    .line 146
    invoke-virtual {v8, v3}, Landroid/support/v4/app/an;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    move-result-object v8

    .line 147
    invoke-virtual {v8}, Landroid/support/v4/app/an;->i()I

    .line 148
    const/4 v8, 0x0

    invoke-direct {p0, v8, v7, v6}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->setElements(Ljava/lang/String;II)V

    .line 153
    .end local v0    # "cfm":Landroid/support/v4/app/ag;
    .end local v1    # "childCount":I
    .end local v2    # "childEntry":Landroid/support/v4/app/ag$a;
    .end local v3    # "childFragment":Landroid/support/v4/app/Fragment;
    .end local v4    # "childName":Ljava/lang/String;
    .end local v5    # "index":I
    :goto_1
    return v6

    :cond_2
    move v6, v7

    goto :goto_1
.end method

.method public hideChannelFragment(Landroid/support/v4/app/ag;)Z
    .locals 7
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    const v6, 0x7f010025

    const v5, 0x7f010022

    const/4 v3, 0x0

    .line 157
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    .line 158
    .local v0, "count":I
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1, v4}, Landroid/support/v4/app/ag;->b(I)Landroid/support/v4/app/ag$a;

    move-result-object v1

    .line 159
    .local v1, "entry":Landroid/support/v4/app/ag$a;
    if-eqz v1, :cond_0

    .line 161
    invoke-interface {v1}, Landroid/support/v4/app/ag$a;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 162
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v4, v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    if-eqz v4, :cond_0

    .line 163
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    :goto_0
    return v3

    .line 167
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v4

    invoke-virtual {v4, v5, v6, v5, v6}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    move-result-object v4

    .line 168
    invoke-virtual {v4, v2}, Landroid/support/v4/app/an;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/an;->i()I

    .line 169
    const/4 v4, 0x0

    invoke-direct {p0, v4, v3, v3}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->setElements(Ljava/lang/String;II)V

    .line 170
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isAudioChannelListFragmentShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 267
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioChanndelListFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    if-nez v1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioChanndelListFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFastDoubleClick()Z
    .locals 6

    .prologue
    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 305
    .local v0, "time":J
    iget-wide v4, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->lastClickTime:J

    sub-long v2, v0, v4

    .line 306
    .local v2, "timeD":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 307
    const/4 v4, 0x1

    .line 310
    :goto_0
    return v4

    .line 309
    :cond_0
    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->lastClickTime:J

    .line 310
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 127
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 92
    .local v1, "fm":Landroid/support/v4/app/ag;
    :try_start_0
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    .line 93
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 95
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioChanndelListFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->hideAllSecondaryFragment(Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->hideChannelFragment(Landroid/support/v4/app/ag;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->onExit()V

    .line 107
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return-void

    .line 102
    .restart local v0    # "count":I
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->onExit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v0    # "count":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onBackPressed(Z)V
    .locals 3
    .param p1, "backToMain"    # Z

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 78
    .local v1, "fm":Landroid/support/v4/app/ag;
    :try_start_0
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    .line 79
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 81
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->hideChannelFragment(Landroid/support/v4/app/ag;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onChangeChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "channel_id"    # Ljava/lang/String;
    .param p2, "_id"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "singleRes"    # Z

    .prologue
    .line 274
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->changeChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 277
    :cond_0
    return-void
.end method

.method public onChnItemClicked(Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;

    .prologue
    .line 294
    if-eqz p1, :cond_0

    .line 295
    iget-object v0, p1, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;->chnId:Ljava/lang/String;

    iget v1, p1, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;->clickIndex:I

    iget v2, p1, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;->chnLevel:I

    invoke-direct {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->setElements(Ljava/lang/String;II)V

    .line 297
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->hideChannelFragment(Landroid/support/v4/app/ag;)Z

    .line 301
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 53
    const v2, 0x7f0b0033

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 56
    .local v0, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v1

    .line 57
    .local v1, "ft":Landroid/support/v4/app/an;
    sget-object v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .line 58
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    if-nez v2, :cond_1

    .line 64
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .line 65
    const v2, 0x7f090158

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    sget-object v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/an;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 66
    invoke-virtual {v1}, Landroid/support/v4/app/an;->i()I

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isDetached()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/an;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 225
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onDestroy()V

    .line 227
    return-void
.end method

.method public onExit()V
    .locals 2

    .prologue
    .line 178
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isChildrenLock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isCourseFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 180
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->isNotModelLesson()Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;

    move-result-object v0

    .line 182
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->show(Landroid/support/v4/app/ag;)V

    .line 190
    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->performExit()V

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->performExit()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 231
    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 232
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->getInstance()Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->initialize(Landroid/content/Context;)V

    .line 233
    packed-switch p1, :pswitch_data_0

    .line 242
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 235
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->getInstance()Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->lowerVolume()V

    goto :goto_0

    .line 238
    :pswitch_1
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->getInstance()Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->raiseVolume()V

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onPause()V

    .line 217
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;)V

    .line 218
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onResume()V

    .line 211
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->b(Landroid/content/Context;)V

    .line 212
    return-void
.end method

.method public pausePlay()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->pausePlay()V

    .line 343
    :cond_0
    return-void
.end method

.method public performExit()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->onBackPressed()V

    .line 203
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 204
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->finish()V

    .line 205
    const v0, 0x7f010012

    const v1, 0x7f01001e

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->overridePendingTransition(II)V

    .line 206
    return-void
.end method

.method public resumePlay()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mAudioFragment:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->resumePlay()V

    .line 337
    :cond_0
    return-void
.end method

.method public showChannel(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mChanneId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "channel"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mChanneId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v0, "index"

    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    const-string v0, "LEVEL"

    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->mLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    :cond_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->onShowAudioChannel(Landroid/os/Bundle;)V

    .line 289
    return-void
.end method
