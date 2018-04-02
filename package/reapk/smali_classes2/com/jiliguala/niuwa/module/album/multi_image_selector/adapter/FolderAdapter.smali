.class public Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;
    }
.end annotation


# instance fields
.field lastSelected:I

.field private mContext:Landroid/content/Context;

.field private mFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;",
            ">;"
        }
    .end annotation
.end field

.field mImageSize:I

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->lastSelected:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    .line 29
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->mImageSize:I

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getTotalImageSize()I
    .locals 4

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "result":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;

    .line 97
    .local v0, "f":Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;
    iget-object v3, v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;->images:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 98
    goto :goto_0

    .line 100
    .end local v0    # "f":Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;
    :cond_0
    return v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->getItem(I)Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 60
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectIndex()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->lastSelected:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 66
    if-nez p2, :cond_2

    .line 67
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b0140

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 68
    new-instance v1, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;

    invoke-direct {v1, p0, p2}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;-><init>(Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;Landroid/view/View;)V

    .line 72
    .local v1, "holder":Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;
    :goto_0
    if-eqz v1, :cond_1

    .line 73
    if-nez p1, :cond_3

    .line 74
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;->b:Landroid/widget/TextView;

    const-string v3, "\u6240\u6709\u56fe\u7247"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->getTotalImageSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5f20"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;

    .line 78
    .local v0, "f":Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->a(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;->cover:Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;

    iget-object v4, v4, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->a(Ljava/io/File;)Lcom/squareup/picasso/w;

    move-result-object v2

    const v3, 0x7f080145

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/w;->b(I)Lcom/squareup/picasso/w;

    move-result-object v2

    iget v3, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->mImageSize:I

    iget v4, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->mImageSize:I

    invoke-virtual {v2, v3, v4}, Lcom/squareup/picasso/w;->b(II)Lcom/squareup/picasso/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/picasso/w;->d()Lcom/squareup/picasso/w;

    move-result-object v2

    iget-object v3, v1, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;->a:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/w;->a(Landroid/widget/ImageView;)V

    .line 84
    .end local v0    # "f":Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;
    :cond_0
    :goto_1
    iget v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->lastSelected:I

    if-ne v2, p1, :cond_4

    .line 85
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    :cond_1
    :goto_2
    return-object p2

    .line 70
    .end local v1    # "holder":Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;

    .restart local v1    # "holder":Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;
    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->getItem(I)Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;->a(Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;)V

    goto :goto_1

    .line 87
    :cond_4
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;->d:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 39
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->notifyDataSetChanged()V

    .line 44
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public setSelectIndex(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 108
    iget v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->lastSelected:I

    if-ne v0, p1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iput p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->lastSelected:I

    .line 112
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
