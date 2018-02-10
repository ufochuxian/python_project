.class public Lcom/jiliguala/niuwa/module/guideview/HomeImageComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/blog/www/guideview/d;


# instance fields
.field public imgIcon:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "imgIcon"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/jiliguala/niuwa/module/guideview/HomeImageComponent;->imgIcon:I

    .line 19
    return-void
.end method


# virtual methods
.method public getAnchor()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x4

    return v0
.end method

.method public getFitPosition()I
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x10

    return v0
.end method

.method public getView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 23
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 24
    .local v0, "imageView":Landroid/widget/ImageView;
    iget v1, p0, Lcom/jiliguala/niuwa/module/guideview/HomeImageComponent;->imgIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    return-object v0
.end method

.method public getXOffset()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method
