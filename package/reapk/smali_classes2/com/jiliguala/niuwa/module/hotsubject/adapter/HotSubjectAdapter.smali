.class public Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;->mContextRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private bindNormalView(Landroid/view/View;I)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 97
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 98
    .local v2, "obj":Ljava/lang/Object;
    instance-of v4, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;

    if-eqz v4, :cond_4

    move-object v0, v2

    .line 99
    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;

    .line 100
    .local v0, "data":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    if-eqz v0, :cond_4

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;

    .line 103
    .local v1, "normalViewHolder":Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->a:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->e:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ttl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->i:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget v8, v8, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->rply:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->j:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget v8, v8, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->vcnt:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->g:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->nick:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->j:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->i:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget v8, v8, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->rply:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->g:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->nick:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->h:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->rts:Ljava/lang/String;

    invoke-static {v7}, Lcom/jiliguala/niuwa/common/util/f;->c(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/jiliguala/niuwa/common/util/f;->l(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v7, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->b:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget-boolean v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->top:Z

    if-eqz v4, :cond_5

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v7, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->c:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget-boolean v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->sel:Z

    if-eqz v4, :cond_6

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v7, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->d:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget-boolean v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->isnew:Z

    if-eqz v4, :cond_7

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 125
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v7

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    .line 126
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    :goto_3
    iget-object v8, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->f:Landroid/widget/ImageView;

    .line 127
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/e/a;->j()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v9

    .line 125
    invoke-virtual {v7, v4, v8, v9}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 129
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->f:Landroid/widget/ImageView;

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 132
    :cond_1
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->m:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->abst:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->l:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->l:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ava:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 138
    :cond_2
    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ava:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v3, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ava:Ljava/lang/String;

    .line 139
    .local v3, "url":Ljava/lang/String;
    :goto_4
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v4

    iget-object v7, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->l:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/e/a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v8

    invoke-virtual {v4, v3, v7, v8}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 140
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->l:Landroid/widget/ImageView;

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ava:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 143
    .end local v3    # "url":Ljava/lang/String;
    :cond_3
    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 144
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    :goto_5
    new-instance v4, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$1;-><init>(Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .end local v0    # "data":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    .end local v1    # "normalViewHolder":Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;
    :cond_4
    return-void

    .restart local v0    # "data":Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;
    .restart local v1    # "normalViewHolder":Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;
    :cond_5
    move v4, v6

    .line 120
    goto/16 :goto_0

    :cond_6
    move v4, v6

    .line 121
    goto/16 :goto_1

    :cond_7
    move v4, v6

    .line 122
    goto/16 :goto_2

    .line 126
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->thmb:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "?imageMogr2/thumbnail/320x"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 138
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumResPart;->ava:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "?imageMogr2/thumbnail/100x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 146
    :cond_a
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 63
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 68
    if-nez p2, :cond_0

    .line 69
    invoke-virtual {p0, p3}, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;->newNormalView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 72
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;->bindNormalView(Landroid/view/View;I)V

    .line 73
    return-object p2
.end method

.method public newNormalView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b00a3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;-><init>(Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$1;)V

    .line 79
    .local v0, "normalViewHolder":Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;
    const v2, 0x7f090228

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->a:Landroid/view/View;

    .line 80
    const v2, 0x7f090598

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->b:Landroid/widget/ImageView;

    .line 81
    const v2, 0x7f090519

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->c:Landroid/widget/ImageView;

    .line 82
    const v2, 0x7f090380

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->d:Landroid/widget/ImageView;

    .line 83
    const v2, 0x7f0905a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->e:Landroid/widget/TextView;

    .line 84
    const v2, 0x7f09026b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->f:Landroid/widget/ImageView;

    .line 85
    const v2, 0x7f090378

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->g:Landroid/widget/TextView;

    .line 86
    const v2, 0x7f090573

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->h:Landroid/widget/TextView;

    .line 87
    const v2, 0x7f090445

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->i:Landroid/widget/TextView;

    .line 88
    const v2, 0x7f09042a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->j:Landroid/widget/TextView;

    .line 89
    const v2, 0x7f0905d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->l:Landroid/widget/ImageView;

    .line 90
    const v2, 0x7f0901ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$a;->m:Landroid/widget/TextView;

    .line 91
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    return-object v1
.end method

.method public updateDataSet(Ljava/util/ArrayList;Z)V
    .locals 1
    .param p2, "refresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz p2, :cond_0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
