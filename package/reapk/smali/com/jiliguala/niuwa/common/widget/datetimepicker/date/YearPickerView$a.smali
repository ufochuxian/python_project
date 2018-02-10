.class Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$a;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p4, "years":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$a;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;

    .line 106
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 107
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 111
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;

    .line 112
    .local v1, "v":Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->requestLayout()V

    .line 113
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->a(Landroid/widget/TextView;)I

    move-result v2

    .line 114
    .local v2, "year":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$a;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;)Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/a;->d()Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;

    move-result-object v3

    iget v3, v3, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/c$a;->c:I

    if-ne v3, v2, :cond_1

    const/4 v0, 0x1

    .line 115
    .local v0, "selected":Z
    :goto_0
    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->a(Z)V

    .line 116
    if-eqz v0, :cond_0

    .line 117
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView$a;->a:Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;

    invoke-static {v3, v1}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;->a(Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/YearPickerView;Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;)Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;

    .line 119
    :cond_0
    return-object v1

    .line 114
    .end local v0    # "selected":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
