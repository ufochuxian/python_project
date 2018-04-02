.class public Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter;
.super Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 36
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;

    .line 107
    .local v0, "childrenHolder":Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;
    new-instance v1, Lcom/jiliguala/niuwa/logic/db/a/a;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/db/a/a;-><init>()V

    .line 108
    .local v1, "data":Lcom/jiliguala/niuwa/logic/db/a/a;
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 109
    invoke-virtual {v1, p3}, Lcom/jiliguala/niuwa/logic/db/a/a;->a(Landroid/database/Cursor;)V

    .line 110
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/a/a;->c()Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 112
    iget-object v6, v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/a/a;->c()Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    move-result-object v7

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->ttl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/a/a;->c()Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    move-result-object v6

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v4, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->img:Ljava/lang/String;

    .line 115
    .local v4, "url":Ljava/lang/String;
    iget-object v6, v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->mCover:Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->mCover:Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 116
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 117
    iget-object v6, v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->mCover:Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->setTag(Ljava/lang/Object;)V

    .line 126
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/a/a;->c()Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 128
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/a/a;->b()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "resId":Ljava/lang/String;
    invoke-static {v3}, Lcom/jiliguala/niuwa/logic/db/b;->c(Ljava/lang/String;)I

    move-result v2

    .line 130
    .local v2, "downloadStatus":I
    packed-switch v2, :pswitch_data_0

    .line 150
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->access$000(Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 151
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->access$200(Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->access$100(Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 153
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->access$200(Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;)Landroid/widget/ImageView;

    move-result-object v6

    const v7, 0x7f080114

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    :goto_1
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v6, :cond_2

    .line 156
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->access$200(Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;)Landroid/widget/ImageView;

    move-result-object v6

    const v7, 0x7f090556

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 157
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->access$200(Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;)Landroid/widget/ImageView;

    move-result-object v6

    const v7, 0x7f090555

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/a/a;->c()Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 158
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->access$200(Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;)Landroid/widget/ImageView;

    move-result-object v6

    const v7, 0x7f090554

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 159
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->access$200(Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .end local v0    # "childrenHolder":Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;
    .end local v1    # "data":Lcom/jiliguala/niuwa/logic/db/a/a;
    .end local v2    # "downloadStatus":I
    .end local v3    # "resId":Ljava/lang/String;
    :cond_2
    return-void

    .line 119
    .restart local v0    # "childrenHolder":Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;
    .restart local v1    # "data":Lcom/jiliguala/niuwa/logic/db/a/a;
    .restart local v4    # "url":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?imageMogr2/thumbnail/100x100"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, "urlEx":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v6

    iget-object v7, v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->mCover:Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/e/a;->p()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v8

    invoke-virtual {v6, v5, v7, v8}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 121
    iget-object v6, v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->mCover:Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    invoke-virtual {v6, v4}, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 132
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "urlEx":Ljava/lang/String;
    .restart local v2    # "downloadStatus":I
    .restart local v3    # "resId":Ljava/lang/String;
    :pswitch_0
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->access$000(Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 133
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->access$200(Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->access$100(Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 135
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->access$200(Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;)Landroid/widget/ImageView;

    move-result-object v6

    const v7, 0x7f080129

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 139
    :pswitch_1
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->access$000(Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 140
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->access$200(Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->access$100(Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1

    .line 144
    :pswitch_2
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->access$000(Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 145
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->access$200(Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->access$100(Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 147
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->access$200(Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;)Landroid/widget/ImageView;

    move-result-object v6

    const v7, 0x7f080115

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 130
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
    .line 50
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 53
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
    .line 66
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
    .line 82
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b005e

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 83
    .local v1, "convertView":Landroid/view/View;
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;-><init>()V

    .line 84
    .local v0, "childrenHolder":Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;
    const v2, 0x7f0902a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->mCover:Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    .line 85
    const v2, 0x7f09011b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->mTitle:Landroid/widget/TextView;

    .line 86
    const v2, 0x7f0901cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->access$002(Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;Landroid/view/View;)Landroid/view/View;

    .line 87
    const v2, 0x7f09040a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->access$102(Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 88
    const v2, 0x7f0901cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;->access$202(Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter$ChildrenHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 89
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 178
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioFavListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 42
    return-void
.end method
