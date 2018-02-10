.class public Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean$TracesBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    if-nez p2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00fe

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    new-instance v1, Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter$ViewHolder;-><init>()V

    .line 56
    .local v1, "viewHolder":Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter$ViewHolder;
    const v2, 0x7f0905b0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter$ViewHolder;->mDescText:Landroid/widget/TextView;

    .line 57
    const v2, 0x7f0905b1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter$ViewHolder;->mTimeText:Landroid/widget/TextView;

    .line 58
    const v2, 0x7f090137

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter$ViewHolder;->mViewCircle:Landroid/view/View;

    .line 59
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    :goto_0
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter$ViewHolder;->mViewCircle:Landroid/view/View;

    if-nez p1, :cond_1

    const v2, 0x7f080307

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 64
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean$TracesBean;

    .line 65
    .local v0, "tracesBean":Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean$TracesBean;
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter$ViewHolder;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean$TracesBean;->getAcceptStation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter$ViewHolder;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean$TracesBean;->getAcceptTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-object p2

    .line 61
    .end local v0    # "tracesBean":Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean$TracesBean;
    .end local v1    # "viewHolder":Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter$ViewHolder;
    goto :goto_0

    .line 63
    :cond_1
    const v2, 0x7f080306

    goto :goto_1
.end method

.method public updateData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean$TracesBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean$TracesBean;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter;->mData:Ljava/util/List;

    .line 29
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter;->notifyDataSetChanged()V

    .line 30
    return-void
.end method
