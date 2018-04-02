.class public Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter$a;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SystemCourseTemplate$Data;",
            ">;"
        }
    .end annotation
.end field

.field private memberTxt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->mData:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 65
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 71
    if-nez p2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b00fe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter$a;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter$a;-><init>(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;)V

    .line 74
    .local v1, "vh":Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter$a;
    const v2, 0x7f0905bf

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter$a;->a:Landroid/widget/TextView;

    .line 75
    const v2, 0x7f090262

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter$a;->b:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SystemCourseTemplate$Data;

    .line 81
    .local v0, "data":Lcom/jiliguala/niuwa/logic/network/json/SystemCourseTemplate$Data;
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter$a;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/SystemCourseTemplate$Data;->ttl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->memberTxt:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter$a;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f023f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Lcom/jiliguala/niuwa/logic/network/json/SystemCourseTemplate$Data;->has:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v0, Lcom/jiliguala/niuwa/logic/network/json/SystemCourseTemplate$Data;->all:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_1
    return-object p2

    .line 78
    .end local v0    # "data":Lcom/jiliguala/niuwa/logic/network/json/SystemCourseTemplate$Data;
    .end local v1    # "vh":Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter$a;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter$a;

    .restart local v1    # "vh":Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter$a;
    goto :goto_0

    .line 85
    .restart local v0    # "data":Lcom/jiliguala/niuwa/logic/network/json/SystemCourseTemplate$Data;
    :cond_1
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter$a;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->memberTxt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SystemCourseTemplate$Data;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/SystemCourseTemplate$Data;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    return-void
.end method

.method public updateMember()V
    .locals 3

    .prologue
    .line 40
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->C()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "status":Ljava/lang/String;
    const-string v1, "valid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0181

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->memberTxt:Ljava/lang/String;

    .line 50
    :goto_0
    return-void

    .line 43
    :cond_0
    const-string v1, "expired"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0180

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->memberTxt:Ljava/lang/String;

    goto :goto_0

    .line 45
    :cond_1
    const-string v1, "empty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0f017f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->memberTxt:Ljava/lang/String;

    goto :goto_0

    .line 48
    :cond_2
    const-string v1, ""

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->memberTxt:Ljava/lang/String;

    goto :goto_0
.end method
