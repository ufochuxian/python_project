.class public Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;
.super Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter$a;
    }
.end annotation


# static fields
.field public static final RATIO:F = 0.75f


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Detail;",
            ">;"
        }
    .end annotation
.end field

.field public mItemHeight:I

.field public mItemWidth:I

.field public params:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;->mItemWidth:I

    .line 32
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;->mItemWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;->mItemHeight:I

    .line 38
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;->setNumColumns(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;->mData:Ljava/util/List;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 100
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    if-nez p2, :cond_1

    .line 53
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00df

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 54
    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter$a;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter$a;-><init>()V

    .line 55
    .local v1, "viewHolder":Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter$a;
    const v2, 0x7f090273

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter$a;->a:Landroid/widget/ImageView;

    .line 56
    const v2, 0x7f0901e4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter$a;->b:Landroid/widget/TextView;

    .line 57
    const v2, 0x7f090135

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter$a;->c:Landroid/widget/TextView;

    .line 58
    const v2, 0x7f0903fc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter$a;->d:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    :goto_0
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;->relayoutItemView(Landroid/view/View;)V

    .line 67
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;->mData:Ljava/util/List;

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Detail;

    .line 69
    .local v0, "detail":Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Detail;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v2

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Detail;->thmb:Ljava/lang/String;

    iget-object v4, v1, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter$a;->a:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 70
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter$a;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Detail;->ttl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter$a;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Detail;->cttl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-boolean v2, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Detail;->paid:Z

    if-nez v2, :cond_2

    .line 73
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter$a;->d:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Detail;->oriprice:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .end local v0    # "detail":Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Detail;
    :cond_0
    :goto_1
    return-object p2

    .line 62
    .end local v1    # "viewHolder":Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter$a;

    .restart local v1    # "viewHolder":Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter$a;
    goto :goto_0

    .line 75
    .restart local v0    # "detail":Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Detail;
    :cond_2
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter$a;->d:Landroid/widget/TextView;

    const-string v3, "\u5df2\u8d2d\u4e70"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public relayoutItemView(Landroid/view/View;)V
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;->params:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;->params:Landroid/widget/LinearLayout$LayoutParams;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;->params:Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;->params:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;->mItemHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    return-void
.end method

.method protected setPaddingAndMargin(Landroid/view/View;Landroid/view/View;I)V
    .locals 5
    .param p1, "leftView"    # Landroid/view/View;
    .param p2, "rightView"    # Landroid/view/View;
    .param p3, "culumn"    # I

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v2, 0x0

    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->setPaddingAndMargin(Landroid/view/View;Landroid/view/View;I)V

    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v0

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 117
    :cond_0
    if-eqz p2, :cond_1

    .line 118
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v0

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 122
    :cond_1
    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Detail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Detail;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;->mData:Ljava/util/List;

    .line 105
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;->notifyDataSetChanged()V

    .line 106
    return-void
.end method
