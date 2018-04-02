.class public Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;
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
            "Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;I)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "position"    # I

    .prologue
    const v10, 0x7f06005b

    const/16 v9, 0x8

    const/4 v5, 0x0

    .line 91
    if-nez p1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;

    .line 101
    .local v2, "normalViewHolder":Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;

    .line 104
    .local v0, "data":Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;
    iget-object v4, v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->b:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->b:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->from:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$FromPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$FromPart;->ava:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 105
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v6

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->from:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$FromPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$FromPart;->ava:Ljava/lang/String;

    .line 106
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->from:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$FromPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$FromPart;->ava:Ljava/lang/String;

    :goto_1
    iget-object v7, v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->b:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    .line 107
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/e/a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v8

    .line 105
    invoke-virtual {v6, v4, v7, v8}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 108
    iget-object v4, v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->b:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->from:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$FromPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$FromPart;->ava:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->setTag(Ljava/lang/Object;)V

    .line 110
    :cond_2
    iget-object v4, v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->b:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    new-instance v6, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$1;

    invoke-direct {v6, p0, v0}, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$1;-><init>(Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;)V

    invoke-virtual {v4, v6}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->res:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;->ctx:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ContentPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ContentPart;->typ:Ljava/lang/String;

    const-string v6, "img"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 119
    iget-object v4, v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->c:Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;->setVisibility(I)V

    .line 120
    iget-object v4, v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v4, v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->c:Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->c:Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->res:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;->ctx:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ContentPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ContentPart;->data:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 122
    :cond_3
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v6

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->res:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;->ctx:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ContentPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ContentPart;->data:Ljava/lang/String;

    .line 123
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->res:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;->ctx:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ContentPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ContentPart;->data:Ljava/lang/String;

    :goto_2
    iget-object v7, v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->c:Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;

    .line 125
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/e/a;->j()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v8

    .line 122
    invoke-virtual {v6, v4, v7, v8}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 126
    iget-object v4, v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->c:Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->res:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;->ctx:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ContentPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ContentPart;->data:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;->setTag(Ljava/lang/Object;)V

    .line 134
    :cond_4
    :goto_3
    iget-object v4, v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->e:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->from:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$FromPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$FromPart;->nick:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->res:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;->cts:Ljava/lang/String;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/f;->c(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/jiliguala/niuwa/common/util/f;->l(J)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "time_diff":Ljava/lang/String;
    iget-object v4, v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v4, v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->f:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v4, v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->g:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->res:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;->ttl:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->meta:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$MetaPart;

    iget-boolean v4, v4, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$MetaPart;->hl:Z

    if-eqz v4, :cond_8

    .line 140
    iget-object v4, v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->e:Landroid/widget/TextView;

    const-string v6, "#ff62DA9A"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    :goto_4
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/ad;->c(Landroid/view/View;)I

    move-result v1

    .line 146
    .local v1, "height":I
    iget-object v4, v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 147
    iget-object v6, v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->a:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->meta:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$MetaPart;

    iget-boolean v4, v4, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$MetaPart;->isNew:Z

    if-eqz v4, :cond_9

    move v4, v5

    :goto_5
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 106
    .end local v1    # "height":I
    .end local v3    # "time_diff":Ljava/lang/String;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->from:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$FromPart;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$FromPart;->ava:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "?imageMogr2/thumbnail/100x100"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 123
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->res:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;->ctx:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ContentPart;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ContentPart;->data:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "?imageMogr2/thumbnail/200x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 129
    :cond_7
    iget-object v4, v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->c:Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;

    invoke-virtual {v4, v9}, Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;->setVisibility(I)V

    .line 130
    iget-object v4, v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v4, v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->d:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->res:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ResPart;->ctx:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ContentPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$ContentPart;->data:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 142
    .restart local v3    # "time_diff":Ljava/lang/String;
    :cond_8
    iget-object v4, v2, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->e:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 147
    .restart local v1    # "height":I
    :cond_9
    const/4 v4, 0x4

    goto :goto_5
.end method

.method public clearDataSets()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->mDataSet:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    :cond_0
    return-void
.end method

.method public clickOnNewItem(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 47
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;

    .line 48
    .local v1, "item":Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;
    if-eqz v1, :cond_0

    .line 49
    iget-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;->meta:Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$MetaPart;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$MetaPart;->isNew:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v1    # "item":Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 168
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :cond_0
    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 182
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 194
    if-nez p2, :cond_0

    .line 195
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p3}, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, "v":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1, p1}, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;I)V

    .line 202
    return-object v0

    .line 197
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
    .line 76
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b0148

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;-><init>(Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$1;)V

    .line 78
    .local v0, "normalViewHolder":Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;
    const v2, 0x7f090291

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->a:Landroid/widget/ImageView;

    .line 79
    const v2, 0x7f090083

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->b:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    .line 80
    const v2, 0x7f090470

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->c:Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;

    .line 81
    const v2, 0x7f090474

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->d:Landroid/widget/TextView;

    .line 82
    const v2, 0x7f0905e9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->e:Landroid/widget/TextView;

    .line 83
    const v2, 0x7f09057b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->f:Landroid/widget/TextView;

    .line 84
    const v2, 0x7f090592

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter$a;->g:Landroid/widget/TextView;

    .line 85
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
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
            "Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/NotificationMessageTemplate$DataPart;>;"
    if-eqz p2, :cond_0

    .line 60
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 61
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/message/adapter/MessagePageListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
