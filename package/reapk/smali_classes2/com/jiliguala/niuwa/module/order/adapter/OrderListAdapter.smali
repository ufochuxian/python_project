.class public Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter$a;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;->mDataSet:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 60
    int-to-long v0, p1

    return-wide v0
.end method

.method public getOrderId(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 41
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;

    .line 43
    .local v0, "dataBean":Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;->getOid()Ljava/lang/String;

    move-result-object v1

    .line 45
    .end local v0    # "dataBean":Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    if-nez p2, :cond_1

    .line 67
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0b00f0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 68
    new-instance v2, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter$a;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter$a;-><init>()V

    .line 69
    .local v2, "viewHolder":Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter$a;
    const v3, 0x7f090278

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter$a;->a:Landroid/widget/ImageView;

    .line 70
    const v3, 0x7f0905bf

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter$a;->b:Landroid/widget/TextView;

    .line 71
    const v3, 0x7f090403

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter$a;->c:Landroid/widget/TextView;

    .line 72
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;

    .line 78
    .local v1, "order":Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;->getItem()Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean$ItemBean;

    move-result-object v0

    .line 79
    .local v0, "item":Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean$ItemBean;
    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean$ItemBean;->getThmb()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter$a;->a:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 81
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean$ItemBean;->getTtl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean$ItemBean;->getPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    return-object p2

    .line 74
    .end local v0    # "item":Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean$ItemBean;
    .end local v1    # "order":Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;
    .end local v2    # "viewHolder":Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter$a;

    .restart local v2    # "viewHolder":Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter$a;
    goto :goto_0
.end method

.method public updateDataSet(Ljava/util/List;Z)V
    .locals 1
    .param p2, "refresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;>;"
    if-eqz p2, :cond_0

    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
