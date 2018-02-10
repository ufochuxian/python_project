.class public Lcom/jiliguala/niuwa/module/guideview/SimpleComponent;
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
    .line 32
    const/4 v0, 0x4

    return v0
.end method

.method public getFitPosition()I
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x30

    return v0
.end method

.method public getView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 20
    const v1, 0x7f0b00ac

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 21
    .local v0, "ll":Landroid/widget/ScrollView;
    new-instance v1, Lcom/jiliguala/niuwa/module/guideview/SimpleComponent$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/guideview/SimpleComponent$1;-><init>(Lcom/jiliguala/niuwa/module/guideview/SimpleComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    return-object v0
.end method

.method public getXOffset()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0xa

    return v0
.end method
