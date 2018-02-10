.class public Lcom/jiliguala/niuwa/module/NewRoadMap/LevelAdapter;
.super Lcom/c/a/a/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/c/a/a/a/c",
        "<",
        "Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;",
        "Lcom/c/a/a/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field private isMc:Z

.field public mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemWidth:I

.field private final mRealScreenWidth:I


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 3
    .param p2, "isMc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;>;"
    const v1, 0x7f0b00e0

    invoke-direct {p0, v1, p1}, Lcom/c/a/a/a/c;-><init>(ILjava/util/List;)V

    .line 32
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelAdapter;->mData:Ljava/util/List;

    .line 33
    iput-boolean p2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelAdapter;->isMc:Z

    .line 34
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelAdapter;->mRealScreenWidth:I

    .line 35
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelAdapter;->isMc:Z

    if-eqz v1, :cond_0

    const/high16 v0, 0x40900000    # 4.5f

    .line 36
    .local v0, "count":F
    :goto_0
    iget v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelAdapter;->mRealScreenWidth:I

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelAdapter;->mItemWidth:I

    .line 37
    return-void

    .line 35
    .end local v0    # "count":F
    :cond_0
    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_0
.end method


# virtual methods
.method protected convert(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;)V
    .locals 7
    .param p1, "helper"    # Lcom/c/a/a/a/e;
    .param p2, "item"    # Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    .prologue
    const v6, 0x7f090273

    const v5, 0x7f09008d

    const/4 v4, 0x0

    .line 42
    invoke-virtual {p1}, Lcom/c/a/a/a/e;->d()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 43
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v2, :cond_0

    .line 44
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 45
    iget v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelAdapter;->mItemWidth:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 48
    :cond_0
    invoke-virtual {p1, v6}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 50
    .local v1, "icon":Landroid/widget/ImageView;
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->getDrawable()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    invoke-virtual {p1, v5}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 54
    .local v0, "babyIcon":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/c/a/a/a/e;->getLayoutPosition()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isCurrent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 57
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/l;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object v3

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->S()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v3

    const v4, 0x7f08013e

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/g;->d(I)Lcom/bumptech/glide/f;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 63
    :goto_0
    invoke-virtual {p1, v6}, Lcom/c/a/a/a/e;->b(I)Lcom/c/a/a/a/e;

    .line 64
    invoke-virtual {p1, v5}, Lcom/c/a/a/a/e;->b(I)Lcom/c/a/a/a/e;

    .line 65
    return-void

    .line 59
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic convert(Lcom/c/a/a/a/e;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p2, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelAdapter;->convert(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;)V

    return-void
.end method
