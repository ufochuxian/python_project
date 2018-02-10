.class public Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter$a;
    }
.end annotation


# instance fields
.field private channels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter;->channels:Ljava/util/ArrayList;

    .line 28
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter;->channels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseChannel;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter;->channels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseChannel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter;->getItem(I)Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseChannel;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 67
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter;->channels:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseChannel;

    .line 90
    .local v0, "channel":Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseChannel;
    const/4 v1, 0x0

    .line 91
    .local v1, "holder":Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter$a;
    if-nez p2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0b0080

    invoke-virtual {v2, v4, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 93
    new-instance v1, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter$a;

    .end local v1    # "holder":Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter$a;
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter$a;-><init>(Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter$1;)V

    .line 94
    .restart local v1    # "holder":Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter$a;
    const v2, 0x7f09011e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter$a;->a(Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter$a;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 95
    const v2, 0x7f0904b1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter$a;->b(Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter$a;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 96
    const v2, 0x7f090120

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter$a;->a(Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 97
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    :goto_0
    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter$a;->a(Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter$a;)Landroid/widget/ImageView;

    move-result-object v4

    iget-boolean v2, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseChannel;->sel:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v2

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseChannel;->thmb:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter$a;->b(Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter$a;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/e/a;->w()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 104
    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter$a;->c(Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter$a;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseChannel;->ttl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    return-object p2

    .line 99
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter$a;
    check-cast v1, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter$a;

    .restart local v1    # "holder":Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter$a;
    goto :goto_0

    .line 101
    :cond_1
    const/4 v2, 0x4

    goto :goto_1
.end method

.method public updateData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseChannel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseChannel;>;"
    if-eqz p1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter;->channels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseChannelListAdapter;->channels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    :cond_0
    return-void
.end method
