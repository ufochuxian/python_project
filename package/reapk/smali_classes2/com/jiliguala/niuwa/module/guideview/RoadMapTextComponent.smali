.class public Lcom/jiliguala/niuwa/module/guideview/RoadMapTextComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/blog/www/guideview/d;


# instance fields
.field private icon:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/jiliguala/niuwa/module/guideview/RoadMapTextComponent;->icon:I

    .line 20
    return-void
.end method


# virtual methods
.method public getAnchor()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x3

    return v0
.end method

.method public getFitPosition()I
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x20

    return v0
.end method

.method public getView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 24
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    .local v0, "imageView":Landroid/widget/ImageView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 26
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget v2, p0, Lcom/jiliguala/niuwa/module/guideview/RoadMapTextComponent;->icon:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    return-object v0
.end method

.method public getXOffset()I
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0xa

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method
