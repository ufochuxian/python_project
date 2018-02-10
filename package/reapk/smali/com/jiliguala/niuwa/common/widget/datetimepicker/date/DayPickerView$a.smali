.class public Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

.field private b:I


# direct methods
.method protected constructor <init>(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    iput p2, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;->b:I

    .line 213
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->e:Landroid/os/Handler;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0xfa

    const/4 v6, 0x1

    .line 218
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;->b:I

    iput v9, v8, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->h:I

    .line 220
    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;->b:I

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    iget v8, v8, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->j:I

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    iget v8, v8, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->j:I

    if-eq v8, v6, :cond_5

    .line 222
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;->b:I

    iput v9, v8, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->j:I

    .line 223
    const/4 v3, 0x0

    .line 224
    .local v3, "i":I
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    invoke-virtual {v8, v3}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 225
    .local v1, "child":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    if-gtz v8, :cond_0

    .line 226
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v8, v3}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 228
    :cond_0
    if-nez v1, :cond_2

    .line 248
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 232
    .restart local v1    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_2
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->getFirstVisiblePosition()I

    move-result v2

    .line 233
    .local v2, "firstPosition":I
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->getLastVisiblePosition()I

    move-result v4

    .line 234
    .local v4, "lastPosition":I
    if-eqz v2, :cond_3

    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v4, v8, :cond_3

    .line 235
    .local v6, "scroll":Z
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    .line 236
    .local v7, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 237
    .local v0, "bottom":I
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->getHeight()I

    move-result v8

    div-int/lit8 v5, v8, 0x2

    .line 238
    .local v5, "midpoint":I
    if-eqz v6, :cond_1

    sget v8, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->c:I

    if-ge v7, v8, :cond_1

    .line 239
    if-le v0, v5, :cond_4

    .line 240
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    invoke-virtual {v8, v7, v10}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->smoothScrollBy(II)V

    goto :goto_1

    .line 234
    .end local v0    # "bottom":I
    .end local v5    # "midpoint":I
    .end local v6    # "scroll":Z
    .end local v7    # "top":I
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 242
    .restart local v0    # "bottom":I
    .restart local v5    # "midpoint":I
    .restart local v6    # "scroll":Z
    .restart local v7    # "top":I
    :cond_4
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    invoke-virtual {v8, v0, v10}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->smoothScrollBy(II)V

    goto :goto_1

    .line 246
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "firstPosition":I
    .end local v3    # "i":I
    .end local v4    # "lastPosition":I
    .end local v5    # "midpoint":I
    .end local v6    # "scroll":Z
    .end local v7    # "top":I
    :cond_5
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView$a;->b:I

    iput v9, v8, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/DayPickerView;->j:I

    goto :goto_1
.end method
