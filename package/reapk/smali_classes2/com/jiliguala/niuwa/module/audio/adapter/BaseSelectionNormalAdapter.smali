.class public Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field public static final UNINITIAL:I = -0x1


# instance fields
.field public mSelectedPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;->mSelectedPos:I

    return-void
.end method


# virtual methods
.method public changeItemBgColor(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 39
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;->mSelectedPos:I

    if-ne v0, p2, :cond_0

    .line 40
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 30
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public setSelectionPos(I)V
    .locals 0
    .param p1, "selectedPos"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;->mSelectedPos:I

    .line 48
    return-void
.end method
