.class public Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$FakeVPAdapter;
.super Landroid/support/v4/view/af;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FakeVPAdapter"
.end annotation


# static fields
.field private static final PREFIX_STR:Ljava/lang/String; = "Day "


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1670
    invoke-direct {p0}, Landroid/support/v4/view/af;-><init>()V

    .line 1671
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$FakeVPAdapter;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 1672
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 1760
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 1764
    .end local p3    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 1763
    .restart local p3    # "object":Ljava/lang/Object;
    :cond_1
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getCnt(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 1700
    iget v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$FakeVPAdapter;->mSize:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1690
    iget v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$FakeVPAdapter;->mSize:I

    return v0
.end method

.method public getIconResId(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1685
    const/4 v0, 0x0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1712
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$FakeVPAdapter;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResStr(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 1695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Day "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v3, -0x1

    .line 1740
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$FakeVPAdapter;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1741
    .local v0, "tv":Landroid/widget/TextView;
    const-string v1, "#00ff00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1742
    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1744
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1747
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 1725
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateData(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 1675
    iput p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$FakeVPAdapter;->mSize:I

    .line 1676
    return-void
.end method
