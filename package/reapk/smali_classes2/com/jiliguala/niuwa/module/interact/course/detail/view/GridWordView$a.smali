.class Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static final a:I = 0x1


# instance fields
.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$WordData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$WordData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "words":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$WordData;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$a;->b:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$a;->notifyDataSetChanged()V

    .line 70
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$a;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 87
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 94
    if-nez p2, :cond_0

    .line 95
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b01b5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 96
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v4

    div-int/lit8 v2, v4, 0x2

    .line 97
    .local v2, "width":I
    mul-int/lit8 v0, v2, 0x1

    .line 98
    .local v0, "height":I
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v4, v2, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$b;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$b;-><init>()V

    .line 101
    .local v1, "viewHolder":Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$b;
    const v4, 0x7f090624

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$b;->a:Landroid/widget/ImageView;

    .line 102
    const v4, 0x7f0901e4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$b;->b:Landroid/widget/TextView;

    .line 103
    const v4, 0x7f090135

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$b;->c:Landroid/widget/TextView;

    .line 104
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 109
    .end local v0    # "height":I
    .end local v2    # "width":I
    :goto_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$WordData;

    .line 111
    .local v3, "word":Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$WordData;
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$b;->b:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$WordData;->en:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$b;->c:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$WordData;->cn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v4

    iget-object v5, v3, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$WordData;->url:Ljava/lang/String;

    iget-object v6, v1, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$b;->a:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/e/a;->r()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 118
    return-object p2

    .line 106
    .end local v1    # "viewHolder":Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$b;
    .end local v3    # "word":Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$WordData;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$b;

    .restart local v1    # "viewHolder":Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridWordView$b;
    goto :goto_0
.end method
