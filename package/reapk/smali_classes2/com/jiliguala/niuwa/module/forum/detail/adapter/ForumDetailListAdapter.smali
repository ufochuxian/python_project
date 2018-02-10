.class public Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;
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
            "Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeleteListener:Landroid/view/View$OnClickListener;

.field private mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mSubscription:Lrx/i/b;

.field private rootPart:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->data:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$1;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mDeleteListener:Landroid/view/View$OnClickListener;

    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 84
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->reqeustLoveForum(Ljava/lang/String;)V

    return-void
.end method

.method private generateBody(Ljava/lang/String;)Lokhttp3/ab;
    .locals 4
    .param p1, "restId"    # Ljava/lang/String;

    .prologue
    .line 127
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3}, Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v1, "favDataEntity":Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 130
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method private isShowDivider(ILcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_0

    .line 553
    iget-object v0, p2, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->p:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 557
    :goto_0
    return-void

    .line 555
    :cond_0
    iget-object v0, p2, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->p:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private reqeustLoveForum(Ljava/lang/String;)V
    .locals 3
    .param p1, "resId"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mSubscription:Lrx/i/b;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mSubscription:Lrx/i/b;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 118
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->generateBody(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->j(Lokhttp3/ab;)Lrx/e;

    move-result-object v1

    .line 119
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 120
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 121
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lrx/e;->C()Lrx/m;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 575
    :cond_0
    return-void
.end method

.method public deleteAction(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v3, 0x7f09054e

    .line 560
    const v1, 0x7f09054f

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;

    .line 561
    .local v0, "holder":Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x7f0f00df

    if-ne v1, v2, :cond_1

    .line 562
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->autoRefresh()V

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x7f0f00e1

    if-ne v1, v2, :cond_0

    .line 566
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->data:Ljava/util/ArrayList;

    iget v2, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->a:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 567
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 196
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 197
    :cond_0
    const/4 v0, 0x0

    .line 202
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 214
    int-to-long v0, p1

    return-wide v0
.end method

.method public getRootPart()Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->rootPart:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->data:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    .line 242
    .local v11, "forum":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    iget-object v2, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v4, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->html:Ljava/lang/String;

    .line 247
    .local v4, "url":Ljava/lang/String;
    if-nez p2, :cond_5

    .line 248
    new-instance v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;

    const/4 v2, 0x0

    invoke-direct {v12, v2}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$1;)V

    .line 249
    .local v12, "holder":Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b00a2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 250
    const v2, 0x7f090160

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->o:Landroid/widget/LinearLayout;

    .line 251
    const v2, 0x7f090581

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->b:Landroid/widget/RelativeLayout;

    .line 253
    const v2, 0x7f09015e

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->c:Landroid/widget/TextView;

    .line 254
    const v2, 0x7f09015f

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->d:Landroid/widget/ImageView;

    .line 255
    const v2, 0x7f09015d

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->e:Landroid/widget/ImageView;

    .line 256
    const v2, 0x7f09015c

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->f:Landroid/widget/ImageView;

    .line 257
    const v2, 0x7f09015b

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->g:Landroid/widget/TextView;

    .line 258
    const v2, 0x7f09042a

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->h:Landroid/widget/TextView;

    .line 260
    const v2, 0x7f090446

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->i:Landroid/widget/TextView;

    .line 261
    const v2, 0x7f090083

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->k:Landroid/widget/ImageView;

    .line 262
    const v2, 0x7f0903b5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->l:Landroid/widget/TextView;

    .line 263
    const v2, 0x7f0902ed

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->m:Landroid/widget/TextView;

    .line 264
    const v2, 0x7f090548

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->n:Landroid/widget/RelativeLayout;

    .line 265
    const v2, 0x7f090216

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v12, v2}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->a(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 266
    const v2, 0x7f0901f7

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->j:Landroid/widget/TextView;

    .line 267
    const v2, 0x7f0900b6

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->a(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;Landroid/view/View;)Landroid/view/View;

    .line 269
    const v2, 0x7f090220

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v12, v2}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->b(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 270
    const v2, 0x7f090226

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v12, v2}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->c(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 272
    const v2, 0x7f0901bf

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->p:Landroid/widget/ImageView;

    .line 274
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 278
    :goto_0
    move/from16 v0, p1

    iput v0, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->a:I

    .line 279
    invoke-static {}, Lcom/jiliguala/niuwa/logic/c/a;->a()Lcom/jiliguala/niuwa/logic/c/a;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    move/from16 v3, p1

    .line 280
    invoke-virtual/range {v2 .. v7}, Lcom/jiliguala/niuwa/logic/c/a;->a(ILjava/lang/String;Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)Landroid/view/View;

    move-result-object v21

    .line 281
    .local v21, "view":Landroid/view/View;
    iget-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 282
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 283
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 285
    :cond_0
    iget-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->o:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 286
    invoke-static {}, Lcom/jiliguala/niuwa/logic/c/a;->a()Lcom/jiliguala/niuwa/logic/c/a;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/logic/c/a;->a(Landroid/view/View;)V

    .line 288
    iget-object v3, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->b:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_6

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 290
    iget-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->c:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->rootPart:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->ttl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->c:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 292
    iget-object v3, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->d:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->rootPart:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-boolean v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->top:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    iget-object v3, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->e:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->rootPart:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-boolean v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->sel:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    iget-object v3, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->f:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->rootPart:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-boolean v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->isnew:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->rootPart:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->rply:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->rootPart:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->vcnt:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->j:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zancnt:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    const/4 v9, 0x0

    .line 300
    .local v9, "dr":Landroid/graphics/drawable/Drawable;
    iget-object v2, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-boolean v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zan:Z

    if-eqz v2, :cond_a

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 303
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07005c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mContext:Landroid/content/Context;

    .line 304
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07005a

    .line 305
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 303
    invoke-virtual {v9, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 316
    :cond_1
    :goto_5
    iget-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->j:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v9, v3, v5, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 317
    iget-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->j:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zancnt:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->isShowDivider(ILcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;)V

    .line 321
    iget-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->g:Landroid/widget/TextView;

    new-instance v3, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$2;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->j:Landroid/widget/TextView;

    new-instance v3, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11, v12}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->i:Landroid/widget/TextView;

    new-instance v3, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$4;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .local v10, "flrAnd":Ljava/lang/StringBuilder;
    iget-object v2, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->flr:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 412
    const-string v2, "\u6c99\u53d1 "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_2
    :goto_6
    iget-object v2, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->cts:Ljava/lang/String;

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/f;->c(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/f;->l(J)Ljava/lang/String;

    move-result-object v20

    .line 423
    .local v20, "time":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-static {v12}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->a(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mContext:Landroid/content/Context;

    if-nez v2, :cond_e

    const/16 v19, 0x0

    .line 429
    .local v19, "tag_margin":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mContext:Landroid/content/Context;

    if-nez v2, :cond_f

    const/16 v18, 0x0

    .line 433
    .local v18, "tag_height":I
    :goto_8
    iget-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 434
    const/4 v13, 0x1

    .line 436
    .local v13, "index":I
    iget-object v2, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->flr:I

    if-eqz v2, :cond_3

    iget-object v2, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->rootPart:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->uid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 437
    :cond_3
    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v14, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 438
    .local v14, "iv":Landroid/widget/ImageView;
    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setId(I)V

    .line 439
    const v2, 0x7f0803e1

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 441
    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 443
    .local v16, "tagDr":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move/from16 v0, v18

    int-to-float v3, v0

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v22, v0

    .line 445
    .local v22, "width":I
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v0, v22

    move/from16 v1, v18

    invoke-direct {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 447
    .local v15, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 448
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v2, v3, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 449
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v14, v2, v3, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 450
    iget-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v14, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    .end local v14    # "iv":Landroid/widget/ImageView;
    .end local v15    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "tagDr":Landroid/graphics/drawable/Drawable;
    .end local v22    # "width":I
    :cond_4
    iget-object v2, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->flr:I

    if-nez v2, :cond_10

    .line 455
    invoke-static {v12}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->b(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 459
    :goto_9
    iget-object v2, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->tag:Ljava/util/ArrayList;

    if-eqz v2, :cond_11

    iget-object v2, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->tag:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_11

    .line 460
    iget-object v2, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->tag:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 461
    .local v17, "tagUrl":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    .line 462
    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v14, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 463
    .restart local v14    # "iv":Landroid/widget/ImageView;
    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setId(I)V

    .line 465
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    move/from16 v0, v18

    invoke-direct {v15, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 466
    .restart local v15    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x1

    add-int/lit8 v5, v13, -0x1

    invoke-virtual {v15, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 467
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v3, v5, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 468
    iget-object v3, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v14, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v3

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v5

    .line 471
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$5;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v6, v0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$5;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;I)V

    .line 470
    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v14, v5, v6}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;)V

    goto :goto_a

    .line 276
    .end local v9    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v10    # "flrAnd":Ljava/lang/StringBuilder;
    .end local v12    # "holder":Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;
    .end local v13    # "index":I
    .end local v14    # "iv":Landroid/widget/ImageView;
    .end local v15    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v17    # "tagUrl":Ljava/lang/String;
    .end local v18    # "tag_height":I
    .end local v19    # "tag_margin":I
    .end local v20    # "time":Ljava/lang/String;
    .end local v21    # "view":Landroid/view/View;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;

    .restart local v12    # "holder":Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;
    goto/16 :goto_0

    .line 288
    .restart local v21    # "view":Landroid/view/View;
    :cond_6
    const/16 v2, 0x8

    goto/16 :goto_1

    .line 292
    :cond_7
    const/16 v2, 0x8

    goto/16 :goto_2

    .line 293
    :cond_8
    const/16 v2, 0x8

    goto/16 :goto_3

    .line 294
    :cond_9
    const/16 v2, 0x8

    goto/16 :goto_4

    .line 308
    .restart local v9    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 310
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07005c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mContext:Landroid/content/Context;

    .line 311
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07005a

    .line 312
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 310
    invoke-virtual {v9, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_5

    .line 413
    .restart local v10    # "flrAnd":Ljava/lang/StringBuilder;
    :cond_b
    iget-object v2, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->flr:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    .line 414
    const-string v2, "\u677f\u51f3 "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 415
    :cond_c
    iget-object v2, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->flr:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_d

    .line 416
    const-string v2, "\u5730\u677f "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 418
    :cond_d
    iget-object v2, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->flr:I

    if-eqz v2, :cond_2

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->flr:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u697c "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 427
    .restart local v20    # "time":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700bd

    .line 428
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v19

    goto/16 :goto_7

    .line 429
    .restart local v19    # "tag_margin":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700c2

    .line 430
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    goto/16 :goto_8

    .line 457
    .restart local v13    # "index":I
    .restart local v18    # "tag_height":I
    :cond_10
    invoke-static {v12}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->b(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 513
    :cond_11
    iget-object v2, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v8, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->ava:Ljava/lang/String;

    .line 514
    .local v8, "ava_url":Ljava/lang/String;
    iget-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->k:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->k:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 516
    :cond_12
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v3

    .line 517
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object v2, v8

    :goto_b
    iget-object v5, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->k:Landroid/widget/ImageView;

    .line 518
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v6

    .line 519
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/e/a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v6

    .line 517
    invoke-virtual {v3, v2, v5, v6}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 520
    iget-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 523
    :cond_13
    iget-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->l:Landroid/widget/TextView;

    iget-object v3, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->nick:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v3, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->m:Landroid/widget/TextView;

    iget-object v2, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->city:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x8

    :goto_c
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 525
    iget-object v3, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->m:Landroid/widget/TextView;

    iget-object v2, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->city:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, ""

    :goto_d
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v2, v12, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->k:Landroid/widget/ImageView;

    new-instance v3, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$6;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    invoke-static {v12}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->c(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v2, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-boolean v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->del:Z

    if-eqz v2, :cond_17

    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    invoke-static {v12}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->c(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f09054f

    invoke-virtual {v2, v3, v12}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 536
    invoke-static {v12}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->c(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f09054e

    const v5, 0x7f0f00e1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 537
    invoke-static {v12}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->c(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f09054d

    iget-object v5, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->_id:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 538
    invoke-static {v12}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->c(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f090550

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 539
    invoke-static {v12}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->c(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mDeleteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    invoke-static {v12}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->d(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v2, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-boolean v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->del:Z

    if-eqz v2, :cond_18

    iget-object v2, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->rootPart:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->uid:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 542
    invoke-static {v12}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->d(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f09054f

    invoke-virtual {v2, v3, v12}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 543
    invoke-static {v12}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->d(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f09054e

    const v5, 0x7f0f00df

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 544
    invoke-static {v12}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->d(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f09054d

    iget-object v5, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->_id:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 545
    invoke-static {v12}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->d(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f090550

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 546
    invoke-static {v12}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->d(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mDeleteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    return-object p2

    .line 517
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "?imageMogr2/thumbnail/100x100"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_b

    .line 524
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 525
    :cond_16
    iget-object v2, v11, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->city:Ljava/lang/String;

    goto/16 :goto_d

    .line 534
    :cond_17
    const/16 v2, 0x8

    goto/16 :goto_e

    .line 541
    :cond_18
    const/16 v2, 0x8

    goto :goto_f
.end method

.method public loveRoot()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->rootPart:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    if-nez v3, :cond_0

    .line 110
    :goto_0
    return v2

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->rootPart:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    .line 103
    .local v1, "item":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-boolean v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zan:Z

    if-eqz v3, :cond_2

    .line 104
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-object v4, v1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zancnt:I

    add-int/lit8 v0, v4, -0x1

    iput v0, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zancnt:I

    .line 108
    .local v0, "count":I
    :goto_1
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-object v4, v1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-boolean v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zan:Z

    if-nez v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zan:Z

    .line 109
    iget-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->_id:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->reqeustLoveForum(Ljava/lang/String;)V

    move v2, v0

    .line 110
    goto :goto_0

    .line 106
    .end local v0    # "count":I
    :cond_2
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-object v4, v1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zancnt:I

    add-int/lit8 v0, v4, 0x1

    iput v0, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zancnt:I

    .restart local v0    # "count":I
    goto :goto_1
.end method

.method public setSubscription(Lrx/i/b;)V
    .locals 0
    .param p1, "subscription"    # Lrx/i/b;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mSubscription:Lrx/i/b;

    .line 91
    return-void
.end method

.method public setmOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "mOnClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 167
    return-void
.end method

.method public setmOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "mOnLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 171
    return-void
.end method

.method public updateDateSet(Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;Z)V
    .locals 5
    .param p1, "dataSets"    # Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;
    .param p2, "forward"    # Z

    .prologue
    const/4 v4, 0x0

    .line 143
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;->data:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;->root:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->rootPart:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    .line 145
    if-eqz p2, :cond_2

    .line 147
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 148
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;->data:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;->posts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->rootPart:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;->data:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;->posts:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->rootPart:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    :goto_0
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;->data:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;->posts:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->data:Ljava/util/ArrayList;

    .line 163
    :goto_1
    return-void

    .line 151
    :cond_1
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;->data:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;->posts:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v1, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->_id:Ljava/lang/String;

    .line 152
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;->data:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;->posts:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget v0, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->flr:I

    .line 153
    .local v0, "flr":I
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->rootPart:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 154
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;->data:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;->posts:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 155
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;->data:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;->posts:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->rootPart:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 161
    .end local v0    # "flr":I
    .end local v1    # "id":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->data:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;->data:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;->posts:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public zanOrNot()Z
    .locals 2

    .prologue
    .line 135
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->rootPart:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 136
    :cond_0
    const/4 v1, 0x0

    .line 139
    :goto_0
    return v1

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->rootPart:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    .line 139
    .local v0, "item":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-boolean v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zan:Z

    goto :goto_0
.end method
