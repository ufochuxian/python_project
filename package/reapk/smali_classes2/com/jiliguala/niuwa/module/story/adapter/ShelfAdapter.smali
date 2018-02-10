.class public Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/story/adapter/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/widget/RecyclerView$w;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/module/story/adapter/OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final STORY_ID:Ljava/lang/String; = "story id"

.field public static final STORY_TITLE:Ljava/lang/String; = "story title"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mShelfData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent$DataPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;->mShelfData:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 41
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 42
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;->mShelfData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$w;I)V
    .locals 6
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$w;
    .param p2, "position"    # I

    .prologue
    .line 104
    move-object v1, p1

    check-cast v1, Lcom/jiliguala/niuwa/module/story/adapter/ShelfItemHolder;

    .line 105
    .local v1, "shelfItemHolder":Lcom/jiliguala/niuwa/module/story/adapter/ShelfItemHolder;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;->mShelfData:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent$DataPart;

    .line 106
    .local v0, "data":Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent$DataPart;
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/story/adapter/ShelfItemHolder;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/jiliguala/niuwa/module/story/adapter/ShelfItemHolder;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent$DataPart;->img:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 107
    :cond_0
    iget-object v2, v0, Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent$DataPart;->img:Ljava/lang/String;

    .line 108
    .local v2, "url":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "qiniu.jiliguala.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?imageMogr2/thumbnail/320x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v3

    iget-object v4, v1, Lcom/jiliguala/niuwa/module/story/adapter/ShelfItemHolder;->thumb:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/e/a;->m()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 112
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/story/adapter/ShelfItemHolder;->thumb:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent$DataPart;->img:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 114
    .end local v2    # "url":Ljava/lang/String;
    :cond_2
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/story/adapter/ShelfItemHolder;->age:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent$DataPart;->level:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/story/adapter/ShelfItemHolder;->cTitle:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent$DataPart;->ctitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/story/adapter/ShelfItemHolder;->root:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/story/adapter/ShelfItemHolder;->root:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;->onItemClick(Landroid/view/View;)V

    .line 149
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$w;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 75
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b0180

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 76
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfItemHolder;

    invoke-direct {v0, v1, p0}, Lcom/jiliguala/niuwa/module/story/adapter/ShelfItemHolder;-><init>(Landroid/view/View;Lcom/jiliguala/niuwa/module/story/adapter/OnItemClickListener;)V

    .line 77
    .local v0, "holder":Lcom/jiliguala/niuwa/module/story/adapter/ShelfItemHolder;
    return-object v0
.end method

.method public onItemClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 131
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent$DataPart;

    .line 134
    .local v0, "data":Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent$DataPart;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 135
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const-class v4, Lcom/jiliguala/niuwa/module/story/StoryActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 136
    new-instance v2, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;-><init>()V

    .line 137
    .local v2, "ticket":Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;
    iget-object v3, v0, Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent$DataPart;->_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->setResourceId(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    .line 138
    const-string v3, "PARAM_COURSE_TICKET"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 139
    const-string v3, "PARAM_STORY_FROM_COURSE"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 142
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f010021

    const v5, 0x7f010014

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 144
    .end local v0    # "data":Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent$DataPart;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ticket":Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;
    :cond_0
    return-void
.end method

.method public updateData(Ljava/util/ArrayList;Z)V
    .locals 1
    .param p2, "refreshNew"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent$DataPart;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "shelfData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent$DataPart;>;"
    if-eqz p2, :cond_0

    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;->mShelfData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;->mShelfData:Ljava/util/ArrayList;

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/adapter/ShelfAdapter;->mShelfData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
