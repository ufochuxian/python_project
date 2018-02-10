.class public Lcom/jiliguala/niuwa/common/widget/CommonLooperView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Landroid/widget/LinearLayout;

.field private c:I

.field private d:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;

.field private e:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->c:I

    .line 27
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->a()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->c:I

    .line 32
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->a()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->c:I

    .line 37
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->a()V

    .line 38
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;)V
    .locals 5
    .param p1, "ll_content"    # Landroid/widget/LinearLayout;

    .prologue
    .line 65
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->e:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->e:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;->hasData()Z

    move-result v4

    if-nez v4, :cond_1

    .line 88
    :cond_0
    return-void

    .line 68
    :cond_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->e:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$Data;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$Data;->course_cat:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 70
    .local v3, "pageNum":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 76
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 77
    .local v1, "imageView":Landroid/widget/ImageView;
    if-nez v0, :cond_2

    .line 78
    const v4, 0x7f080309

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 85
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x14

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 86
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
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
    .line 41
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00e1

    invoke-static {v1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0902fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->a:Landroid/support/v4/view/ViewPager;

    .line 43
    const v1, 0x7f0902e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->b:Landroid/widget/LinearLayout;

    .line 44
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;)V
    .locals 2
    .param p1, "courseEntranceTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;

    .prologue
    .line 47
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;->hasData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->e:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;

    .line 51
    new-instance v0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->d:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;

    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->d:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/af;)V

    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->a(Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method

.method public b(Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;)V
    .locals 2
    .param p1, "courseEntranceTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->d:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$Data;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$Data;->hasCourseCat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->d:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$Data;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$Data;->course_cat:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->updateGridViewData(Ljava/util/ArrayList;)V

    .line 61
    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 114
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 93
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 97
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->e:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->e:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;->hasData()Z

    move-result v4

    if-nez v4, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->d:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;

    invoke-virtual {v4, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->setCurrentPage(I)V

    .line 102
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->e:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$Data;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$Data;->course_cat:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 103
    .local v3, "pageNum":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->b:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->c:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 104
    .local v2, "oldView":Landroid/widget/ImageView;
    const v4, 0x7f080308

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    rem-int v1, p1, v3

    .line 106
    .local v1, "index":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 107
    .local v0, "imageView":Landroid/widget/ImageView;
    const v4, 0x7f080309

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/CommonLooperView;->c:I

    goto :goto_0
.end method
