.class public Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter;
.super Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 36
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;

    .line 104
    .local v0, "childrenHolder":Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;
    new-instance v1, Lcom/jiliguala/niuwa/logic/db/a/e;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/db/a/e;-><init>()V

    .line 105
    .local v1, "item":Lcom/jiliguala/niuwa/logic/db/a/e;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v5}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 106
    invoke-virtual {v1, p3}, Lcom/jiliguala/niuwa/logic/db/a/e;->a(Landroid/database/Cursor;)V

    .line 107
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/a/e;->c()Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 108
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/a/e;->c()Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    move-result-object v5

    instance-of v5, v5, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-static {v5}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 109
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/a/e;->c()Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .line 111
    .local v2, "singleAudioData":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/a/e;->b()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 131
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->access$000(Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :goto_0
    iget-object v5, v0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->mTitle:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->ttl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v3, v5, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->img:Ljava/lang/String;

    .line 138
    .local v3, "url":Ljava/lang/String;
    iget-object v5, v0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->mCover:Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->mCover:Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 139
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    iget-object v5, v0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->mCover:Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->setTag(Ljava/lang/Object;)V

    .line 150
    .end local v0    # "childrenHolder":Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;
    .end local v1    # "item":Lcom/jiliguala/niuwa/logic/db/a/e;
    .end local v2    # "singleAudioData":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 113
    .restart local v0    # "childrenHolder":Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;
    .restart local v1    # "item":Lcom/jiliguala/niuwa/logic/db/a/e;
    .restart local v2    # "singleAudioData":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    :pswitch_0
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->access$000(Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->access$200(Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->access$100(Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 116
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->access$200(Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f080127

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 120
    :pswitch_1
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->access$000(Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 121
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->access$200(Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->access$100(Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 125
    :pswitch_2
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->access$000(Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->access$200(Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->access$100(Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 128
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->access$200(Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f080113

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 142
    .restart local v3    # "url":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?imageMogr2/thumbnail/100x100"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "urlEx":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v5

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->mCover:Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/e/a;->p()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 144
    iget-object v5, v0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->mCover:Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    invoke-virtual {v5, v3}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 78
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b0060

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, "convertView":Landroid/view/View;
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;-><init>()V

    .line 80
    .local v0, "childrenHolder":Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;
    const v2, 0x7f0902a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->mCover:Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    .line 81
    const v2, 0x7f09011b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->mTitle:Landroid/widget/TextView;

    .line 82
    const v2, 0x7f0901cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->access$002(Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;Landroid/view/View;)Landroid/view/View;

    .line 83
    const v2, 0x7f090403

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->access$102(Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 84
    const v2, 0x7f0901cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;->access$202(Lcom/jiliguala/niuwa/module/audio/adapter/OffLineListAdapter$ChildrenHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 86
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    return-object v1
.end method
