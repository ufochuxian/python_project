.class public Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter;
.super Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter$ChildrenHolder;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 24
    const-class v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter;->TAG:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter$ChildrenHolder;

    .line 65
    .local v0, "childrenHolder":Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter$ChildrenHolder;
    new-instance v1, Lcom/jiliguala/niuwa/logic/db/a/b;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/db/a/b;-><init>()V

    .line 66
    .local v1, "data":Lcom/jiliguala/niuwa/logic/db/a/b;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v3}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    invoke-virtual {v1, p3}, Lcom/jiliguala/niuwa/logic/db/a/b;->a(Landroid/database/Cursor;)V

    .line 69
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter$ChildrenHolder;->access$000(Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter$ChildrenHolder;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v3, v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter$ChildrenHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/a/b;->b()Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    move-result-object v4

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->ttl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/a/b;->b()Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    move-result-object v3

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v2, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->img:Ljava/lang/String;

    .line 74
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?imageMogr2/thumbnail/100x100"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v3

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter$ChildrenHolder;->mCover:Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 80
    .end local v0    # "childrenHolder":Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter$ChildrenHolder;
    .end local v1    # "data":Lcom/jiliguala/niuwa/logic/db/a/b;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 39
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
    .line 45
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
    .line 50
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b005e

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, "convertView":Landroid/view/View;
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter$ChildrenHolder;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter$ChildrenHolder;-><init>()V

    .line 52
    .local v0, "childrenHolder":Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter$ChildrenHolder;
    const v2, 0x7f0902a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter$ChildrenHolder;->mCover:Lcom/jiliguala/niuwa/common/widget/SmallRoundRecyclingImageView;

    .line 53
    const v2, 0x7f09011b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter$ChildrenHolder;->mTitle:Landroid/widget/TextView;

    .line 54
    const v2, 0x7f0901cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter$ChildrenHolder;->access$002(Lcom/jiliguala/niuwa/module/audio/adapter/AudioRntListAdapter$ChildrenHolder;Landroid/view/View;)Landroid/view/View;

    .line 55
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    return-object v1
.end method
