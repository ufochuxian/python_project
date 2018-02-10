.class public Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "position"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 77
    if-nez p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;

    .line 87
    .local v1, "normalViewHolder":Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;

    .line 89
    .local v0, "data":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->d:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ttl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->i:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->rply:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->f:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->nick:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v5, v1, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->a:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget-boolean v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->top:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    iget-object v5, v1, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->b:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget-boolean v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->sel:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object v5, v1, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->c:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget-boolean v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->isnew:Z

    if-eqz v2, :cond_7

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->g:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->rts:Ljava/lang/String;

    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/f;->c(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/jiliguala/niuwa/common/util/f;->l(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->h:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->vcnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 100
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    :goto_4
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 105
    :cond_2
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v3

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    .line 106
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    :goto_5
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->e:Landroid/widget/ImageView;

    .line 107
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/e/a;->j()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v5

    .line 105
    invoke-virtual {v3, v2, v4, v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 108
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->e:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 110
    :cond_3
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->j:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->j:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ava:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    :cond_4
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v3

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ava:Ljava/lang/String;

    .line 112
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ava:Ljava/lang/String;

    :goto_6
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->j:Landroid/widget/ImageView;

    .line 113
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/e/a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v5

    .line 111
    invoke-virtual {v3, v2, v4, v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 115
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->j:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ava:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    move v2, v4

    .line 93
    goto/16 :goto_1

    :cond_6
    move v2, v4

    .line 94
    goto/16 :goto_2

    :cond_7
    move v2, v4

    .line 95
    goto/16 :goto_3

    .line 102
    :cond_8
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 106
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "?imageMogr2/thumbnail/320x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 112
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ava:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "?imageMogr2/thumbnail/100x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6
.end method

.method public clearDataSets()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->mDataSet:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 55
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 137
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 151
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 158
    if-nez p2, :cond_0

    .line 159
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p3}, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "v":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1, p1}, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;I)V

    .line 166
    return-object v0

    .line 161
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b00a3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;-><init>(Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$1;)V

    .line 61
    .local v0, "normalViewHolder":Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;
    const v2, 0x7f090598

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->a:Landroid/widget/ImageView;

    .line 62
    const v2, 0x7f090519

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->b:Landroid/widget/ImageView;

    .line 63
    const v2, 0x7f090380

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->c:Landroid/widget/ImageView;

    .line 64
    const v2, 0x7f0905a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->d:Landroid/widget/TextView;

    .line 65
    const v2, 0x7f09026b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->e:Landroid/widget/ImageView;

    .line 66
    const v2, 0x7f090378

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->f:Landroid/widget/TextView;

    .line 67
    const v2, 0x7f090573

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->g:Landroid/widget/TextView;

    .line 68
    const v2, 0x7f09042a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->h:Landroid/widget/TextView;

    .line 69
    const v2, 0x7f090445

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->i:Landroid/widget/TextView;

    .line 70
    const v2, 0x7f0905d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter$a;->j:Landroid/widget/ImageView;

    .line 71
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    return-object v1
.end method

.method public updateDateSet(Ljava/util/ArrayList;Z)V
    .locals 1
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
    .line 41
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;>;"
    if-eqz p2, :cond_0

    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 44
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
