.class public Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DetailModel;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;->mData:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 34
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 38
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;->notifyDataSetChanged()V

    .line 39
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 72
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 95
    if-nez p2, :cond_1

    .line 96
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0b0092

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 97
    new-instance v2, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter$ViewHolder;-><init>()V

    .line 98
    .local v2, "viewHolder":Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter$ViewHolder;
    const v3, 0x7f0901c6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    iput-object v3, v2, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter$ViewHolder;->dotIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    .line 99
    const v3, 0x7f090160

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter$ViewHolder;->contentTv:Landroid/widget/TextView;

    .line 100
    const v3, 0x7f090466

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter$ViewHolder;->rightArrowIv:Landroid/widget/ImageView;

    .line 101
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 105
    :goto_0
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter$ViewHolder;->rightArrowIv:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DetailModel;

    .line 107
    .local v0, "detail":Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DetailModel;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 108
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DetailModel;->typ:Ljava/lang/String;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 119
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_1
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter$ViewHolder;->contentTv:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DetailModel;->ttl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter$ViewHolder;->dotIv:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    invoke-virtual {v3, v1}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    return-object p2

    .line 103
    .end local v0    # "detail":Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DetailModel;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "viewHolder":Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter$ViewHolder;
    goto :goto_0

    .line 110
    .restart local v0    # "detail":Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DetailModel;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DetailModel;->typ:Ljava/lang/String;

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 111
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 112
    :cond_3
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DetailModel;->typ:Ljava/lang/String;

    const-string v4, "done"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 113
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 114
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter$ViewHolder;->rightArrowIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 115
    :cond_4
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DetailModel;->typ:Ljava/lang/String;

    const-string v4, "alldone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 117
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter$ViewHolder;->rightArrowIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DetailModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DetailModel;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 44
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;->notifyDataSetChanged()V

    .line 45
    return-void
.end method
