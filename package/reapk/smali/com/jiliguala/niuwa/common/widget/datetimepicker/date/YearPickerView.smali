.class public Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

.field private b:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$a;

.field private c:I

.field private d:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "datePickerController"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    .line 29
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    invoke-interface {v1, p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;->a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$a;)V

    .line 31
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 34
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f070090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->e:I

    .line 35
    const v1, 0x7f070153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->c:I

    .line 37
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->setVerticalFadingEdgeEnabled(Z)V

    .line 38
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->c:I

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->setFadingEdgeLength(I)V

    .line 39
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->a(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0, p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 41
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 42
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->setDividerHeight(I)V

    .line 43
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->a()V

    .line 44
    return-void
.end method

.method static synthetic a(Landroid/widget/TextView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 18
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->b(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;)Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->d:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;

    return-object p1
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;)Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v1, "years":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;->c()I

    move-result v0

    .local v0, "year":I
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;->b()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 53
    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    new-instance v2, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$a;

    const v3, 0x7f0b01b2

    invoke-direct {v2, p0, p1, v3, v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$a;-><init>(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->b:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$a;

    .line 56
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->b:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$a;

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    return-void
.end method

.method private static b(Landroid/widget/TextView;)I
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->b:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$a;->notifyDataSetChanged()V

    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;->d()Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    move-result-object v0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->c:I

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;->c()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->a(I)V

    .line 70
    return-void
.end method

.method public a(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 91
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->e:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->c:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->a(II)V

    .line 92
    return-void
.end method

.method public a(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "y"    # I

    .prologue
    .line 95
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$1;-><init>(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;II)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void
.end method

.method public getFirstPositionOffset()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "firstChild":Landroid/view/View;
    if-nez v0, :cond_0

    .line 64
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;->e()V

    move-object v0, p2

    .line 74
    check-cast v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;

    .line 75
    .local v0, "clickedView":Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;
    if-eqz v0, :cond_2

    .line 76
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->d:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;

    if-eq v0, v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->d:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->d:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->a(Z)V

    .line 79
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->d:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->requestLayout()V

    .line 81
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->a(Z)V

    .line 82
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->requestLayout()V

    .line 83
    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->d:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->b(Landroid/widget/TextView;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;->a(I)V

    .line 86
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->b:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$a;->notifyDataSetChanged()V

    .line 88
    :cond_2
    return-void
.end method
