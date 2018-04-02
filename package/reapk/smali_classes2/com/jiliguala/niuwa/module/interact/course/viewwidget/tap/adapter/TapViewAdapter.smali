.class public Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/adapter/TapViewAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/adapter/ITapViewAdapter;


# instance fields
.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidget;Landroid/content/Context;)V
    .locals 1
    .param p1, "widget"    # Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidget;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidget;->items:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/adapter/TapViewAdapter;->mData:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public getColor(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/adapter/TapViewAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/adapter/TapViewAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLayoutParams(III)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9
    .param p1, "index"    # I
    .param p2, "parentWidth"    # I
    .param p3, "parentHeight"    # I

    .prologue
    const/4 v8, 0x0

    .line 85
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/adapter/TapViewAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 87
    .local v1, "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    iget v6, v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->X:F

    int-to-float v7, p2

    mul-float/2addr v6, v7

    float-to-int v4, v6

    .line 88
    .local v4, "left":I
    iget v6, v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->Y:F

    int-to-float v7, p3

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 90
    .local v5, "top":I
    iget v6, v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->width:F

    int-to-float v7, p2

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 91
    .local v3, "itemWidth":I
    iget v6, v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->height:F

    int-to-float v7, p3

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 93
    .local v2, "itemHeight":I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 94
    .local v0, "fl":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v4, v5, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 95
    return-object v0
.end method

.method public getView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/adapter/TapViewAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 52
    .local v2, "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    .line 53
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 54
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0b00e6

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 55
    .local v0, "imageView":Landroid/widget/ImageView;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 56
    const v3, 0x7f09029a

    invoke-virtual {v0, v3, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 66
    iget-object v3, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 67
    return-object v0
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/adapter/TapViewAdapter;->mFolderName:Ljava/lang/String;

    .line 32
    return-void
.end method
