.class public Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;
.super Landroid/support/v4/widget/f;
.source "SourceFile"


# instance fields
.field protected mCurrentPos:I

.field protected mSelectPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/f;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "flags"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/f;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "autoRequery"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/f;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 27
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->mSelectPos:I

    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->mCurrentPos:I

    if-ne v0, v1, :cond_1

    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    iput p1, p0, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->mCurrentPos:I

    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/f;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public setSelectionPos(I)V
    .locals 0
    .param p1, "selectionPos"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionAdapter;->mSelectPos:I

    .line 58
    return-void
.end method
