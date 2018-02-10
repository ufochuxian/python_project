.class public Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;
    }
.end annotation


# static fields
.field protected static final a:I = 0xfa

.field protected static final b:I = 0x28

.field public static c:I


# instance fields
.field protected d:Landroid/content/Context;

.field protected e:Landroid/os/Handler;

.field protected f:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;

.field protected g:I

.field protected h:I

.field protected i:J

.field protected j:I

.field protected k:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;

.field protected l:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

.field protected m:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

.field protected n:I

.field protected o:Z

.field protected p:I

.field protected q:F

.field private final r:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, -0x1

    sput v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "datePickerController"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->e:Landroid/os/Handler;

    .line 23
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->h:I

    .line 25
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->j:I

    .line 26
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;-><init>(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->k:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;

    .line 27
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->l:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    .line 28
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->m:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    .line 29
    const/4 v0, 0x6

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->n:I

    .line 30
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->o:Z

    .line 31
    const/4 v0, 0x7

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->p:I

    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->q:F

    .line 37
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->r:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->r:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    invoke-interface {v0, p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;->a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/b$a;)V

    .line 39
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->setDrawSelectorOnTop(Z)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->a(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->a()V

    .line 43
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 139
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->r:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;->d()Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;ZZZ)Z

    .line 140
    return-void
.end method

.method public a(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->clearFocus()V

    .line 160
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$1;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$1;-><init>(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;I)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->post(Ljava/lang/Runnable;)Z

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 166
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->d:Landroid/content/Context;

    .line 121
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->d()V

    .line 122
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->c()V

    .line 123
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->f:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;ZZZ)Z
    .locals 8
    .param p1, "day"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;
    .param p2, "animate"    # Z
    .param p3, "setSelected"    # Z
    .param p4, "forceScroll"    # Z

    .prologue
    .line 71
    if-eqz p3, :cond_0

    .line 72
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->l:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    invoke-virtual {v6, p1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;)V

    .line 75
    :cond_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->m:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    invoke-virtual {v6, p1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;)V

    .line 76
    iget v6, p1, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->c:I

    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->r:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    invoke-interface {v7}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;->c()I

    move-result v7

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0xc

    iget v7, p1, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->b:I

    add-int v3, v6, v7

    .line 79
    .local v3, "position":I
    const/4 v1, 0x0

    .line 80
    .local v1, "i":I
    const/4 v5, 0x0

    .line 83
    .local v5, "top":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_4

    .line 92
    :cond_1
    if-eqz v0, :cond_5

    .line 93
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 98
    .local v4, "selectedPosition":I
    :goto_1
    if-eqz p3, :cond_2

    .line 99
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->f:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;

    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->l:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->b(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;)V

    .line 104
    :cond_2
    if-ne v3, v4, :cond_3

    if-eqz p4, :cond_8

    .line 105
    :cond_3
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->m:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->setMonthDisplayed(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;)V

    .line 106
    const/4 v6, 0x2

    iput v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->j:I

    .line 107
    if-eqz p2, :cond_6

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_6

    .line 108
    sget v6, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->c:I

    const/16 v7, 0xfa

    invoke-virtual {p0, v3, v6, v7}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->smoothScrollToPositionFromTop(III)V

    .line 109
    const/4 v6, 0x1

    .line 116
    :goto_2
    return v6

    .line 87
    .end local v4    # "selectedPosition":I
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 88
    if-gez v5, :cond_1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 95
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "selectedPosition":I
    goto :goto_1

    .line 111
    :cond_6
    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->a(I)V

    .line 116
    :cond_7
    :goto_3
    const/4 v6, 0x0

    goto :goto_2

    .line 113
    :cond_8
    if-eqz p3, :cond_7

    .line 114
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->l:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->setMonthDisplayed(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;)V

    goto :goto_3
.end method

.method public b()V
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->c()V

    .line 135
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->f:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    return-void
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->f:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->r:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->f:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->f:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->l:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->b(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;)V

    .line 178
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->f:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c;->notifyDataSetChanged()V

    .line 179
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->setCacheColorHint(I)V

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->setItemsCanFocus(Z)V

    .line 185
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->setFastScrollEnabled(Z)V

    .line 186
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->setVerticalScrollBarEnabled(Z)V

    .line 187
    invoke-virtual {p0, p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 188
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->setFadingEdgeLength(I)V

    .line 189
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->q:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->setFrictionIfSupported(F)V

    .line 190
    return-void
.end method

.method public getMostVisiblePosition()I
    .locals 11

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->getFirstVisiblePosition()I

    move-result v3

    .line 47
    .local v3, "firstPosition":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->getHeight()I

    move-result v4

    .line 49
    .local v4, "height":I
    const/4 v6, 0x0

    .line 50
    .local v6, "maxDisplayedHeight":I
    const/4 v7, 0x0

    .line 51
    .local v7, "mostVisibleIndex":I
    const/4 v5, 0x0

    .line 52
    .local v5, "i":I
    const/4 v0, 0x0

    .line 53
    .local v0, "bottom":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 54
    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_1

    .line 66
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int v8, v3, v7

    return v8

    .line 58
    .restart local v1    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 59
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int v2, v8, v9

    .line 60
    .local v2, "displayedHeight":I
    if-le v2, v6, :cond_2

    .line 61
    move v7, v5

    .line 62
    move v6, v2

    .line 64
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 65
    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 128
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->s:Z

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->s:Z

    .line 131
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 143
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;

    .line 144
    .local v0, "child":Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;
    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->getHeight()I

    move-result v4

    mul-int/2addr v1, v4

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/SimpleMonthView;->getBottom()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-long v2, v1

    .line 150
    .local v2, "currScroll":J
    iput-wide v2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->i:J

    .line 151
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->h:I

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->j:I

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "scroll"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->k:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;

    invoke-virtual {v0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;->a(Landroid/widget/AbsListView;I)V

    .line 156
    return-void
.end method

.method setFrictionIfSupported(F)V
    .locals 2
    .param p1, "friction"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 195
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->setFriction(F)V

    .line 197
    :cond_0
    return-void
.end method

.method protected setMonthDisplayed(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;)V
    .locals 1
    .param p1, "calendarDay"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    .prologue
    .line 169
    iget v0, p1, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->b:I

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->g:I

    .line 170
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->invalidateViews()V

    .line 171
    return-void
.end method
