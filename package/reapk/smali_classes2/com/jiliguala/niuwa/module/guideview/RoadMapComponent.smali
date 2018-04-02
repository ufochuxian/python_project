.class public Lcom/jiliguala/niuwa/module/guideview/RoadMapComponent;
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
    .line 44
    const/4 v0, 0x4

    return v0
.end method

.method public getFitPosition()I
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x20

    return v0
.end method

.method public getView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 20
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    .local v1, "ll":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 22
    .local v2, "param":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 23
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 25
    .local v3, "textView":Landroid/widget/TextView;
    const v4, 0x7f0f00f7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 26
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600fe

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 28
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    .local v0, "imageView":Landroid/widget/ImageView;
    const v4, 0x7f08021d

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 31
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 32
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 33
    new-instance v4, Lcom/jiliguala/niuwa/module/guideview/RoadMapComponent$1;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/guideview/RoadMapComponent$1;-><init>(Lcom/jiliguala/niuwa/module/guideview/RoadMapComponent;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-object v1
.end method

.method public getXOffset()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x14

    return v0
.end method
