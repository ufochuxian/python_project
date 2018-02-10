.class public Lcom/mob/tools/gui/e;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Lcom/mob/tools/gui/f;


# direct methods
.method public constructor <init>(Lcom/mob/tools/gui/f;)V
    .locals 0
    .param p1, "adapter"    # Lcom/mob/tools/gui/f;

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/mob/tools/gui/e;->a:Lcom/mob/tools/gui/f;

    .line 12
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/mob/tools/gui/e;->a:Lcom/mob/tools/gui/f;

    invoke-virtual {v0}, Lcom/mob/tools/gui/f;->l()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mob/tools/gui/e;->a:Lcom/mob/tools/gui/f;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/f;->d(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mob/tools/gui/e;->a:Lcom/mob/tools/gui/f;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/f;->c(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mob/tools/gui/e;->a:Lcom/mob/tools/gui/f;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/f;->e(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mob/tools/gui/e;->a:Lcom/mob/tools/gui/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mob/tools/gui/f;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mob/tools/gui/e;->a:Lcom/mob/tools/gui/f;

    invoke-virtual {v0}, Lcom/mob/tools/gui/f;->n()I

    move-result v0

    return v0
.end method
