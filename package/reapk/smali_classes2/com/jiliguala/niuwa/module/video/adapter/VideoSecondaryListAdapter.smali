.class public Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter;
.super Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter;->data:Ljava/util/ArrayList;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter;->getItem(I)Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 66
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 88
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter;->getItem(I)Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    move-result-object v2

    .line 89
    .local v2, "item":Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;
    if-nez v2, :cond_0

    move-object v1, p2

    .line 113
    .end local p2    # "convertView":Landroid/view/View;
    .local v1, "convertView":Landroid/view/View;
    :goto_0
    return-object v1

    .line 94
    .end local v1    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    if-nez p2, :cond_2

    .line 95
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0b0195

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 96
    new-instance v0, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter$a;

    invoke-direct {v0, v7}, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter$a;-><init>(Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter$1;)V

    .line 97
    .local v0, "childrenHolder":Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter$a;
    const v4, 0x7f0902a3

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter$a;->b:Landroid/widget/ImageView;

    .line 98
    const v4, 0x7f09011b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter$a;->a:Landroid/widget/TextView;

    .line 99
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    :goto_1
    invoke-super {p0, p2, p1}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;->changeItemBgColor(Landroid/view/View;I)V

    .line 106
    iget-object v4, v0, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter$a;->a:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->ttl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v4, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v3, v4, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->img:Ljava/lang/String;

    .line 109
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?imageMogr2/thumbnail/100x100"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v4

    iget-object v5, v0, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter$a;->b:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/e/a;->u()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    :cond_1
    move-object v1, p2

    .line 113
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v1    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 101
    .end local v0    # "childrenHolder":Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter$a;
    .end local v1    # "convertView":Landroid/view/View;
    .end local v3    # "url":Ljava/lang/String;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter$a;

    .restart local v0    # "childrenHolder":Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter$a;
    goto :goto_1
.end method

.method public updateDateSet(Ljava/util/ArrayList;)V
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
    .line 35
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoSecondaryListAdapter;->data:Ljava/util/ArrayList;

    .line 36
    return-void
.end method
