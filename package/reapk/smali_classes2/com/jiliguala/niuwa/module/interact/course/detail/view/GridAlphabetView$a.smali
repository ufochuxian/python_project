.class Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView;
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "alphabets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$a;->b:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$a;->notifyDataSetChanged()V

    .line 72
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$a;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 96
    if-nez p2, :cond_0

    .line 97
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b019e

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 98
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v4

    div-int/lit8 v3, v4, 0x4

    .line 99
    .local v3, "width":I
    mul-int/lit8 v1, v3, 0x1

    .line 100
    .local v1, "height":I
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v4, v3, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance v2, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$b;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$b;-><init>()V

    .line 103
    .local v2, "viewHolder":Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$b;
    const v4, 0x7f090052

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v2, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$b;->a:Landroid/widget/ImageView;

    .line 104
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 109
    .end local v1    # "height":I
    .end local v3    # "width":I
    :goto_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    .local v0, "alphabetUrl":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v4

    iget-object v5, v2, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$b;->a:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/e/a;->j()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 113
    return-object p2

    .line 106
    .end local v0    # "alphabetUrl":Ljava/lang/String;
    .end local v2    # "viewHolder":Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$b;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$b;

    .restart local v2    # "viewHolder":Lcom/jiliguala/niuwa/module/interact/course/detail/view/GridAlphabetView$b;
    goto :goto_0
.end method
