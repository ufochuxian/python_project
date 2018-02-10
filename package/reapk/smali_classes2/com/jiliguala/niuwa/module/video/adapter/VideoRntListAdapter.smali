.class public Lcom/jiliguala/niuwa/module/video/adapter/VideoRntListAdapter;
.super Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/video/adapter/VideoRntListAdapter$ChildrenHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 31
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoRntListAdapter;->mContext:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoRntListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/adapter/VideoRntListAdapter$ChildrenHolder;

    .line 64
    .local v0, "childrenHolder":Lcom/jiliguala/niuwa/module/video/adapter/VideoRntListAdapter$ChildrenHolder;
    new-instance v1, Lcom/jiliguala/niuwa/logic/db/a/h;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/db/a/h;-><init>()V

    .line 65
    .local v1, "data":Lcom/jiliguala/niuwa/logic/db/a/h;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoRntListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v3}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    invoke-virtual {v1, p3}, Lcom/jiliguala/niuwa/logic/db/a/h;->a(Landroid/database/Cursor;)V

    .line 67
    iget-object v3, v0, Lcom/jiliguala/niuwa/module/video/adapter/VideoRntListAdapter$ChildrenHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/a/h;->b()Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    move-result-object v4

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->ttl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/a/h;->b()Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    move-result-object v3

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v2, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->img:Ljava/lang/String;

    .line 70
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?imageMogr2/thumbnail/100x100"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v3

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/video/adapter/VideoRntListAdapter$ChildrenHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 76
    .end local v0    # "childrenHolder":Lcom/jiliguala/niuwa/module/video/adapter/VideoRntListAdapter$ChildrenHolder;
    .end local v1    # "data":Lcom/jiliguala/niuwa/logic/db/a/h;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoRntListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoRntListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 40
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
    .line 46
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
    .line 51
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoRntListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b0195

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 52
    .local v1, "convertView":Landroid/view/View;
    new-instance v0, Lcom/jiliguala/niuwa/module/video/adapter/VideoRntListAdapter$ChildrenHolder;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/video/adapter/VideoRntListAdapter$ChildrenHolder;-><init>()V

    .line 53
    .local v0, "childrenHolder":Lcom/jiliguala/niuwa/module/video/adapter/VideoRntListAdapter$ChildrenHolder;
    const v2, 0x7f0902a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/video/adapter/VideoRntListAdapter$ChildrenHolder;->mCover:Landroid/widget/ImageView;

    .line 54
    const v2, 0x7f09011b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/video/adapter/VideoRntListAdapter$ChildrenHolder;->mTitle:Landroid/widget/TextView;

    .line 55
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    return-object v1
.end method
