.class public Lcom/jiliguala/niuwa/module/guideview/HandComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/blog/www/guideview/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnchor()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x4

    return v0
.end method

.method public getFitPosition()I
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x20

    return v0
.end method

.method public getView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 20
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    .local v0, "imageView":Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 22
    .local v1, "param":Landroid/widget/LinearLayout$LayoutParams;
    const v2, 0x7f080186

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    return-object v0
.end method

.method public getXOffset()I
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x1e

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .prologue
    .line 44
    const/16 v0, -0x14

    return v0
.end method
