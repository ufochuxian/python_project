.class public Lcom/jiliguala/niuwa/module/guideview/HomeHandComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/blog/www/guideview/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnchor()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x4

    return v0
.end method

.method public getFitPosition()I
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x30

    return v0
.end method

.method public getView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 19
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    .local v0, "imageView":Landroid/widget/ImageView;
    const v1, 0x7f080186

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    return-object v0
.end method

.method public getXOffset()I
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0xa

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .prologue
    .line 41
    const/16 v0, -0xa

    return v0
.end method
