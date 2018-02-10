.class public Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;
    }
.end annotation


# static fields
.field private static final TYPE_CAMERA:I = 0x0

.field private static final TYPE_NORMAL:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

.field private mItemSize:I

.field private mSelectedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field private showCamera:Z

.field private showSelectIndicator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showCamera"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->showCamera:Z

    .line 28
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->showSelectIndicator:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mContext:Landroid/content/Context;

    .line 38
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    iput-boolean p2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->showCamera:Z

    .line 40
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mItemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->showSelectIndicator:Z

    return v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

    .prologue
    .line 19
    iget v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mItemSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getImageByPath(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;

    .line 95
    .local v0, "image":Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;
    iget-object v2, v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    .end local v0    # "image":Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->showCamera:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->showCamera:Z

    if-eqz v0, :cond_1

    .line 156
    if-nez p1, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->getItem(I)Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 167
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 142
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->showCamera:Z

    if-eqz v1, :cond_0

    .line 143
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 145
    :cond_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const v4, 0x7f0b013c

    const/4 v5, 0x0

    .line 173
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->getItemViewType(I)I

    move-result v2

    .line 174
    .local v2, "type":I
    if-nez v2, :cond_2

    .line 175
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0b013a

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 176
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 195
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 196
    .local v1, "lp":Landroid/widget/AbsListView$LayoutParams;
    iget v3, v1, Landroid/widget/AbsListView$LayoutParams;->height:I

    iget v4, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mItemSize:I

    if-eq v3, v4, :cond_1

    .line 197
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mItemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    :cond_1
    return-object p2

    .line 177
    .end local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 179
    if-nez p2, :cond_4

    .line 180
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 181
    new-instance v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;

    invoke-direct {v0, p0, p2}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;-><init>(Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;Landroid/view/View;)V

    .line 189
    .local v0, "holder":Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->getItem(I)Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;->a(Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;)V

    goto :goto_0

    .line 183
    .end local v0    # "holder":Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;

    .line 184
    .restart local v0    # "holder":Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;
    if-nez v0, :cond_3

    .line 185
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 186
    new-instance v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;

    .end local v0    # "holder":Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;
    invoke-direct {v0, p0, p2}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;-><init>(Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;Landroid/view/View;)V

    .restart local v0    # "holder":Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x2

    return v0
.end method

.method public isShowCamera()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->showCamera:Z

    return v0
.end method

.method public select(Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;)V
    .locals 1
    .param p1, "image"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 73
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->notifyDataSetChanged()V

    .line 74
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->notifyDataSetChanged()V

    .line 116
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public setDefaultSelected(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    .local v1, "path":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->getImageByPath(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;

    move-result-object v0

    .line 83
    .local v0, "image":Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;
    if-eqz v0, :cond_0

    .line 84
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    .end local v0    # "image":Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->notifyDataSetChanged()V

    .line 90
    :cond_2
    return-void
.end method

.method public setItemSize(I)V
    .locals 3
    .param p1, "columnWidth"    # I

    .prologue
    .line 124
    iget v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mItemSize:I

    if-ne v0, p1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 128
    :cond_0
    iput p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mItemSize:I

    .line 130
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mItemSize:I

    iget v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mItemSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->mItemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    .line 132
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setShowCamera(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->showCamera:Z

    if-ne v0, p1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->showCamera:Z

    .line 60
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public showSelectIndicator(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->showSelectIndicator:Z

    .line 49
    return-void
.end method
