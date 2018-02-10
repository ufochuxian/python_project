.class public Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;
.super Lcom/c/a/a/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/c/a/a/a/b",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;",
        "Lcom/c/a/a/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final WIDTH_HEIGHT_RATIO:F = 0.73f


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mItemWidth:I

.field public final mRealScreenHeight:I

.field public final mTotalWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;>;"
    invoke-direct {p0, p2}, Lcom/c/a/a/a/b;-><init>(Ljava/util/List;)V

    .line 35
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;->mContext:Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    const v1, 0x7f0b00fb

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;->addItemType(II)V

    .line 37
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->k()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;->mRealScreenHeight:I

    .line 38
    iget v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;->mRealScreenHeight:I

    int-to-float v0, v0

    const v1, 0x3f3ae148    # 0.73f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;->mItemWidth:I

    .line 39
    iget v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;->mItemWidth:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;->mTotalWidth:I

    .line 40
    return-void
.end method


# virtual methods
.method protected convert(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;)V
    .locals 4
    .param p1, "helper"    # Lcom/c/a/a/a/e;
    .param p2, "item"    # Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    .prologue
    .line 45
    const v1, 0x7f090273

    invoke-virtual {p1, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p2, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;->bg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 47
    invoke-virtual {p1}, Lcom/c/a/a/a/e;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 48
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 49
    iget v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;->mItemWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    iget v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;->mRealScreenHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 52
    :cond_0
    return-void
.end method

.method protected bridge synthetic convert(Lcom/c/a/a/a/e;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;->convert(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;)V

    return-void
.end method
