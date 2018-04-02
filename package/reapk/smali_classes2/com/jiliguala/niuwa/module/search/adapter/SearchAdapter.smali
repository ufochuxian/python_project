.class public Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;,
        Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;,
        Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$VideoChildrenHolder;,
        Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$AudioChildrenHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private audios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;",
            ">;"
        }
    .end annotation
.end field

.field private forums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;",
            ">;"
        }
    .end annotation
.end field

.field private groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;",
            ">;"
        }
    .end annotation
.end field

.field private keyWord:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mode:I

.field private videos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->audios:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->videos:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->forums:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->groups:Ljava/util/ArrayList;

    .line 47
    iput p1, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->mode:I

    .line 48
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->forums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    return-void
.end method

.method public getAudios()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->audios:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->mode:I

    packed-switch v0, :pswitch_data_0

    .line 131
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 127
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->forums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 129
    :pswitch_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 145
    iget v0, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->mode:I

    packed-switch v0, :pswitch_data_0

    .line 155
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 151
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->forums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 153
    :pswitch_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 167
    int-to-long v0, p1

    return-wide v0
.end method

.method public getVideos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->videos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget v13, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->mode:I

    packed-switch v13, :pswitch_data_0

    .line 343
    :cond_0
    :goto_0
    return-object p2

    .line 192
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->audios:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .line 194
    .local v3, "audio":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    if-nez p2, :cond_2

    .line 195
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f0b0179

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 196
    new-instance v4, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$AudioChildrenHolder;

    invoke-direct {v4}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$AudioChildrenHolder;-><init>()V

    .line 197
    .local v4, "audioHolder":Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$AudioChildrenHolder;
    const v13, 0x7f0902a9

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    iput-object v13, v4, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$AudioChildrenHolder;->mCover:Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    .line 198
    const v13, 0x7f09011b

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v4, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$AudioChildrenHolder;->mTitle:Landroid/widget/TextView;

    .line 199
    const v13, 0x7f090062

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v4, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$AudioChildrenHolder;->mArtist:Landroid/widget/TextView;

    .line 200
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 204
    :goto_1
    iget-object v13, v4, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$AudioChildrenHolder;->mTitle:Landroid/widget/TextView;

    iget-object v14, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v14, v14, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->ttl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->keyWord:Ljava/lang/String;

    const v16, 0x7f060060

    invoke-static/range {v14 .. v16}, Lcom/jiliguala/niuwa/common/util/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v13, v4, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$AudioChildrenHolder;->mArtist:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "by "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v15, v15, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->art:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v15, v15, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->album:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->keyWord:Ljava/lang/String;

    const v16, 0x7f060060

    invoke-static/range {v14 .. v16}, Lcom/jiliguala/niuwa/common/util/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v13, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v10, v13, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->img:Ljava/lang/String;

    .line 208
    .local v10, "url":Ljava/lang/String;
    iget-object v13, v4, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$AudioChildrenHolder;->mCover:Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    invoke-virtual {v13}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->getTag()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_1

    iget-object v13, v4, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$AudioChildrenHolder;->mCover:Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    invoke-virtual {v13}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->getTag()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 209
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v14

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object v13, v10

    :goto_2
    iget-object v15, v4, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$AudioChildrenHolder;->mCover:Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    .line 210
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/logic/e/a;->p()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v16

    .line 209
    move-object/from16 v0, v16

    invoke-virtual {v14, v13, v15, v0}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 212
    iget-object v13, v4, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$AudioChildrenHolder;->mCover:Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    invoke-virtual {v13, v10}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 202
    .end local v4    # "audioHolder":Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$AudioChildrenHolder;
    .end local v10    # "url":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$AudioChildrenHolder;

    .restart local v4    # "audioHolder":Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$AudioChildrenHolder;
    goto/16 :goto_1

    .line 209
    .restart local v10    # "url":Ljava/lang/String;
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "?imageMogr2/thumbnail/100x100"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 217
    .end local v3    # "audio":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    .end local v4    # "audioHolder":Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$AudioChildrenHolder;
    .end local v10    # "url":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->videos:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    .line 219
    .local v11, "video":Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;
    if-nez p2, :cond_5

    .line 220
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f0b017b

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 221
    new-instance v12, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$VideoChildrenHolder;

    invoke-direct {v12}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$VideoChildrenHolder;-><init>()V

    .line 222
    .local v12, "videoHolder":Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$VideoChildrenHolder;
    const v13, 0x7f0902a9

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v12, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$VideoChildrenHolder;->mCover:Landroid/widget/ImageView;

    .line 223
    const v13, 0x7f09011b

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v12, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$VideoChildrenHolder;->mTitle:Landroid/widget/TextView;

    .line 224
    const v13, 0x7f090062

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v12, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$VideoChildrenHolder;->mArtist:Landroid/widget/TextView;

    .line 225
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 229
    :goto_3
    iget-object v13, v12, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$VideoChildrenHolder;->mTitle:Landroid/widget/TextView;

    iget-object v14, v11, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v14, v14, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->ttl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->keyWord:Ljava/lang/String;

    const v16, 0x7f060060

    invoke-static/range {v14 .. v16}, Lcom/jiliguala/niuwa/common/util/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v13, v12, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$VideoChildrenHolder;->mArtist:Landroid/widget/TextView;

    iget-object v14, v11, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v14, v14, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->art:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->keyWord:Ljava/lang/String;

    const v16, 0x7f060060

    invoke-static/range {v14 .. v16}, Lcom/jiliguala/niuwa/common/util/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v13, v11, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v10, v13, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->img:Ljava/lang/String;

    .line 233
    .restart local v10    # "url":Ljava/lang/String;
    iget-object v13, v12, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$VideoChildrenHolder;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_4

    iget-object v13, v12, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$VideoChildrenHolder;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 234
    :cond_4
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v14

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object v13, v10

    :goto_4
    iget-object v15, v12, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$VideoChildrenHolder;->mCover:Landroid/widget/ImageView;

    .line 235
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/logic/e/a;->u()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v16

    .line 234
    move-object/from16 v0, v16

    invoke-virtual {v14, v13, v15, v0}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 237
    iget-object v13, v12, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$VideoChildrenHolder;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v13, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 227
    .end local v10    # "url":Ljava/lang/String;
    .end local v12    # "videoHolder":Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$VideoChildrenHolder;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$VideoChildrenHolder;

    .restart local v12    # "videoHolder":Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$VideoChildrenHolder;
    goto :goto_3

    .line 234
    .restart local v10    # "url":Ljava/lang/String;
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "?imageMogr2/thumbnail/100x100"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    .line 241
    .end local v10    # "url":Ljava/lang/String;
    .end local v11    # "video":Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;
    .end local v12    # "videoHolder":Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$VideoChildrenHolder;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->forums:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;

    .line 243
    .local v5, "forum":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    if-nez p2, :cond_b

    .line 245
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f0b00a3

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 246
    new-instance v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;

    const/4 v13, 0x0

    invoke-direct {v6, v13}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;-><init>(Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$1;)V

    .line 247
    .local v6, "forumViewHolder":Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;
    const v13, 0x7f0905a2

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->a:Landroid/widget/ImageView;

    .line 248
    const v13, 0x7f090523

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->b:Landroid/widget/ImageView;

    .line 249
    const v13, 0x7f090387

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->c:Landroid/widget/ImageView;

    .line 250
    const v13, 0x7f0905af

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->d:Landroid/widget/TextView;

    .line 251
    const v13, 0x7f090270

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->e:Landroid/widget/ImageView;

    .line 252
    const v13, 0x7f09037f

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->f:Landroid/widget/TextView;

    .line 253
    const v13, 0x7f09057d

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->g:Landroid/widget/TextView;

    .line 254
    const v13, 0x7f09044c

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->h:Landroid/widget/TextView;

    .line 255
    const v13, 0x7f090431

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->i:Landroid/widget/TextView;

    .line 256
    const v13, 0x7f0905dd

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->k:Landroid/widget/ImageView;

    .line 257
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 262
    :goto_5
    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->d:Landroid/widget/TextView;

    iget-object v14, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v14, v14, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ttl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->keyWord:Ljava/lang/String;

    const v16, 0x7f060054

    invoke-static/range {v14 .. v16}, Lcom/jiliguala/niuwa/common/util/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->h:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget v15, v15, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->rply:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->keyWord:Ljava/lang/String;

    const v16, 0x7f060054

    invoke-static/range {v14 .. v16}, Lcom/jiliguala/niuwa/common/util/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->i:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget v15, v15, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->vcnt:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->keyWord:Ljava/lang/String;

    const v16, 0x7f060054

    invoke-static/range {v14 .. v16}, Lcom/jiliguala/niuwa/common/util/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->f:Landroid/widget/TextView;

    iget-object v14, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v14, v14, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->nick:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->keyWord:Ljava/lang/String;

    const v16, 0x7f060054

    invoke-static/range {v14 .. v16}, Lcom/jiliguala/niuwa/common/util/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v13, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget-boolean v13, v13, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->top:Z

    if-eqz v13, :cond_c

    .line 268
    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->h:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->i:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->f:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->g:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    :goto_6
    iget-object v14, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->a:Landroid/widget/ImageView;

    iget-object v13, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget-boolean v13, v13, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->top:Z

    if-eqz v13, :cond_d

    const/4 v13, 0x0

    :goto_7
    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    iget-object v14, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->b:Landroid/widget/ImageView;

    iget-object v13, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget-boolean v13, v13, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->sel:Z

    if-eqz v13, :cond_e

    const/4 v13, 0x0

    :goto_8
    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object v14, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->c:Landroid/widget/ImageView;

    iget-object v13, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget-boolean v13, v13, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->isnew:Z

    if-eqz v13, :cond_f

    const/4 v13, 0x0

    :goto_9
    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_7

    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v13

    iget-object v14, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v14, v14, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 289
    :cond_7
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v14

    iget-object v13, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v13, v13, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    .line 290
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_10

    iget-object v13, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v13, v13, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    :goto_a
    iget-object v15, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->e:Landroid/widget/ImageView;

    .line 291
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/logic/e/a;->j()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v16

    .line 289
    move-object/from16 v0, v16

    invoke-virtual {v14, v13, v15, v0}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 293
    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->e:Landroid/widget/ImageView;

    iget-object v14, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v14, v14, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 295
    :cond_8
    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->k:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_9

    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->k:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v13

    iget-object v14, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v14, v14, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ava:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 296
    :cond_9
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v14

    iget-object v13, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v13, v13, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ava:Ljava/lang/String;

    .line 297
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_11

    iget-object v13, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v13, v13, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ava:Ljava/lang/String;

    :goto_b
    iget-object v15, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->k:Landroid/widget/ImageView;

    .line 298
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/logic/e/a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v16

    .line 296
    move-object/from16 v0, v16

    invoke-virtual {v14, v13, v15, v0}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 300
    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->k:Landroid/widget/ImageView;

    iget-object v14, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v14, v14, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ava:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 302
    :cond_a
    iget-object v13, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v13, v13, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 303
    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->e:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 259
    .end local v6    # "forumViewHolder":Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;

    .restart local v6    # "forumViewHolder":Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;
    goto/16 :goto_5

    .line 273
    :cond_c
    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->h:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->i:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->f:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->g:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->h:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget v15, v15, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->rply:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->keyWord:Ljava/lang/String;

    const v16, 0x7f060054

    invoke-static/range {v14 .. v16}, Lcom/jiliguala/niuwa/common/util/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->f:Landroid/widget/TextView;

    iget-object v14, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v14, v14, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->nick:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->keyWord:Ljava/lang/String;

    const v16, 0x7f060054

    invoke-static/range {v14 .. v16}, Lcom/jiliguala/niuwa/common/util/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->g:Landroid/widget/TextView;

    iget-object v14, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v14, v14, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->rts:Ljava/lang/String;

    invoke-static {v14}, Lcom/jiliguala/niuwa/common/util/f;->c(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/jiliguala/niuwa/common/util/f;->l(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->keyWord:Ljava/lang/String;

    const v16, 0x7f060054

    invoke-static/range {v14 .. v16}, Lcom/jiliguala/niuwa/common/util/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->g:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 285
    :cond_d
    const/16 v13, 0x8

    goto/16 :goto_7

    .line 286
    :cond_e
    const/16 v13, 0x8

    goto/16 :goto_8

    .line 287
    :cond_f
    const/16 v13, 0x8

    goto/16 :goto_9

    .line 290
    :cond_10
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v15, v15, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "?imageMogr2/thumbnail/320x"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_a

    .line 297
    :cond_11
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v15, v15, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ava:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "?imageMogr2/thumbnail/100x"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_b

    .line 305
    :cond_12
    iget-object v13, v6, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;->e:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 309
    .end local v5    # "forum":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    .end local v6    # "forumViewHolder":Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$a;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->groups:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;

    .line 311
    .local v7, "group":Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;
    if-nez p2, :cond_14

    .line 312
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f0b017a

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 313
    new-instance v8, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;

    const/4 v13, 0x0

    invoke-direct {v8, v13}, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;-><init>(Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$1;)V

    .line 314
    .local v8, "groupHolder":Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;
    const v13, 0x7f0903bb

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v8, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;->c:Landroid/widget/ImageView;

    .line 315
    const v13, 0x7f090246

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;->a:Landroid/widget/TextView;

    .line 316
    const v13, 0x7f090245

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;->b:Landroid/widget/TextView;

    .line 317
    const v13, 0x7f0903bd

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;->d:Landroid/widget/TextView;

    .line 318
    const v13, 0x7f09013c

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;->e:Landroid/widget/TextView;

    .line 319
    const v13, 0x7f09013d

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;->f:Landroid/widget/TextView;

    .line 320
    const v13, 0x7f09032c

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;->g:Landroid/widget/TextView;

    .line 321
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 325
    :goto_c
    iget-object v13, v8, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;->a:Landroid/widget/TextView;

    iget-object v14, v7, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->keyWord:Ljava/lang/String;

    const v16, 0x7f06005a

    invoke-static/range {v14 .. v16}, Lcom/jiliguala/niuwa/common/util/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v13, v8, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;->b:Landroid/widget/TextView;

    iget-object v14, v7, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->_id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->keyWord:Ljava/lang/String;

    const v16, 0x7f06005a

    invoke-static/range {v14 .. v16}, Lcom/jiliguala/niuwa/common/util/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v13, v7, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->owner:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v9, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->nick:Ljava/lang/String;

    .line 328
    .local v9, "nick":Ljava/lang/String;
    iget-object v13, v7, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->age:Lcom/jiliguala/niuwa/logic/network/json/GroupAgeTemplate;

    if-nez v13, :cond_15

    const-string v2, "null"

    .line 329
    .local v2, "age":Ljava/lang/String;
    :goto_d
    iget-object v13, v8, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;->d:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->mContext:Landroid/content/Context;

    const v16, 0x7f0f0070

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v13, v8, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;->e:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->mContext:Landroid/content/Context;

    const v16, 0x7f0f006e

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v13, v8, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;->f:Landroid/widget/TextView;

    iget-object v14, v7, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->desc:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v13, v8, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;->g:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->mContext:Landroid/content/Context;

    const v16, 0x7f0f006f

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->memberscount:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->max:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v10, v7, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->ava:Ljava/lang/String;

    .line 335
    .restart local v10    # "url":Ljava/lang/String;
    iget-object v13, v8, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_13

    iget-object v13, v8, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 336
    :cond_13
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v14

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_16

    move-object v13, v10

    :goto_e
    iget-object v15, v8, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;->c:Landroid/widget/ImageView;

    .line 337
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/logic/e/a;->r()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v16

    .line 336
    move-object/from16 v0, v16

    invoke-virtual {v14, v13, v15, v0}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 339
    iget-object v13, v8, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v13, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 323
    .end local v2    # "age":Ljava/lang/String;
    .end local v8    # "groupHolder":Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;
    .end local v9    # "nick":Ljava/lang/String;
    .end local v10    # "url":Ljava/lang/String;
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;

    .restart local v8    # "groupHolder":Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter$b;
    goto/16 :goto_c

    .line 328
    .restart local v9    # "nick":Ljava/lang/String;
    :cond_15
    iget-object v13, v7, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->age:Lcom/jiliguala/niuwa/logic/network/json/GroupAgeTemplate;

    iget-object v2, v13, Lcom/jiliguala/niuwa/logic/network/json/GroupAgeTemplate;->ttl:Ljava/lang/String;

    goto/16 :goto_d

    .line 336
    .restart local v2    # "age":Ljava/lang/String;
    .restart local v10    # "url":Ljava/lang/String;
    :cond_16
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "?imageMogr2/thumbnail/160x"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_e

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAudios(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->audios:Ljava/util/ArrayList;

    .line 66
    return-void
.end method

.method public setKeyWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyWord"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->keyWord:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setVideos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->videos:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 6
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "response"    # Ljava/lang/Object;
    .param p3, "loadMore"    # Z

    .prologue
    .line 80
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/x;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->keyWord:Ljava/lang/String;

    .line 81
    if-nez p3, :cond_0

    .line 82
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->audios:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 83
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->videos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 84
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->forums:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 85
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 87
    :cond_0
    iget v4, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->mode:I

    packed-switch v4, :pswitch_data_0

    .line 113
    :cond_1
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p2

    .line 89
    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;

    .line 90
    .local v0, "audioSets":Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;
    if-eqz v0, :cond_1

    .line 91
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->audios:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .end local v0    # "audioSets":Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;
    :pswitch_1
    move-object v3, p2

    .line 95
    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/VideoDataSetsTemplate;

    .line 96
    .local v3, "videoSets":Lcom/jiliguala/niuwa/logic/network/json/VideoDataSetsTemplate;
    if-eqz v3, :cond_1

    .line 97
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->videos:Ljava/util/ArrayList;

    iget-object v5, v3, Lcom/jiliguala/niuwa/logic/network/json/VideoDataSetsTemplate;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .end local v3    # "videoSets":Lcom/jiliguala/niuwa/logic/network/json/VideoDataSetsTemplate;
    :pswitch_2
    move-object v1, p2

    .line 101
    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/ForumSets;

    .line 102
    .local v1, "forumSets":Lcom/jiliguala/niuwa/logic/network/json/ForumSets;
    if-eqz v1, :cond_1

    .line 103
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->forums:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/network/json/ForumSets;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .end local v1    # "forumSets":Lcom/jiliguala/niuwa/logic/network/json/ForumSets;
    :pswitch_3
    move-object v2, p2

    .line 107
    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoSetsTemplate;

    .line 108
    .local v2, "groupSets":Lcom/jiliguala/niuwa/logic/network/json/GroupInfoSetsTemplate;
    if-eqz v2, :cond_1

    .line 109
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/search/adapter/SearchAdapter;->groups:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoSetsTemplate;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
