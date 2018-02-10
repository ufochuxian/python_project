.class public Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$a;,
        Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;
    }
.end annotation


# static fields
.field private static final ITEM_TYPE_COUNT:I = 0x2

.field private static final ITEM_TYPE_FORUM_NORMAL:I = 0x1

.field private static final ITEM_TYPE_FORUM_TOP:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private firstBoldDivIndex:I

.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private sortType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->firstBoldDivIndex:I

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private newBannerView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 266
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b009f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 267
    .local v1, "convertView":Landroid/view/View;
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$a;-><init>(Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$1;)V

    .line 276
    .local v0, "bannerViewHolder":Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$a;
    const v2, 0x7f0905a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$a;->a:Landroid/widget/TextView;

    .line 277
    const v2, 0x7f0901bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$a;->b:Landroid/widget/ImageView;

    .line 282
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 283
    return-object v1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;I)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "position"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 98
    if-nez p1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;

    .line 108
    .local v1, "normalViewHolder":Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;

    .line 110
    .local v0, "data":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->d:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ttl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->h:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->rply:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->i:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->vcnt:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->f:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->nick:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->h:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->rply:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->f:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->nick:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->g:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->rts:Ljava/lang/String;

    invoke-static {v6}, Lcom/jiliguala/niuwa/common/util/f;->c(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/jiliguala/niuwa/common/util/f;->l(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v6, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->a:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget-boolean v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->top:Z

    if-eqz v3, :cond_5

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v6, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->b:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget-boolean v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->sel:Z

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v6, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->c:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget-boolean v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->isnew:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 136
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v6

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    .line 137
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    :goto_4
    iget-object v7, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->e:Landroid/widget/ImageView;

    .line 138
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/e/a;->j()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v8

    .line 136
    invoke-virtual {v6, v3, v7, v8}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 140
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->e:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 143
    :cond_2
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->l:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->abst:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->k:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->k:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ava:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 149
    :cond_3
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ava:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v2, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ava:Ljava/lang/String;

    .line 150
    .local v2, "url":Ljava/lang/String;
    :goto_5
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v3

    iget-object v6, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->k:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/e/a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v7

    invoke-virtual {v3, v2, v6, v7}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 151
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->k:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ava:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 154
    .end local v2    # "url":Ljava/lang/String;
    :cond_4
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 155
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    move v3, v5

    .line 131
    goto/16 :goto_1

    :cond_6
    move v3, v5

    .line 132
    goto/16 :goto_2

    :cond_7
    move v3, v5

    .line 133
    goto/16 :goto_3

    .line 137
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "?imageMogr2/thumbnail/320x"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 149
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ava:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "?imageMogr2/thumbnail/100x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 157
    :cond_a
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public clearDataSets()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->mDataSet:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 75
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 179
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 180
    :cond_0
    const/4 v0, 0x0

    .line 182
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 193
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 300
    iget v2, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->sortType:I

    packed-switch v2, :pswitch_data_0

    .line 311
    :cond_0
    :goto_0
    return v1

    .line 302
    :pswitch_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;

    .line 303
    .local v0, "forum":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget-boolean v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->top:Z

    if-eqz v2, :cond_0

    .line 304
    const/4 v1, 0x0

    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 200
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 201
    .local v1, "obj":Ljava/lang/Object;
    instance-of v5, v1, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;

    if-eqz v5, :cond_3

    .line 207
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;

    .line 210
    .local v3, "singleForum":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->getItemViewType(I)I

    move-result v5

    if-nez v5, :cond_5

    .line 214
    if-nez p2, :cond_1

    .line 215
    invoke-direct {p0, p3}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->newBannerView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 217
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;

    if-eqz v5, :cond_2

    .line 218
    invoke-direct {p0, p3}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->newBannerView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 220
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$a;

    .line 226
    .local v0, "bannerViewHolder":Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$a;
    iget-object v5, v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$a;->a:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ttl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v5, v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 231
    .local v2, "rl":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->firstBoldDivIndex:I

    if-ne p1, v5, :cond_4

    .line 232
    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 236
    :goto_1
    iget-object v5, v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v4, p2

    .line 261
    .end local v0    # "bannerViewHolder":Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$a;
    .end local v2    # "rl":Landroid/widget/LinearLayout$LayoutParams;
    :goto_2
    return-object v4

    .line 203
    .end local v3    # "singleForum":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    :cond_3
    instance-of v5, v1, Lcom/google/gson/internal/LinkedTreeMap;

    if-eqz v5, :cond_0

    goto :goto_0

    .line 234
    .restart local v0    # "bannerViewHolder":Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$a;
    .restart local v2    # "rl":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v3    # "singleForum":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    :cond_4
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1

    .line 241
    .end local v0    # "bannerViewHolder":Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$a;
    .end local v2    # "rl":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->getItemViewType(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 247
    if-nez p2, :cond_6

    .line 248
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, p3}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 255
    .local v4, "v":Landroid/view/View;
    :goto_3
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v5, p1}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;I)V

    goto :goto_2

    .line 250
    .end local v4    # "v":Landroid/view/View;
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$a;

    if-eqz v5, :cond_7

    .line 251
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, p3}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 253
    :cond_7
    move-object v4, p2

    .restart local v4    # "v":Landroid/view/View;
    goto :goto_3

    .end local v4    # "v":Landroid/view/View;
    :cond_8
    move-object v4, p2

    .line 261
    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x2

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 79
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b00a3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;-><init>(Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$1;)V

    .line 81
    .local v0, "normalViewHolder":Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;
    const v2, 0x7f090598

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->a:Landroid/widget/ImageView;

    .line 82
    const v2, 0x7f090519

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->b:Landroid/widget/ImageView;

    .line 83
    const v2, 0x7f090380

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->c:Landroid/widget/ImageView;

    .line 84
    const v2, 0x7f0905a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->d:Landroid/widget/TextView;

    .line 85
    const v2, 0x7f09026b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->e:Landroid/widget/ImageView;

    .line 86
    const v2, 0x7f090378

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->f:Landroid/widget/TextView;

    .line 87
    const v2, 0x7f090573

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->g:Landroid/widget/TextView;

    .line 88
    const v2, 0x7f090445

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->h:Landroid/widget/TextView;

    .line 89
    const v2, 0x7f09042a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->i:Landroid/widget/TextView;

    .line 90
    const v2, 0x7f0905d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->k:Landroid/widget/ImageView;

    .line 91
    const v2, 0x7f0901ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter$b;->l:Landroid/widget/TextView;

    .line 92
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    return-object v1
.end method

.method public setSortType(I)V
    .locals 0
    .param p1, "sortType"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->sortType:I

    .line 50
    return-void
.end method

.method public updateDateSet(Ljava/util/ArrayList;Z)V
    .locals 4
    .param p2, "forward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;>;"
    if-eqz p2, :cond_1

    .line 56
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 57
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 58
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 59
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 60
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;

    .line 61
    .local v1, "item":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget-boolean v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->top:Z

    if-eqz v3, :cond_0

    .line 62
    iput v0, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->firstBoldDivIndex:I

    .line 59
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    .end local v2    # "size":I
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    :cond_2
    return-void
.end method
