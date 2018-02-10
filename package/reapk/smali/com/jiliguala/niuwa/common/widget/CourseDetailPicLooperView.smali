.class public Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Landroid/widget/LinearLayout;

.field private c:I

.field private d:Lcom/jiliguala/niuwa/module/interact/course/detail/CourseDetailPicLooperAdapter;

.field private e:Ljava/util/ArrayList;
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->c:I

    .line 31
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->a()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->c:I

    .line 36
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->a()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->c:I

    .line 41
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->a()V

    .line 42
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;)V
    .locals 5
    .param p1, "ll_content"    # Landroid/widget/LinearLayout;

    .prologue
    .line 64
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->e:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    :cond_0
    return-void

    .line 67
    :cond_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 69
    .local v3, "pageNum":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 75
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 76
    .local v1, "imageView":Landroid/widget/ImageView;
    if-nez v0, :cond_2

    .line 77
    const v4, 0x7f080309

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 84
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x14

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 85
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    const v4, 0x7f080308

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00e1

    invoke-static {v1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0902fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->a:Landroid/support/v4/view/ViewPager;

    .line 47
    const v1, 0x7f0902e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->b:Landroid/widget/LinearLayout;

    .line 48
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 51
    .local p1, "picUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->e:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/detail/CourseDetailPicLooperAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/detail/CourseDetailPicLooperAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->d:Lcom/jiliguala/niuwa/module/interact/course/detail/CourseDetailPicLooperAdapter;

    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->d:Lcom/jiliguala/niuwa/module/interact/course/detail/CourseDetailPicLooperAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/af;)V

    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->a(Landroid/widget/LinearLayout;)V

    .line 59
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->b()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->d:Lcom/jiliguala/niuwa/module/interact/course/detail/CourseDetailPicLooperAdapter;

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->d:Lcom/jiliguala/niuwa/module/interact/course/detail/CourseDetailPicLooperAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/detail/CourseDetailPicLooperAdapter;->updateData(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 112
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 92
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 96
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->e:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 101
    .local v3, "pageNum":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->b:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->c:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 102
    .local v2, "oldView":Landroid/widget/ImageView;
    const v4, 0x7f080308

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    rem-int v1, p1, v3

    .line 104
    .local v1, "index":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 105
    .local v0, "imageView":Landroid/widget/ImageView;
    const v4, 0x7f080309

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/CourseDetailPicLooperView;->c:I

    goto :goto_0
.end method
